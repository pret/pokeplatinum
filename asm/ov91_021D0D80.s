	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov91_021D0D80
ov91_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x43
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x62
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x43
	bl sub_0200681C
	mov r2, #0x62
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov91_021D0ED8
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrh r1, [r1, #0x10]
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov91_021D2548
	add r0, r4, #0
	mov r1, #0
	bl ov91_021D1C10
	mov r0, #0
	str r0, [sp]
	ldr r3, _021D0E00 ; =0x0001020F
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #1
	bl ov91_021D1580
	mov r0, #6
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xc8
	bl sub_0201A9A4
	add r0, r4, #0
	bl ov91_021D2594
	ldr r0, _021D0E04 ; =ov91_021D0F9C
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0E00: .word 0x0001020F
_021D0E04: .word ov91_021D0F9C
	thumb_func_end ov91_021D0D80

	thumb_func_start ov91_021D0E08
ov91_021D0E08: ; 0x021D0E08
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0xc
	bhi _021D0EA6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E24: ; jump table
	.short _021D0E3E - _021D0E24 - 2 ; case 0
	.short _021D0E46 - _021D0E24 - 2 ; case 1
	.short _021D0E4E - _021D0E24 - 2 ; case 2
	.short _021D0E56 - _021D0E24 - 2 ; case 3
	.short _021D0E5E - _021D0E24 - 2 ; case 4
	.short _021D0E66 - _021D0E24 - 2 ; case 5
	.short _021D0E6E - _021D0E24 - 2 ; case 6
	.short _021D0E76 - _021D0E24 - 2 ; case 7
	.short _021D0E7E - _021D0E24 - 2 ; case 8
	.short _021D0E86 - _021D0E24 - 2 ; case 9
	.short _021D0E8A - _021D0E24 - 2 ; case 10
	.short _021D0E92 - _021D0E24 - 2 ; case 11
	.short _021D0E9C - _021D0E24 - 2 ; case 12
_021D0E3E:
	bl ov91_021D1214
	str r0, [r4, #0]
	b _021D0EA6
_021D0E46:
	bl ov91_021D122C
	str r0, [r4, #0]
	b _021D0EA6
_021D0E4E:
	bl ov91_021D134C
	str r0, [r4, #0]
	b _021D0EA6
_021D0E56:
	bl ov91_021D136C
	str r0, [r4, #0]
	b _021D0EA6
_021D0E5E:
	bl ov91_021D1394
	str r0, [r4, #0]
	b _021D0EA6
_021D0E66:
	bl ov91_021D13E4
	str r0, [r4, #0]
	b _021D0EA6
_021D0E6E:
	bl ov91_021D1438
	str r0, [r4, #0]
	b _021D0EA6
_021D0E76:
	bl ov91_021D1450
	str r0, [r4, #0]
	b _021D0EA6
_021D0E7E:
	bl ov91_021D1480
	str r0, [r4, #0]
	b _021D0EA6
_021D0E86:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0E8A:
	bl ov91_021D2604
	str r0, [r4, #0]
	b _021D0EA6
_021D0E92:
	bl ov91_021D261C
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0E9C:
	bl ov91_021D26AC
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0EA6:
	add r0, r5, #0
	bl ov91_021D20E8
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov91_021D0E08

	thumb_func_start ov91_021D0EBC
ov91_021D0EBC: ; 0x021D0EBC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	bl ov91_021D0F6C
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x43
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov91_021D0EBC

	thumb_func_start ov91_021D0ED8
ov91_021D0ED8: ; 0x021D0ED8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0F60 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0F64 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0x43
	bl sub_02018340
	str r0, [r4, #4]
	mov r0, #0
	mov r1, #0x43
	bl sub_0208C120
	mov r0, #0x71
	mov r1, #0x43
	bl sub_02006C24
	add r5, r0, #0
	bl ov91_021D0FC4
	ldr r0, [r4, #4]
	bl ov91_021D0FE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov91_021D10C8
	add r0, r4, #0
	add r1, r5, #0
	bl ov91_021D2508
	add r0, r4, #0
	bl ov91_021D11B8
	add r0, r4, #0
	bl ov91_021D1154
	add r0, r4, #0
	bl ov91_021D1784
	add r0, r4, #0
	bl ov91_021D1498
	ldr r0, _021D0F68 ; =ov91_021D0F9C
	add r1, r4, #0
	bl sub_02017798
	add r0, r5, #0
	bl sub_02006CA8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0F60: .word 0xFFFFE0FF
_021D0F64: .word 0x04001000
_021D0F68: .word ov91_021D0F9C
	thumb_func_end ov91_021D0ED8

	thumb_func_start ov91_021D0F6C
ov91_021D0F6C: ; 0x021D0F6C
	push {r4, lr}
	add r4, r0, #0
	bl ov91_021D1868
	add r0, r4, #0
	bl ov91_021D11A0
	ldr r0, [r4, #4]
	bl ov91_021D1098
	add r0, r4, #0
	bl ov91_021D11F0
	add r0, r4, #0
	bl ov91_021D20B4
	bl sub_0201DC3C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D0F6C

	thumb_func_start ov91_021D0F9C
ov91_021D0F9C: ; 0x021D0F9C
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _021D0FBC ; =0x027E0000
	ldr r1, _021D0FC0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021D0FBC: .word 0x027E0000
_021D0FC0: .word 0x00003FF8
	thumb_func_end ov91_021D0F9C

	thumb_func_start ov91_021D0FC4
ov91_021D0FC4: ; 0x021D0FC4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D0FE0 ; =0x021D2804
	add r3, sp, #0
	mov r2, #5
_021D0FCE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D0FCE
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D0FE0: .word 0x021D2804
	thumb_func_end ov91_021D0FC4

	thumb_func_start ov91_021D0FE4
ov91_021D0FE4: ; 0x021D0FE4
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _021D1088 ; =0x021D270C
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D108C ; =0x021D2748
	add r3, sp, #0x38
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
	ldr r5, _021D1090 ; =0x021D2780
	add r3, sp, #0x1c
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
	ldr r5, _021D1094 ; =0x021D2764
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
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x43
	bl sub_02019690
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_021D1088: .word 0x021D270C
_021D108C: .word 0x021D2748
_021D1090: .word 0x021D2780
_021D1094: .word 0x021D2764
	thumb_func_end ov91_021D0FE4

	thumb_func_start ov91_021D1098
ov91_021D1098: ; 0x021D1098
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	mov r0, #0x43
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D1098

	thumb_func_start ov91_021D10C8
ov91_021D10C8: ; 0x021D10C8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x43
	str r0, [sp, #0xc]
	add r4, r1, #0
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x43
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #2
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x43
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	add r3, r2, #0
	bl sub_02007130
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x43
	bl sub_02002E98
	mov r1, #0
	str r1, [sp]
	mov r0, #0x43
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0200DAA4
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x43
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xd
	bl sub_0200DD0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov91_021D10C8

	thumb_func_start ov91_021D1154
ov91_021D1154: ; 0x021D1154
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	ldr r4, _021D119C ; =0x021D2884
	mov r6, #0
	add r5, #8
_021D1160:
	ldr r0, [r7, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0xf
	blo _021D1160
	add r0, r7, #0
	bl ov91_021D1664
	add r0, r7, #0
	add r0, #0xc8
	mov r1, #0xf
	bl sub_0201ADA4
	add r7, #0xc8
	add r0, r7, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xd
	bl sub_0200E060
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D119C: .word 0x021D2884
	thumb_func_end ov91_021D1154

	thumb_func_start ov91_021D11A0
ov91_021D11A0: ; 0x021D11A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #8
_021D11A8:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blo _021D11A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov91_021D11A0

	thumb_func_start ov91_021D11B8
ov91_021D11B8: ; 0x021D11B8
	push {r4, lr}
	ldr r2, _021D11EC ; =0x00000285
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x43
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1, #0]
	mov r0, #0x43
	bl sub_0200B358
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x43
	bl sub_02023790
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_021D11EC: .word 0x00000285
	thumb_func_end ov91_021D11B8

	thumb_func_start ov91_021D11F0
ov91_021D11F0: ; 0x021D11F0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D11F0

	thumb_func_start ov91_021D1214
ov91_021D1214: ; 0x021D1214
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1228
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	pop {r4, pc}
_021D1228:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov91_021D1214

	thumb_func_start ov91_021D122C
ov91_021D122C: ; 0x021D122C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D1340 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x30
	tst r1, r0
	beq _021D1254
	ldr r0, _021D1344 ; =0x000005DD
	bl sub_02005748
	ldr r2, [r5, #0]
	mov r0, #1
	ldrb r1, [r2, #0x14]
	eor r0, r1
	strb r0, [r2, #0x14]
	add r0, r5, #0
	bl ov91_021D1498
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1254:
	add r0, #0xd4
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	ldr r2, [r5, #0]
	mov r0, #0x41
	add r1, r2, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x12
	add r2, #0x10
	bl sub_020014DC
	ldr r2, [r5, #0]
	add r1, sp, #0
	ldrh r1, [r1, #2]
	ldrh r2, [r2, #0x12]
	add r0, r5, #0
	bl ov91_021D237C
	ldr r0, [r5, #0]
	ldrh r1, [r0, #0x10]
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r1, r0
	beq _021D12A6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov91_021D2548
_021D12A6:
	add r0, r5, #0
	bl ov91_021D2594
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021D12BC
	add r0, r0, #1
	cmp r4, r0
	beq _021D133A
	b _021D12F0
_021D12BC:
	ldr r0, _021D1344 ; =0x000005DD
	bl sub_02005748
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x10]
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov91_021D2548
	add r0, r5, #0
	bl ov91_021D25E4
	add r0, r5, #0
	mov r1, #2
	bl ov91_021D1DF8
	ldr r0, _021D1348 ; =0x00000186
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #3
	lsl r0, r1, #7
	str r1, [r5, r0]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021D12F0:
	ldr r0, _021D1344 ; =0x000005DD
	bl sub_02005748
	ldr r1, [r5, #0]
	add r0, r5, #0
	ldrh r1, [r1, #0x10]
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov91_021D2548
	add r0, r5, #0
	bl ov91_021D25E4
	add r0, r5, #0
	bl ov91_021D1EA0
	cmp r0, #4
	bhs _021D1322
	add r0, r5, #0
	mov r1, #1
	bl ov91_021D1DF8
	mov r1, #0
	b _021D132C
_021D1322:
	add r0, r5, #0
	mov r1, #4
	bl ov91_021D1DF8
	mov r1, #2
_021D132C:
	ldr r0, _021D1348 ; =0x00000186
	strb r1, [r5, r0]
	mov r1, #3
	lsl r0, r1, #7
	str r1, [r5, r0]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021D133A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D1340: .word 0x021BF67C
_021D1344: .word 0x000005DD
_021D1348: .word 0x00000186
	thumb_func_end ov91_021D122C

	thumb_func_start ov91_021D134C
ov91_021D134C: ; 0x021D134C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D1368 ; =0x00000185
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _021D1364
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	pop {r4, pc}
_021D1364:
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
_021D1368: .word 0x00000185
	thumb_func_end ov91_021D134C

	thumb_func_start ov91_021D136C
ov91_021D136C: ; 0x021D136C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x43
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _021D1390 ; =0x021D28F4
	mov r2, #1
	mov r3, #0xc
	bl sub_02002100
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D1390: .word 0x021D28F4
	thumb_func_end ov91_021D136C

	thumb_func_start ov91_021D1394
ov91_021D1394: ; 0x021D1394
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x43
	bl sub_02002114
	cmp r0, #0
	beq _021D13B2
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021D13C2
	b _021D13D2
_021D13B2:
	ldr r1, _021D13D8 ; =0x00000186
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r2, r1, #3
	ldr r1, _021D13DC ; =0x021D27DC
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
_021D13C2:
	ldr r1, _021D13D8 ; =0x00000186
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r2, r1, #3
	ldr r1, _021D13E0 ; =0x021D27E0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
_021D13D2:
	mov r0, #4
	pop {r4, pc}
	nop
_021D13D8: .word 0x00000186
_021D13DC: .word 0x021D27DC
_021D13E0: .word 0x021D27E0
	thumb_func_end ov91_021D1394

	thumb_func_start ov91_021D13E4
ov91_021D13E4: ; 0x021D13E4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov91_021D1DD0
	str r0, [sp]
	ldr r1, [r4, #0]
	add r2, sp, #0
	ldr r0, [r1, #0]
	ldrb r1, [r1, #0x17]
	add r1, #0x36
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0]
	add r2, sp, #0
	ldr r0, [r1, #0]
	ldrb r1, [r1, #0x17]
	add r1, #0x3e
	bl sub_02074B30
	add r0, r4, #0
	bl ov91_021D1DD0
	mov r1, #0
	bl sub_020790DC
	str r0, [sp]
	ldr r1, [r4, #0]
	add r2, sp, #0
	ldr r0, [r1, #0]
	ldrb r1, [r1, #0x17]
	add r1, #0x3a
	bl sub_02074B30
	ldr r0, [r4, #0]
	mov r1, #0
	strb r1, [r0, #0x16]
	mov r0, #8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov91_021D13E4

	thumb_func_start ov91_021D1438
ov91_021D1438: ; 0x021D1438
	push {r4, lr}
	mov r1, #6
	add r4, r0, #0
	bl ov91_021D1DF8
	mov r0, #6
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D1438

	thumb_func_start ov91_021D1450
ov91_021D1450: ; 0x021D1450
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldrb r1, [r1, #0x17]
	cmp r1, #4
	bhs _021D1466
	mov r1, #0xa
	bl ov91_021D1DF8
	mov r1, #4
	b _021D146E
_021D1466:
	mov r1, #7
	bl ov91_021D1DF8
	mov r1, #3
_021D146E:
	ldr r0, _021D147C ; =0x00000186
	strb r1, [r4, r0]
	mov r1, #3
	lsl r0, r1, #7
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
_021D147C: .word 0x00000186
	thumb_func_end ov91_021D1450

	thumb_func_start ov91_021D1480
ov91_021D1480: ; 0x021D1480
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x43
	bl sub_0208C120
	mov r0, #6
	mov r1, #9
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov91_021D1480

	thumb_func_start ov91_021D1498
ov91_021D1498: ; 0x021D1498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov91_021D1DD0
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	ldr r0, [r5, #4]
	bne _021D14F2
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x68
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0xb8
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #8
	bl sub_0201A9A4
	ldr r0, _021D157C ; =0x0000FFFF
	cmp r4, r0
	beq _021D14E6
	add r0, r5, #0
	add r1, r4, #0
	bl ov91_021D18C8
	b _021D1574
_021D14E6:
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov91_021D18C8
	b _021D1574
_021D14F2:
	mov r1, #2
	add r3, r1, #0
	mov r2, #0
	add r3, #0xfe
	bl sub_0201C63C
	add r0, r5, #0
	add r0, #8
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x28
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x38
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x48
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x58
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0xa8
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x78
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x88
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x98
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201A9A4
	ldr r0, _021D157C ; =0x0000FFFF
	cmp r4, r0
	beq _021D155E
	add r0, r5, #0
	add r1, r4, #0
	bl ov91_021D1A68
	b _021D1568
_021D155E:
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov91_021D1A68
_021D1568:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
_021D1574:
	add r0, r5, #0
	bl ov91_021D2314
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D157C: .word 0x0000FFFF
	thumb_func_end ov91_021D1498

	thumb_func_start ov91_021D1580
ov91_021D1580: ; 0x021D1580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r7, r3, #0
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _021D159C
	cmp r0, #1
	beq _021D15A0
	cmp r0, #2
	beq _021D15CA
	b _021D15F6
_021D159C:
	mov r3, #0
	b _021D15F6
_021D15A0:
	mov r1, #1
	lsl r1, r1, #8
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r6, r0, #0x18
	add r1, #8
	lsl r0, r4, #4
	add r0, r1, r0
	bl sub_0201C294
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	b _021D15F6
_021D15CA:
	mov r1, #1
	lsl r1, r1, #8
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r6, r0, #0x18
	add r1, #8
	lsl r0, r4, #4
	add r0, r1, r0
	bl sub_0201C294
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r3, r0, #0x18
_021D15F6:
	mov r0, #0
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r7, [sp, #8]
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r2, r2, #1
	add r1, #8
	lsl r0, r4, #4
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r2]
	bl sub_0201D78C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov91_021D1580

	thumb_func_start ov91_021D1618
ov91_021D1618: ; 0x021D1618
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	add r2, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	add r3, r7, #0
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #1
	add r0, #0xfc
	lsl r1, r1, #8
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov91_021D1618

	thumb_func_start ov91_021D1664
ov91_021D1664: ; 0x021D1664
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x1a
	add r2, r1, #0
	add r4, r0, #0
	add r0, #0xf8
	add r2, #0xe6
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r0, #2
	mov r1, #0
	str r0, [sp]
	ldr r3, _021D1754 ; =0x000F0E00
	add r0, r4, #0
	add r2, r1, #0
	bl ov91_021D1580
	mov r1, #0x1c
	add r0, r4, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe4
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r0, #2
	str r0, [sp]
	ldr r3, _021D1754 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov91_021D1580
	mov r1, #0x16
	add r0, r4, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xea
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r2, #0
	ldr r3, _021D1754 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #2
	str r2, [sp]
	bl ov91_021D1580
	mov r1, #0x17
	add r0, r4, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe9
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r2, #0
	ldr r3, _021D1754 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #3
	str r2, [sp]
	bl ov91_021D1580
	mov r1, #0x18
	add r0, r4, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe8
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r2, #0
	ldr r3, _021D1754 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #4
	str r2, [sp]
	bl ov91_021D1580
	mov r1, #0x19
	add r0, r4, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe7
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r2, #0
	ldr r3, _021D1758 ; =0x00010200
	add r0, r4, #0
	mov r1, #5
	str r2, [sp]
	bl ov91_021D1580
	mov r1, #0x1b
	add r0, r4, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xe5
	ldr r0, [r0, #0]
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r0, #2
	str r0, [sp]
	ldr r3, _021D1754 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ov91_021D1580
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D1754: .word 0x000F0E00
_021D1758: .word 0x00010200
	thumb_func_end ov91_021D1664

	thumb_func_start ov91_021D175C
ov91_021D175C: ; 0x021D175C
	push {r3, r4}
	ldr r0, [r0, #0]
	ldr r1, _021D1780 ; =0x0000FFFF
	ldr r4, [r0, #0xc]
	mov r0, #1
	mov r3, #0
	lsl r0, r0, #8
_021D176A:
	ldrh r2, [r4]
	cmp r2, r1
	beq _021D1778
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r0
	blo _021D176A
_021D1778:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	nop
_021D1780: .word 0x0000FFFF
	thumb_func_end ov91_021D175C

	thumb_func_start ov91_021D1784
ov91_021D1784: ; 0x021D1784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov91_021D175C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #1
	mov r0, #0x61
	lsl r0, r0, #2
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	mov r1, #0x43
	bl sub_02013A04
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, _021D185C ; =0x00000287
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x43
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _021D1806
	add r6, r4, #0
_021D17C4:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	ldrh r2, [r0, r6]
	ldr r0, _021D1860 ; =0x0000FFFF
	cmp r2, r0
	beq _021D17E0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02013A4C
	b _021D17F8
_021D17E0:
	mov r0, #0x42
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xf8
	mov r2, #0x20
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r1, #0]
	sub r3, #0x22
	bl sub_02013A4C
	b _021D1806
_021D17F8:
	mov r0, #0x61
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blo _021D17C4
_021D1806:
	add r0, r7, #0
	bl sub_0200B190
	ldr r4, _021D1864 ; =0x021D27BC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r0, #0x7c
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xd8
	str r1, [sp, #0xc]
	ldrb r1, [r5, r0]
	add r0, sp, #0
	strh r1, [r0, #0x10]
	str r5, [sp, #0x1c]
	ldr r3, [r5, #0]
	add r0, r2, #0
	ldrh r1, [r3, #0x12]
	ldrh r2, [r3, #0x10]
	mov r3, #0x43
	bl sub_0200112C
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r5, #0xd8
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D185C: .word 0x00000287
_021D1860: .word 0x0000FFFF
_021D1864: .word 0x021D27BC
	thumb_func_end ov91_021D1784

	thumb_func_start ov91_021D1868
ov91_021D1868: ; 0x021D1868
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	mov r0, #0x41
	add r1, r2, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x12
	add r2, #0x10
	bl sub_02001384
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D1868

	thumb_func_start ov91_021D188C
ov91_021D188C: ; 0x021D188C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #1
	beq _021D18A4
	ldr r0, _021D18C0 ; =0x000005DD
	bl sub_02005748
_021D18A4:
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _021D18B6
	add r0, r4, #0
	add r1, r5, #0
	bl ov91_021D18C8
	pop {r4, r5, r6, pc}
_021D18B6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov91_021D1A68
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D18C0: .word 0x000005DD
	thumb_func_end ov91_021D188C

	thumb_func_start ov91_021D18C4
ov91_021D18C4: ; 0x021D18C4
	bx lr
	; .align 2, 0
	thumb_func_end ov91_021D18C4

	thumb_func_start ov91_021D18C8
ov91_021D18C8: ; 0x021D18C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0xa8
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x78
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x98
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _021D190C
	b _021D1A1A
_021D190C:
	add r0, r4, #0
	mov r1, #2
	bl sub_020790C4
	add r2, r0, #0
	cmp r2, #1
	bhi _021D192E
	mov r1, #0x21
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xdf
	ldr r0, [r0, #0]
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _021D193C
_021D192E:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1d
	mov r3, #3
	bl ov91_021D1618
_021D193C:
	mov r0, #2
	str r0, [sp]
	ldr r3, _021D1A60 ; =0x00010200
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ov91_021D1580
	add r0, r4, #0
	mov r1, #4
	bl sub_020790C4
	add r2, r0, #0
	bne _021D196C
	mov r1, #0x21
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xdf
	ldr r0, [r0, #0]
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _021D197A
_021D196C:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1e
	mov r3, #3
	bl ov91_021D1618
_021D197A:
	mov r0, #2
	str r0, [sp]
	ldr r3, _021D1A60 ; =0x00010200
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov91_021D1580
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_020790DC
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1f
	mov r3, #2
	bl ov91_021D1618
	mov r0, #2
	str r0, [sp]
	ldr r3, _021D1A60 ; =0x00010200
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ov91_021D1580
	ldr r2, _021D1A64 ; =0x00000286
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x43
	bl sub_0200B144
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r5, r2]
	add r1, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r2, #0
	ldr r3, _021D1A60 ; =0x00010200
	add r0, r5, #0
	mov r1, #0xa
	str r2, [sp]
	bl ov91_021D1580
	add r0, r6, #0
	bl sub_0200B190
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov91_021D24B4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0x28
	bl sub_0201A9A4
	add r0, r5, #0
	add r0, #0x38
	bl sub_0201A9A4
	add r0, r5, #0
	add r0, #0x48
	bl sub_0201A9A4
	add r0, r5, #0
	add r0, #0x58
	bl sub_0201A9A4
	b _021D1A3A
_021D1A1A:
	add r0, r5, #0
	add r0, #0x28
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x38
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x48
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x58
	bl sub_0201AD10
_021D1A3A:
	add r0, r5, #0
	add r0, #0xa8
	bl sub_0201A9A4
	add r0, r5, #0
	add r0, #0x78
	bl sub_0201A9A4
	add r0, r5, #0
	add r0, #0x88
	bl sub_0201A9A4
	add r5, #0x98
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D1A60: .word 0x00010200
_021D1A64: .word 0x00000286
	thumb_func_end ov91_021D18C8

	thumb_func_start ov91_021D1A68
ov91_021D1A68: ; 0x021D1A68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0xb8
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	beq _021D1ADE
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_0209577C
	add r6, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd2
	mov r3, #0x43
	bl sub_0200B144
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r5, r2]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021D1AFC ; =0x00010200
	add r2, r2, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0xb8
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_0200B190
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov91_021D1BBC
	add r0, r5, #0
	add r0, #0x68
	bl sub_0201A9A4
	b _021D1AEE
_021D1ADE:
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov91_021D1BBC
	add r0, r5, #0
	add r0, #0x68
	bl sub_0201AD10
_021D1AEE:
	add r5, #0xb8
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1AFC: .word 0x00010200
	thumb_func_end ov91_021D1A68

	thumb_func_start ov91_021D1B00
ov91_021D1B00: ; 0x021D1B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #5
	lsl r6, r2, #1
	str r0, [sp]
	add r4, r1, #0
	mov r0, #1
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #0x22
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	lsl r3, r7, #0x18
	ldr r0, [r5, #4]
	mov r1, #2
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r6, #0x23
	str r0, [sp, #8]
	mov r0, #0x10
	add r2, r4, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, #4]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0x10
	add r2, #0x20
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r7, #0x18
	ldr r0, [r5, #4]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	add r4, #0x21
	str r0, [sp, #0xc]
	lsl r2, r4, #0x10
	lsl r3, r6, #0x18
	ldr r0, [r5, #4]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov91_021D1B00

	thumb_func_start ov91_021D1B94
ov91_021D1B94: ; 0x021D1B94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x12
_021D1B9C:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov91_021D1B00
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021D1B9C
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_0201C3C0
	pop {r4, r5, r6, pc}
	thumb_func_end ov91_021D1B94

	thumb_func_start ov91_021D1BBC
ov91_021D1BBC: ; 0x021D1BBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov91_021D1B94
	ldr r0, _021D1C0C ; =0x0000FFFF
	cmp r4, r0
	beq _021D1C00
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_02095734
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	mov r4, #0
	cmp r6, #0
	ble _021D1C00
	mov r7, #0xe
_021D1BEA:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ov91_021D1B00
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _021D1BEA
_021D1C00:
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C0C: .word 0x0000FFFF
	thumb_func_end ov91_021D1BBC

	thumb_func_start ov91_021D1C10
ov91_021D1C10: ; 0x021D1C10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xa
	bls _021D1C1C
	b _021D1D94
_021D1C1C:
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1C28: ; jump table
	.short _021D1C3E - _021D1C28 - 2 ; case 0
	.short _021D1C56 - _021D1C28 - 2 ; case 1
	.short _021D1C6A - _021D1C28 - 2 ; case 2
	.short _021D1C82 - _021D1C28 - 2 ; case 3
	.short _021D1CAE - _021D1C28 - 2 ; case 4
	.short _021D1CDA - _021D1C28 - 2 ; case 5
	.short _021D1D06 - _021D1C28 - 2 ; case 6
	.short _021D1D32 - _021D1C28 - 2 ; case 7
	.short _021D1D46 - _021D1C28 - 2 ; case 8
	.short _021D1D72 - _021D1C28 - 2 ; case 9
	.short _021D1D82 - _021D1C28 - 2 ; case 10
_021D1C3E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	b _021D1D94
_021D1C56:
	bl ov91_021D1DD0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1C6A:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	b _021D1D94
_021D1C82:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	bl ov91_021D1DD0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1CAE:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	bl ov91_021D1DD0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1CDA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	bl ov91_021D1DE0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1D06:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	bl ov91_021D1DD0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1D32:
	bl ov91_021D1DD0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1D46:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	bl ov91_021D1DD0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B630
	b _021D1D94
_021D1D72:
	ldr r2, [r4, #0]
	add r0, #0xfc
	ldr r0, [r0, #0]
	ldr r2, [r2, #4]
	mov r1, #2
	bl sub_0200B498
	b _021D1D94
_021D1D82:
	bl ov91_021D1DE0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B630
_021D1D94:
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrb r2, [r1, #0x15]
	add r0, #0xf8
	mov r1, #0x2c
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1DCC ; =0x021D282C
	lsl r2, r5, #2
	add r1, r1, r3
	ldr r0, [r0, #0]
	ldr r1, [r2, r1]
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	lsl r1, r1, #8
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1DCC: .word 0x021D282C
	thumb_func_end ov91_021D1C10

	thumb_func_start ov91_021D1DD0
ov91_021D1DD0: ; 0x021D1DD0
	ldr r0, [r0, #0]
	ldr r2, [r0, #0xc]
	ldrh r1, [r0, #0x12]
	ldrh r0, [r0, #0x10]
	add r0, r1, r0
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	bx lr
	thumb_func_end ov91_021D1DD0

	thumb_func_start ov91_021D1DE0
ov91_021D1DE0: ; 0x021D1DE0
	push {r3, lr}
	ldr r1, [r0, #0]
	mov r2, #0
	ldr r0, [r1, #0]
	ldrb r1, [r1, #0x17]
	add r1, #0x36
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov91_021D1DE0

	thumb_func_start ov91_021D1DF8
ov91_021D1DF8: ; 0x021D1DF8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0xc8
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r5, #0
	bl ov91_021D1C10
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _021D1E48 ; =ov91_021D1E50
	mov r1, #1
	add r2, r1, #0
	str r0, [sp, #8]
	add r2, #0xff
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0xc8
	bl sub_0201D738
	ldr r1, _021D1E4C ; =0x00000185
	strb r0, [r4, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D1E48: .word ov91_021D1E50
_021D1E4C: .word 0x00000185
	thumb_func_end ov91_021D1DF8

	thumb_func_start ov91_021D1E50
ov91_021D1E50: ; 0x021D1E50
	push {r3, lr}
	cmp r1, #5
	bhi _021D1E92
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1E62: ; jump table
	.short _021D1E92 - _021D1E62 - 2 ; case 0
	.short _021D1E6E - _021D1E62 - 2 ; case 1
	.short _021D1E74 - _021D1E62 - 2 ; case 2
	.short _021D1E7A - _021D1E62 - 2 ; case 3
	.short _021D1E82 - _021D1E62 - 2 ; case 4
	.short _021D1E8A - _021D1E62 - 2 ; case 5
_021D1E6E:
	bl sub_020057E0
	pop {r3, pc}
_021D1E74:
	bl sub_020061E4
	pop {r3, pc}
_021D1E7A:
	ldr r0, _021D1E98 ; =0x000005E6
	bl sub_02005748
	b _021D1E92
_021D1E82:
	ldr r0, _021D1E9C ; =0x00000483
	bl sub_02006150
	b _021D1E92
_021D1E8A:
	ldr r0, _021D1E98 ; =0x000005E6
	bl sub_020057D4
	pop {r3, pc}
_021D1E92:
	mov r0, #0
	pop {r3, pc}
	nop
_021D1E98: .word 0x000005E6
_021D1E9C: .word 0x00000483
	thumb_func_end ov91_021D1E50

	thumb_func_start ov91_021D1EA0
ov91_021D1EA0: ; 0x021D1EA0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021D1EA8:
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x36
	add r2, r6, #0
	bl sub_02074470
	cmp r0, #0
	beq _021D1EC4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D1EA8
_021D1EC4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov91_021D1EA0

	thumb_func_start ov91_021D1EC8
ov91_021D1EC8: ; 0x021D1EC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	bl ov91_021D1DF8
	add r0, r4, #0
	bl ov91_021D1EA0
	ldr r1, [r4, #0]
	strb r0, [r1, #0x17]
	mov r0, #6
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov91_021D1EC8

	thumb_func_start ov91_021D1EE8
ov91_021D1EE8: ; 0x021D1EE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xc8
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl ov91_021D1C10
	mov r0, #0
	str r0, [sp]
	ldr r3, _021D1F34 ; =0x0001020F
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #1
	bl ov91_021D1580
	add r0, r4, #0
	add r0, #0xc8
	bl sub_0201A9A4
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrh r1, [r1, #0x10]
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov91_021D2548
	add r0, r4, #0
	mov r1, #1
	bl ov91_021D2574
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D1F34: .word 0x0001020F
	thumb_func_end ov91_021D1EE8

	thumb_func_start ov91_021D1F38
ov91_021D1F38: ; 0x021D1F38
	ldr r0, [r0, #0]
	mov r1, #1
	strb r1, [r0, #0x16]
	mov r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end ov91_021D1F38

	thumb_func_start ov91_021D1F44
ov91_021D1F44: ; 0x021D1F44
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xc8
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl ov91_021D1C10
	mov r0, #0
	str r0, [sp]
	ldr r3, _021D1F90 ; =0x0001020F
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #1
	bl ov91_021D1580
	add r0, r4, #0
	add r0, #0xc8
	bl sub_0201A9A4
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrh r1, [r1, #0x10]
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov91_021D2548
	add r0, r4, #0
	mov r1, #1
	bl ov91_021D2574
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D1F90: .word 0x0001020F
	thumb_func_end ov91_021D1F44

	thumb_func_start ov91_021D1F94
ov91_021D1F94: ; 0x021D1F94
	mov r1, #6
	mov r2, #0xa
	lsl r1, r1, #6
	str r2, [r0, r1]
	mov r0, #0
	bx lr
	thumb_func_end ov91_021D1F94

	thumb_func_start ov91_021D1FA0
ov91_021D1FA0: ; 0x021D1FA0
	push {r4, lr}
	mov r1, #7
	add r4, r0, #0
	bl ov91_021D1DF8
	ldr r0, _021D1FB8 ; =0x00000186
	mov r1, #3
	strb r1, [r4, r0]
	sub r0, r0, #6
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
_021D1FB8: .word 0x00000186
	thumb_func_end ov91_021D1FA0

	thumb_func_start ov91_021D1FBC
ov91_021D1FBC: ; 0x021D1FBC
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl ov91_021D1DF8
	mov r0, #6
	mov r1, #8
	lsl r0, r0, #6
	str r1, [r4, r0]
	ldr r0, [r4, #0]
	mov r1, #1
	strb r1, [r0, #0x16]
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov91_021D1FBC

	thumb_func_start ov91_021D1FD8
ov91_021D1FD8: ; 0x021D1FD8
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl ov91_021D1DF8
	ldr r1, _021D1FF0 ; =0x00000186
	mov r0, #2
	mov r2, #3
	strb r0, [r4, r1]
	lsl r1, r2, #7
	str r2, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_021D1FF0: .word 0x00000186
	thumb_func_end ov91_021D1FD8

	thumb_func_start ov91_021D1FF4
ov91_021D1FF4: ; 0x021D1FF4
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl ov91_021D1DF8
	mov r1, #6
	lsl r0, r1, #6
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov91_021D1FF4

	thumb_func_start ov91_021D2008
ov91_021D2008: ; 0x021D2008
	mov r1, #6
	mov r2, #0xa
	lsl r1, r1, #6
	str r2, [r0, r1]
	mov r0, #0
	bx lr
	thumb_func_end ov91_021D2008

	thumb_func_start ov91_021D2014
ov91_021D2014: ; 0x021D2014
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r3, _021D20A8 ; =0x021D2730
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x40
	mov r1, #0x43
	bl sub_0201DBEC
	mov r0, #0x43
	bl sub_0200C6E4
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	mov r7, #0x45
	lsl r7, r7, #2
	add r2, sp, #0x14
	ldr r3, _021D20AC ; =0x021D279C
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021D20B0 ; =0x021D271C
	stmia r2!, {r0, r1}
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl sub_0200C73C
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xd
	bl sub_0200C7C0
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x34
	bl sub_0200CB30
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021D20A8: .word 0x021D2730
_021D20AC: .word 0x021D279C
_021D20B0: .word 0x021D271C
	thumb_func_end ov91_021D2014

	thumb_func_start ov91_021D20B4
ov91_021D20B4: ; 0x021D20B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x46
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_021D20C0:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xd
	blo _021D20C0
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r7, r1]
	add r1, r1, #4
	ldr r1, [r7, r1]
	bl sub_0200D0B0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_0200C8D4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov91_021D20B4

	thumb_func_start ov91_021D20E8
ov91_021D20E8: ; 0x021D20E8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r6, #0x46
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #0xc
	lsl r6, r6, #2
_021D20F6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	ldr r0, [r0, #0]
	bl sub_02021E2C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xd
	blo _021D20F6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov91_021D20E8

	thumb_func_start ov91_021D2110
ov91_021D2110: ; 0x021D2110
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D228C ; =0x0000B8A8
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #5
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D2290 ; =0x0000B8A9
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #8
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D2294 ; =0x0000B8AA
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #2
	bl sub_0200CC3C
	ldr r4, _021D2298 ; =0x0000B8AC
	add r7, r4, #6
_021D2176:
	mov r0, #0x11
	mov r1, #0x45
	str r4, [sp]
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #1
	mov r3, #0
	bl sub_0207C948
	add r4, r4, #1
	cmp r4, r7
	bls _021D2176
	ldr r0, _021D229C ; =0x0000B8AB
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #1
	mov r3, #0
	bl sub_0207CAC4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021D228C ; =0x0000B8A8
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #9
	bl sub_0200CD0C
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r3, _021D2290 ; =0x0000B8A9
	mov r2, #1
	bl sub_0207C97C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D228C ; =0x0000B8A8
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #4
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D2290 ; =0x0000B8A9
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #7
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D2294 ; =0x0000B8AA
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D228C ; =0x0000B8A8
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #3
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D2290 ; =0x0000B8A9
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #6
	bl sub_0200CE54
	mov r3, #0
	mov r1, #0x11
	ldr r0, _021D2294 ; =0x0000B8AA
	str r3, [sp]
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200CE54
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r2, _021D229C ; =0x0000B8AB
	ldr r1, [r5, r1]
	add r3, r2, #0
	bl sub_0207C9EC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D228C: .word 0x0000B8A8
_021D2290: .word 0x0000B8A9
_021D2294: .word 0x0000B8AA
_021D2298: .word 0x0000B8AC
_021D229C: .word 0x0000B8AB
	thumb_func_end ov91_021D2110

	thumb_func_start ov91_021D22A0
ov91_021D22A0: ; 0x021D22A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _021D22BC
	add r0, r1, #0
	mov r1, #3
	bl sub_020790C4
	add r6, r0, #0
	b _021D22C8
_021D22BC:
	add r0, r1, #0
	mov r1, #0xb
	bl sub_020790C4
	add r6, r0, #0
	add r6, #0x12
_021D22C8:
	bl sub_0207C944
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _021D2310 ; =0x0000B8AC
	mov r1, #0x11
	add r0, r4, r0
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200D948
	add r0, r6, #0
	bl sub_0207C92C
	add r1, r0, #0
	add r0, r4, #6
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r1, r1, #2
	bl sub_0200D41C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2310: .word 0x0000B8AC
	thumb_func_end ov91_021D22A0

	thumb_func_start ov91_021D2314
ov91_021D2314: ; 0x021D2314
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	mov r7, #0x20
	add r5, r6, #0
_021D231E:
	mov r0, #0x13
	lsl r0, r0, #4
	lsl r2, r7, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x98
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r6, #0]
	mov r1, #0x61
	lsl r1, r1, #2
	ldrh r0, [r0, #0x12]
	ldrb r1, [r6, r1]
	add r0, r0, r4
	sub r1, r1, #1
	cmp r0, r1
	blo _021D234E
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	b _021D2370
_021D234E:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r2, [r6, #0]
	add r0, r6, #0
	ldr r1, [r2, #0xc]
	ldrh r2, [r2, #0x12]
	add r2, r2, r4
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	bl ov91_021D22A0
_021D2370:
	add r4, r4, #1
	add r7, #0x10
	add r5, r5, #4
	cmp r4, #7
	blo _021D231E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov91_021D2314

	thumb_func_start ov91_021D237C
ov91_021D237C: ; 0x021D237C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r2, [sp]
	cmp r1, r2
	bhs _021D23EC
	ldr r0, [sp]
	mov r6, #0
	add r0, r0, #6
	lsl r0, r0, #1
	add r4, r5, #0
	str r0, [sp, #4]
	add r7, sp, #0xc
_021D2396:
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, sp, #0xc
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	mov r0, #0
	ldrsh r0, [r7, r0]
	cmp r0, #0x20
	bne _021D23CC
	mov r0, #0x80
	strh r0, [r7]
	ldr r0, [r5, #0]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, _021D24B0 ; =0x0000FFFF
	cmp r1, r0
	beq _021D23D0
	lsl r2, r6, #0x10
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov91_021D22A0
	b _021D23D0
_021D23CC:
	sub r0, #0x10
	strh r0, [r7]
_021D23D0:
	mov r0, #0x13
	mov r1, #2
	mov r2, #0
	lsl r0, r0, #4
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #7
	blo _021D2396
	b _021D2450
_021D23EC:
	ldr r0, [sp]
	cmp r1, r0
	bls _021D24AC
	lsl r0, r0, #1
	mov r6, #0
	add r4, r5, #0
	str r0, [sp, #8]
	add r7, sp, #0xc
_021D23FC:
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, sp, #0xc
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	mov r0, #0
	ldrsh r0, [r7, r0]
	cmp r0, #0x80
	bne _021D2432
	mov r0, #0x20
	strh r0, [r7]
	ldr r0, [r5, #0]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #8]
	ldrh r1, [r0, r1]
	ldr r0, _021D24B0 ; =0x0000FFFF
	cmp r1, r0
	beq _021D2436
	lsl r2, r6, #0x10
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov91_021D22A0
	b _021D2436
_021D2432:
	add r0, #0x10
	strh r0, [r7]
_021D2436:
	mov r0, #0x13
	mov r1, #2
	mov r2, #0
	lsl r0, r0, #4
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #7
	blo _021D23FC
_021D2450:
	mov r6, #0
	add r4, r5, #0
	add r7, sp, #0xc
_021D2456:
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, sp, #0xc
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	mov r0, #0
	ldrsh r1, [r7, r0]
	sub r1, #0x20
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r7]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	add r0, r0, r1
	mov r1, #0x61
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	sub r1, r1, #1
	cmp r0, r1
	blt _021D2498
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	b _021D24A4
_021D2498:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
_021D24A4:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #7
	blo _021D2456
_021D24AC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D24B0: .word 0x0000FFFF
	thumb_func_end ov91_021D237C

	thumb_func_start ov91_021D24B4
ov91_021D24B4: ; 0x021D24B4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl sub_020790C4
	add r4, r0, #0
	bl sub_0207CAC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _021D2504 ; =0x0000B8AB
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #2
	bl sub_0200D41C
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021D2504: .word 0x0000B8AB
	thumb_func_end ov91_021D24B4

	thumb_func_start ov91_021D2508
ov91_021D2508: ; 0x021D2508
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	bl ov91_021D2014
	add r0, r6, #0
	add r1, r4, #0
	bl ov91_021D2110
	ldr r4, _021D2544 ; =0x021D28FC
	mov r7, #0
	add r5, r6, #0
_021D2520:
	mov r0, #0x11
	mov r1, #0x45
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	add r2, r4, #0
	bl sub_0200CE6C
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r7, #0xd
	blo _021D2520
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2544: .word 0x021D28FC
	thumb_func_end ov91_021D2508

	thumb_func_start ov91_021D2548
ov91_021D2548: ; 0x021D2548
	push {r3, r4, r5, lr}
	add r3, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #0x4a
	lsl r2, r3, #4
	lsl r0, r0, #2
	add r2, #0x20
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0xc4
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D41C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov91_021D2548

	thumb_func_start ov91_021D2574
ov91_021D2574: ; 0x021D2574
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0200D3F4
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov91_021D2574

	thumb_func_start ov91_021D2594
ov91_021D2594: ; 0x021D2594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _021D25AE
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	b _021D25BA
_021D25AE:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
_021D25BA:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x12]
	add r2, r0, #7
	mov r0, #0x61
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r2, r1
	bge _021D25D6
	sub r0, #0x60
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r4, pc}
_021D25D6:
	sub r0, #0x60
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D2594

	thumb_func_start ov91_021D25E4
ov91_021D25E4: ; 0x021D25E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov91_021D25E4

	thumb_func_start ov91_021D2604
ov91_021D2604: ; 0x021D2604
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x43
	bl sub_0208C120
	mov r0, #6
	mov r1, #0xb
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov91_021D2604

	thumb_func_start ov91_021D261C
ov91_021D261C: ; 0x021D261C
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _021D26A4 ; =0x021D2708
	add r1, sp, #0
	ldrb r3, [r2]
	add r4, r0, #0
	strb r3, [r1]
	ldrb r3, [r2, #1]
	ldrb r2, [r2, #2]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	bl ov91_021D0F6C
	ldr r0, [r4, #0]
	mov r1, #0x53
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x11
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x14
	strb r2, [r4, r0]
	mov r0, #1
	add r1, #0x13
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov91_021D1DD0
	mov r1, #0x59
	lsl r1, r1, #2
	strh r0, [r4, r1]
	mov r2, #2
	sub r0, r1, #6
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #1
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x10
	sub r1, #0x18
	str r2, [r4, r0]
	add r0, r4, r1
	add r1, sp, #0
	bl sub_0208D720
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, _021D26A8 ; =0x020F410C
	add r1, r4, r1
	mov r2, #0x43
	bl sub_020067E8
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D26A4: .word 0x021D2708
_021D26A8: .word 0x020F410C
	thumb_func_end ov91_021D261C

	thumb_func_start ov91_021D26AC
ov91_021D26AC: ; 0x021D26AC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006844
	cmp r0, #0
	beq _021D26FE
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006814
	add r0, r4, #0
	bl ov91_021D0ED8
	ldr r1, [r4, #0]
	add r0, r4, #0
	ldrh r1, [r1, #0x10]
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov91_021D2548
	add r0, r4, #0
	mov r1, #0
	bl ov91_021D2574
	add r0, r4, #0
	bl ov91_021D25E4
	ldr r0, _021D2704 ; =0x00000162
	ldr r1, [r4, #0]
	ldrb r2, [r4, r0]
	add r0, #0x1e
	strb r2, [r1, #0x17]
	mov r1, #7
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
_021D26FE:
	mov r0, #0xc
	pop {r4, pc}
	nop
_021D2704: .word 0x00000162
	thumb_func_end ov91_021D26AC

	.rodata


	.global Unk_ov91_021D2708
Unk_ov91_021D2708: ; 0x021D2708
	.incbin "incbin/overlay91_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov91_021D270C
Unk_ov91_021D270C: ; 0x021D270C
	.incbin "incbin/overlay91_rodata.bin", 0x4, 0x14 - 0x4

	.global Unk_ov91_021D271C
Unk_ov91_021D271C: ; 0x021D271C
	.incbin "incbin/overlay91_rodata.bin", 0x14, 0x28 - 0x14

	.global Unk_ov91_021D2730
Unk_ov91_021D2730: ; 0x021D2730
	.incbin "incbin/overlay91_rodata.bin", 0x28, 0x40 - 0x28

	.global Unk_ov91_021D2748
Unk_ov91_021D2748: ; 0x021D2748
	.incbin "incbin/overlay91_rodata.bin", 0x40, 0x5C - 0x40

	.global Unk_ov91_021D2764
Unk_ov91_021D2764: ; 0x021D2764
	.incbin "incbin/overlay91_rodata.bin", 0x5C, 0x78 - 0x5C

	.global Unk_ov91_021D2780
Unk_ov91_021D2780: ; 0x021D2780
	.incbin "incbin/overlay91_rodata.bin", 0x78, 0x94 - 0x78

	.global Unk_ov91_021D279C
Unk_ov91_021D279C: ; 0x021D279C
	.incbin "incbin/overlay91_rodata.bin", 0x94, 0xB4 - 0x94

	.global Unk_ov91_021D27BC
Unk_ov91_021D27BC: ; 0x021D27BC
	.incbin "incbin/overlay91_rodata.bin", 0xB4, 0xD4 - 0xB4

	.global Unk_ov91_021D27DC
Unk_ov91_021D27DC: ; 0x021D27DC
	.incbin "incbin/overlay91_rodata.bin", 0xD4, 0xFC - 0xD4

	.global Unk_ov91_021D2804
Unk_ov91_021D2804: ; 0x021D2804
	.incbin "incbin/overlay91_rodata.bin", 0xFC, 0x124 - 0xFC

	.global Unk_ov91_021D282C
Unk_ov91_021D282C: ; 0x021D282C
	.incbin "incbin/overlay91_rodata.bin", 0x124, 0x17C - 0x124

	.global Unk_ov91_021D2884
Unk_ov91_021D2884: ; 0x021D2884
	.incbin "incbin/overlay91_rodata.bin", 0x17C, 0x1F4 - 0x17C

	.global Unk_ov91_021D28FC
Unk_ov91_021D28FC: ; 0x021D28FC
	.incbin "incbin/overlay91_rodata.bin", 0x1F4, 0x2A4

