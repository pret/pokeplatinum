	.include "macros/function.inc"
	.include "include/ov81_021D0D80.inc"

	

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
	bl memset
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
	bl MIi_CpuCopy16
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
	bl MIi_CpuCopy16
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

	.rodata


	.global Unk_ov81_021D3340
Unk_ov81_021D3340: ; 0x021D3340
	.incbin "incbin/overlay81_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov81_021D3350
Unk_ov81_021D3350: ; 0x021D3350
	.incbin "incbin/overlay81_rodata.bin", 0x10, 0x2C - 0x10

	.global Unk_ov81_021D336C
Unk_ov81_021D336C: ; 0x021D336C
	.incbin "incbin/overlay81_rodata.bin", 0x2C, 0x48 - 0x2C

	.global Unk_ov81_021D3388
Unk_ov81_021D3388: ; 0x021D3388
	.incbin "incbin/overlay81_rodata.bin", 0x48, 0x64 - 0x48

	.global Unk_ov81_021D33A4
Unk_ov81_021D33A4: ; 0x021D33A4
	.incbin "incbin/overlay81_rodata.bin", 0x64, 0x80 - 0x64

	.global Unk_ov81_021D33C0
Unk_ov81_021D33C0: ; 0x021D33C0
	.incbin "incbin/overlay81_rodata.bin", 0x80, 0xA8 - 0x80

	.global Unk_ov81_021D33E8
Unk_ov81_021D33E8: ; 0x021D33E8
	.incbin "incbin/overlay81_rodata.bin", 0xA8, 0x120

