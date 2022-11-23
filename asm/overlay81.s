	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov81_021D0D80
ov81_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _021D0E60 ; =0xFFFFE0FF
	ldr r3, _021D0E64 ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	add r0, #0x50
	and r1, r2
	str r1, [r3, #0]
	mov r1, #0
	strh r1, [r0]
	add r3, #0x50
	strh r1, [r3]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #2
	mov r0, #3
	mov r1, #0x2a
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r4, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r1, _021D0E68 ; =0x00001068
	add r0, r4, #0
	mov r2, #0x2a
	bl sub_0200681C
	ldr r2, _021D0E68 ; =0x00001068
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x2a
	bl sub_02018340
	str r0, [r4, #0]
	str r5, [r4, #0x4c]
	add r0, r5, #0
	bl sub_0202B628
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02025E38
	str r0, [r4, #0x48]
	mov r0, #0
	mov r1, #0x2a
	bl sub_0208C120
	mov r0, #0
	mov r1, #0x2a
	bl sub_02002BEC
	bl ov81_021D0F20
	ldr r0, [r4, #0]
	bl ov81_021D0F40
	add r0, r4, #0
	bl ov81_021D1050
	add r0, r4, #0
	bl ov81_021D1130
	add r0, r4, #0
	bl ov81_021D1610
	add r0, r4, #0
	mov r1, #0
	bl ov81_021D164C
	add r0, r4, #0
	bl ov81_021D1434
	ldr r0, _021D0E6C ; =ov81_021D0F00
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	bl sub_02039734
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r1, #0
	mov r0, #0x43
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0E60: .word 0xFFFFE0FF
_021D0E64: .word 0x04001000
_021D0E68: .word 0x00001068
_021D0E6C: .word ov81_021D0F00
	thumb_func_end ov81_021D0D80

	thumb_func_start ov81_021D0E70
ov81_021D0E70: ; 0x021D0E70
	push {r4, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _021D0EC0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E8A: ; jump table
	.short _021D0E94 - _021D0E8A - 2 ; case 0
	.short _021D0E9C - _021D0E8A - 2 ; case 1
	.short _021D0EA4 - _021D0E8A - 2 ; case 2
	.short _021D0EAC - _021D0E8A - 2 ; case 3
	.short _021D0EB4 - _021D0E8A - 2 ; case 4
_021D0E94:
	bl ov81_021D1174
	str r0, [r4, #0]
	b _021D0EC0
_021D0E9C:
	bl ov81_021D1188
	str r0, [r4, #0]
	b _021D0EC0
_021D0EA4:
	bl ov81_021D120C
	str r0, [r4, #0]
	b _021D0EC0
_021D0EAC:
	bl ov81_021D12E8
	str r0, [r4, #0]
	b _021D0EC0
_021D0EB4:
	bl ov81_021D1358
	cmp r0, #1
	bne _021D0EC0
	mov r0, #1
	pop {r4, pc}
_021D0EC0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov81_021D0E70

	thumb_func_start ov81_021D0EC4
ov81_021D0EC4: ; 0x021D0EC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov81_021D1634
	ldr r0, [r4, #0]
	bl ov81_021D101C
	add r0, r4, #0
	bl ov81_021D115C
	mov r0, #0
	bl sub_02002C28
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x2a
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov81_021D0EC4

	thumb_func_start ov81_021D0F00
ov81_021D0F00: ; 0x021D0F00
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	ldr r3, _021D0F18 ; =0x027E0000
	ldr r1, _021D0F1C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021D0F18: .word 0x027E0000
_021D0F1C: .word 0x00003FF8
	thumb_func_end ov81_021D0F00

	thumb_func_start ov81_021D0F20
ov81_021D0F20: ; 0x021D0F20
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D0F3C ; =0x021D33C0
	add r3, sp, #0
	mov r2, #5
_021D0F2A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D0F2A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D0F3C: .word 0x021D33C0
	thumb_func_end ov81_021D0F20

	thumb_func_start ov81_021D0F40
ov81_021D0F40: ; 0x021D0F40
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _021D1008 ; =0x021D3340
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D100C ; =0x021D336C
	add r3, sp, #0x54
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
	ldr r5, _021D1010 ; =0x021D3350
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
	ldr r5, _021D1014 ; =0x021D3388
	add r3, sp, #0x1c
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
	ldr r5, _021D1018 ; =0x021D33A4
	add r3, sp, #0
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
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x2a
	bl sub_02019690
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x2a
	bl sub_02019690
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_021D1008: .word 0x021D3340
_021D100C: .word 0x021D336C
_021D1010: .word 0x021D3350
_021D1014: .word 0x021D3388
_021D1018: .word 0x021D33A4
	thumb_func_end ov81_021D0F40

	thumb_func_start ov81_021D101C
ov81_021D101C: ; 0x021D101C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201FF00
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
	mov r0, #0x2a
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov81_021D101C

	thumb_func_start ov81_021D1050
ov81_021D1050: ; 0x021D1050
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x50
	mov r1, #0x2a
	bl sub_02006C24
	add r4, r0, #0
	ldr r0, [r5, #0x48]
	bl sub_02025F30
	cmp r0, #0
	bne _021D10AC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x2a
	str r0, [sp, #0xc]
	mov r1, #2
	ldr r2, [r5, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020070E8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x2a
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r3, #2
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x2a
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02007130
	b _021D10EE
_021D10AC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x2a
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #3
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x2a
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x2a
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02007130
_021D10EE:
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_02019FE4
	add r1, r5, #0
	mov r2, #2
	add r1, #0x5c
	lsl r2, r2, #0xa
	bl sub_020C4B18
	ldr r0, [r5, #0]
	add r5, #0x5c
	mov r3, #2
	mov r1, #3
	add r2, r5, #0
	lsl r3, r3, #0xa
	bl sub_02019574
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x2a
	bl sub_02002E7C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov81_021D1050

	thumb_func_start ov81_021D1130
ov81_021D1130: ; 0x021D1130
	push {r4, lr}
	ldr r2, _021D1158 ; =0x0000016E
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x2a
	bl sub_0200B144
	str r0, [r4, #0x50]
	mov r0, #0x2a
	bl sub_0200B358
	str r0, [r4, #0x54]
	mov r0, #0x80
	mov r1, #0x2a
	bl sub_02023790
	str r0, [r4, #0x58]
	pop {r4, pc}
	nop
_021D1158: .word 0x0000016E
	thumb_func_end ov81_021D1130

	thumb_func_start ov81_021D115C
ov81_021D115C: ; 0x021D115C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_0200B190
	ldr r0, [r4, #0x54]
	bl sub_0200B3F0
	ldr r0, [r4, #0x58]
	bl sub_020237BC
	pop {r4, pc}
	thumb_func_end ov81_021D115C

	thumb_func_start ov81_021D1174
ov81_021D1174: ; 0x021D1174
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1182
	mov r0, #1
	pop {r3, pc}
_021D1182:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov81_021D1174

	thumb_func_start ov81_021D1188
ov81_021D1188: ; 0x021D1188
	push {r3, lr}
	ldr r1, _021D1204 ; =0x021BF67C
	ldr r3, [r1, #0x48]
	mov r1, #0x20
	add r2, r3, #0
	tst r2, r1
	beq _021D11A8
	sub r1, #0x21
	bl ov81_021D13CC
	cmp r0, #1
	bne _021D11A4
	mov r0, #2
	pop {r3, pc}
_021D11A4:
	mov r0, #1
	pop {r3, pc}
_021D11A8:
	mov r1, #0x11
	tst r1, r3
	beq _021D11C0
	mov r1, #1
	bl ov81_021D13CC
	cmp r0, #1
	bne _021D11BC
	mov r0, #3
	pop {r3, pc}
_021D11BC:
	mov r0, #1
	pop {r3, pc}
_021D11C0:
	mov r2, #2
	add r1, r3, #0
	tst r1, r2
	beq _021D11EA
	ldr r1, _021D1208 ; =0x0000105C
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _021D11DE
	sub r1, r2, #3
	bl ov81_021D13CC
	cmp r0, #1
	bne _021D11EA
	mov r0, #2
	pop {r3, pc}
_021D11DE:
	mov r0, #1
	mov r1, #0x2a
	bl sub_0208C120
	mov r0, #4
	pop {r3, pc}
_021D11EA:
	ldr r0, _021D1204 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021D1200
	mov r0, #1
	mov r1, #0x2a
	bl sub_0208C120
	mov r0, #4
	pop {r3, pc}
_021D1200:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_021D1204: .word 0x021BF67C
_021D1208: .word 0x0000105C
	thumb_func_end ov81_021D1188

	thumb_func_start ov81_021D120C
ov81_021D120C: ; 0x021D120C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021D12C8 ; =0x0000105E
	add r4, r0, #0
	ldrsb r1, [r4, r1]
	cmp r1, #0
	beq _021D1220
	cmp r1, #1
	beq _021D125C
	b _021D12C2
_021D1220:
	bl ov81_021D1360
	ldr r2, _021D12CC ; =0x00001063
	add r0, r4, #0
	ldrb r1, [r4, r2]
	sub r2, r2, #7
	ldrsb r2, [r4, r2]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov81_021D140C
	ldr r1, _021D12D0 ; =0x0000105C
	ldrsb r0, [r4, r1]
	sub r0, r0, #1
	strb r0, [r4, r1]
	add r1, r1, #4
	ldrsb r2, [r4, r1]
	mov r1, #1
	add r0, r4, #0
	eor r1, r2
	bl ov81_021D164C
	ldr r0, _021D12C8 ; =0x0000105E
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _021D12D4 ; =0x00000691
	bl sub_02005748
	b _021D12C2
_021D125C:
	bl ov81_021D14E0
	cmp r0, #1
	bne _021D12C2
	ldr r1, _021D12D8 ; =0x0000105F
	mov r3, #0
	strb r3, [r4, r1]
	sub r0, r1, #1
	strb r3, [r4, r0]
	add r0, r1, #1
	ldrsb r2, [r4, r0]
	mov r0, #1
	eor r2, r0
	add r0, r1, #1
	strb r2, [r4, r0]
	ldr r2, _021D12DC ; =0x0000085C
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r1, r1, #3
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0]
	add r2, r4, r2
	bl sub_020198C0
	mov r3, #0
	add r2, r4, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _021D12E0 ; =0x00001061
	ldr r0, [r4, #0]
	ldrb r1, [r4, r1]
	add r2, #0x5c
	bl sub_020198C0
	ldr r1, _021D12E4 ; =0x00001062
	ldr r0, [r4, #0]
	ldrb r1, [r4, r1]
	bl sub_0201C3C0
	ldr r1, _021D12E0 ; =0x00001061
	ldr r0, [r4, #0]
	ldrb r1, [r4, r1]
	bl sub_0201C3C0
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D12C2:
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D12C8: .word 0x0000105E
_021D12CC: .word 0x00001063
_021D12D0: .word 0x0000105C
_021D12D4: .word 0x00000691
_021D12D8: .word 0x0000105F
_021D12DC: .word 0x0000085C
_021D12E0: .word 0x00001061
_021D12E4: .word 0x00001062
	thumb_func_end ov81_021D120C

	thumb_func_start ov81_021D12E8
ov81_021D12E8: ; 0x021D12E8
	push {r4, lr}
	ldr r1, _021D1348 ; =0x0000105E
	add r4, r0, #0
	ldrsb r1, [r4, r1]
	cmp r1, #0
	beq _021D12FA
	cmp r1, #1
	beq _021D1322
	b _021D1342
_021D12FA:
	bl ov81_021D1360
	ldr r1, _021D134C ; =0x0000105C
	ldrsb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r1, r1, #4
	ldrsb r2, [r4, r1]
	mov r1, #1
	add r0, r4, #0
	eor r1, r2
	bl ov81_021D164C
	ldr r0, _021D1348 ; =0x0000105E
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _021D1350 ; =0x00000691
	bl sub_02005748
	b _021D1342
_021D1322:
	bl ov81_021D156C
	cmp r0, #1
	bne _021D1342
	ldr r1, _021D1354 ; =0x0000105F
	mov r2, #0
	strb r2, [r4, r1]
	sub r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #1
	ldrsb r2, [r4, r0]
	mov r0, #1
	add r1, r1, #1
	eor r2, r0
	strb r2, [r4, r1]
	pop {r4, pc}
_021D1342:
	mov r0, #3
	pop {r4, pc}
	nop
_021D1348: .word 0x0000105E
_021D134C: .word 0x0000105C
_021D1350: .word 0x00000691
_021D1354: .word 0x0000105F
	thumb_func_end ov81_021D12E8

	thumb_func_start ov81_021D1358
ov81_021D1358: ; 0x021D1358
	ldr r3, _021D135C ; =sub_0200F2AC
	bx r3
	; .align 2, 0
_021D135C: .word sub_0200F2AC
	thumb_func_end ov81_021D1358

	thumb_func_start ov81_021D1360
ov81_021D1360: ; 0x021D1360
	ldr r2, _021D139C ; =0x00001060
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _021D1382
	mov r3, #0
	add r1, r2, #2
	strb r3, [r0, r1]
	mov r3, #2
	add r1, r2, #1
	strb r3, [r0, r1]
	mov r3, #1
	add r1, r2, #4
	strb r3, [r0, r1]
	mov r3, #3
	add r1, r2, #3
	strb r3, [r0, r1]
	bx lr
_021D1382:
	mov r3, #1
	add r1, r2, #2
	strb r3, [r0, r1]
	mov r3, #3
	add r1, r2, #1
	strb r3, [r0, r1]
	mov r3, #0
	add r1, r2, #4
	strb r3, [r0, r1]
	mov r3, #2
	add r1, r2, #3
	strb r3, [r0, r1]
	bx lr
	; .align 2, 0
_021D139C: .word 0x00001060
	thumb_func_end ov81_021D1360

	thumb_func_start ov81_021D13A0
ov81_021D13A0: ; 0x021D13A0
	push {r3, lr}
	ldr r0, [r0, #0x44]
	add r3, r1, #0
	add r1, sp, #0
	mov r2, #0
	bl sub_0202C2A4
	ldr r1, [sp]
	lsl r0, r1, #0x19
	lsr r0, r0, #0x19
	bne _021D13C6
	lsl r0, r1, #0x15
	lsr r0, r0, #0x1c
	bne _021D13C6
	lsl r0, r1, #0xd
	lsr r0, r0, #0x1b
	bne _021D13C6
	mov r0, #0
	pop {r3, pc}
_021D13C6:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov81_021D13A0

	thumb_func_start ov81_021D13CC
ov81_021D13CC: ; 0x021D13CC
	push {r3, lr}
	cmp r1, #1
	ldr r1, _021D1408 ; =0x0000105C
	bne _021D13EC
	ldrsb r1, [r0, r1]
	cmp r1, #9
	beq _021D1404
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov81_021D13A0
	cmp r0, #1
	bne _021D1404
	mov r0, #1
	pop {r3, pc}
_021D13EC:
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _021D1404
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov81_021D13A0
	cmp r0, #1
	bne _021D1404
	mov r0, #1
	pop {r3, pc}
_021D1404:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D1408: .word 0x0000105C
	thumb_func_end ov81_021D13CC

	thumb_func_start ov81_021D140C
ov81_021D140C: ; 0x021D140C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0]
	add r3, r2, #0
	add r4, r1, #0
	bl sub_02019E2C
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov81_021D140C

	thumb_func_start ov81_021D1434
ov81_021D1434: ; 0x021D1434
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019FE4
	ldr r2, _021D144C ; =0x0000085C
	add r1, r4, r2
	sub r2, #0x5c
	bl sub_020C4B18
	pop {r4, pc}
	; .align 2, 0
_021D144C: .word 0x0000085C
	thumb_func_end ov81_021D1434

	thumb_func_start ov81_021D1450
ov81_021D1450: ; 0x021D1450
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #0x10]
	add r6, r1, #0
	ldr r1, [sp, #0x10]
	add r7, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r7, #0]
	lsr r1, r1, #0x18
	add r5, r3, #0
	bl sub_02019FE4
	str r0, [sp, #0x14]
	ldr r1, _021D14DC ; =0x021D33E8
	lsl r0, r5, #5
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
_021D147A:
	ldrb r0, [r5, r4]
	cmp r0, #0xff
	bne _021D14A0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r3, r4, #0x18
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x18]
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	b _021D14C0
_021D14A0:
	ldr r0, [sp, #0x14]
	lsl r1, r4, #1
	mov r2, #0
	add r3, r0, r1
_021D14A8:
	ldrb r0, [r5, r4]
	lsl r1, r2, #5
	add r0, r1, r0
	lsl r0, r0, #1
	ldrh r0, [r6, r0]
	lsl r1, r1, #1
	strh r0, [r3, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #0x20
	blo _021D14A8
_021D14C0:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x20
	blo _021D147A
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D14DC: .word 0x021D33E8
	thumb_func_end ov81_021D1450

	thumb_func_start ov81_021D14E0
ov81_021D14E0: ; 0x021D14E0
	push {r4, lr}
	ldr r3, _021D1558 ; =0x00001062
	add r4, r0, #0
	ldrb r2, [r4, r3]
	sub r3, r3, #3
	ldr r1, _021D155C ; =0x0000085C
	ldrsb r3, [r4, r3]
	add r1, r4, r1
	bl ov81_021D1450
	ldr r3, _021D1560 ; =0x00001061
	add r1, r4, #0
	ldrb r2, [r4, r3]
	sub r3, r3, #2
	ldrsb r3, [r4, r3]
	add r0, r4, #0
	add r1, #0x5c
	bl ov81_021D1450
	ldr r2, _021D1560 ; =0x00001061
	add r0, r4, #0
	ldrb r1, [r4, r2]
	sub r2, r2, #5
	ldrsb r2, [r4, r2]
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov81_021D140C
	ldr r0, _021D1564 ; =0x0000105F
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrsb r1, [r4, r0]
	cmp r1, #9
	bne _021D1554
	add r0, r0, #5
	ldrb r0, [r4, r0]
	mov r1, #0
	bl sub_02019060
	ldr r0, _021D1568 ; =0x00001063
	mov r1, #1
	ldrb r0, [r4, r0]
	bl sub_02019060
	ldr r0, _021D1558 ; =0x00001062
	mov r1, #2
	ldrb r0, [r4, r0]
	bl sub_02019060
	ldr r0, _021D1560 ; =0x00001061
	mov r1, #3
	ldrb r0, [r4, r0]
	bl sub_02019060
	mov r0, #1
	pop {r4, pc}
_021D1554:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1558: .word 0x00001062
_021D155C: .word 0x0000085C
_021D1560: .word 0x00001061
_021D1564: .word 0x0000105F
_021D1568: .word 0x00001063
	thumb_func_end ov81_021D14E0

	thumb_func_start ov81_021D156C
ov81_021D156C: ; 0x021D156C
	push {r3, r4, r5, lr}
	ldr r3, _021D15F8 ; =0x00001064
	add r4, r0, #0
	ldrb r2, [r4, r3]
	sub r3, r3, #5
	ldrsb r5, [r4, r3]
	mov r3, #8
	ldr r1, _021D15FC ; =0x0000085C
	sub r3, r3, r5
	lsl r3, r3, #0x10
	add r1, r4, r1
	lsr r3, r3, #0x10
	bl ov81_021D1450
	ldr r3, _021D1600 ; =0x00001063
	add r1, r4, #0
	ldrb r2, [r4, r3]
	sub r3, r3, #4
	ldrsb r5, [r4, r3]
	mov r3, #8
	add r0, r4, #0
	sub r3, r3, r5
	lsl r3, r3, #0x10
	add r1, #0x5c
	lsr r3, r3, #0x10
	bl ov81_021D1450
	ldr r2, _021D1600 ; =0x00001063
	add r0, r4, #0
	ldrb r1, [r4, r2]
	sub r2, r2, #7
	ldrb r2, [r4, r2]
	bl ov81_021D140C
	ldr r0, _021D1604 ; =0x0000105F
	ldrsb r1, [r4, r0]
	cmp r1, #1
	bne _021D15E0
	add r0, r0, #5
	ldrb r0, [r4, r0]
	mov r1, #0
	bl sub_02019060
	ldr r0, _021D1600 ; =0x00001063
	mov r1, #1
	ldrb r0, [r4, r0]
	bl sub_02019060
	ldr r0, _021D1608 ; =0x00001062
	mov r1, #2
	ldrb r0, [r4, r0]
	bl sub_02019060
	ldr r0, _021D160C ; =0x00001061
	mov r1, #3
	ldrb r0, [r4, r0]
	bl sub_02019060
_021D15E0:
	ldr r0, _021D1604 ; =0x0000105F
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021D15F2
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D15F2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D15F8: .word 0x00001064
_021D15FC: .word 0x0000085C
_021D1600: .word 0x00001063
_021D1604: .word 0x0000105F
_021D1608: .word 0x00001062
_021D160C: .word 0x00001061
	thumb_func_end ov81_021D156C

	thumb_func_start ov81_021D1610
ov81_021D1610: ; 0x021D1610
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r4, _021D1630 ; =0x021D3508
	mov r6, #0
	add r5, r7, #4
_021D161A:
	ldr r0, [r7, #0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #4
	blo _021D161A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1630: .word 0x021D3508
	thumb_func_end ov81_021D1610

	thumb_func_start ov81_021D1634
ov81_021D1634: ; 0x021D1634
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #4
_021D163A:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blo _021D163A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov81_021D1634

	thumb_func_start ov81_021D164C
ov81_021D164C: ; 0x021D164C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _021D165C
	add r4, r5, #0
	add r6, r5, #4
	add r4, #0x14
	b _021D1664
_021D165C:
	add r6, r5, #0
	add r4, r5, #0
	add r6, #0x24
	add r4, #0x34
_021D1664:
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov81_021D16B0
	cmp r0, #1
	bne _021D16A2
	add r0, r5, #0
	add r1, r4, #0
	bl ov81_021D17C8
	add r0, r5, #0
	add r1, r4, #0
	bl ov81_021D1A90
	add r0, r5, #0
	add r1, r4, #0
	bl ov81_021D1AD4
	add r0, r5, #0
	add r1, r4, #0
	bl ov81_021D1C10
_021D16A2:
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_0201A9A4
	pop {r4, r5, r6, pc}
	thumb_func_end ov81_021D164C

	thumb_func_start ov81_021D16B0
ov81_021D16B0: ; 0x021D16B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _021D17C0 ; =0x0000105C
	add r5, r0, #0
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x44]
	add r7, r1, #0
	str r2, [sp, #0x10]
	add r1, sp, #0x14
	mov r2, #0
	bl sub_0202C2A4
	ldr r1, [sp, #0x14]
	lsl r0, r1, #0x19
	lsr r0, r0, #0x19
	bne _021D16E2
	lsl r0, r1, #0x15
	lsr r0, r0, #0x1c
	bne _021D16E2
	lsl r0, r1, #0xd
	lsr r0, r0, #0x1b
	bne _021D16E2
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D16E2:
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl sub_0200B1EC
	ldr r2, [sp, #0x14]
	add r4, r0, #0
	lsl r2, r2, #0x15
	ldr r0, [r5, #0x54]
	mov r1, #0
	lsr r2, r2, #0x1c
	bl sub_0200C2E0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r0, [r5, #0x54]
	lsl r2, r2, #0xd
	lsr r2, r2, #0x1b
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D17C4 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x58]
	add r0, r7, #0
	bl sub_0201D78C
	mov r0, #0
	ldr r1, [r5, #0x58]
	add r2, r0, #0
	bl sub_02002D7C
	ldr r1, [sp, #0x14]
	add r4, r0, #0
	lsl r1, r1, #0x12
	lsr r1, r1, #0x1d
	ldr r0, [r5, #0x50]
	add r1, r1, #2
	bl sub_0200B1EC
	add r6, r0, #0
	mov r1, #0
	add r4, #0xc
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D17C4 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	lsr r0, r0, #0x13
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r4, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D17C4 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D17C0: .word 0x0000105C
_021D17C4: .word 0x00010200
	thumb_func_end ov81_021D16B0

	thumb_func_start ov81_021D17C8
ov81_021D17C8: ; 0x021D17C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021D1A8C ; =0x0000105C
	add r6, r0, #0
	ldrb r3, [r6, r3]
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	add r1, sp, #4
	mov r2, #1
	bl sub_0202C2A4
	mov r4, #0
	add r5, sp, #4
_021D17E2:
	ldrb r0, [r5]
	cmp r0, #0x28
	bls _021D17EA
	b _021D1A7C
_021D17EA:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D17F6: ; jump table
	.short _021D1848 - _021D17F6 - 2 ; case 0
	.short _021D184C - _021D17F6 - 2 ; case 1
	.short _021D185C - _021D17F6 - 2 ; case 2
	.short _021D186C - _021D17F6 - 2 ; case 3
	.short _021D187C - _021D17F6 - 2 ; case 4
	.short _021D188C - _021D17F6 - 2 ; case 5
	.short _021D189C - _021D17F6 - 2 ; case 6
	.short _021D18AC - _021D17F6 - 2 ; case 7
	.short _021D18BC - _021D17F6 - 2 ; case 8
	.short _021D18CC - _021D17F6 - 2 ; case 9
	.short _021D18DC - _021D17F6 - 2 ; case 10
	.short _021D18EC - _021D17F6 - 2 ; case 11
	.short _021D18FC - _021D17F6 - 2 ; case 12
	.short _021D190C - _021D17F6 - 2 ; case 13
	.short _021D191C - _021D17F6 - 2 ; case 14
	.short _021D192C - _021D17F6 - 2 ; case 15
	.short _021D193C - _021D17F6 - 2 ; case 16
	.short _021D194C - _021D17F6 - 2 ; case 17
	.short _021D195C - _021D17F6 - 2 ; case 18
	.short _021D197C - _021D17F6 - 2 ; case 19
	.short _021D198C - _021D17F6 - 2 ; case 20
	.short _021D19BC - _021D17F6 - 2 ; case 21
	.short _021D19AC - _021D17F6 - 2 ; case 22
	.short _021D199C - _021D17F6 - 2 ; case 23
	.short _021D196C - _021D17F6 - 2 ; case 24
	.short _021D19DC - _021D17F6 - 2 ; case 25
	.short _021D19CC - _021D17F6 - 2 ; case 26
	.short _021D19EC - _021D17F6 - 2 ; case 27
	.short _021D19FC - _021D17F6 - 2 ; case 28
	.short _021D1A0C - _021D17F6 - 2 ; case 29
	.short _021D1A1C - _021D17F6 - 2 ; case 30
	.short _021D1A7C - _021D17F6 - 2 ; case 31
	.short _021D1A3C - _021D17F6 - 2 ; case 32
	.short _021D1A2C - _021D17F6 - 2 ; case 33
	.short _021D1A4C - _021D17F6 - 2 ; case 34
	.short _021D1A5C - _021D17F6 - 2 ; case 35
	.short _021D1A6C - _021D17F6 - 2 ; case 36
	.short _021D1A6C - _021D17F6 - 2 ; case 37
	.short _021D1A6C - _021D17F6 - 2 ; case 38
	.short _021D1A6C - _021D17F6 - 2 ; case 39
	.short _021D1A6C - _021D17F6 - 2 ; case 40
_021D1848:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021D184C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1E04
	b _021D1A7C
_021D185C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1E40
	b _021D1A7C
_021D186C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1E7C
	b _021D1A7C
_021D187C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1EB8
	b _021D1A7C
_021D188C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1EF4
	b _021D1A7C
_021D189C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1F30
	b _021D1A7C
_021D18AC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1F6C
	b _021D1A7C
_021D18BC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1FA8
	b _021D1A7C
_021D18CC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D1FE4
	b _021D1A7C
_021D18DC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2038
	b _021D1A7C
_021D18EC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2098
	b _021D1A7C
_021D18FC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D20EC
	b _021D1A7C
_021D190C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2140
	b _021D1A7C
_021D191C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D219C
	b _021D1A7C
_021D192C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2208
	b _021D1A7C
_021D193C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2270
	b _021D1A7C
_021D194C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D22AC
	b _021D1A7C
_021D195C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D22E8
	b _021D1A7C
_021D196C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D233C
	b _021D1A7C
_021D197C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2398
	b _021D1A7C
_021D198C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D23F4
	b _021D1A7C
_021D199C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2450
	b _021D1A7C
_021D19AC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D24AC
	b _021D1A7C
_021D19BC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2508
	b _021D1A7C
_021D19CC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2564
	b _021D1A7C
_021D19DC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D25C0
	b _021D1A7C
_021D19EC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D261C
	b _021D1A7C
_021D19FC:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2678
	b _021D1A7C
_021D1A0C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D26D4
	b _021D1A7C
_021D1A1C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2730
	b _021D1A7C
_021D1A2C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D276C
	b _021D1A7C
_021D1A3C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D27A8
	b _021D1A7C
_021D1A4C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D27E4
	b _021D1A7C
_021D1A5C:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2820
	b _021D1A7C
_021D1A6C:
	lsl r3, r4, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D285C
_021D1A7C:
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	bhs _021D1A86
	b _021D17E2
_021D1A86:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D1A8C: .word 0x0000105C
	thumb_func_end ov81_021D17C8

	thumb_func_start ov81_021D1A90
ov81_021D1A90: ; 0x021D1A90
	push {r3, r4, r5, lr}
	ldr r3, _021D1AD0 ; =0x0000105C
	add r5, r0, #0
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x44]
	add r4, r1, #0
	add r1, sp, #0
	mov r2, #2
	bl sub_0202C2A4
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D1ACC
	cmp r0, #1
	beq _021D1AB6
	cmp r0, #2
	beq _021D1AC2
	pop {r3, r4, r5, pc}
_021D1AB6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov81_021D2908
	pop {r3, r4, r5, pc}
_021D1AC2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov81_021D29B4
_021D1ACC:
	pop {r3, r4, r5, pc}
	nop
_021D1AD0: .word 0x0000105C
	thumb_func_end ov81_021D1A90

	thumb_func_start ov81_021D1AD4
ov81_021D1AD4: ; 0x021D1AD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021D1C00 ; =0x0000105C
	add r4, r0, #0
	ldrb r3, [r4, r3]
	ldr r0, [r4, #0x44]
	add r7, r1, #0
	add r1, sp, #0x10
	mov r2, #3
	bl sub_0202C2A4
	add r0, sp, #0x10
	ldrh r1, [r0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _021D1AF6
	b _021D1BFA
_021D1AF6:
	ldrh r0, [r0, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r1, _021D1C04 ; =0x000001B1
	mov r0, #0x1a
	mov r3, #0x2a
	bl sub_0200B010
	add r6, r0, #0
	bl sub_02023C3C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020237BC
	add r0, sp, #0x10
	ldrh r0, [r0]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x11
	bl sub_02079220
	cmp r0, #0x3f
	bne _021D1B56
	ldr r0, [r4, #0x50]
	mov r1, #0x3d
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r4, #0x54]
	ldr r2, [r4, #0x4c]
	mov r1, #1
	bl sub_0200B4BC
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, [r4, #0x58]
	bl sub_02023C3C
	add r5, r5, r0
	add r0, r6, #0
	bl sub_020237BC
	b _021D1B86
_021D1B56:
	add r2, sp, #0x10
	ldrh r2, [r2]
	ldr r1, _021D1C08 ; =0x0000026A
	mov r0, #0x1a
	lsl r2, r2, #0x10
	lsr r2, r2, #0x11
	mov r3, #0x2a
	bl sub_0200B010
	add r6, r0, #0
	bl sub_02023C3C
	add r5, r5, r0
	add r0, r6, #0
	bl sub_020237BC
	add r2, sp, #0x10
	ldrh r2, [r2]
	ldr r0, [r4, #0x54]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x11
	bl sub_0200BA08
_021D1B86:
	cmp r5, #0xe
	bhi _021D1B96
	ldr r0, [r4, #0x50]
	mov r1, #0x39
	bl sub_0200B1EC
	add r5, r0, #0
	b _021D1BBE
_021D1B96:
	cmp r5, #0x10
	bhi _021D1BA6
	ldr r0, [r4, #0x50]
	mov r1, #0x3a
	bl sub_0200B1EC
	add r5, r0, #0
	b _021D1BBE
_021D1BA6:
	cmp r5, #0x13
	ldr r0, [r4, #0x50]
	bhi _021D1BB6
	mov r1, #0x3b
	bl sub_0200B1EC
	add r5, r0, #0
	b _021D1BBE
_021D1BB6:
	mov r1, #0x3c
	bl sub_0200B1EC
	add r5, r0, #0
_021D1BBE:
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	add r2, r5, #0
	bl sub_0200C388
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C0C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x58]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_021D1BFA:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D1C00: .word 0x0000105C
_021D1C04: .word 0x000001B1
_021D1C08: .word 0x0000026A
_021D1C0C: .word 0x00010200
	thumb_func_end ov81_021D1AD4

	thumb_func_start ov81_021D1C10
ov81_021D1C10: ; 0x021D1C10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	ldr r3, _021D1E00 ; =0x0000105C
	add r6, r0, #0
	ldrb r3, [r6, r3]
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_0202C2A4
	mov r4, #0
	add r5, sp, #4
_021D1C2A:
	ldrb r0, [r5]
	cmp r0, #0x1d
	bls _021D1C32
	b _021D1DF0
_021D1C32:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1C3E: ; jump table
	.short _021D1C7A - _021D1C3E - 2 ; case 0
	.short _021D1C7E - _021D1C3E - 2 ; case 1
	.short _021D1C8E - _021D1C3E - 2 ; case 2
	.short _021D1C9E - _021D1C3E - 2 ; case 3
	.short _021D1CAE - _021D1C3E - 2 ; case 4
	.short _021D1CBE - _021D1C3E - 2 ; case 5
	.short _021D1CCE - _021D1C3E - 2 ; case 6
	.short _021D1CDE - _021D1C3E - 2 ; case 7
	.short _021D1CEE - _021D1C3E - 2 ; case 8
	.short _021D1CFE - _021D1C3E - 2 ; case 9
	.short _021D1D0E - _021D1C3E - 2 ; case 10
	.short _021D1D1E - _021D1C3E - 2 ; case 11
	.short _021D1D2E - _021D1C3E - 2 ; case 12
	.short _021D1D3E - _021D1C3E - 2 ; case 13
	.short _021D1D4E - _021D1C3E - 2 ; case 14
	.short _021D1D5E - _021D1C3E - 2 ; case 15
	.short _021D1D6E - _021D1C3E - 2 ; case 16
	.short _021D1D7E - _021D1C3E - 2 ; case 17
	.short _021D1D8E - _021D1C3E - 2 ; case 18
	.short _021D1D8E - _021D1C3E - 2 ; case 19
	.short _021D1D8E - _021D1C3E - 2 ; case 20
	.short _021D1D8E - _021D1C3E - 2 ; case 21
	.short _021D1DA0 - _021D1C3E - 2 ; case 22
	.short _021D1DB0 - _021D1C3E - 2 ; case 23
	.short _021D1DC0 - _021D1C3E - 2 ; case 24
	.short _021D1DD0 - _021D1C3E - 2 ; case 25
	.short _021D1DD0 - _021D1C3E - 2 ; case 26
	.short _021D1DD0 - _021D1C3E - 2 ; case 27
	.short _021D1DD0 - _021D1C3E - 2 ; case 28
	.short _021D1DE2 - _021D1C3E - 2 ; case 29
_021D1C7A:
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_021D1C7E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2A9C
	b _021D1DF0
_021D1C8E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2B20
	b _021D1DF0
_021D1C9E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2BA4
	b _021D1DF0
_021D1CAE:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2C38
	b _021D1DF0
_021D1CBE:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2CBC
	b _021D1DF0
_021D1CCE:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2D50
	b _021D1DF0
_021D1CDE:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2DAC
	b _021D1DF0
_021D1CEE:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2E18
	b _021D1DF0
_021D1CFE:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2E54
	b _021D1DF0
_021D1D0E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2EB0
	b _021D1DF0
_021D1D1E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2EEC
	b _021D1DF0
_021D1D2E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2F70
	b _021D1DF0
_021D1D3E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D2FAC
	b _021D1DF0
_021D1D4E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D300C
	b _021D1DF0
_021D1D5E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D3048
	b _021D1DF0
_021D1D6E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D30B4
	b _021D1DF0
_021D1D7E:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D30F0
	b _021D1DF0
_021D1D8E:
	lsl r3, r4, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D312C
	b _021D1DF0
_021D1DA0:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D3190
	b _021D1DF0
_021D1DB0:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D31EC
	b _021D1DF0
_021D1DC0:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D3248
	b _021D1DF0
_021D1DD0:
	lsl r3, r4, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D32A0
	b _021D1DF0
_021D1DE2:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl ov81_021D3304
_021D1DF0:
	add r4, r4, #1
	add r5, #0x3a
	cmp r4, #2
	bhs _021D1DFA
	b _021D1C2A
_021D1DFA:
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1E00: .word 0x0000105C
	thumb_func_end ov81_021D1C10

	thumb_func_start ov81_021D1E04
ov81_021D1E04: ; 0x021D1E04
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #9
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1E3C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1E3C: .word 0x00010200
	thumb_func_end ov81_021D1E04

	thumb_func_start ov81_021D1E40
ov81_021D1E40: ; 0x021D1E40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0xa
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1E78 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1E78: .word 0x00010200
	thumb_func_end ov81_021D1E40

	thumb_func_start ov81_021D1E7C
ov81_021D1E7C: ; 0x021D1E7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0xb
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1EB4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1EB4: .word 0x00010200
	thumb_func_end ov81_021D1E7C

	thumb_func_start ov81_021D1EB8
ov81_021D1EB8: ; 0x021D1EB8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0xc
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1EF0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1EF0: .word 0x00010200
	thumb_func_end ov81_021D1EB8

	thumb_func_start ov81_021D1EF4
ov81_021D1EF4: ; 0x021D1EF4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0xd
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1F2C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1F2C: .word 0x00010200
	thumb_func_end ov81_021D1EF4

	thumb_func_start ov81_021D1F30
ov81_021D1F30: ; 0x021D1F30
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0xe
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1F68 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1F68: .word 0x00010200
	thumb_func_end ov81_021D1F30

	thumb_func_start ov81_021D1F6C
ov81_021D1F6C: ; 0x021D1F6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0xf
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1FA4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1FA4: .word 0x00010200
	thumb_func_end ov81_021D1F6C

	thumb_func_start ov81_021D1FA8
ov81_021D1FA8: ; 0x021D1FA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x10
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1FE0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1FE0: .word 0x00010200
	thumb_func_end ov81_021D1FA8

	thumb_func_start ov81_021D1FE4
ov81_021D1FE4: ; 0x021D1FE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x11
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r2, [r4, #2]
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200BD60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2034 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2034: .word 0x00010200
	thumb_func_end ov81_021D1FE4

	thumb_func_start ov81_021D2038
ov81_021D2038: ; 0x021D2038
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x12
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r2, [r4, #2]
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200BD60
	ldrh r2, [r4, #4]
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl sub_0200BA08
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2094 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2094: .word 0x00010200
	thumb_func_end ov81_021D2038

	thumb_func_start ov81_021D2098
ov81_021D2098: ; 0x021D2098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x13
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r2, [r4, #4]
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200BA08
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D20E8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D20E8: .word 0x00010200
	thumb_func_end ov81_021D2098

	thumb_func_start ov81_021D20EC
ov81_021D20EC: ; 0x021D20EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x14
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r2, [r4, #4]
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200BA08
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D213C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D213C: .word 0x00010200
	thumb_func_end ov81_021D20EC

	thumb_func_start ov81_021D2140
ov81_021D2140: ; 0x021D2140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x15
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2198 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2198: .word 0x00010200
	thumb_func_end ov81_021D2140

	thumb_func_start ov81_021D219C
ov81_021D219C: ; 0x021D219C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldrh r4, [r2, #2]
	add r5, r0, #0
	add r6, r3, #0
	str r1, [sp, #0x10]
	cmp r4, #0x2f
	beq _021D21B4
	cmp r4, #0x40
	beq _021D21B4
	cmp r4, #0x31
	bne _021D21C0
_021D21B4:
	ldr r0, [r5, #0x50]
	mov r1, #0x17
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D21CA
_021D21C0:
	ldr r0, [r5, #0x50]
	mov r1, #0x16
	bl sub_0200B1EC
	add r7, r0, #0
_021D21CA:
	ldr r0, [r5, #0x54]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2204 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2204: .word 0x00010200
	thumb_func_end ov81_021D219C

	thumb_func_start ov81_021D2208
ov81_021D2208: ; 0x021D2208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r0, [r2, #2]
	add r7, r1, #0
	add r4, r3, #0
	str r0, [sp, #0x10]
	bl sub_0202C6A4
	cmp r0, #0
	ldr r0, [r5, #0x50]
	bne _021D2228
	mov r1, #0x17
	bl sub_0200B1EC
	b _021D222E
_021D2228:
	mov r1, #0x18
	bl sub_0200B1EC
_021D222E:
	add r6, r0, #0
	ldr r0, [r5, #0x54]
	ldr r2, [sp, #0x10]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	lsl r0, r4, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D226C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x58]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D226C: .word 0x00010200
	thumb_func_end ov81_021D2208

	thumb_func_start ov81_021D2270
ov81_021D2270: ; 0x021D2270
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x1e
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D22A8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D22A8: .word 0x00010200
	thumb_func_end ov81_021D2270

	thumb_func_start ov81_021D22AC
ov81_021D22AC: ; 0x021D22AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x1f
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D22E4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D22E4: .word 0x00010200
	thumb_func_end ov81_021D22AC

	thumb_func_start ov81_021D22E8
ov81_021D22E8: ; 0x021D22E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x22
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r2, [r4, #6]
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2338 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2338: .word 0x00010200
	thumb_func_end ov81_021D22E8

	thumb_func_start ov81_021D233C
ov81_021D233C: ; 0x021D233C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x28
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2394 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2394: .word 0x00010200
	thumb_func_end ov81_021D233C

	thumb_func_start ov81_021D2398
ov81_021D2398: ; 0x021D2398
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x23
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D23F0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D23F0: .word 0x00010200
	thumb_func_end ov81_021D2398

	thumb_func_start ov81_021D23F4
ov81_021D23F4: ; 0x021D23F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x24
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D244C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D244C: .word 0x00010200
	thumb_func_end ov81_021D23F4

	thumb_func_start ov81_021D2450
ov81_021D2450: ; 0x021D2450
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x2b
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D24A8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D24A8: .word 0x00010200
	thumb_func_end ov81_021D2450

	thumb_func_start ov81_021D24AC
ov81_021D24AC: ; 0x021D24AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x26
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2504 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2504: .word 0x00010200
	thumb_func_end ov81_021D24AC

	thumb_func_start ov81_021D2508
ov81_021D2508: ; 0x021D2508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x25
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2560 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2560: .word 0x00010200
	thumb_func_end ov81_021D2508

	thumb_func_start ov81_021D2564
ov81_021D2564: ; 0x021D2564
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x2a
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D25BC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D25BC: .word 0x00010200
	thumb_func_end ov81_021D2564

	thumb_func_start ov81_021D25C0
ov81_021D25C0: ; 0x021D25C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x29
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2618 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2618: .word 0x00010200
	thumb_func_end ov81_021D25C0

	thumb_func_start ov81_021D261C
ov81_021D261C: ; 0x021D261C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x27
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2674 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2674: .word 0x00010200
	thumb_func_end ov81_021D261C

	thumb_func_start ov81_021D2678
ov81_021D2678: ; 0x021D2678
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x2e
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D26D0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D26D0: .word 0x00010200
	thumb_func_end ov81_021D2678

	thumb_func_start ov81_021D26D4
ov81_021D26D4: ; 0x021D26D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x2c
	add r6, r3, #0
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0203A138
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0200B8C8
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D272C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D272C: .word 0x00010200
	thumb_func_end ov81_021D26D4

	thumb_func_start ov81_021D2730
ov81_021D2730: ; 0x021D2730
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x2d
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2768 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2768: .word 0x00010200
	thumb_func_end ov81_021D2730

	thumb_func_start ov81_021D276C
ov81_021D276C: ; 0x021D276C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x2f
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D27A4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D27A4: .word 0x00010200
	thumb_func_end ov81_021D276C

	thumb_func_start ov81_021D27A8
ov81_021D27A8: ; 0x021D27A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x30
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D27E0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D27E0: .word 0x00010200
	thumb_func_end ov81_021D27A8

	thumb_func_start ov81_021D27E4
ov81_021D27E4: ; 0x021D27E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x20
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D281C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D281C: .word 0x00010200
	thumb_func_end ov81_021D27E4

	thumb_func_start ov81_021D2820
ov81_021D2820: ; 0x021D2820
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x21
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2858 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2858: .word 0x00010200
	thumb_func_end ov81_021D2820

	thumb_func_start ov81_021D285C
ov81_021D285C: ; 0x021D285C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r3, #0
	sub r1, #0x24
	cmp r1, #4
	bhi _021D2892
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D2878: ; jump table
	.short _021D2882 - _021D2878 - 2 ; case 0
	.short _021D2886 - _021D2878 - 2 ; case 1
	.short _021D288A - _021D2878 - 2 ; case 2
	.short _021D288E - _021D2878 - 2 ; case 3
	.short _021D2892 - _021D2878 - 2 ; case 4
_021D2882:
	mov r1, #0x19
	b _021D2894
_021D2886:
	mov r1, #0x1a
	b _021D2894
_021D288A:
	mov r1, #0x1b
	b _021D2894
_021D288E:
	mov r1, #0x1c
	b _021D2894
_021D2892:
	mov r1, #0x1d
_021D2894:
	ldr r0, [r0, #0x50]
	bl sub_0200B1EC
	add r5, r0, #0
	lsl r0, r4, #4
	add r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D28C4 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D28C4: .word 0x00010200
	thumb_func_end ov81_021D285C

	thumb_func_start ov81_021D28C8
ov81_021D28C8: ; 0x021D28C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	str r3, [sp, #0xc]
	mov r0, #0x2a
	add r7, r1, #0
	bl sub_02073C74
	str r4, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r6, r0, #0
	add r1, r7, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_02074088
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0xc]
	bl sub_0200B538
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov81_021D28C8

	thumb_func_start ov81_021D2908
ov81_021D2908: ; 0x021D2908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	add r7, r1, #0
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _021D2920
	cmp r1, #1
	beq _021D292C
	b _021D2938
_021D2920:
	ldr r0, [r5, #0x50]
	mov r1, #0x31
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2962
_021D292C:
	ldr r0, [r5, #0x50]
	mov r1, #0x32
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2962
_021D2938:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _021D294A
	ldr r0, [r5, #0x50]
	mov r1, #0x33
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2962
_021D294A:
	cmp r0, #1
	ldr r0, [r5, #0x50]
	bne _021D295A
	mov r1, #0x34
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2962
_021D295A:
	mov r1, #0x31
	bl sub_0200B1EC
	add r6, r0, #0
_021D2962:
	ldrb r2, [r4, #1]
	ldrh r1, [r4, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	mov r3, #0
	bl ov81_021D28C8
	ldrb r2, [r4, #1]
	ldr r0, [r5, #0x54]
	mov r1, #1
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1c
	bl sub_0200BD98
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D29B0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x58]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D29B0: .word 0x00010200
	thumb_func_end ov81_021D2908

	thumb_func_start ov81_021D29B4
ov81_021D29B4: ; 0x021D29B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	add r7, r1, #0
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _021D29CC
	cmp r1, #1
	beq _021D29D8
	b _021D29E4
_021D29CC:
	ldr r0, [r5, #0x50]
	mov r1, #0x35
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2A0E
_021D29D8:
	ldr r0, [r5, #0x50]
	mov r1, #0x36
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2A0E
_021D29E4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _021D29F6
	ldr r0, [r5, #0x50]
	mov r1, #0x37
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2A0E
_021D29F6:
	cmp r0, #1
	ldr r0, [r5, #0x50]
	bne _021D2A06
	mov r1, #0x38
	bl sub_0200B1EC
	add r6, r0, #0
	b _021D2A0E
_021D2A06:
	mov r1, #0x35
	bl sub_0200B1EC
	add r6, r0, #0
_021D2A0E:
	ldrb r2, [r4, #1]
	ldrh r1, [r4, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	mov r3, #0
	bl ov81_021D28C8
	ldrb r2, [r4, #1]
	ldr r0, [r5, #0x54]
	mov r1, #1
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1c
	bl sub_0200BD98
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2A5C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x58]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2A5C: .word 0x00010200
	thumb_func_end ov81_021D29B4

	thumb_func_start ov81_021D2A60
ov81_021D2A60: ; 0x021D2A60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x20
	mov r1, #0x2a
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02023790
	add r1, r6, #0
	add r4, r0, #0
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #8]
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov81_021D2A60

	thumb_func_start ov81_021D2A9C
ov81_021D2A9C: ; 0x021D2A9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	str r1, [sp, #0x10]
	add r6, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021D2AB8
	cmp r0, #1
	beq _021D2AC4
	cmp r0, #2
	b _021D2AD0
_021D2AB8:
	ldr r0, [r5, #0x50]
	mov r1, #0x3e
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2ADA
_021D2AC4:
	ldr r0, [r5, #0x50]
	mov r1, #0x3f
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2ADA
_021D2AD0:
	ldr r0, [r5, #0x50]
	mov r1, #0x40
	bl sub_0200B1EC
	add r7, r0, #0
_021D2ADA:
	ldrb r2, [r4, #1]
	add r0, r5, #0
	add r1, r4, #2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2B1C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2B1C: .word 0x00010200
	thumb_func_end ov81_021D2A9C

	thumb_func_start ov81_021D2B20
ov81_021D2B20: ; 0x021D2B20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	str r1, [sp, #0x10]
	add r6, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021D2B3C
	cmp r0, #1
	beq _021D2B48
	cmp r0, #2
	b _021D2B54
_021D2B3C:
	ldr r0, [r5, #0x50]
	mov r1, #0x41
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2B5E
_021D2B48:
	ldr r0, [r5, #0x50]
	mov r1, #0x42
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2B5E
_021D2B54:
	ldr r0, [r5, #0x50]
	mov r1, #0x43
	bl sub_0200B1EC
	add r7, r0, #0
_021D2B5E:
	ldrb r2, [r4, #1]
	add r0, r5, #0
	add r1, r4, #2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2BA0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2BA0: .word 0x00010200
	thumb_func_end ov81_021D2B20

	thumb_func_start ov81_021D2BA4
ov81_021D2BA4: ; 0x021D2BA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	str r1, [sp, #0x10]
	add r6, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021D2BC0
	cmp r0, #1
	beq _021D2BCC
	cmp r0, #2
	b _021D2BD8
_021D2BC0:
	ldr r0, [r5, #0x50]
	mov r1, #0x44
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2BE2
_021D2BCC:
	ldr r0, [r5, #0x50]
	mov r1, #0x45
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2BE2
_021D2BD8:
	ldr r0, [r5, #0x50]
	mov r1, #0x46
	bl sub_0200B1EC
	add r7, r0, #0
_021D2BE2:
	ldrb r2, [r4, #1]
	add r0, r5, #0
	add r1, r4, #2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldrb r2, [r4, #1]
	add r1, r4, #0
	add r0, r5, #0
	lsl r2, r2, #0x1a
	add r1, #0x12
	lsr r2, r2, #0x1f
	mov r3, #1
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2C34 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C34: .word 0x00010200
	thumb_func_end ov81_021D2BA4

	thumb_func_start ov81_021D2C38
ov81_021D2C38: ; 0x021D2C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	str r1, [sp, #0x10]
	add r6, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021D2C54
	cmp r0, #1
	beq _021D2C60
	cmp r0, #2
	b _021D2C6C
_021D2C54:
	ldr r0, [r5, #0x50]
	mov r1, #0x47
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2C76
_021D2C60:
	ldr r0, [r5, #0x50]
	mov r1, #0x48
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2C76
_021D2C6C:
	ldr r0, [r5, #0x50]
	mov r1, #0x49
	bl sub_0200B1EC
	add r7, r0, #0
_021D2C76:
	ldrb r2, [r4, #1]
	add r0, r5, #0
	add r1, r4, #2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2CB8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2CB8: .word 0x00010200
	thumb_func_end ov81_021D2C38

	thumb_func_start ov81_021D2CBC
ov81_021D2CBC: ; 0x021D2CBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	str r1, [sp, #0x10]
	add r6, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021D2CD8
	cmp r0, #1
	beq _021D2CE4
	cmp r0, #2
	b _021D2CF0
_021D2CD8:
	ldr r0, [r5, #0x50]
	mov r1, #0x4a
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2CFA
_021D2CE4:
	ldr r0, [r5, #0x50]
	mov r1, #0x4b
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2CFA
_021D2CF0:
	ldr r0, [r5, #0x50]
	mov r1, #0x4c
	bl sub_0200B1EC
	add r7, r0, #0
_021D2CFA:
	ldrb r2, [r4, #1]
	add r0, r5, #0
	add r1, r4, #2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldrb r2, [r4, #1]
	add r1, r4, #0
	add r0, r5, #0
	lsl r2, r2, #0x1a
	add r1, #0x12
	lsr r2, r2, #0x1f
	mov r3, #1
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2D4C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2D4C: .word 0x00010200
	thumb_func_end ov81_021D2CBC

	thumb_func_start ov81_021D2D50
ov81_021D2D50: ; 0x021D2D50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x4d
	add r6, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r4, #1]
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0x1b
	add r1, r4, #2
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2DA8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2DA8: .word 0x00010200
	thumb_func_end ov81_021D2D50

	thumb_func_start ov81_021D2DAC
ov81_021D2DAC: ; 0x021D2DAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x4e
	add r6, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r4, #1]
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0x1b
	add r1, r4, #2
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldrb r2, [r4, #1]
	add r1, r4, #0
	add r0, r5, #0
	lsl r2, r2, #0x18
	add r1, #0x22
	lsr r2, r2, #0x1e
	mov r3, #1
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2E14 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2E14: .word 0x00010200
	thumb_func_end ov81_021D2DAC

	thumb_func_start ov81_021D2E18
ov81_021D2E18: ; 0x021D2E18
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x4f
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2E50 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2E50: .word 0x00010200
	thumb_func_end ov81_021D2E18

	thumb_func_start ov81_021D2E54
ov81_021D2E54: ; 0x021D2E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r7, r2, #0
	mov r1, #0x50
	add r4, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r7, #1]
	add r1, r7, #0
	add r6, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, #0x22
	lsr r2, r2, #0x1e
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r6, #0
	bl sub_0200C388
	lsl r0, r4, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2EAC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2EAC: .word 0x00010200
	thumb_func_end ov81_021D2E54

	thumb_func_start ov81_021D2EB0
ov81_021D2EB0: ; 0x021D2EB0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x51
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2EE8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2EE8: .word 0x00010200
	thumb_func_end ov81_021D2EB0

	thumb_func_start ov81_021D2EEC
ov81_021D2EEC: ; 0x021D2EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	str r1, [sp, #0x10]
	add r6, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _021D2F08
	cmp r0, #1
	beq _021D2F14
	cmp r0, #2
	b _021D2F20
_021D2F08:
	ldr r0, [r5, #0x50]
	mov r1, #0x52
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2F2A
_021D2F14:
	ldr r0, [r5, #0x50]
	mov r1, #0x53
	bl sub_0200B1EC
	add r7, r0, #0
	b _021D2F2A
_021D2F20:
	ldr r0, [r5, #0x50]
	mov r1, #0x54
	bl sub_0200B1EC
	add r7, r0, #0
_021D2F2A:
	ldrb r2, [r4, #1]
	add r0, r5, #0
	add r1, r4, #2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2F6C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2F6C: .word 0x00010200
	thumb_func_end ov81_021D2EEC

	thumb_func_start ov81_021D2F70
ov81_021D2F70: ; 0x021D2F70
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x55
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2FA8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2FA8: .word 0x00010200
	thumb_func_end ov81_021D2F70

	thumb_func_start ov81_021D2FAC
ov81_021D2FAC: ; 0x021D2FAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	mov r1, #0x57
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200B1EC
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r4, #1]
	add r7, r0, #0
	ldr r0, [r5, #0x54]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	bl sub_0200B60C
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3008 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D3008: .word 0x00010200
	thumb_func_end ov81_021D2FAC

	thumb_func_start ov81_021D300C
ov81_021D300C: ; 0x021D300C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x58
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3044 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D3044: .word 0x00010200
	thumb_func_end ov81_021D300C

	thumb_func_start ov81_021D3048
ov81_021D3048: ; 0x021D3048
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x59
	add r6, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r4, #1]
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0x1b
	add r1, r4, #2
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldrb r2, [r4, #1]
	add r1, r4, #0
	add r0, r5, #0
	lsl r2, r2, #0x18
	add r1, #0x22
	lsr r2, r2, #0x1e
	mov r3, #1
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D30B0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D30B0: .word 0x00010200
	thumb_func_end ov81_021D3048

	thumb_func_start ov81_021D30B4
ov81_021D30B4: ; 0x021D30B4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x5e
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D30EC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D30EC: .word 0x00010200
	thumb_func_end ov81_021D30B4

	thumb_func_start ov81_021D30F0
ov81_021D30F0: ; 0x021D30F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x56
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3128 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D3128: .word 0x00010200
	thumb_func_end ov81_021D30F0

	thumb_func_start ov81_021D312C
ov81_021D312C: ; 0x021D312C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r3, #0
	sub r1, #0x12
	cmp r1, #3
	bhi _021D315C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3148: ; jump table
	.short _021D3150 - _021D3148 - 2 ; case 0
	.short _021D3154 - _021D3148 - 2 ; case 1
	.short _021D3158 - _021D3148 - 2 ; case 2
	.short _021D315C - _021D3148 - 2 ; case 3
_021D3150:
	mov r1, #0x5a
	b _021D315E
_021D3154:
	mov r1, #0x5b
	b _021D315E
_021D3158:
	mov r1, #0x5c
	b _021D315E
_021D315C:
	mov r1, #0x5d
_021D315E:
	ldr r0, [r0, #0x50]
	bl sub_0200B1EC
	add r5, r0, #0
	lsl r0, r4, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D318C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D318C: .word 0x00010200
	thumb_func_end ov81_021D312C

	thumb_func_start ov81_021D3190
ov81_021D3190: ; 0x021D3190
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x5f
	add r6, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r4, #1]
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0x1b
	add r1, r4, #2
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D31E8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D31E8: .word 0x00010200
	thumb_func_end ov81_021D3190

	thumb_func_start ov81_021D31EC
ov81_021D31EC: ; 0x021D31EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x60
	add r6, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r4, #1]
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0x1b
	add r1, r4, #2
	lsr r2, r2, #0x1f
	mov r3, #0
	bl ov81_021D2A60
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3244 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D3244: .word 0x00010200
	thumb_func_end ov81_021D31EC

	thumb_func_start ov81_021D3248
ov81_021D3248: ; 0x021D3248
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	str r1, [sp, #0x10]
	add r4, r2, #0
	mov r1, #0x61
	add r6, r3, #0
	bl sub_0200B1EC
	ldrb r2, [r4, #1]
	add r7, r0, #0
	ldr r0, [r5, #0x54]
	lsl r2, r2, #0x1c
	mov r1, #0
	lsr r2, r2, #0x1c
	bl sub_0200C0B0
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	add r2, r7, #0
	bl sub_0200C388
	lsl r0, r6, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D329C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D329C: .word 0x00010200
	thumb_func_end ov81_021D3248

	thumb_func_start ov81_021D32A0
ov81_021D32A0: ; 0x021D32A0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r1, [sp, #0x20]
	add r4, r3, #0
	sub r1, #0x19
	cmp r1, #3
	bhi _021D32D0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D32BC: ; jump table
	.short _021D32C4 - _021D32BC - 2 ; case 0
	.short _021D32C8 - _021D32BC - 2 ; case 1
	.short _021D32CC - _021D32BC - 2 ; case 2
	.short _021D32D0 - _021D32BC - 2 ; case 3
_021D32C4:
	mov r1, #0x62
	b _021D32D2
_021D32C8:
	mov r1, #0x63
	b _021D32D2
_021D32CC:
	mov r1, #0x64
	b _021D32D2
_021D32D0:
	mov r1, #0x65
_021D32D2:
	ldr r0, [r0, #0x50]
	bl sub_0200B1EC
	add r5, r0, #0
	lsl r0, r4, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3300 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D3300: .word 0x00010200
	thumb_func_end ov81_021D32A0

	thumb_func_start ov81_021D3304
ov81_021D3304: ; 0x021D3304
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x50]
	add r6, r1, #0
	add r5, r3, #0
	mov r1, #0x66
	bl sub_0200B1EC
	add r4, r0, #0
	lsl r0, r5, #4
	add r0, #0x70
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D333C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D333C: .word 0x00010200
	thumb_func_end ov81_021D3304
	; 0x021D3340

	.incbin "data/overlay81.bin"
