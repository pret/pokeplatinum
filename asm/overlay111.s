	.include "macros/function.inc"


	.text

	thumb_func_start ov111_021D0D80
ov111_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov111_021D1D30
	mov r2, #0x12
	mov r0, #3
	mov r1, #0x73
	lsl r2, r2, #0xe
	bl sub_02017FC8
	ldr r1, _021D0E2C ; =0x00009A04
	add r0, r5, #0
	mov r2, #0x73
	bl sub_0200681C
	ldr r2, _021D0E2C ; =0x00009A04
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x73
	bl sub_02018340
	str r0, [r4, #0x58]
	add r0, r5, #0
	str r5, [r4, #0]
	bl sub_02006840
	add r5, r0, #0
	mov r1, #0x5a
	add r2, r5, #0
	ldr r0, [r5, #0]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r0, [r5, #4]
	add r2, #0x14
	strb r0, [r4, #9]
	mov r0, #0xdd
	lsl r0, r0, #2
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	bl sub_02025E44
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, r5, #0
	mov r0, #0xde
	add r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r5, #0xe
	add r0, r0, #4
	str r5, [r4, r0]
	add r0, r4, #0
	bl ov111_021D27BC
	mov r1, #0
	mov r3, #0xde
	lsl r3, r3, #2
	add r2, r1, #0
	add r0, r1, #0
	add r5, r3, #4
_021D0E00:
	ldr r6, [r4, r3]
	add r1, r1, #1
	strh r0, [r6, r2]
	ldr r6, [r4, r5]
	strh r0, [r6, r2]
	add r2, r2, #2
	cmp r1, #3
	blt _021D0E00
	ldr r1, _021D0E30 ; =0x000003A5
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov111_021D1D68
	mov r1, #0
	mov r0, #0x44
	add r2, r1, #0
	str r1, [r7, #0]
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D0E2C: .word 0x00009A04
_021D0E30: .word 0x000003A5
	thumb_func_end ov111_021D0D80

	thumb_func_start ov111_021D0E34
ov111_021D0E34: ; 0x021D0E34
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #7
	bhi _021D0F32
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E50: ; jump table
	.short _021D0E60 - _021D0E50 - 2 ; case 0
	.short _021D0E74 - _021D0E50 - 2 ; case 1
	.short _021D0E88 - _021D0E50 - 2 ; case 2
	.short _021D0E9C - _021D0E50 - 2 ; case 3
	.short _021D0ED8 - _021D0E50 - 2 ; case 4
	.short _021D0EEC - _021D0E50 - 2 ; case 5
	.short _021D0F12 - _021D0E50 - 2 ; case 6
	.short _021D0F26 - _021D0E50 - 2 ; case 7
_021D0E60:
	bl ov111_021D0F7C
	cmp r0, #1
	bne _021D0F32
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov111_021D26E4
	b _021D0F32
_021D0E74:
	bl ov111_021D0FC8
	cmp r0, #1
	bne _021D0F32
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov111_021D26E4
	b _021D0F32
_021D0E88:
	bl ov111_021D10B8
	cmp r0, #1
	bne _021D0F32
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov111_021D26E4
	b _021D0F32
_021D0E9C:
	bl ov111_021D116C
	cmp r0, #1
	bne _021D0F32
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _021D0ECC
	mov r0, #0
	strb r0, [r4, #0xe]
	add r0, r4, #0
	bl ov111_021D1BEC
	add r0, r4, #0
	bl ov111_021D1AF4
	add r0, r4, #0
	bl ov111_021D1B44
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov111_021D26E4
	b _021D0F32
_021D0ECC:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov111_021D26E4
	b _021D0F32
_021D0ED8:
	bl ov111_021D1284
	cmp r0, #1
	bne _021D0F32
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov111_021D26E4
	b _021D0F32
_021D0EEC:
	bl ov111_021D1508
	cmp r0, #1
	bne _021D0F32
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _021D0F06
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	bl ov111_021D26E4
	b _021D0F32
_021D0F06:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov111_021D26E4
	b _021D0F32
_021D0F12:
	bl ov111_021D1980
	cmp r0, #1
	bne _021D0F32
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov111_021D26E4
	b _021D0F32
_021D0F26:
	bl ov111_021D1A88
	cmp r0, #1
	bne _021D0F32
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0F32:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D0E34

	thumb_func_start ov111_021D0F40
ov111_021D0F40: ; 0x021D0F40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0201E530
	mov r0, #0xdd
	lsl r0, r0, #2
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov111_021D1C0C
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x73
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D0F40

	thumb_func_start ov111_021D0F7C
ov111_021D0F7C: ; 0x021D0F7C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D0F8E
	cmp r0, #1
	beq _021D0FAE
	b _021D0FC0
_021D0F8E:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _021D0FC0
_021D0FAE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0FC0
	mov r0, #0
	strb r0, [r4, #0xe]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D0FC0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov111_021D0F7C

	thumb_func_start ov111_021D0FC8
ov111_021D0FC8: ; 0x021D0FC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _021D0FDC
	cmp r0, #1
	beq _021D104C
	cmp r0, #2
	beq _021D109E
	b _021D10A6
_021D0FDC:
	mov r0, #0xff
	mvn r0, r0
	ldr r4, _021D10AC ; =0x021D362C
	strh r0, [r6, #0x10]
	mov r7, #0
	add r5, r6, #0
_021D0FE8:
	mov r1, #0x10
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r4, r2]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r1, r1, r2
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov111_021D3474
	mov r0, #0xcb
	lsl r0, r0, #2
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r1, #0x14
	bl ov111_021D3468
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _021D0FE8
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02027B50
	add r1, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov111_021D35C0
	add r0, r6, #0
	bl ov111_021D24D4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #3
	strh r0, [r6, #0x12]
	ldr r0, _021D10B0 ; =0x0000054F
	bl sub_02005748
	mov r0, #1
	strb r0, [r6, #8]
	b _021D10A6
_021D104C:
	mov r1, #0x10
	ldrsh r0, [r6, r1]
	add r0, #0x20
	strh r0, [r6, #0x10]
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	lsl r2, r0, #2
	mov r0, #0xcb
	add r3, r6, r2
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldrsh r3, [r6, r1]
	ldr r1, _021D10AC ; =0x021D362C
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	ldr r3, _021D10B4 ; =0x021D362E
	ldrsh r2, [r3, r2]
	bl ov111_021D3474
	mov r0, #0x10
	ldrsh r0, [r6, r0]
	cmp r0, #0
	blt _021D10A6
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	cmp r0, #0
	bne _021D1088
	mov r0, #2
	strb r0, [r6, #8]
	b _021D10A6
_021D1088:
	ldr r0, _021D10B0 ; =0x0000054F
	bl sub_02005748
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	sub r0, r0, #1
	strh r0, [r6, #0x12]
	mov r0, #0xff
	mvn r0, r0
	strh r0, [r6, #0x10]
	b _021D10A6
_021D109E:
	mov r0, #0
	strh r0, [r6, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D10A6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D10AC: .word 0x021D362C
_021D10B0: .word 0x0000054F
_021D10B4: .word 0x021D362E
	thumb_func_end ov111_021D0FC8

	thumb_func_start ov111_021D10B8
ov111_021D10B8: ; 0x021D10B8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _021D10CE
	cmp r0, #1
	beq _021D10E0
	cmp r0, #2
	beq _021D1158
	b _021D115E
_021D10CE:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x1e
	strb r0, [r5, #0xf]
	mov r0, #1
	strb r0, [r5, #8]
	b _021D115E
_021D10E0:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _021D10FC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov111_021D345C
	b _021D1100
_021D10FC:
	sub r0, r0, #1
	strb r0, [r5, #0xf]
_021D1100:
	ldr r0, _021D1164 ; =0x021D364C
	bl sub_02022644
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D115E
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov111_021D345C
	ldr r0, _021D1168 ; =0x000005E4
	bl sub_02005748
	ldrb r0, [r5, #0xe]
	add r1, sp, #0
	add r0, r5, r0
	strb r4, [r0, #0x15]
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
	add r0, sp, #4
	bl sub_020227A4
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	strb r0, [r5, #8]
	b _021D115E
_021D1158:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D115E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1164: .word 0x021D364C
_021D1168: .word 0x000005E4
	thumb_func_end ov111_021D10B8

	thumb_func_start ov111_021D116C
ov111_021D116C: ; 0x021D116C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #0xe]
	sub r1, r1, #1
	add r1, r4, r1
	ldrb r7, [r1, #0x15]
	ldrb r1, [r4, #8]
	cmp r1, #3
	bhi _021D1278
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D118C: ; jump table
	.short _021D1194 - _021D118C - 2 ; case 0
	.short _021D11C0 - _021D118C - 2 ; case 1
	.short _021D121C - _021D118C - 2 ; case 2
	.short _021D126E - _021D118C - 2 ; case 3
_021D1194:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r1, #0
	mov r2, #0xea
	strh r1, [r4, #0x10]
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	mov r0, #0xfe
	bic r3, r0
	lsl r0, r7, #2
	strb r3, [r4, r2]
	add r0, r4, r0
	sub r2, #0x7c
	ldr r0, [r0, r2]
	bl ov111_021D3468
	mov r0, #1
	strb r0, [r4, #8]
	b _021D1278
_021D11C0:
	lsl r1, r7, #0x18
	lsr r1, r1, #0x18
	bl ov111_021D2868
	mov r0, #1
	ldr r2, [r4, #0x1c]
	lsl r0, r0, #8
	add r2, r2, r0
	str r2, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	add r1, r4, #0
	add r2, r2, r0
	str r2, [r4, #0x20]
	ldr r2, [r4, #0x24]
	add r1, #0x1c
	add r0, r2, r0
	str r0, [r4, #0x24]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	lsl r0, r7, #2
	add r2, r4, r0
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ov111_021D34F4
	mov r0, #6
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0xa
	cmp r1, r0
	bne _021D1278
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, _021D1280 ; =0x0000054F
	bl sub_02005748
	mov r0, #2
	strb r0, [r4, #8]
	b _021D1278
_021D121C:
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	mov r6, #0
	add r5, r4, #0
	add r0, #0x10
	strh r0, [r4, #0x10]
_021D1228:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #4
	add r2, sp, #0
	bl ov111_021D349C
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r1, [sp, #4]
	ldr r0, [r5, r0]
	ldr r2, [sp]
	add r1, #0x10
	bl ov111_021D3474
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021D1228
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r0, #0xf0
	cmp r1, r0
	blt _021D1278
	lsl r0, r7, #2
	add r1, r4, r0
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov111_021D34E0
	mov r0, #3
	strb r0, [r4, #8]
	b _021D1278
_021D126E:
	mov r0, #0
	strh r0, [r4, #0x10]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1278:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1280: .word 0x0000054F
	thumb_func_end ov111_021D116C

	thumb_func_start ov111_021D1284
ov111_021D1284: ; 0x021D1284
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #3
	bls _021D1290
	b _021D14EE
_021D1290:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D129C: ; jump table
	.short _021D12A4 - _021D129C - 2 ; case 0
	.short _021D1362 - _021D129C - 2 ; case 1
	.short _021D1450 - _021D129C - 2 ; case 2
	.short _021D14E4 - _021D129C - 2 ; case 3
_021D12A4:
	bl ov111_021D2EB4
	mov r1, #0
	mov r3, #0xe5
	str r1, [sp]
	lsl r3, r3, #2
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x58]
	ldr r3, [r3, #0x10]
	bl sub_0201958C
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_02019448
	mov r0, #1
	lsl r0, r0, #8
	strh r0, [r4, #0x12]
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	mov r1, #6
	mov r2, #0
	bl sub_02019184
	mov r3, #0x12
	mov r1, #0
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	add r2, r1, #0
	bl sub_02019184
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0
	bl sub_02019184
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0xff
	mvn r0, r0
	strh r0, [r4, #0x10]
	ldrb r1, [r4, #0xe]
	mov r0, #0
	mov r2, #0x96
	add r1, r4, r1
	strb r0, [r1, #0x19]
	ldr r1, _021D14F4 ; =0x00000402
	add r5, r0, #0
	lsl r2, r2, #8
_021D1324:
	add r3, r4, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, r2
	blt _021D1324
	ldr r0, _021D14F8 ; =0x000003A9
	strb r5, [r4, r0]
	add r0, r4, #0
	bl ov111_021D27BC
	ldrb r1, [r4, #0xe]
	add r0, r4, #0
	add r1, r4, r1
	ldrb r1, [r1, #0x19]
	bl ov111_021D27AC
	ldrb r1, [r4, #0xe]
	add r0, r4, #0
	add r1, r4, r1
	ldrb r1, [r1, #0x19]
	bl ov111_021D27D4
	add r0, r4, #0
	bl ov111_021D2940
	add r0, r4, #0
	bl ov111_021D295C
	mov r0, #1
	strb r0, [r4, #8]
	b _021D14EE
_021D1362:
	mov r7, #0
	mov r6, #0x1a
	add r5, r4, #0
_021D1368:
	mov r1, #0x10
	mov r0, #0xbe
	ldrsh r1, [r4, r1]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x3c
	add r2, r6, #0
	bl ov111_021D3474
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov111_021D345C
	add r7, r7, #1
	add r6, #0x2a
	add r5, r5, #4
	cmp r7, #4
	blt _021D1368
	mov r7, #0xd1
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021D1398:
	ldr r0, [r5, r7]
	mov r1, #1
	bl ov111_021D3500
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021D1398
	ldr r0, _021D14FC ; =0x000003A5
	mov r7, #0
	strb r7, [r4, r0]
	add r1, r0, #3
	ldrb r2, [r4, r1]
	mov r1, #1
	ldr r6, _021D1500 ; =0x021D3770
	bic r2, r1
	add r1, r0, #3
	strb r2, [r4, r1]
	mov r2, #0xb1
	add r1, r0, #5
	strb r2, [r4, r1]
	add r1, r0, #6
	mov r2, #0xb2
	strb r2, [r4, r1]
	mov r1, #0xb3
	add r0, r0, #7
	strb r1, [r4, r0]
	add r5, r4, #0
_021D13D0:
	mov r1, #0x10
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r6, r2]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r1, r1, r2
	mov r2, #2
	ldrsh r2, [r6, r2]
	ldr r0, [r5, r0]
	bl ov111_021D3474
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov111_021D345C
	mov r1, #0x36
	mov r0, #0xc2
	lsl r0, r0, #2
	add r2, r4, r7
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	bl ov111_021D34C4
	add r7, r7, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #9
	blt _021D13D0
	mov r0, #0x18
	str r0, [sp]
	ldrb r2, [r4, #0xe]
	add r0, r4, #0
	mov r1, #1
	add r2, r4, r2
	ldrb r2, [r2, #0x15]
	mov r3, #0x20
	add r2, r2, #4
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov111_021D28E8
	mov r0, #0x18
	str r0, [sp]
	ldrb r2, [r4, #0xe]
	add r0, r4, #0
	mov r1, #6
	add r2, r4, r2
	ldrb r2, [r2, #0x15]
	mov r3, #0x20
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov111_021D28E8
	ldr r0, _021D1504 ; =0x0000054F
	bl sub_02005748
	mov r0, #2
	strb r0, [r4, #8]
	b _021D14EE
_021D1450:
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	mov r1, #6
	mov r2, #0
	bl sub_02019184
	mov r3, #0x12
	mov r1, #0
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	add r2, r1, #0
	bl sub_02019184
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0
	bl sub_02019184
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	sub r0, #0x10
	strh r0, [r4, #0x12]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _021D1490
	mov r0, #3
	strb r0, [r4, #8]
	b _021D14DA
_021D1490:
	mov r7, #0
	mov r6, #0x1a
	add r5, r4, #0
_021D1496:
	mov r1, #0x10
	mov r0, #0xbe
	ldrsh r1, [r4, r1]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x3c
	add r2, r6, #0
	bl ov111_021D3474
	add r7, r7, #1
	add r6, #0x2a
	add r5, r5, #4
	cmp r7, #4
	blt _021D1496
	ldr r5, _021D1500 ; =0x021D3770
	mov r7, #0
	add r6, r4, #0
_021D14B8:
	mov r1, #0x10
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r5, r2]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r1, r1, r2
	mov r2, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r6, r0]
	bl ov111_021D3474
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, #9
	blt _021D14B8
_021D14DA:
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	add r0, #0x10
	strh r0, [r4, #0x10]
	b _021D14EE
_021D14E4:
	mov r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D14EE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D14F4: .word 0x00000402
_021D14F8: .word 0x000003A9
_021D14FC: .word 0x000003A5
_021D1500: .word 0x021D3770
_021D1504: .word 0x0000054F
	thumb_func_end ov111_021D1284

	thumb_func_start ov111_021D1508
ov111_021D1508: ; 0x021D1508
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0xb
	bls _021D1514
	b _021D197C
_021D1514:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1520: ; jump table
	.short _021D1538 - _021D1520 - 2 ; case 0
	.short _021D15C6 - _021D1520 - 2 ; case 1
	.short _021D15DC - _021D1520 - 2 ; case 2
	.short _021D160C - _021D1520 - 2 ; case 3
	.short _021D17C2 - _021D1520 - 2 ; case 4
	.short _021D17DE - _021D1520 - 2 ; case 5
	.short _021D17F2 - _021D1520 - 2 ; case 6
	.short _021D1842 - _021D1520 - 2 ; case 7
	.short _021D186C - _021D1520 - 2 ; case 8
	.short _021D189C - _021D1520 - 2 ; case 9
	.short _021D1906 - _021D1520 - 2 ; case 10
	.short _021D1970 - _021D1520 - 2 ; case 11
_021D1538:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _021D156A
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov111_021D263C
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x58
	mov r2, #0xa0
	bl ov111_021D3474
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D34C4
	b _021D157A
_021D156A:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov111_021D2604
_021D157A:
	mov r0, #0x1e
	strb r0, [r4, #0xf]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D345C
	add r0, r4, #0
	bl ov111_021D2518
	mov r5, #0
_021D1592:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov111_021D2674
	add r5, r5, #1
	cmp r5, #4
	blt _021D1592
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D345C
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D350C
	ldr r0, _021D187C ; =0x00000551
	bl sub_02005748
	mov r0, #1
	strb r0, [r4, #8]
	b _021D197C
_021D15C6:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	strb r0, [r4, #8]
	b _021D197C
_021D15DC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D1606
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D345C
	add r0, r4, #0
	add r0, #0xfc
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0xfc
	bl sub_0201A9A4
	mov r0, #3
	strb r0, [r4, #8]
	b _021D197C
_021D1606:
	sub r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D160C:
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #4
	mov r2, #2
	bl sub_0201E564
	ldr r0, _021D1880 ; =0x021D3794
	bl sub_02022644
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021D1718
	add r0, r4, #0
	bl ov111_021D2918
	cmp r0, #3
	bhs _021D163E
	mov r0, #0xe7
	mov r2, #1
	add r1, r4, r5
	lsl r0, r0, #2
	strb r2, [r1, r0]
_021D163E:
	mov r0, #0xe7
	add r1, r4, r5
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _021D1672
	add r0, r4, #0
	bl ov111_021D29D8
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov111_021D2A68
	add r0, r4, #0
	add r1, r5, #0
	bl ov111_021D297C
	ldr r0, _021D1884 ; =0x0000054E
	bl sub_020057D4
	cmp r0, #0
	bne _021D1672
	ldr r0, _021D1884 ; =0x0000054E
	bl sub_02005748
_021D1672:
	add r0, r4, #0
	bl ov111_021D2BBC
	cmp r0, #1
	bne _021D16EA
	ldr r0, _021D1884 ; =0x0000054E
	mov r1, #0
	bl sub_020057A4
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D345C
	ldr r1, _021D1888 ; =0x000003A7
	ldrb r0, [r4, r1]
	lsl r0, r0, #1
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x3d
	ldrh r3, [r2, r0]
	add r0, r1, #0
	sub r0, #0x2f
	ldr r2, [r4, r0]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #1
	strh r3, [r2, r0]
	ldrb r0, [r4, r1]
	lsl r0, r0, #1
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x3d
	ldrh r0, [r2, r0]
	cmp r0, #0x5c
	bne _021D16BE
	mov r2, #1
	b _021D16C0
_021D16BE:
	mov r2, #3
_021D16C0:
	ldrb r0, [r4, #0xe]
	sub r1, #0x2b
	ldr r1, [r4, r1]
	lsl r0, r0, #1
	strh r2, [r1, r0]
	add r0, r4, #0
	bl ov111_021D2D14
	cmp r0, #1
	bne _021D16D8
	mov r0, #0x1e
	b _021D16DA
_021D16D8:
	mov r0, #0
_021D16DA:
	strb r0, [r4, #0xf]
	add r0, r4, #0
	bl ov111_021D255C
	mov r0, #4
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D16EA:
	ldr r0, _021D188C ; =0x000003A9
	ldrb r0, [r4, r0]
	cmp r0, #3
	blo _021D1720
	ldr r0, _021D1884 ; =0x0000054E
	mov r1, #0
	bl sub_020057A4
	mov r0, #0x3c
	strb r0, [r4, #0xf]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D345C
	add r0, r4, #0
	bl ov111_021D25BC
	mov r0, #7
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1718:
	ldr r0, _021D1884 ; =0x0000054E
	mov r1, #0
	bl sub_020057A4
_021D1720:
	mov r0, #0xea
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021D1734
	add r0, r4, #0
	bl ov111_021D2B20
_021D1734:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _021D177E
	ldr r0, _021D1890 ; =0x021D3610
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D1800
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D350C
	add r0, r4, #0
	bl ov111_021D2494
	ldr r0, _021D1894 ; =0x000005E4
	bl sub_02005748
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D34C4
	add r0, r4, #0
	bl ov111_021D1F70
	add r0, r4, #0
	bl ov111_021D1F84
	mov r0, #0xa
	strb r0, [r4, #8]
	b _021D197C
_021D177E:
	ldr r0, _021D1898 ; =0x021D3618
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D1800
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D350C
	add r0, r4, #0
	bl ov111_021D2494
	ldr r0, _021D1894 ; =0x000005E4
	bl sub_02005748
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov111_021D34C4
	add r0, r4, #0
	bl ov111_021D1F70
	add r0, r4, #0
	bl ov111_021D1F84
	mov r0, #9
	strb r0, [r4, #8]
	b _021D197C
_021D17C2:
	ldrb r1, [r4, #0xf]
	cmp r1, #0
	bne _021D17D8
	mov r1, #0
	bl ov111_021D2D60
	cmp r0, #0
	bne _021D1800
	mov r0, #5
	strb r0, [r4, #8]
	b _021D197C
_021D17D8:
	sub r0, r1, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D17DE:
	mov r1, #1
	bl ov111_021D2D60
	cmp r0, #0
	bne _021D1800
	mov r0, #0
	strb r0, [r4, #0xf]
	mov r0, #6
	strb r0, [r4, #8]
	b _021D197C
_021D17F2:
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov111_021D353C
	cmp r0, #1
	bne _021D1802
_021D1800:
	b _021D197C
_021D1802:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D183C
	mov r7, #0x35
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021D1810:
	ldr r0, [r5, r7]
	mov r1, #0
	bl ov111_021D345C
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021D1810
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D345C
	add r0, r4, #0
	bl ov111_021D2E20
	add r0, r4, #0
	bl ov111_021D2E28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D183C:
	sub r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D1842:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D1866
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov111_021D2E20
	add r0, r4, #0
	bl ov111_021D2E28
	mov r0, #0x1e
	strb r0, [r4, #0xf]
	mov r0, #8
	strb r0, [r4, #8]
	b _021D197C
_021D1866:
	sub r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D186C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D1876
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1876:
	sub r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
	; .align 2, 0
_021D187C: .word 0x00000551
_021D1880: .word 0x021D3794
_021D1884: .word 0x0000054E
_021D1888: .word 0x000003A7
_021D188C: .word 0x000003A9
_021D1890: .word 0x021D3610
_021D1894: .word 0x000005E4
_021D1898: .word 0x021D3618
_021D189C:
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020159C0
	cmp r0, #1
	bne _021D18D8
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D350C
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov111_021D2E20
	add r0, r4, #0
	bl ov111_021D1FB4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D18D8:
	cmp r0, #2
	bne _021D197C
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D350C
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov111_021D1FB4
	mov r0, #0xb
	strb r0, [r4, #8]
	b _021D197C
_021D1906:
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020159C0
	cmp r0, #1
	bne _021D1942
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D350C
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov111_021D2E18
	add r0, r4, #0
	bl ov111_021D1FB4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1942:
	cmp r0, #2
	bne _021D197C
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D350C
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201ACF4
	add r0, r4, #0
	bl ov111_021D1FB4
	mov r0, #0xb
	strb r0, [r4, #8]
	b _021D197C
_021D1970:
	bl sub_0202278C
	cmp r0, #0
	bne _021D197C
	mov r0, #3
	strb r0, [r4, #8]
_021D197C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D1508

	thumb_func_start ov111_021D1980
ov111_021D1980: ; 0x021D1980
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _021D1994
	cmp r0, #1
	beq _021D19C2
	cmp r0, #2
	beq _021D1A70
	b _021D1A7A
_021D1994:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov111_021D345C
	mov r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	ldr r0, _021D1A80 ; =0x0000054F
	bl sub_02005748
	mov r0, #1
	strb r0, [r5, #8]
	b _021D1A7A
_021D19C2:
	mov r3, #0x12
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x58]
	mov r1, #6
	mov r2, #0
	bl sub_02019184
	mov r3, #0x12
	mov r1, #0
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x58]
	add r2, r1, #0
	bl sub_02019184
	mov r3, #0x12
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x58]
	mov r1, #1
	mov r2, #0
	bl sub_02019184
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	sub r0, #0x10
	strh r0, [r5, #0x12]
	mov r0, #0x10
	ldrsh r1, [r5, r0]
	add r0, #0xf0
	cmp r1, r0
	blt _021D1A04
	mov r0, #2
	strb r0, [r5, #8]
	b _021D1A66
_021D1A04:
	mov r7, #0
	mov r6, #0x1a
	add r4, r5, #0
_021D1A0A:
	mov r1, #0x10
	mov r0, #0xbe
	ldrsh r1, [r5, r1]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x3c
	add r2, r6, #0
	bl ov111_021D3474
	add r7, r7, #1
	add r6, #0x2a
	add r4, r4, #4
	cmp r7, #4
	blt _021D1A0A
	mov r7, #0xd1
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_021D1A2E:
	ldr r0, [r4, r7]
	mov r1, #0
	bl ov111_021D345C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _021D1A2E
	ldr r4, _021D1A84 ; =0x021D3770
	mov r7, #0
	add r6, r5, #0
_021D1A44:
	mov r1, #0x10
	mov r2, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r4, r2]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r1, r1, r2
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r6, r0]
	bl ov111_021D3474
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #9
	blt _021D1A44
_021D1A66:
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add r0, #0x10
	strh r0, [r5, #0x10]
	b _021D1A7A
_021D1A70:
	mov r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1A7A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1A80: .word 0x0000054F
_021D1A84: .word 0x021D3770
	thumb_func_end ov111_021D1980

	thumb_func_start ov111_021D1A88
ov111_021D1A88: ; 0x021D1A88
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D1A9E
	cmp r0, #1
	beq _021D1AAA
	cmp r0, #2
	beq _021D1AE0
	b _021D1AEE
_021D1A9E:
	mov r0, #0xa
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _021D1AEE
_021D1AAA:
	ldrb r0, [r4, #0xd]
	sub r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _021D1AEE
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200E084
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _021D1AEE
_021D1AE0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1AEE
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D1AEE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov111_021D1A88

	thumb_func_start ov111_021D1AF4
ov111_021D1AF4: ; 0x021D1AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r4, _021D1B40 ; =0x021D3770
	mov r6, #0
	add r7, r5, r0
_021D1B04:
	ldrh r0, [r4, #2]
	mov r1, #3
	mov r2, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldrh r3, [r4]
	add r0, r7, #0
	bl ov111_021D33F4
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov111_021D345C
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _021D1B04
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B40: .word 0x021D3770
	thumb_func_end ov111_021D1AF4

	thumb_func_start ov111_021D1B44
ov111_021D1B44: ; 0x021D1B44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r4, _021D1B8C ; =0x021D3620
	mov r6, #0
	add r7, r5, r0
_021D1B54:
	ldrh r0, [r4, #2]
	mov r1, #1
	mov r2, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r3, [r4]
	add r0, r7, #0
	bl ov111_021D33F4
	mov r1, #0x35
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov111_021D345C
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _021D1B54
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B8C: .word 0x021D3620
	thumb_func_end ov111_021D1B44

	thumb_func_start ov111_021D1B90
ov111_021D1B90: ; 0x021D1B90
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0xa0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	add r1, #0xcc
	str r0, [sp, #0xc]
	add r0, r4, r1
	mov r1, #3
	mov r3, #0x44
	bl ov111_021D33F4
	mov r1, #0xcf
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ov111_021D345C
	mov r3, #0x44
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5b
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	mov r1, #3
	add r0, r4, r0
	add r2, r1, #0
	bl ov111_021D33F4
	mov r1, #0xd
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ov111_021D345C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D1B90

	thumb_func_start ov111_021D1BEC
ov111_021D1BEC: ; 0x021D1BEC
	push {r4, r5, r6, lr}
	mov r6, #0xcb
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021D1BF6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D1C00
	bl ov111_021D3448
_021D1C00:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D1BF6
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov111_021D1BEC

	thumb_func_start ov111_021D1C0C
ov111_021D1C0C: ; 0x021D1C0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0xbe
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021D1C18:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021D1C22
	bl ov111_021D3448
_021D1C22:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D1C18
	mov r7, #0xc2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_021D1C32:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D1C3C
	bl ov111_021D3448
_021D1C3C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #9
	blt _021D1C32
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D1C52
	bl ov111_021D3448
_021D1C52:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D1C60
	bl ov111_021D3448
_021D1C60:
	mov r7, #0xd1
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_021D1C68:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D1C72
	bl ov111_021D3448
_021D1C72:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _021D1C68
	mov r7, #0x35
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #4
_021D1C82:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D1C8C
	bl ov111_021D3448
_021D1C8C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _021D1C82
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D1CA2
	bl ov111_021D3448
_021D1CA2:
	mov r0, #2
	bl sub_02002C60
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #2
	bl sub_02002FA0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02002FA0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02002F54
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, #0x10
	add r0, r6, r0
	bl ov111_021D3320
	ldr r0, [r6, #0x34]
	bl sub_02015760
	ldr r0, [r6, #0x38]
	bl sub_0200B190
	ldr r0, [r6, #0x3c]
	bl sub_0200B3F0
	ldr r0, [r6, #0x40]
	bl sub_020237BC
	ldr r0, [r6, #0x44]
	bl sub_020237BC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200C560
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020181C4
	add r0, r6, #0
	add r0, #0x5c
	bl ov111_021D3578
	ldr r0, [r6, #0x58]
	bl ov111_021D2044
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D1C0C

	thumb_func_start ov111_021D1D30
ov111_021D1D30: ; 0x021D1D30
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D1D60 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1D64 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_021D1D60: .word 0xFFFFE0FF
_021D1D64: .word 0x04001000
	thumb_func_end ov111_021D1D30

	thumb_func_start ov111_021D1D68
ov111_021D1D68: ; 0x021D1D68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xb8
	mov r1, #0x73
	bl sub_02006C24
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov111_021D1FC4
	add r0, r5, #0
	bl ov111_021D2034
	mov r2, #0x87
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x73
	bl sub_0200B144
	str r0, [r5, #0x38]
	mov r0, #0x73
	bl sub_0200B358
	str r0, [r5, #0x3c]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x73
	bl sub_02023790
	str r0, [r5, #0x40]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x73
	bl sub_02023790
	mov r1, #0x1a
	str r0, [r5, #0x44]
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x73
	bl sub_02002E7C
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x73
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x73
	bl sub_02002E98
	mov r1, #6
	mov r0, #4
	lsl r1, r1, #6
	mov r2, #0x73
	bl sub_02002E98
	mov r0, #2
	mov r1, #0x73
	bl sub_02002BB8
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	mov r3, #0x73
	bl sub_0200C440
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x58]
	add r1, #0x5c
	bl ov111_021D3548
	mov r0, #0
	mov r1, #1
	mov r2, #0xc
	mov r3, #0x73
	bl sub_0201567C
	str r0, [r5, #0x34]
	add r0, r5, #0
	bl ov111_021D2E4C
	add r0, r5, #0
	bl ov111_021D2E8C
	add r0, r5, #0
	bl ov111_021D2EB4
	bl sub_0201FFD0
	mov r7, #0
	mov r6, #0x1a
	add r4, r5, #0
_021D1E36:
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	add r2, r7, #0
	mov r3, #0x3c
	bl ov111_021D33F4
	mov r1, #0xbe
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D345C
	add r7, r7, #1
	add r6, #0x2a
	add r4, r4, #4
	cmp r7, #4
	blt _021D1E36
	ldr r4, _021D1F5C ; =0x021D3770
	mov r7, #0
	add r6, r5, #0
_021D1E76:
	ldrh r0, [r4, #2]
	mov r1, #1
	mov r2, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrh r3, [r4]
	add r0, r5, r0
	bl ov111_021D33F4
	mov r1, #0xc2
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #0
	bl ov111_021D345C
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #9
	blt _021D1E76
	add r0, r5, #0
	bl ov111_021D1B90
	ldr r4, _021D1F60 ; =0x021D362C
	mov r7, #0
	add r6, r5, #0
_021D1EBC:
	ldrh r0, [r4, #2]
	mov r1, #2
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrh r3, [r4]
	add r0, r5, r0
	bl ov111_021D33F4
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r1, #0
	ldrsh r2, [r4, r1]
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r2, r1
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r6, r0]
	bl ov111_021D3474
	mov r0, #0xcb
	lsl r0, r0, #2
	add r1, r7, #0
	ldr r0, [r6, r0]
	add r1, #0x14
	bl ov111_021D3468
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #4
	blt _021D1EBC
	mov r0, #0x38
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #4
	mov r3, #0x26
	bl ov111_021D33F4
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov111_021D345C
	ldr r2, _021D1F64 ; =0x04000304
	ldr r0, _021D1F68 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bl sub_0201E3D8
	mov r0, #1
	bl sub_0201E450
	ldr r0, _021D1F6C ; =ov111_021D2090
	add r1, r5, #0
	bl sub_02017798
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1F5C: .word 0x021D3770
_021D1F60: .word 0x021D362C
_021D1F64: .word 0x04000304
_021D1F68: .word 0xFFFF7FFF
_021D1F6C: .word ov111_021D2090
	thumb_func_end ov111_021D1D68

	thumb_func_start ov111_021D1F70
ov111_021D1F70: ; 0x021D1F70
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x73
	bl sub_02015920
	mov r1, #0xe6
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov111_021D1F70

	thumb_func_start ov111_021D1F84
ov111_021D1F84: ; 0x021D1F84
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x58]
	mov r3, #0xe
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	lsl r3, r3, #6
	mov r1, #0xa
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x18
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #8
	strb r2, [r1, #0x11]
	add r3, #0x18
	ldr r0, [r0, r3]
	add r1, sp, #0
	bl sub_02015958
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end ov111_021D1F84

	thumb_func_start ov111_021D1FB4
ov111_021D1FB4: ; 0x021D1FB4
	mov r1, #0xe6
	lsl r1, r1, #2
	ldr r3, _021D1FC0 ; =sub_02015938
	ldr r0, [r0, r1]
	bx r3
	nop
_021D1FC0: .word sub_02015938
	thumb_func_end ov111_021D1FB4

	thumb_func_start ov111_021D1FC4
ov111_021D1FC4: ; 0x021D1FC4
	push {r4, lr}
	add r4, r0, #0
	bl ov111_021D20CC
	ldr r0, [r4, #0x58]
	bl ov111_021D20EC
	mov r0, #0x73
	bl sub_02002F38
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x73
	bl sub_02002F70
	mov r2, #0x57
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0xa4
	mov r3, #0x73
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #7
	bl ov111_021D2248
	bl ov111_021D22D0
	add r0, r4, #0
	mov r1, #6
	bl ov111_021D228C
	add r0, r4, #0
	mov r1, #1
	bl ov111_021D233C
	bl ov111_021D2304
	add r0, r4, #0
	mov r1, #0
	bl ov111_021D2380
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end ov111_021D1FC4

	thumb_func_start ov111_021D2034
ov111_021D2034: ; 0x021D2034
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r3, _021D2040 ; =ov111_021D2F80
	add r0, r0, r1
	bx r3
	nop
_021D2040: .word ov111_021D2F80
	thumb_func_end ov111_021D2034

	thumb_func_start ov111_021D2044
ov111_021D2044: ; 0x021D2044
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov111_021D2044

	thumb_func_start ov111_021D2090
ov111_021D2090: ; 0x021D2090
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D20C2
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D20A8
	bl sub_02003694
_021D20A8:
	ldr r0, [r4, #0x58]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _021D20C4 ; =0x027E0000
	ldr r1, _021D20C8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
_021D20C2:
	pop {r4, pc}
	; .align 2, 0
_021D20C4: .word 0x027E0000
_021D20C8: .word 0x00003FF8
	thumb_func_end ov111_021D2090

	thumb_func_start ov111_021D20CC
ov111_021D20CC: ; 0x021D20CC
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D20E8 ; =0x021D37BC
	add r3, sp, #0
	mov r2, #5
_021D20D6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D20D6
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D20E8: .word 0x021D37BC
	thumb_func_end ov111_021D20CC

	thumb_func_start ov111_021D20EC
ov111_021D20EC: ; 0x021D20EC
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D222C ; =0x021D363C
	add r3, sp, #0xa8
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D2230 ; =0x021D36B4
	add r3, sp, #0x8c
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x73
	bl sub_02019690
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _021D2234 ; =0x021D36EC
	add r3, sp, #0x70
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
	ldr r5, _021D2238 ; =0x021D3660
	add r3, sp, #0x54
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
	ldr r5, _021D223C ; =0x021D367C
	add r3, sp, #0x38
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
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _021D2240 ; =0x021D3698
	add r3, sp, #0x1c
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
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _021D2244 ; =0x021D36D0
	add r3, sp, #0
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
	mov r3, #0x73
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D222C: .word 0x021D363C
_021D2230: .word 0x021D36B4
_021D2234: .word 0x021D36EC
_021D2238: .word 0x021D3660
_021D223C: .word 0x021D367C
_021D2240: .word 0x021D3698
_021D2244: .word 0x021D36D0
	thumb_func_end ov111_021D20EC

	thumb_func_start ov111_021D2248
ov111_021D2248: ; 0x021D2248
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r4, r1, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #0x23
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #0x25
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2248

	thumb_func_start ov111_021D228C
ov111_021D228C: ; 0x021D228C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r4, r1, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #0x26
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #0x28
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D228C

	thumb_func_start ov111_021D22D0
ov111_021D22D0: ; 0x021D22D0
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb8
	mov r1, #0x22
	add r2, sp, #0
	mov r3, #0x73
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0xa0
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0xa0
	bl sub_020C0108
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov111_021D22D0

	thumb_func_start ov111_021D2304
ov111_021D2304: ; 0x021D2304
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb8
	mov r1, #0
	add r2, sp, #0
	mov r3, #0x73
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x12
	ldr r0, [r0, #0xc]
	lsl r1, r1, #4
	bl sub_020C2C54
	ldr r0, [sp]
	mov r2, #5
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov111_021D2304

	thumb_func_start ov111_021D233C
ov111_021D233C: ; 0x021D233C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r4, r1, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #4
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #6
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D233C

	thumb_func_start ov111_021D2380
ov111_021D2380: ; 0x021D2380
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r4, r1, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #7
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	mov r1, #9
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2380

	thumb_func_start ov111_021D23C4
ov111_021D23C4: ; 0x021D23C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x44]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	bl sub_0200C388
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x40]
	add r0, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D23C4

	thumb_func_start ov111_021D2424
ov111_021D2424: ; 0x021D2424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x44]
	add r1, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	bl sub_0200C388
	add r0, sp, #0x3c
	ldrb r0, [r0]
	ldr r1, [r5, #0x40]
	mov r2, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r3, r6, r0
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x40]
	add r0, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D2424

	thumb_func_start ov111_021D2494
ov111_021D2494: ; 0x021D2494
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x58]
	add r1, #0x5c
	bl ov111_021D3594
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x5c
	mov r2, #6
	bl ov111_021D23C4
	add r4, #0x5c
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2494

	thumb_func_start ov111_021D24D4
ov111_021D24D4: ; 0x021D24D4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r2, [r5, #0xe]
	mov r1, #0
	add r2, r2, #1
	bl ov111_021D26CC
	mov r3, #1
	mov r1, #0x53
	lsl r1, r1, #2
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0xc
	str r3, [sp, #0x14]
	bl ov111_021D23C4
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D24D4

	thumb_func_start ov111_021D2518
ov111_021D2518: ; 0x021D2518
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r2, [r4, #0xe]
	mov r1, #0
	add r2, r2, #1
	bl ov111_021D26CC
	mov r0, #5
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xfc
	mov r2, #9
	mov r3, #0x30
	bl ov111_021D2424
	add r4, #0xfc
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D2518

	thumb_func_start ov111_021D255C
ov111_021D255C: ; 0x021D255C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x35
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021D2566:
	ldr r1, _021D25B8 ; =0x000003AA
	add r2, r5, r4
	ldrb r1, [r2, r1]
	lsl r0, r4, #2
	add r6, r5, r0
	add r2, r5, r1
	mov r1, #0x36
	mov r0, #0x35
	lsl r1, r1, #4
	lsl r0, r0, #4
	ldrb r1, [r2, r1]
	ldr r0, [r6, r0]
	bl ov111_021D34C4
	ldr r0, [r6, r7]
	mov r1, #1
	bl ov111_021D345C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D2566
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov111_021D345C
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov111_021D350C
	mov r0, #0x55
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D25B8: .word 0x000003AA
	thumb_func_end ov111_021D255C

	thumb_func_start ov111_021D25BC
ov111_021D25BC: ; 0x021D25BC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021D2600 ; =0x000005F3
	bl sub_02005748
	mov r0, #5
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, #0x47
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0xb
	mov r3, #0x30
	bl ov111_021D2424
	add r4, r0, #0
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2600: .word 0x000005F3
	thumb_func_end ov111_021D25BC

	thumb_func_start ov111_021D2604
ov111_021D2604: ; 0x021D2604
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	mov r1, #0x4b
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	mov r2, #4
	mov r3, #0x30
	bl ov111_021D2424
	add r4, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2604

	thumb_func_start ov111_021D263C
ov111_021D263C: ; 0x021D263C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	mov r1, #0x4f
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	mov r2, #5
	mov r3, #0x18
	bl ov111_021D2424
	add r4, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D263C

	thumb_func_start ov111_021D2674
ov111_021D2674: ; 0x021D2674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r6, r0, #0
	lsl r2, r7, #1
	add r3, r6, r2
	ldr r2, _021D26C4 ; =0x0000036A
	ldr r0, [r6, #0x3c]
	ldrh r2, [r3, r2]
	mov r1, #0
	bl sub_0200B70C
	add r0, r7, #2
	lsl r4, r0, #4
	ldr r0, _021D26C8 ; =0x021D3814
	add r5, r6, #0
	ldrb r0, [r0, r7]
	mov r1, #0
	mov r2, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r5, #0x5c
	str r1, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, r4
	mov r3, #0x2c
	bl ov111_021D2424
	add r6, r0, #0
	add r0, r5, r4
	bl sub_0201A9A4
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D26C4: .word 0x0000036A
_021D26C8: .word 0x021D3814
	thumb_func_end ov111_021D2674

	thumb_func_start ov111_021D26CC
ov111_021D26CC: ; 0x021D26CC
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov111_021D26CC

	thumb_func_start ov111_021D26E4
ov111_021D26E4: ; 0x021D26E4
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov111_021D26E4

	thumb_func_start ov111_021D26EC
ov111_021D26EC: ; 0x021D26EC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x36
	add r5, r0, #0
	mov r4, #0
	mov r6, #4
	lsl r7, r7, #4
_021D26F8:
	bl sub_0201D2E8
	mov r1, #9
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r1, r5, r0
	ldrb r0, [r1, r7]
	cmp r0, #0xb0
	bne _021D26F8
	mov r0, #0x36
	lsl r0, r0, #4
	add r4, r4, #1
	strb r6, [r1, r0]
	cmp r4, #2
	blt _021D26F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D26EC

	thumb_func_start ov111_021D271C
ov111_021D271C: ; 0x021D271C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0201D2E8
	mov r7, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r4, r7, #0
_021D2738:
	bl sub_0201D2E8
	mov r1, #9
	bl sub_020E1F6C
	mov r0, #0x36
	add r2, r5, r1
	lsl r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0xb0
	bne _021D276C
	mov r7, #0
	strb r6, [r2, r0]
	cmp r4, #2
	beq _021D275E
	cmp r4, #4
	beq _021D275E
	cmp r4, #6
	bne _021D27A4
_021D275E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	bne _021D27A4
	mov r6, #0
	b _021D27A4
_021D276C:
	add r7, r7, #1
	cmp r7, #0x1e
	blt _021D2738
	mov r7, #0
	add r3, r7, #0
_021D2776:
	add r2, r5, r3
	ldrb r1, [r2, r0]
	cmp r1, #0xb0
	bne _021D279E
	mov r0, #0x36
	lsl r0, r0, #4
	strb r6, [r2, r0]
	cmp r4, #2
	beq _021D2790
	cmp r4, #4
	beq _021D2790
	cmp r4, #6
	bne _021D27A4
_021D2790:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	bne _021D27A4
	mov r6, #0
	b _021D27A4
_021D279E:
	add r3, r3, #1
	cmp r3, #9
	blt _021D2776
_021D27A4:
	add r4, r4, #1
	cmp r4, #9
	blt _021D2738
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D271C

	thumb_func_start ov111_021D27AC
ov111_021D27AC: ; 0x021D27AC
	push {r4, lr}
	add r4, r0, #0
	bl ov111_021D26EC
	add r0, r4, #0
	bl ov111_021D271C
	pop {r4, pc}
	thumb_func_end ov111_021D27AC

	thumb_func_start ov111_021D27BC
ov111_021D27BC: ; 0x021D27BC
	push {r3, r4}
	mov r1, #0x36
	mov r4, #0
	mov r3, #0xb0
	lsl r1, r1, #4
_021D27C6:
	add r2, r0, r4
	add r4, r4, #1
	strb r3, [r2, r1]
	cmp r4, #9
	blt _021D27C6
	pop {r3, r4}
	bx lr
	thumb_func_end ov111_021D27BC

	thumb_func_start ov111_021D27D4
ov111_021D27D4: ; 0x021D27D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r1, #0
	add r2, sp, #8
	mov r0, #0xff
_021D27E0:
	add r1, r1, #1
	strh r0, [r2]
	add r2, r2, #2
	cmp r1, #4
	blt _021D27E0
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	add r4, sp, #8
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r5, #0
	add r6, r4, #0
	mov r7, #0x17
_021D2808:
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _021D2818
	ldr r1, [sp]
	ldr r0, _021D2860 ; =0x0000036A
	mov r2, #0x5c
	strh r2, [r1, r0]
	b _021D284E
_021D2818:
	bl sub_0201D2E8
	add r1, r7, #0
	bl sub_020E2178
	strh r1, [r4]
	mov r1, #0
	cmp r5, #0
	ble _021D283C
	ldrh r3, [r4]
	add r2, r6, #0
_021D282E:
	ldrh r0, [r2]
	cmp r0, r3
	beq _021D283C
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r5
	blt _021D282E
_021D283C:
	cmp r1, r5
	bne _021D2818
	ldrh r0, [r4]
	lsl r1, r0, #1
	ldr r0, _021D2864 ; =0x021D37E4
	ldrh r2, [r0, r1]
	ldr r1, [sp]
	ldr r0, _021D2860 ; =0x0000036A
	strh r2, [r1, r0]
_021D284E:
	ldr r0, [sp]
	add r5, r5, #1
	add r0, r0, #2
	add r4, r4, #2
	str r0, [sp]
	cmp r5, #4
	blt _021D2808
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2860: .word 0x0000036A
_021D2864: .word 0x021D37E4
	thumb_func_end ov111_021D27D4

	thumb_func_start ov111_021D2868
ov111_021D2868: ; 0x021D2868
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xea
	lsl r0, r0, #2
	add r4, r1, #0
	ldrb r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	cmp r1, #8
	blo _021D2884
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2884:
	sub r0, #0x7c
	add r0, r5, r0
	str r0, [sp]
	ldr r1, [sp]
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov111_021D349C
	mov r0, #0xea
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	lsl r2, r4, #3
	ldr r4, _021D28E0 ; =0x021D3818
	lsl r1, r0, #0x18
	lsr r6, r1, #0x19
	ldrsb r7, [r4, r6]
	mov r4, #0xfe
	bic r0, r4
	add r4, r6, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	ldr r1, _021D28E4 ; =0x021D3708
	lsl r4, r4, #0x19
	add r1, r1, r2
	lsr r4, r4, #0x18
	ldr r2, [sp, #8]
	orr r4, r0
	mov r0, #0xea
	ldr r3, [sp, #0xc]
	lsl r0, r0, #2
	strb r4, [r5, r0]
	ldrsb r1, [r6, r1]
	ldr r4, [sp]
	ldr r0, [sp, #4]
	add r1, r3, r1
	ldr r0, [r4, r0]
	add r2, r2, r7
	bl ov111_021D3474
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D28E0: .word 0x021D3818
_021D28E4: .word 0x021D3708
	thumb_func_end ov111_021D2868

	thumb_func_start ov111_021D28E8
ov111_021D28E8: ; 0x021D28E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	lsl r1, r4, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019E2C
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D28E8

	thumb_func_start ov111_021D2918
ov111_021D2918: ; 0x021D2918
	push {r3, r4}
	mov r4, #0
	mov r2, #0xe7
	add r3, r4, #0
	lsl r2, r2, #2
_021D2922:
	add r1, r0, r3
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _021D2930
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_021D2930:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #9
	blo _021D2922
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov111_021D2918

	thumb_func_start ov111_021D2940
ov111_021D2940: ; 0x021D2940
	push {r3, r4}
	mov r4, #0
	mov r1, #0xe7
	add r3, r4, #0
	lsl r1, r1, #2
_021D294A:
	add r2, r0, r4
	strb r3, [r2, r1]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #9
	blo _021D294A
	pop {r3, r4}
	bx lr
	thumb_func_end ov111_021D2940

	thumb_func_start ov111_021D295C
ov111_021D295C: ; 0x021D295C
	push {r3, r4}
	mov r4, #0
	ldr r1, _021D2978 ; =0x000003AD
	add r3, r4, #0
_021D2964:
	add r2, r0, r4
	strb r3, [r2, r1]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #9
	blo _021D2964
	pop {r3, r4}
	bx lr
	nop
_021D2978: .word 0x000003AD
	thumb_func_end ov111_021D295C

	thumb_func_start ov111_021D297C
ov111_021D297C: ; 0x021D297C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xf
	lsl r0, r0, #6
	ldrh r0, [r7, r0]
	mov r6, #0
	cmp r0, #0
	ble _021D29CC
	ldr r2, _021D29D0 ; =0x021D3728
	lsl r0, r1, #2
	add r5, r2, r0
	ldrb r0, [r5, #2]
	add r4, r7, #0
	str r0, [sp]
_021D2998:
	ldr r0, _021D29D4 ; =0x000003C2
	ldrh r1, [r4, r0]
	add r0, r0, #2
	ldrh r2, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	bgt _021D29BE
	ldrb r0, [r5, #3]
	cmp r1, r0
	bgt _021D29BE
	ldrb r0, [r5]
	cmp r0, r2
	bgt _021D29BE
	ldrb r0, [r5, #1]
	cmp r2, r0
	bgt _021D29BE
	add r0, r7, #0
	bl ov111_021D2ECC
_021D29BE:
	mov r0, #0xf
	lsl r0, r0, #6
	ldrh r0, [r7, r0]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _021D2998
_021D29CC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D29D0: .word 0x021D3728
_021D29D4: .word 0x000003C2
	thumb_func_end ov111_021D297C

	thumb_func_start ov111_021D29D8
ov111_021D29D8: ; 0x021D29D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xf
	lsl r0, r0, #6
	ldrh r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _021D2A10
	mov r7, #0xf
	add r4, r5, #0
	lsl r7, r7, #6
_021D29EE:
	ldr r1, _021D2A14 ; =0x000003C2
	mov r2, #0xf1
	lsl r2, r2, #2
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov111_021D2A18
	ldrh r0, [r5, r7]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _021D29EE
_021D2A10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2A14: .word 0x000003C2
	thumb_func_end ov111_021D29D8

	thumb_func_start ov111_021D2A18
ov111_021D2A18: ; 0x021D2A18
	push {r3, r4, r5, r6, r7, lr}
	add r3, r1, #0
	mov r7, #2
	mvn r7, r7
	add r0, r0, r3
	ldr r6, _021D2A64 ; =0x00000402
	str r2, [sp]
	mov lr, r0
	mov r5, #1
	mov ip, r7
_021D2A2C:
	ldr r1, [sp]
	mov r2, #0xf0
	add r1, r1, r7
	add r4, r1, #0
	mul r4, r2
	mov r2, lr
	add r2, r2, r4
	mov r0, ip
	sub r4, r2, #3
_021D2A3E:
	add r2, r3, r0
	cmp r2, #0
	ble _021D2A52
	cmp r2, #0xf0
	bge _021D2A52
	cmp r1, #0
	ble _021D2A52
	cmp r1, #0xa0
	bge _021D2A52
	strb r5, [r4, r6]
_021D2A52:
	add r0, r0, #1
	add r4, r4, #1
	cmp r0, #3
	blt _021D2A3E
	add r7, r7, #1
	cmp r7, #3
	blt _021D2A2C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2A64: .word 0x00000402
	thumb_func_end ov111_021D2A18

	thumb_func_start ov111_021D2A68
ov111_021D2A68: ; 0x021D2A68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r4, #0
	lsl r1, r0, #2
	ldr r0, _021D2B08 ; =0x021D374C
	ldrsh r7, [r0, r1]
	ldr r0, _021D2B0C ; =0x021D374E
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	add r0, #0x14
	ldr r1, [sp, #8]
	mov ip, r0
	cmp r1, r0
	bge _021D2AC2
	ldr r0, [sp, #8]
	add r2, r7, #0
	add r6, r0, #0
	mov r1, #0xf0
	ldr r0, _021D2B10 ; =0x00000402
	mul r6, r1
	add r2, #0x19
_021D2A98:
	add r3, r7, #0
	cmp r7, r2
	bge _021D2AB4
	ldr r1, [sp]
	add r1, r1, r6
	add r5, r1, r7
_021D2AA4:
	ldrb r1, [r5, r0]
	cmp r1, #1
	bne _021D2AAC
	add r4, r4, #1
_021D2AAC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, r2
	blt _021D2AA4
_021D2AB4:
	ldr r1, [sp, #8]
	add r6, #0xf0
	add r3, r1, #1
	mov r1, ip
	str r3, [sp, #8]
	cmp r3, r1
	blt _021D2A98
_021D2AC2:
	mov r0, #0x5f
	lsl r0, r0, #2
	cmp r4, r0
	blt _021D2B00
	ldr r1, _021D2B14 ; =0x000003AD
	ldr r0, [sp]
	add r4, r0, r1
	ldr r0, [sp, #4]
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D2AF6
	ldr r0, _021D2B18 ; =0x000005E2
	bl sub_02005748
	ldr r0, _021D2B1C ; =0x000003A9
	ldr r1, [sp]
	ldrb r2, [r1, r0]
	add r3, r1, r2
	ldr r1, [sp, #4]
	add r2, r0, #1
	strb r1, [r3, r2]
	ldr r1, [sp]
	ldrb r1, [r1, r0]
	add r2, r1, #1
	ldr r1, [sp]
	strb r2, [r1, r0]
_021D2AF6:
	ldr r1, [sp, #4]
	mov r0, #1
	add sp, #0xc
	strb r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_021D2B00:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D2B08: .word 0x021D374C
_021D2B0C: .word 0x021D374E
_021D2B10: .word 0x00000402
_021D2B14: .word 0x000003AD
_021D2B18: .word 0x000005E2
_021D2B1C: .word 0x000003A9
	thumb_func_end ov111_021D2A68

	thumb_func_start ov111_021D2B20
ov111_021D2B20: ; 0x021D2B20
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D2BA8 ; =0x000003A6
	add r6, r0, #0
	ldrb r0, [r6, r2]
	add r0, r0, #1
	strb r0, [r6, r2]
	ldrb r0, [r6, r2]
	cmp r0, #1
	blo _021D2BA4
	mov r0, #0
	strb r0, [r6, r2]
	sub r1, r2, #1
	ldrb r1, [r6, r1]
	add r3, r1, #1
	sub r1, r2, #1
	strb r3, [r6, r1]
	ldrb r1, [r6, r1]
	cmp r1, #8
	blo _021D2B4A
	sub r1, r2, #1
	strb r0, [r6, r1]
_021D2B4A:
	ldr r0, _021D2BAC ; =0x000003A9
	ldrb r0, [r6, r0]
	cmp r0, #2
	bne _021D2B96
	ldr r7, _021D2BB0 ; =0x021D3770
	mov r4, #0
	add r5, r6, #0
_021D2B58:
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov111_021D3500
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov111_021D345C
	ldr r0, _021D2BB4 ; =0x000003AA
	add r1, r6, r4
	ldrb r0, [r1, r0]
	mov r2, #2
	lsl r1, r0, #2
	add r3, r7, r1
	mov r0, #0xd1
	ldrsh r1, [r7, r1]
	ldrsh r2, [r3, r2]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	sub r1, #0x24
	sub r2, #0xa
	bl ov111_021D3474
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021D2B58
_021D2B96:
	ldr r1, _021D2BB8 ; =0x000003A5
	mov r0, #0x5b
	ldrb r1, [r6, r1]
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov111_021D33B0
_021D2BA4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2BA8: .word 0x000003A6
_021D2BAC: .word 0x000003A9
_021D2BB0: .word 0x021D3770
_021D2BB4: .word 0x000003AA
_021D2BB8: .word 0x000003A5
	thumb_func_end ov111_021D2B20

	thumb_func_start ov111_021D2BBC
ov111_021D2BBC: ; 0x021D2BBC
	push {r4, r5}
	ldr r1, _021D2D08 ; =0x000003A9
	mov r3, #0
	ldrb r2, [r0, r1]
	cmp r2, #1
	bhi _021D2BCE
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_021D2BCE:
	add r2, r1, #2
	ldrb r2, [r0, r2]
	add r4, r0, r2
	add r2, r1, #0
	sub r2, #0x49
	ldrb r2, [r4, r2]
	add r4, r1, #1
	ldrb r4, [r0, r4]
	add r5, r0, r4
	add r4, r1, #0
	sub r4, #0x49
	ldrb r4, [r5, r4]
	cmp r4, r2
	bne _021D2BFC
	sub r2, r1, #1
	ldrb r4, [r0, r2]
	mov r2, #1
	sub r1, r1, #1
	bic r4, r2
	mov r2, #1
	orr r2, r4
	strb r2, [r0, r1]
	b _021D2C26
_021D2BFC:
	cmp r4, #4
	bne _021D2C12
	sub r2, r1, #1
	ldrb r4, [r0, r2]
	mov r2, #1
	sub r1, r1, #1
	bic r4, r2
	mov r2, #1
	orr r2, r4
	strb r2, [r0, r1]
	b _021D2C26
_021D2C12:
	cmp r2, #4
	bne _021D2C26
	sub r2, r1, #1
	ldrb r4, [r0, r2]
	mov r2, #1
	sub r1, r1, #1
	bic r4, r2
	mov r2, #1
	orr r2, r4
	strb r2, [r0, r1]
_021D2C26:
	ldr r1, _021D2D08 ; =0x000003A9
	ldrb r2, [r0, r1]
	cmp r2, #2
	bhi _021D2C34
	mov r0, #0
	pop {r4, r5}
	bx lr
_021D2C34:
	add r2, r1, #2
	ldrb r2, [r0, r2]
	add r4, r0, r2
	add r2, r1, #0
	sub r2, #0x49
	ldrb r4, [r4, r2]
	add r2, r1, #1
	ldrb r2, [r0, r2]
	add r5, r0, r2
	add r2, r1, #0
	sub r2, #0x49
	ldrb r2, [r5, r2]
	cmp r2, r4
	bne _021D2C60
	add r5, r1, #3
	ldrb r5, [r0, r5]
	sub r1, #0x49
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r2, r1
	bne _021D2C60
	mov r3, #1
_021D2C60:
	cmp r2, #4
	bne _021D2C6A
	cmp r4, #4
	bne _021D2C6A
	mov r3, #1
_021D2C6A:
	cmp r2, #4
	bne _021D2C80
	mov r1, #0xeb
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x4c
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021D2C80
	mov r3, #1
_021D2C80:
	cmp r4, #4
	bne _021D2C96
	mov r1, #0xeb
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x4c
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021D2C96
	mov r3, #1
_021D2C96:
	cmp r2, #4
	bne _021D2CAC
	mov r1, #0xeb
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x4c
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r4, r1
	bne _021D2CAC
	mov r3, #1
_021D2CAC:
	cmp r4, #4
	bne _021D2CC2
	mov r1, #0xeb
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x4c
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r2, r1
	bne _021D2CC2
	mov r3, #1
_021D2CC2:
	mov r1, #0xeb
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x4c
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021D2CD8
	cmp r2, r4
	bne _021D2CD8
	mov r3, #1
_021D2CD8:
	cmp r3, #1
	bne _021D2D02
	ldr r1, _021D2D0C ; =0x000003AA
	mov r4, #0
	add r2, r1, #0
	sub r2, #0x4a
_021D2CE4:
	add r3, r0, r4
	ldrb r3, [r3, r1]
	add r3, r0, r3
	ldrb r3, [r3, r2]
	cmp r3, #4
	beq _021D2CF6
	ldr r1, _021D2D10 ; =0x000003A7
	strb r3, [r0, r1]
	b _021D2CFC
_021D2CF6:
	add r4, r4, #1
	cmp r4, #3
	blt _021D2CE4
_021D2CFC:
	mov r0, #1
	pop {r4, r5}
	bx lr
_021D2D02:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_021D2D08: .word 0x000003A9
_021D2D0C: .word 0x000003AA
_021D2D10: .word 0x000003A7
	thumb_func_end ov111_021D2BBC

	thumb_func_start ov111_021D2D14
ov111_021D2D14: ; 0x021D2D14
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	mov r7, #0x36
	add r4, r0, #0
	add r5, r6, #0
	lsl r7, r7, #4
_021D2D22:
	ldr r1, _021D2D58 ; =0x000003AA
	add r2, r6, r4
	ldrb r1, [r2, r1]
	add r1, r6, r1
	ldrb r1, [r1, r7]
	cmp r1, #4
	bne _021D2D3E
	mov r0, #0x35
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov111_021D3530
	mov r0, #1
_021D2D3E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D2D22
	mov r1, #0
	strb r1, [r6, #0x14]
	ldrb r2, [r6, #0x14]
	lsl r1, r2, #4
	orr r2, r1
	ldr r1, _021D2D5C ; =0x0400004D
	strb r2, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2D58: .word 0x000003AA
_021D2D5C: .word 0x0400004D
	thumb_func_end ov111_021D2D14

	thumb_func_start ov111_021D2D60
ov111_021D2D60: ; 0x021D2D60
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D2E08 ; =0x000003AA
	add r5, r0, #0
	add r3, r2, #0
	mov r0, #0
	sub r3, #0x4a
_021D2D6C:
	add r4, r5, r0
	ldrb r4, [r4, r2]
	add r4, r5, r4
	ldrb r4, [r4, r3]
	cmp r4, #4
	beq _021D2D7E
	add r0, r0, #1
	cmp r0, #3
	blt _021D2D6C
_021D2D7E:
	cmp r0, #3
	bne _021D2D86
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2D86:
	cmp r1, #0
	ldrb r0, [r5, #0x14]
	bne _021D2DD2
	cmp r0, #0
	bne _021D2D96
	ldr r0, _021D2E0C ; =0x00000552
	bl sub_02005748
_021D2D96:
	ldrb r0, [r5, #0x14]
	cmp r0, #4
	bhs _021D2DA2
	add r0, r0, #1
	strb r0, [r5, #0x14]
	b _021D2DF8
_021D2DA2:
	mov r7, #0x36
	mov r4, #0
	add r6, r5, #0
	lsl r7, r7, #4
_021D2DAA:
	ldr r0, _021D2E08 ; =0x000003AA
	add r1, r5, r4
	ldrb r0, [r1, r0]
	add r0, r5, r0
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _021D2DC6
	ldr r1, _021D2E10 ; =0x000003A7
	mov r0, #0x35
	lsl r0, r0, #4
	ldrb r1, [r5, r1]
	ldr r0, [r6, r0]
	bl ov111_021D34C4
_021D2DC6:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #3
	blt _021D2DAA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DD2:
	cmp r0, #0
	beq _021D2DDC
	sub r0, r0, #1
	strb r0, [r5, #0x14]
	b _021D2DF8
_021D2DDC:
	mov r4, #0
	mov r6, #0x35
	add r7, r4, #0
	lsl r6, r6, #4
_021D2DE4:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl ov111_021D3530
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D2DE4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DF8:
	ldrb r1, [r5, #0x14]
	lsl r0, r1, #4
	orr r1, r0
	ldr r0, _021D2E14 ; =0x0400004D
	strb r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2E08: .word 0x000003AA
_021D2E0C: .word 0x00000552
_021D2E10: .word 0x000003A7
_021D2E14: .word 0x0400004D
	thumb_func_end ov111_021D2D60

	thumb_func_start ov111_021D2E18
ov111_021D2E18: ; 0x021D2E18
	ldrb r1, [r0, #0xe]
	add r1, r1, #1
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end ov111_021D2E18

	thumb_func_start ov111_021D2E20
ov111_021D2E20: ; 0x021D2E20
	ldrb r1, [r0, #0xe]
	add r1, r1, #1
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end ov111_021D2E20

	thumb_func_start ov111_021D2E28
ov111_021D2E28: ; 0x021D2E28
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov111_021D345C
	add r0, r4, #0
	add r0, #0xfc
	mov r1, #0
	bl sub_0201ADA4
	add r4, #0xfc
	add r0, r4, #0
	bl sub_0201A9A4
	pop {r4, pc}
	thumb_func_end ov111_021D2E28

	thumb_func_start ov111_021D2E4C
ov111_021D2E4C: ; 0x021D2E4C
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0x39
	add r4, r0, #0
	mov r0, #0x73
	lsl r3, r3, #4
	str r0, [sp]
	mov r0, #0xb8
	mov r1, #7
	mov r2, #0
	add r3, r4, r3
	bl sub_02006F50
	mov r1, #0xe3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r3, [r4, r0]
	mov r1, #0
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, #0x58]
	ldr r3, [r3, #0x10]
	bl sub_0201958C
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_02019448
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov111_021D2E4C

	thumb_func_start ov111_021D2E8C
ov111_021D2E8C: ; 0x021D2E8C
	push {r4, lr}
	mov r1, #0x39
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r0, #0x73
	ldr r1, [r1, #0x10]
	bl sub_02018144
	mov r1, #0xe5
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D2EB0
	bne _021D2EB0
	bl sub_02022974
_021D2EB0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov111_021D2E8C

	thumb_func_start ov111_021D2EB4
ov111_021D2EB4: ; 0x021D2EB4
	mov r1, #0x39
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [r2, #0x14]
	ldr r3, _021D2EC8 ; =sub_020D50B8
	ldr r2, [r2, #0x10]
	bx r3
	nop
_021D2EC8: .word sub_020D50B8
	thumb_func_end ov111_021D2EB4

	thumb_func_start ov111_021D2ECC
ov111_021D2ECC: ; 0x021D2ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #2
	mvn r0, r0
	add r7, r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
_021D2EDE:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r4, [sp, #0xc]
	add r5, r1, r0
_021D2EE6:
	add r1, r7, r4
	cmp r1, #0
	ble _021D2F04
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bge _021D2F04
	cmp r5, #0
	ble _021D2F04
	cmp r5, #0xc0
	bge _021D2F04
	add r0, r6, #0
	add r2, r5, #0
	bl ov111_021D2F38
_021D2F04:
	add r4, r4, #1
	cmp r4, #3
	blt _021D2EE6
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blt _021D2EDE
	mov r1, #0
	mov r3, #0xe5
	str r1, [sp]
	lsl r3, r3, #2
	ldr r2, [r6, r3]
	sub r3, r3, #4
	ldr r3, [r6, r3]
	ldr r0, [r6, #0x58]
	ldr r3, [r3, #0x10]
	bl sub_0201958C
	ldr r0, [r6, #0x58]
	mov r1, #0
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov111_021D2ECC

	thumb_func_start ov111_021D2F38
ov111_021D2F38: ; 0x021D2F38
	push {r3, r4, r5, r6}
	mov r3, #1
	mov r4, #0xff
	tst r3, r1
	bne _021D2F46
	mov r3, #0xf
	b _021D2F48
_021D2F46:
	mov r3, #0xf0
_021D2F48:
	eor r3, r4
	lsl r3, r3, #0x18
	lsr r4, r1, #3
	mov r6, #7
	lsr r5, r2, #3
	and r1, r6
	lsr r3, r3, #0x18
	lsl r4, r4, #5
	lsl r5, r5, #0xa
	lsr r1, r1, #1
	cmp r2, #8
	bhs _021D2F64
	lsl r2, r2, #2
	b _021D2F68
_021D2F64:
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1b
_021D2F68:
	mov r6, #0xe5
	lsl r6, r6, #2
	add r4, r5, r4
	add r1, r1, r4
	ldr r0, [r0, r6]
	add r2, r2, r1
	ldrb r1, [r0, r2]
	and r1, r3
	strb r1, [r0, r2]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov111_021D2F38

	thumb_func_start ov111_021D2F80
ov111_021D2F80: ; 0x021D2F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x73
	bl sub_0201DBEC
	bl ov111_021D3378
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x73
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x28
	add r1, r5, #4
	mov r2, #0x73
	bl sub_020095C4
	mov r2, #2
	str r0, [r5, #0]
	add r0, r5, #4
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r4, _021D3048 ; =0x021D3820
	mov r7, #0
	add r6, r5, #0
_021D2FCC:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x73
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _021D2FCC
	add r0, r5, #0
	mov r1, #1
	bl ov111_021D304C
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov111_021D30D8
	add r0, r5, #0
	mov r1, #1
	bl ov111_021D3168
	add r0, r5, #0
	mov r1, #1
	bl ov111_021D31F4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #2
	bl ov111_021D30D8
	mov r7, #0x4f
	lsl r7, r7, #2
	mov r4, #0
	add r6, r7, #4
_021D301E:
	ldr r0, [r5, r7]
	bl sub_0200A328
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _021D301E
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D3048: .word 0x021D3820
	thumb_func_end ov111_021D2F80

	thumb_func_start ov111_021D304C
ov111_021D304C: ; 0x021D304C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xc
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xd
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xb
	mov r3, #0
	bl sub_02009918
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xa
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D304C

	thumb_func_start ov111_021D30D8
ov111_021D30D8: ; 0x021D30D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r7, r3, #0
	str r6, [sp]
	add r5, r0, #0
	str r7, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	lsl r4, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x20
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x4f
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x21
	mov r3, #0
	bl sub_020098B8
	mov r1, #5
	add r2, r5, r4
	lsl r1, r1, #6
	str r0, [r2, r1]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x1f
	mov r3, #0
	bl sub_02009918
	mov r1, #0x51
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x1e
	mov r3, #0
	bl sub_02009918
	mov r1, #0x52
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D30D8

	thumb_func_start ov111_021D3168
ov111_021D3168: ; 0x021D3168
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x10
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x11
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xf
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xe
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D3168

	thumb_func_start ov111_021D31F4
ov111_021D31F4: ; 0x021D31F4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x14
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x15
	mov r3, #0
	bl sub_020098B8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x13
	mov r3, #0
	bl sub_02009918
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x12
	mov r3, #0
	bl sub_02009918
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D31F4

	thumb_func_start ov111_021D3280
ov111_021D3280: ; 0x021D3280
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x4b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r3, [sp, #0x10]
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x50]
	mov r0, #0x73
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _021D32F6
	mov r0, #1
	str r0, [sp, #0x54]
	b _021D32FA
_021D32F6:
	mov r0, #2
	str r0, [sp, #0x54]
_021D32FA:
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D3280

	thumb_func_start ov111_021D3320
ov111_021D3320: ; 0x021D3320
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021D332A:
	lsl r0, r4, #4
	add r6, r5, r0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, [r6, r7]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021D332A
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021D334E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D334E
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov111_021D3320

	thumb_func_start ov111_021D3378
ov111_021D3378: ; 0x021D3378
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D33A8 ; =0x021D3824
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021D33AC ; =0x00200010
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0xe
	mov r1, #0x73
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D33A8: .word 0x021D3824
_021D33AC: .word 0x00200010
	thumb_func_end ov111_021D3378

	thumb_func_start ov111_021D33B0
ov111_021D33B0: ; 0x021D33B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _021D33C0
	bl sub_02022974
_021D33C0:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x73
	str r0, [sp, #4]
	ldr r3, _021D33F0 ; =0x021D3940
	add r0, #0xbd
	ldrb r3, [r3, r4]
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0xb8
	bl sub_020099D4
	add r0, r6, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D33F0: .word 0x021D3940
	thumb_func_end ov111_021D33B0

	thumb_func_start ov111_021D33F4
ov111_021D33F4: ; 0x021D33F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x73
	mov r1, #0x10
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021D3410:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D3410
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov111_021D3280
	add r2, sp, #0x10
	str r0, [r4, #0xc]
	ldrb r0, [r2, #0x14]
	strb r0, [r4, #2]
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov111_021D3474
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov111_021D33F4

	thumb_func_start ov111_021D3448
ov111_021D3448: ; 0x021D3448
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov111_021D3448

	thumb_func_start ov111_021D345C
ov111_021D345C: ; 0x021D345C
	ldr r3, _021D3464 ; =sub_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3464: .word sub_02021CAC
	thumb_func_end ov111_021D345C

	thumb_func_start ov111_021D3468
ov111_021D3468: ; 0x021D3468
	ldr r3, _021D3470 ; =sub_02021F58
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3470: .word sub_02021F58
	thumb_func_end ov111_021D3468

	thumb_func_start ov111_021D3474
ov111_021D3474: ; 0x021D3474
	push {lr}
	sub sp, #0xc
	lsl r2, r2, #0xc
	lsl r1, r1, #0xc
	str r2, [sp, #4]
	str r1, [sp]
	ldrb r1, [r0, #2]
	cmp r1, #1
	bne _021D348E
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r2, r1
	str r1, [sp, #4]
_021D348E:
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov111_021D3474

	thumb_func_start ov111_021D349C
ov111_021D349C: ; 0x021D349C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r2, [r0, #0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	str r1, [r5, #0]
	ldr r1, [r0, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D349C

	thumb_func_start ov111_021D34C4
ov111_021D34C4: ; 0x021D34C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02021DCC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D34C4

	thumb_func_start ov111_021D34E0
ov111_021D34E0: ; 0x021D34E0
	ldr r3, _021D34EC ; =sub_02021C80
	ldr r0, [r0, #0xc]
	ldr r1, _021D34F0 ; =0x021D3834
	mov r2, #1
	bx r3
	nop
_021D34EC: .word sub_02021C80
_021D34F0: .word 0x021D3834
	thumb_func_end ov111_021D34E0

	thumb_func_start ov111_021D34F4
ov111_021D34F4: ; 0x021D34F4
	ldr r3, _021D34FC ; =sub_02021C80
	ldr r0, [r0, #0xc]
	mov r2, #2
	bx r3
	; .align 2, 0
_021D34FC: .word sub_02021C80
	thumb_func_end ov111_021D34F4

	thumb_func_start ov111_021D3500
ov111_021D3500: ; 0x021D3500
	ldr r3, _021D3508 ; =sub_02021EC4
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3508: .word sub_02021EC4
	thumb_func_end ov111_021D3500

	thumb_func_start ov111_021D350C
ov111_021D350C: ; 0x021D350C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021CC8
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r4, #0xc]
	bl sub_02021E24
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021D6C
	pop {r4, pc}
	thumb_func_end ov111_021D350C

	thumb_func_start ov111_021D3530
ov111_021D3530: ; 0x021D3530
	ldr r3, _021D3538 ; =sub_02021FA0
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3538: .word sub_02021FA0
	thumb_func_end ov111_021D3530

	thumb_func_start ov111_021D353C
ov111_021D353C: ; 0x021D353C
	ldr r3, _021D3544 ; =sub_02021FD0
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3544: .word sub_02021FD0
	thumb_func_end ov111_021D353C

	thumb_func_start ov111_021D3548
ov111_021D3548: ; 0x021D3548
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_021D3550:
	ldr r2, _021D3574 ; =0x021D38B8
	lsl r6, r4, #4
	lsl r3, r4, #3
	add r0, r7, #0
	add r1, r5, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x10
	blo _021D3550
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3574: .word 0x021D38B8
	thumb_func_end ov111_021D3548

	thumb_func_start ov111_021D3578
ov111_021D3578: ; 0x021D3578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D357E:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x10
	blo _021D357E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D3578

	thumb_func_start ov111_021D3594
ov111_021D3594: ; 0x021D3594
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r1, #0x73
	str r1, [sp, #4]
	ldr r2, _021D35BC ; =0x000003F7
	mov r1, #2
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _021D35BC ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D35BC: .word 0x000003F7
	thumb_func_end ov111_021D3594

	thumb_func_start ov111_021D35C0
ov111_021D35C0: ; 0x021D35C0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x73
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021D35FC ; =0x000003D9
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _021D35FC ; =0x000003D9
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D35FC: .word 0x000003D9
	thumb_func_end ov111_021D35C0
	; 0x021D3600

	.incbin "data/overlay111.bin"
