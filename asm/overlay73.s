	.include "macros/function.inc"


	.text

	thumb_func_start ov73_021D0D80
ov73_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x52
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xc0
	mov r2, #0x52
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xc0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x52
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl sub_02025E44
	mov r1, #0
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r0, [r4, #8]
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x52
	mov r3, #7
	bl sub_0208712C
	str r0, [r4, #0x70]
	ldr r0, [r4, #8]
	mov r1, #3
	str r0, [sp]
	mov r0, #0x52
	mov r2, #0
	mov r3, #7
	bl sub_0208712C
	str r0, [r4, #0x74]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x88
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x89
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x8a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x90
	str r1, [r0, #0]
	mov r0, #0x52
	mov r1, #0x20
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0x52
	mov r1, #0x20
	bl sub_02018144
	add r4, #0xbc
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021D0D80

	thumb_func_start ov73_021D0E20
ov73_021D0E20: ; 0x021D0E20
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #5
	bls _021D0E36
	b _021D0F68
_021D0E36:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E42: ; jump table
	.short _021D0E4E - _021D0E42 - 2 ; case 0
	.short _021D0EB6 - _021D0E42 - 2 ; case 1
	.short _021D0EFE - _021D0E42 - 2 ; case 2
	.short _021D0F24 - _021D0E42 - 2 ; case 3
	.short _021D0F4C - _021D0E42 - 2 ; case 4
	.short _021D0F66 - _021D0E42 - 2 ; case 5
_021D0E4E:
	add r0, r6, #0
	add r1, r6, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r6, #0
	bl sub_0200F344
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0F70 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0F74 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov73_021D1058
	add r0, r4, #0
	bl ov73_021D12C4
	add r0, r4, #0
	bl ov73_021D1318
	ldr r0, _021D0F78 ; =ov73_021D0FF0
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r0, #1
	str r0, [r5, #0]
	b _021D0F68
_021D0EB6:
	bl ov73_021D2318
	cmp r0, #1
	bne _021D0EDA
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #2
	str r0, [r5, #0]
_021D0EDA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D0F68
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
	b _021D0F68
_021D0EFE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0F68
	add r0, r4, #0
	bl ov73_021D1300
	add r0, r4, #0
	bl ov73_021D1238
	add r0, r4, #0
	bl ov73_021D1328
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r6, #1
	b _021D0F68
_021D0F24:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0F68
	add r0, r4, #0
	bl ov73_021D1300
	add r0, r4, #0
	bl ov73_021D1238
	add r0, r4, #0
	bl ov73_021D1328
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #4
	str r0, [r5, #0]
	b _021D0F68
_021D0F4C:
	ldr r0, [r4, #0x14]
	bl sub_02006844
	cmp r0, #1
	bne _021D0F68
	ldr r0, [r4, #0x14]
	bl sub_02006814
	add r0, r6, #0
	str r0, [r4, #0x14]
	mov r0, #5
	str r0, [r5, #0]
	b _021D0F68
_021D0F66:
	str r6, [r5, #0]
_021D0F68:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D0F70: .word 0xFFFFE0FF
_021D0F74: .word 0x04001000
_021D0F78: .word ov73_021D0FF0
	thumb_func_end ov73_021D0E20

	thumb_func_start ov73_021D0F7C
ov73_021D0F7C: ; 0x021D0F7C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	ldr r5, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_02025E38
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0x18]
	bl sub_02025EE0
	ldr r0, [r4, #4]
	bl sub_02025E38
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #4]
	bl sub_02025F2C
	ldr r0, [r4, #4]
	bl sub_0202783C
	ldr r1, [r4, #0x74]
	ldr r1, [r1, #0x18]
	bl sub_0202787C
	ldr r0, [r4, #0x70]
	bl sub_0208716C
	ldr r0, [r4, #0x74]
	bl sub_0208716C
	add r0, r6, #0
	bl sub_02006830
	add r0, r5, #0
	bl sub_0201807C
	ldr r0, _021D0FE8 ; =0x00000039
	ldr r1, _021D0FEC ; =0x021D0F80
	bl sub_02000EC4
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D0FE8: .word 0x00000039
_021D0FEC: .word 0x021D0F80
	thumb_func_end ov73_021D0F7C

	thumb_func_start ov73_021D0FF0
ov73_021D0FF0: ; 0x021D0FF0
	ldr r3, _021D0FF8 ; =sub_0201C2B8
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021D0FF8: .word sub_0201C2B8
	thumb_func_end ov73_021D0FF0

	thumb_func_start ov73_021D0FFC
ov73_021D0FFC: ; 0x021D0FFC
	push {r3, r4}
	ldr r2, _021D1054 ; =0x021BF6BC
	mov r0, #0
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	beq _021D1050
	ldrh r3, [r2, #0x1c]
	mov r1, #1
	lsl r1, r1, #8
	cmp r3, r1
	bhs _021D1050
	ldrh r2, [r2, #0x1e]
	cmp r2, #0xc0
	bhs _021D1050
	cmp r3, #0x80
	bhs _021D1024
	mov r1, #0x80
	sub r1, r1, r3
	lsl r1, r1, #0x10
	b _021D1028
_021D1024:
	sub r3, #0x80
	lsl r1, r3, #0x10
_021D1028:
	lsr r3, r1, #0x10
	cmp r2, #0x64
	bhs _021D1036
	mov r1, #0x64
	sub r1, r1, r2
	lsl r1, r1, #0x10
	b _021D103A
_021D1036:
	sub r2, #0x64
	lsl r1, r2, #0x10
_021D103A:
	lsr r4, r1, #0x10
	add r2, r3, #0
	add r1, r4, #0
	mul r2, r3
	mul r1, r4
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	bgt _021D1050
	mov r0, #1
_021D1050:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D1054: .word 0x021BF6BC
	thumb_func_end ov73_021D0FFC

	thumb_func_start ov73_021D1058
ov73_021D1058: ; 0x021D1058
	push {r3, r4, r5, lr}
	sub sp, #0x78
	ldr r5, _021D1220 ; =0x021D392C
	add r4, r0, #0
	add r3, sp, #0x50
	mov r2, #5
_021D1064:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1064
	add r0, sp, #0x50
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x40
	ldr r5, _021D1224 ; =0x021D3810
	str r0, [r4, #0x18]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1228 ; =0x021D38D4
	add r3, sp, #0x24
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
	mov r0, #0xf
	strb r0, [r2, #0x12]
	mov r0, #6
	strb r0, [r2, #0x13]
	ldr r0, [r4, #0x18]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019EBC
	mov r0, #0xe
	add r2, sp, #0x24
	strb r0, [r2, #0x12]
	mov r0, #5
	strb r0, [r2, #0x13]
	ldr r0, [r4, #0x18]
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0xd
	add r2, sp, #0x24
	strb r0, [r2, #0x12]
	mov r0, #4
	strb r0, [r2, #0x13]
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_02019EBC
	mov r0, #0xc
	add r2, sp, #0x24
	strb r0, [r2, #0x12]
	mov r1, #3
	strb r1, [r2, #0x13]
	ldr r0, [r4, #0x18]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _021D122C ; =0x000003E2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r3, #4
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _021D1230 ; =0x000003D9
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r3, #3
	bl sub_0200DAA4
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0xa0
	bl sub_02002E7C
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0xc0
	bl sub_02002E98
	ldr r5, _021D1234 ; =0x021D38F0
	add r3, sp, #8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0xf
	str r0, [r3, #0]
	add r0, sp, #8
	strb r1, [r0, #0x12]
	mov r1, #6
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl sub_02019EBC
	mov r1, #0xe
	add r0, sp, #8
	strb r1, [r0, #0x12]
	mov r1, #5
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	add r2, sp, #8
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #5
	bl sub_02019EBC
	mov r1, #0xd
	add r0, sp, #8
	strb r1, [r0, #0x12]
	mov r1, #4
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	mov r1, #6
	add r2, sp, #8
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #6
	bl sub_02019EBC
	mov r1, #0xc
	add r0, sp, #8
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	mov r1, #7
	add r2, sp, #8
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	add r0, r4, #0
	bl ov73_021D1930
	mov r0, #0
	str r0, [r4, #0x78]
	add sp, #0x78
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1220: .word 0x021D392C
_021D1224: .word 0x021D3810
_021D1228: .word 0x021D38D4
_021D122C: .word 0x000003E2
_021D1230: .word 0x000003D9
_021D1234: .word 0x021D38F0
	thumb_func_end ov73_021D1058

	thumb_func_start ov73_021D1238
ov73_021D1238: ; 0x021D1238
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov73_021D1238

	thumb_func_start ov73_021D12C4
ov73_021D12C4: ; 0x021D12C4
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _021D12FC ; =0x00000185
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r4, #0x4c]
	bl sub_0201D710
	mov r0, #0
	ldr r3, [r4, #0]
	add r1, r0, #0
	mov r2, #6
	bl sub_0201567C
	str r0, [r4, #0x60]
	ldr r0, [r4, #0]
	bl sub_0200B358
	str r0, [r4, #0x64]
	mov r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	nop
_021D12FC: .word 0x00000185
	thumb_func_end ov73_021D12C4

	thumb_func_start ov73_021D1300
ov73_021D1300: ; 0x021D1300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	bl sub_0200B3F0
	ldr r0, [r4, #0x60]
	bl sub_02015760
	ldr r0, [r4, #0x4c]
	bl sub_0200B190
	pop {r4, pc}
	thumb_func_end ov73_021D1300

	thumb_func_start ov73_021D1318
ov73_021D1318: ; 0x021D1318
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02015920
	str r0, [r4, #0x68]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov73_021D1318

	thumb_func_start ov73_021D1328
ov73_021D1328: ; 0x021D1328
	ldr r3, _021D1330 ; =sub_02015938
	ldr r0, [r0, #0x68]
	bx r3
	nop
_021D1330: .word sub_02015938
	thumb_func_end ov73_021D1328

	thumb_func_start ov73_021D1334
ov73_021D1334: ; 0x021D1334
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r3, r0, #0
	add r6, r2, #0
	mov r5, #0
	cmp r4, #6
	bhi _021D135E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1350: ; jump table
	.short _021D135E - _021D1350 - 2 ; case 0
	.short _021D1364 - _021D1350 - 2 ; case 1
	.short _021D136A - _021D1350 - 2 ; case 2
	.short _021D135E - _021D1350 - 2 ; case 3
	.short _021D1370 - _021D1350 - 2 ; case 4
	.short _021D1376 - _021D1350 - 2 ; case 5
	.short _021D137C - _021D1350 - 2 ; case 6
_021D135E:
	mov r1, #1
	mov r0, #0
	b _021D1380
_021D1364:
	mov r1, #2
	add r0, r5, #0
	b _021D1380
_021D136A:
	mov r1, #4
	add r0, r5, #0
	b _021D1380
_021D1370:
	mov r1, #1
	add r0, r1, #0
	b _021D1380
_021D1376:
	mov r1, #2
	mov r0, #1
	b _021D1380
_021D137C:
	mov r1, #4
	mov r0, #1
_021D1380:
	ldr r2, [r3, #0x78]
	cmp r2, #3
	bls _021D1388
	b _021D14AA
_021D1388:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D1394: ; jump table
	.short _021D139C - _021D1394 - 2 ; case 0
	.short _021D13F8 - _021D1394 - 2 ; case 1
	.short _021D1448 - _021D1394 - 2 ; case 2
	.short _021D149C - _021D1394 - 2 ; case 3
_021D139C:
	cmp r6, #0
	bne _021D13E6
	mov r2, #0
	str r2, [r3, #0x7c]
	add r2, r3, #0
	mov r6, #0x10
	add r2, #0x80
	str r6, [r2, #0]
	mov r2, #1
	str r2, [r3, #0x78]
	cmp r0, #0
	bne _021D13C8
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B0 ; =0x04000050
	ldr r3, [r3, #0x7c]
	bl sub_020BF55C
	b _021D13DA
_021D13C8:
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B4 ; =0x04001050
	ldr r3, [r3, #0x7c]
	bl sub_020BF55C
_021D13DA:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
	b _021D14AA
_021D13E6:
	mov r0, #0x10
	str r0, [r3, #0x7c]
	add r0, r3, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r3, #0x78]
	b _021D14AA
_021D13F8:
	add r2, r3, #0
	add r2, #0x80
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _021D1442
	ldr r2, [r3, #0x7c]
	add r2, r2, #1
	str r2, [r3, #0x7c]
	add r2, r3, #0
	add r2, #0x80
	ldr r2, [r2, #0]
	sub r4, r2, #1
	add r2, r3, #0
	add r2, #0x80
	str r4, [r2, #0]
	cmp r0, #0
	bne _021D142E
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B0 ; =0x04000050
	ldr r3, [r3, #0x7c]
	bl sub_020BF55C
	b _021D14AA
_021D142E:
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B4 ; =0x04001050
	ldr r3, [r3, #0x7c]
	bl sub_020BF55C
	b _021D14AA
_021D1442:
	mov r0, #3
	str r0, [r3, #0x78]
	b _021D14AA
_021D1448:
	ldr r2, [r3, #0x7c]
	cmp r2, #0
	beq _021D148C
	sub r2, r2, #1
	str r2, [r3, #0x7c]
	add r2, r3, #0
	add r2, #0x80
	ldr r2, [r2, #0]
	add r4, r2, #1
	add r2, r3, #0
	add r2, #0x80
	str r4, [r2, #0]
	cmp r0, #0
	bne _021D1478
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B0 ; =0x04000050
	ldr r3, [r3, #0x7c]
	bl sub_020BF55C
	b _021D14AA
_021D1478:
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B4 ; =0x04001050
	ldr r3, [r3, #0x7c]
	bl sub_020BF55C
	b _021D14AA
_021D148C:
	mov r0, #3
	str r0, [r3, #0x78]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_02019120
	b _021D14AA
_021D149C:
	ldr r0, _021D14B0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021D14B4 ; =0x04001050
	mov r5, #1
	strh r1, [r0]
	str r1, [r3, #0x78]
_021D14AA:
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D14B0: .word 0x04000050
_021D14B4: .word 0x04001050
	thumb_func_end ov73_021D1334

	thumb_func_start ov73_021D14B8
ov73_021D14B8: ; 0x021D14B8
	add r2, r0, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	cmp r2, r1
	bge _021D14D2
	add r1, r0, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, #0x90
	add r1, r1, #1
	str r1, [r0, #0]
	mov r0, #0
	bx lr
_021D14D2:
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	thumb_func_end ov73_021D14B8

	thumb_func_start ov73_021D14DC
ov73_021D14DC: ; 0x021D14DC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	lsl r0, r2, #0x18
	add r4, r1, #0
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r1, r4, #0x18
	mov r2, #0
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019E2C
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x18
	bl sub_02019448
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov73_021D14DC

	thumb_func_start ov73_021D1510
ov73_021D1510: ; 0x021D1510
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	beq _021D152A
	cmp r0, #1
	beq _021D15E8
	cmp r0, #2
	beq _021D1602
	b _021D1620
_021D152A:
	add r1, r5, #0
	ldr r0, [r5, #0x18]
	ldr r2, _021D1628 ; =0x021D37EC
	add r1, #0x1c
	bl sub_0201A8D4
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	add r0, #0x1c
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	add r0, r5, #0
	ldr r2, _021D162C ; =0x000003E2
	add r0, #0x1c
	add r1, r4, #0
	mov r3, #4
	bl sub_0200E060
	mov r0, #1
	bl sub_02002AC8
	add r0, r4, #0
	bl sub_02002AE4
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x4c]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x70]
	add r3, r5, #0
	add r3, #0x84
	ldr r0, [r5, #0x64]
	ldr r2, [r2, #0x18]
	ldr r3, [r3, #0]
	add r1, r4, #0
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x74]
	ldr r0, [r5, #0x64]
	ldr r2, [r2, #0x18]
	add r3, r4, #0
	bl sub_0200B48C
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x5c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [r5, #8]
	bl sub_02027AC0
	add r3, r4, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x1c
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x58]
	mov r0, #1
	str r0, [r5, #0x50]
	b _021D1620
_021D15E8:
	ldr r0, [r5, #0x58]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D1620
	ldr r0, [r5, #0x5c]
	bl sub_020237BC
	mov r0, #2
	str r0, [r5, #0x50]
	b _021D1620
_021D1602:
	cmp r2, #0
	bne _021D1612
	ldr r0, _021D1630 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	bne _021D1620
_021D1612:
	add r0, r5, #0
	add r0, #0x1c
	bl sub_0201A8FC
	mov r0, #0
	str r0, [r5, #0x50]
	mov r4, #1
_021D1620:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D1628: .word 0x021D37EC
_021D162C: .word 0x000003E2
_021D1630: .word 0x021BF67C
	thumb_func_end ov73_021D1510

	thumb_func_start ov73_021D1634
ov73_021D1634: ; 0x021D1634
	push {r3, lr}
	cmp r2, #0
	bne _021D1640
	ldr r0, _021D1644 ; =0x000005DC
	bl sub_02005748
_021D1640:
	pop {r3, pc}
	nop
_021D1644: .word 0x000005DC
	thumb_func_end ov73_021D1634

	thumb_func_start ov73_021D1648
ov73_021D1648: ; 0x021D1648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r4, r2, #0
	cmp r0, #0
	beq _021D1660
	cmp r0, #1
	beq _021D170A
	b _021D1754
_021D1660:
	cmp r1, #0
	beq _021D166C
	cmp r1, #1
	beq _021D1674
	cmp r1, #2
	beq _021D167C
_021D166C:
	ldr r2, _021D175C ; =0x021D37C4
	ldr r4, _021D1760 ; =0x021D3840
	mov r7, #2
	b _021D1682
_021D1674:
	ldr r2, _021D1764 ; =0x021D37DC
	ldr r4, _021D1768 ; =0x021D38A4
	mov r7, #3
	b _021D1682
_021D167C:
	ldr r2, _021D176C ; =0x021D37CC
	ldr r4, _021D1770 ; =0x021D3954
	mov r7, #5
_021D1682:
	add r1, r5, #0
	ldr r0, [r5, #0x18]
	add r1, #0x30
	bl sub_0201A8D4
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02013A04
	mov r6, #0
	str r0, [r5, #0x44]
	cmp r7, #0
	ble _021D16B0
_021D169C:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, r7
	blt _021D169C
_021D16B0:
	ldr r4, _021D1774 ; =0x021D390C
	add r3, sp, #4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x44]
	str r0, [sp, #4]
	lsl r0, r7, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #4
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, _021D1778 ; =ov73_021D1634
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x30
	str r0, [sp, #0x10]
	ldr r3, [r5, #0]
	add r0, r2, #0
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_0200112C
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x10]
	ldr r2, _021D177C ; =0x000003D9
	mov r1, #1
	mov r3, #3
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A954
	mov r0, #1
	str r0, [r5, #0x2c]
	b _021D1754
_021D170A:
	ldr r0, [r5, #0x40]
	bl sub_02001288
	mov r1, #0
	mvn r1, r1
	str r0, [r5, #0x48]
	cmp r0, r1
	beq _021D1754
	sub r1, r1, #1
	cmp r0, r1
	bne _021D1724
	cmp r4, #1
	beq _021D1754
_021D1724:
	add r0, r5, #0
	add r0, #0x30
	mov r1, #0
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A8FC
	mov r1, #0
	ldr r0, [r5, #0x40]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, [r5, #0x44]
	bl sub_02013A3C
	ldr r0, _021D1780 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	mov r0, #1
	str r0, [sp]
_021D1754:
	ldr r0, [sp]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D175C: .word 0x021D37C4
_021D1760: .word 0x021D3840
_021D1764: .word 0x021D37DC
_021D1768: .word 0x021D38A4
_021D176C: .word 0x021D37CC
_021D1770: .word 0x021D3954
_021D1774: .word 0x021D390C
_021D1778: .word ov73_021D1634
_021D177C: .word 0x000003D9
_021D1780: .word 0x000005DC
	thumb_func_end ov73_021D1648

	thumb_func_start ov73_021D1784
ov73_021D1784: ; 0x021D1784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x54]
	add r5, r2, #0
	add r6, r3, #0
	mov r7, #0
	cmp r1, #5
	bls _021D179A
	b _021D1914
_021D179A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D17A6: ; jump table
	.short _021D17B2 - _021D17A6 - 2 ; case 0
	.short _021D18B0 - _021D17A6 - 2 ; case 1
	.short _021D18BC - _021D17A6 - 2 ; case 2
	.short _021D18CE - _021D17A6 - 2 ; case 3
	.short _021D18EE - _021D17A6 - 2 ; case 4
	.short _021D1900 - _021D17A6 - 2 ; case 5
_021D17B2:
	add r0, r7, #0
	add r1, r7, #0
	bl sub_02019120
	mov r0, #1
	ldr r1, [r4, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4c]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x5c]
	bl sub_0200B1B8
	cmp r5, #1
	add r0, sp, #0x14
	bne _021D1834
	ldr r1, _021D191C ; =0x021D37C4
	ldrh r2, [r1, #0x10]
	strh r2, [r0]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #0x5c]
	bl sub_02023C5C
	mov r1, #0xc
	sub r2, r1, r0
	add r1, sp, #0x14
	strb r2, [r1, #2]
	lsl r0, r0, #1
	strb r0, [r1, #4]
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x1c
	add r2, sp, #0x14
	bl sub_0201A8D4
	add r1, r7, #0
	mov r0, #0xc0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x1c
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add r1, r7, #0
	str r1, [sp]
	ldr r0, _021D1920 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x1c
	add r3, r1, #0
	bl sub_0201D78C
	b _021D18A4
_021D1834:
	ldr r1, _021D191C ; =0x021D37C4
	cmp r5, #2
	ldrh r2, [r1, #0x20]
	strh r2, [r0]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	bne _021D1866
	ldr r0, [r4, #0x5c]
	bl sub_02023C5C
	ldr r2, [sp, #0x30]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r1, r6, r1
	sub r2, r1, r0
	add r1, sp, #0x14
	strb r2, [r1, #2]
	lsl r0, r0, #1
	strb r0, [r1, #4]
	b _021D186C
_021D1866:
	ldr r1, [sp, #0x30]
	strb r6, [r0, #2]
	strb r1, [r0, #4]
_021D186C:
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x1c
	add r2, sp, #0x14
	bl sub_0201A8D4
	mov r1, #0
	mov r0, #0xc0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x1c
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #0
	str r1, [sp]
	ldr r0, _021D1924 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x5c]
	add r0, #0x1c
	add r3, r1, #0
	bl sub_0201D78C
_021D18A4:
	ldr r0, [r4, #0x5c]
	bl sub_020237BC
	mov r0, #1
	str r0, [r4, #0x54]
	b _021D1914
_021D18B0:
	add r0, #0x1c
	bl sub_0201A954
	mov r0, #2
	str r0, [r4, #0x54]
	b _021D1914
_021D18BC:
	add r1, r7, #0
	add r2, r7, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D1914
	mov r0, #3
	str r0, [r4, #0x54]
	b _021D1914
_021D18CE:
	ldr r0, _021D1928 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _021D18E2
	mov r0, #2
	and r0, r1
	cmp r0, #2
	bne _021D1914
_021D18E2:
	ldr r0, _021D192C ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	str r0, [r4, #0x54]
	b _021D1914
_021D18EE:
	add r1, r7, #0
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D1914
	mov r0, #5
	str r0, [r4, #0x54]
	b _021D1914
_021D1900:
	add r0, #0x1c
	bl sub_0201A8FC
	ldr r0, [r4, #0x18]
	add r1, r7, #0
	bl sub_02019EBC
	add r0, r7, #0
	str r0, [r4, #0x54]
	mov r7, #1
_021D1914:
	add r0, r7, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D191C: .word 0x021D37C4
_021D1920: .word 0x00010200
_021D1924: .word 0x000F0200
_021D1928: .word 0x021BF67C
_021D192C: .word 0x000005DC
	thumb_func_end ov73_021D1784

	thumb_func_start ov73_021D1930
ov73_021D1930: ; 0x021D1930
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r5, r0, #0
	str r1, [sp, #8]
	ldr r0, [r5, #0]
	mov r3, #3
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x18]
	mov r0, #0x7d
	bl sub_02006E3C
	mov r0, #0
	ldr r3, [r5, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x18]
	mov r0, #0x7d
	mov r3, #7
	bl sub_02006E3C
	ldr r0, _021D19D8 ; =0x020E4C40
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _021D197E
	mov r1, #3
	mov r4, #0x1b
	b _021D198C
_021D197E:
	cmp r0, #0xa
	bne _021D1988
	mov r1, #1
	mov r4, #0x19
	b _021D198C
_021D1988:
	mov r1, #2
	mov r4, #0x1a
_021D198C:
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x7d
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0xa0
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x7d
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	add r0, r5, #0
	bl ov73_021D19DC
	add r0, r5, #0
	bl ov73_021D1A20
	add r0, r5, #0
	bl ov73_021D1B14
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D19D8: .word 0x020E4C40
	thumb_func_end ov73_021D1930

	thumb_func_start ov73_021D19DC
ov73_021D19DC: ; 0x021D19DC
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _021D1A1C ; =0x021D3850
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0x10
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	add r0, r3, #0
	add r0, #0x88
	ldrb r1, [r0]
	cmp r1, #5
	bhs _021D1A18
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r3, #0]
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r1, [r2, r1]
	ldr r2, [r3, #0x18]
	mov r0, #0x7d
	mov r3, #3
	bl sub_02006E60
_021D1A18:
	add sp, #0x24
	pop {r4, r5, pc}
	; .align 2, 0
_021D1A1C: .word 0x021D3850
	thumb_func_end ov73_021D19DC

	thumb_func_start ov73_021D1A20
ov73_021D1A20: ; 0x021D1A20
	push {r3, r4, r5, lr}
	sub sp, #0x68
	ldr r5, _021D1B10 ; =0x021D397C
	add r4, r0, #0
	add r3, sp, #0x10
	mov r2, #0xb
_021D1A2C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1A2C
	add r0, r4, #0
	add r0, #0x89
	ldrb r1, [r0]
	cmp r1, #0
	beq _021D1A9E
	cmp r1, #0xc
	bhs _021D1A9E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	lsl r2, r1, #3
	str r0, [sp, #0xc]
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	mov r3, #1
	bl sub_02006E3C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	add r1, #0x89
	ldrb r1, [r1]
	mov r0, #0x7d
	mov r3, #0xe0
	lsl r2, r1, #3
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	mov r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x17
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	mov r3, #1
	bl sub_02006E60
	add r0, r4, #0
	mov r1, #1
	mov r2, #7
	bl ov73_021D14DC
_021D1A9E:
	add r0, r4, #0
	add r0, #0x8a
	ldrb r1, [r0]
	cmp r1, #0
	beq _021D1B0A
	cmp r1, #0xc
	bhs _021D1B0A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	lsl r2, r1, #3
	str r0, [sp, #0xc]
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	add r1, #0x8a
	ldrb r1, [r1]
	mov r0, #0x7d
	add r3, r0, #0
	lsl r2, r1, #3
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	mov r2, #0
	add r3, #0x83
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x17
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	mov r3, #2
	bl sub_02006E60
	add r0, r4, #0
	mov r1, #2
	mov r2, #8
	bl ov73_021D14DC
_021D1B0A:
	add sp, #0x68
	pop {r3, r4, r5, pc}
	nop
_021D1B10: .word 0x021D397C
	thumb_func_end ov73_021D1A20

	thumb_func_start ov73_021D1B14
ov73_021D1B14: ; 0x021D1B14
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _021D1B7C ; =0x021D3878
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x10
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	add r0, #0x8b
	ldrb r1, [r0]
	cmp r1, #5
	bhs _021D1B76
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	mov r3, #7
	bl sub_02006E60
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D1B68
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	bl ov73_021D14DC
	add sp, #0x24
	pop {r4, r5, pc}
_021D1B68:
	cmp r0, #2
	bne _021D1B76
	add r0, r4, #0
	mov r1, #7
	mov r2, #2
	bl ov73_021D14DC
_021D1B76:
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D1B7C: .word 0x021D3878
	thumb_func_end ov73_021D1B14

	thumb_func_start ov73_021D1B80
ov73_021D1B80: ; 0x021D1B80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r5, r0, #0
	ldr r1, _021D1CD4 ; =0x000001AB
	str r2, [sp, #8]
	add r0, sp, #0x10
	mov r3, #2
	bl sub_02075FB4
	ldr r0, [r5, #0]
	mov r1, #0xc8
	bl sub_02018144
	add r7, r0, #0
	ldr r2, _021D1CD8 ; =0x021D39D4
	mov r1, #0
	add r3, r7, #0
_021D1BA8:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #1
	add r0, r0, #1
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0x64
	blt _021D1BA8
	add r1, sp, #0x10
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, [r5, #0]
	bl sub_0201363C
	add r1, sp, #0x10
	add r6, r0, #0
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	ldr r2, [r5, #0]
	bl sub_02013660
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4B68
	ldr r0, _021D1CDC ; =0x00006A3C
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r2, #1
	mov r3, #0x10
	bl sub_020039F8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #9
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r1, #2
	add r2, r7, #0
	mov r3, #0xb
	bl sub_020198C0
	add r0, r5, #0
	mov r1, #2
	mov r2, #8
	bl ov73_021D14DC
	ldr r3, [r5, #0]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	mov r0, #1
	str r0, [sp]
	mov r3, #0x32
	ldr r0, [r5, #0x18]
	mov r1, #2
	add r2, r6, #0
	lsl r3, r3, #6
	bl sub_0201958C
	mov r2, #0x20
	add r3, r2, #0
	mov r0, #2
	add r1, r4, #0
	add r3, #0xe0
	bl sub_0201972C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #7
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r1, #5
	add r2, r7, #0
	mov r3, #0xb
	bl sub_020198C0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xa
	bl ov73_021D14DC
	ldr r3, [r5, #0]
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	mov r0, #1
	str r0, [sp]
	mov r3, #0x32
	ldr r0, [r5, #0x18]
	mov r1, #5
	add r2, r6, #0
	lsl r3, r3, #6
	bl sub_0201958C
	mov r0, #5
	add r1, r4, #0
	mov r2, #0x20
	lsl r3, r0, #6
	bl sub_0201972C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1CD4: .word 0x000001AB
_021D1CD8: .word 0x021D39D4
_021D1CDC: .word 0x00006A3C
	thumb_func_end ov73_021D1B80

	thumb_func_start ov73_021D1CE0
ov73_021D1CE0: ; 0x021D1CE0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x28
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	mov r3, #6
	bl sub_02006E60
	add r0, r4, #0
	mov r1, #6
	mov r2, #9
	bl ov73_021D14DC
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x29
	str r0, [sp, #4]
	mov r0, #0x7d
	mov r2, #4
	mov r3, #0xe0
	bl sub_02006E84
	ldr r3, [r4, #0]
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	mov r1, #0x20
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r3, #6
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	bl sub_02006E3C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov73_021D1CE0

	thumb_func_start ov73_021D1D44
ov73_021D1D44: ; 0x021D1D44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	cmp r2, #0
	bne _021D1D80
	ldr r0, [r5, #0x18]
	bl sub_020192EC
	cmp r0, #0
	beq _021D1D7C
	cmp r0, #0
	ldr r0, [r5, #0x18]
	ble _021D1D6E
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #4
	bl sub_02019184
	b _021D1DC6
_021D1D6E:
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	mov r2, #1
	mov r3, #4
	bl sub_02019184
	b _021D1DC6
_021D1D7C:
	mov r6, #1
	b _021D1DC6
_021D1D80:
	cmp r2, #1
	bne _021D1DA6
	ldr r0, [r5, #0x18]
	bl sub_020192EC
	add r1, r6, #0
	sub r1, #0x30
	cmp r0, r1
	beq _021D1DA2
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #4
	bl sub_02019184
	b _021D1DC6
_021D1DA2:
	mov r6, #1
	b _021D1DC6
_021D1DA6:
	cmp r2, #2
	bne _021D1DC6
	ldr r0, [r5, #0x18]
	bl sub_020192EC
	cmp r0, #0
	beq _021D1DC4
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x18
	mov r2, #1
	mov r3, #4
	bl sub_02019184
	b _021D1DC6
_021D1DC4:
	mov r6, #1
_021D1DC6:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov73_021D1D44

	thumb_func_start ov73_021D1DCC
ov73_021D1DCC: ; 0x021D1DCC
	add r1, r0, #0
	mov r2, #0
	add r1, #0x8c
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x8d
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x8e
	strb r2, [r1]
	add r0, #0x8f
	strb r2, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov73_021D1DCC

	thumb_func_start ov73_021D1DE8
ov73_021D1DE8: ; 0x021D1DE8
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D1E72
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D1E0A
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	sub r1, r0, #1
	b _021D1E2A
_021D1E0A:
	add r0, r4, #0
	add r0, #0x8c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x8c
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x8c
	ldrb r1, [r0]
	mov r0, #3
	and r1, r0
	add r0, r4, #0
	add r0, #0x8c
	strb r1, [r0]
	mov r1, #4
_021D1E2A:
	add r0, r4, #0
	add r0, #0x8d
	strb r1, [r0]
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D1EF0 ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #6
	bl sub_020BF55C
	ldr r5, _021D1EF4 ; =0x021D3800
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r1, r4, #0
	str r0, [sp, #0xc]
	add r1, #0x8c
	ldrb r1, [r1]
	mov r0, #0x7d
	mov r3, #1
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	bl sub_02006E3C
	add sp, #0x30
	pop {r3, r4, r5, pc}
_021D1E72:
	add r0, r4, #0
	add r0, #0x8f
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D1E86
	add r0, r4, #0
	add r0, #0x8f
	ldrb r0, [r0]
	sub r1, r0, #1
	b _021D1EA6
_021D1E86:
	add r0, r4, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x8e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x8e
	ldrb r1, [r0]
	mov r0, #3
	and r1, r0
	add r0, r4, #0
	add r0, #0x8e
	strb r1, [r0]
	mov r1, #4
_021D1EA6:
	add r0, r4, #0
	add r0, #0x8f
	strb r1, [r0]
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D1EF0 ; =0x04000050
	mov r1, #2
	mov r2, #8
	mov r3, #6
	bl sub_020BF55C
	ldr r5, _021D1EF8 ; =0x021D3830
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r1, r4, #0
	str r0, [sp, #0xc]
	add r1, #0x8e
	ldrb r1, [r1]
	mov r0, #0x7d
	mov r3, #2
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	bl sub_02006E3C
	add sp, #0x30
	pop {r3, r4, r5, pc}
	nop
_021D1EF0: .word 0x04000050
_021D1EF4: .word 0x021D3800
_021D1EF8: .word 0x021D3830
	thumb_func_end ov73_021D1DE8

	thumb_func_start ov73_021D1EFC
ov73_021D1EFC: ; 0x021D1EFC
	ldr r0, _021D1F04 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
_021D1F04: .word 0x04000050
	thumb_func_end ov73_021D1EFC

	thumb_func_start ov73_021D1F08
ov73_021D1F08: ; 0x021D1F08
	add r1, r0, #0
	mov r2, #0
	add r1, #0x94
	str r2, [r1, #0]
	add r0, #0x98
	str r2, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov73_021D1F08

	thumb_func_start ov73_021D1F18
ov73_021D1F18: ; 0x021D1F18
	push {r4, r5, r6, lr}
	sub sp, #0x40
	add r3, r0, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	beq _021D1F32
	add r0, r3, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, #1
	b _021D1F42
_021D1F32:
	add r0, r3, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r3, #0
	add r0, #0x94
	str r1, [r0, #0]
	mov r1, #8
_021D1F42:
	add r0, r3, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r3, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D1F58
	ldr r6, _021D1F98 ; =0x021D38BC
	add r5, sp, #0x28
	b _021D1F5C
_021D1F58:
	ldr r6, _021D1F9C ; =0x021D388C
	add r5, sp, #0x10
_021D1F5C:
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	add r0, r3, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0xff
	bne _021D1F7C
	mov r4, #1
	b _021D1F92
_021D1F7C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r3, #0]
	str r0, [sp, #0xc]
	ldr r2, [r3, #0x18]
	mov r0, #0x7d
	mov r3, #1
	bl sub_02006E3C
_021D1F92:
	add r0, r4, #0
	add sp, #0x40
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1F98: .word 0x021D38BC
_021D1F9C: .word 0x021D388C
	thumb_func_end ov73_021D1F18

	thumb_func_start ov73_021D1FA0
ov73_021D1FA0: ; 0x021D1FA0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D2004
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_020E1F6C
	add r3, r0, #0
	ldr r0, _021D2008 ; =0x00006A3C
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xb8
	add r1, #0xbc
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_020039F8
	add r1, r4, #0
	add r1, #0xbc
	mov r2, #0x20
	add r3, r2, #0
	ldr r1, [r1, #0]
	mov r0, #2
	add r3, #0xe0
	bl sub_0201972C
	add r4, #0xbc
	mov r0, #5
	ldr r1, [r4, #0]
	mov r2, #0x20
	lsl r3, r0, #6
	bl sub_0201972C
_021D2004:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D2008: .word 0x00006A3C
	thumb_func_end ov73_021D1FA0

	thumb_func_start ov73_021D200C
ov73_021D200C: ; 0x021D200C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r7, #0
	cmp r0, #6
	bls _021D201C
	b _021D22FC
_021D201C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2028: ; jump table
	.short _021D2036 - _021D2028 - 2 ; case 0
	.short _021D2084 - _021D2028 - 2 ; case 1
	.short _021D2104 - _021D2028 - 2 ; case 2
	.short _021D2142 - _021D2028 - 2 ; case 3
	.short _021D21E0 - _021D2028 - 2 ; case 4
	.short _021D2274 - _021D2028 - 2 ; case 5
	.short _021D22F2 - _021D2028 - 2 ; case 6
_021D2036:
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x18]
	mov r1, #2
	sub r3, #0x6b
	bl sub_02019184
	mov r0, #2
	add r1, r7, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r1, r4, #0
	mov r2, #8
	add r1, #0xac
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #1
	str r0, [r5, #0]
	b _021D22FC
_021D2084:
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192EC
	ldr r0, [r4, #0x18]
	mov r1, #5
	bl sub_020192F8
	add r1, r4, #0
	add r1, #0xb0
	ldr r3, [r1, #0]
	add r1, r4, #0
	add r1, #0xac
	ldr r2, [r1, #0]
	lsl r1, r2, #3
	add r1, r2, r1
	add r2, r3, #0
	mul r2, r1
	lsl r1, r3, #3
	add r1, r3, r1
	mul r1, r3
	lsr r3, r1, #0x1f
	add r3, r1, r3
	asr r1, r3, #1
	sub r6, r2, r1
	cmp r0, #0x58
	bge _021D20EE
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r2, #1
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0, #0]
	mov r1, #2
	ldr r0, [r4, #0x18]
	add r3, r1, #0
	bl sub_02019184
	ldr r0, [r4, #0x18]
	mov r1, #5
	mov r2, #1
	mov r3, #2
	bl sub_02019184
	ldr r0, [r4, #0x18]
	mov r1, #5
	mov r2, #3
	add r3, r6, #0
	bl sub_02019184
	b _021D22FC
_021D20EE:
	mov r0, #5
	add r1, r7, #0
	bl sub_02019120
	add r0, r4, #0
	add r1, r7, #0
	add r0, #0xb0
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r5, #0]
	b _021D22FC
_021D2104:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D211E
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0, #0]
	b _021D22FC
_021D211E:
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r1, r4, #0
	mov r2, #9
	add r1, #0xac
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1, #0]
	mov r0, #3
	str r0, [r5, #0]
	b _021D22FC
_021D2142:
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192EC
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192F8
	add r0, r4, #0
	add r0, #0xb0
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xac
	ldr r2, [r0, #0]
	lsl r0, r2, #3
	add r0, r2, r0
	lsl r2, r1, #3
	add r2, r1, r2
	mul r0, r1
	mul r2, r1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	sub r0, #0x68
	asr r1, r1, #1
	sub r6, r0, r1
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D21AA
	cmp r6, #0
	bgt _021D21AA
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r2, #3
	add r3, r7, #0
	bl sub_02019184
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r1, r4, #0
	mov r2, #3
	add r1, #0xac
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1, #0]
	mov r0, #4
	str r0, [r5, #0]
	b _021D22FC
_021D21AA:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r2, #1
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa8
	str r6, [r0, #0]
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	asr r6, r6, #1
	cmp r6, #0x90
	ble _021D21D2
	mov r6, #0x90
_021D21D2:
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r2, #3
	add r3, r6, #0
	bl sub_02019184
	b _021D22FC
_021D21E0:
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192EC
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192F8
	add r0, r4, #0
	add r0, #0xb0
	ldr r6, [r0, #0]
	mov r1, #3
	lsl r0, r6, #3
	add r0, r6, r0
	mul r0, r6
	bl sub_020E1F6C
	add r1, r4, #0
	add r1, #0xac
	ldr r2, [r1, #0]
	lsl r1, r2, #3
	add r1, r2, r1
	mul r1, r6
	sub r6, r1, r0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D2246
	cmp r6, #0
	bgt _021D2246
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r2, #3
	add r3, r7, #0
	bl sub_02019184
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r1, r4, #0
	mov r2, #3
	add r1, #0xac
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1, #0]
	mov r0, #5
	str r0, [r5, #0]
	b _021D22FC
_021D2246:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0, #0]
	mov r1, #2
	ldr r0, [r4, #0x18]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019184
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r2, #3
	add r3, r6, #0
	bl sub_02019184
	add r0, r4, #0
	add r0, #0xa8
	str r6, [r0, #0]
	b _021D22FC
_021D2274:
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192EC
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_020192F8
	add r0, r4, #0
	add r0, #0xb0
	ldr r6, [r0, #0]
	mov r1, #3
	lsl r0, r6, #3
	add r0, r6, r0
	mul r0, r6
	bl sub_020E1F6C
	add r1, r4, #0
	add r1, #0xac
	ldr r2, [r1, #0]
	lsl r1, r2, #3
	add r1, r2, r1
	mul r1, r6
	sub r6, r1, r0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021D22C4
	cmp r6, #0
	bgt _021D22C4
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r2, #3
	add r3, r7, #0
	bl sub_02019184
	mov r0, #6
	str r0, [r5, #0]
	b _021D22FC
_021D22C4:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r2, #1
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0, #0]
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r3, #4
	bl sub_02019184
	ldr r0, [r4, #0x18]
	mov r1, #2
	mov r2, #3
	add r3, r6, #0
	bl sub_02019184
	add r0, r4, #0
	add r0, #0xa8
	str r6, [r0, #0]
	b _021D22FC
_021D22F2:
	ldr r0, _021D2308 ; =0x000001AB
	add r1, r7, #0
	bl sub_02005844
	mov r7, #1
_021D22FC:
	add r0, r4, #0
	bl ov73_021D1FA0
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2308: .word 0x000001AB
	thumb_func_end ov73_021D200C

	thumb_func_start ov73_021D230C
ov73_021D230C: ; 0x021D230C
	ldr r3, _021D2314 ; =sub_02019060
	mov r0, #2
	mov r1, #1
	bx r3
	; .align 2, 0
_021D2314: .word sub_02019060
	thumb_func_end ov73_021D230C

	thumb_func_start ov73_021D2318
ov73_021D2318: ; 0x021D2318
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	mov r5, #0
	cmp r1, #0x6d
	bls _021D232A
	bl _021D3240
_021D232A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D2336: ; jump table
	.short _021D2412 - _021D2336 - 2 ; case 0
	.short _021D2452 - _021D2336 - 2 ; case 1
	.short _021D246E - _021D2336 - 2 ; case 2
	.short _021D248A - _021D2336 - 2 ; case 3
	.short _021D24D6 - _021D2336 - 2 ; case 4
	.short _021D24E6 - _021D2336 - 2 ; case 5
	.short _021D24FA - _021D2336 - 2 ; case 6
	.short _021D250E - _021D2336 - 2 ; case 7
	.short _021D2558 - _021D2336 - 2 ; case 8
	.short _021D2578 - _021D2336 - 2 ; case 9
	.short _021D2598 - _021D2336 - 2 ; case 10
	.short _021D25D0 - _021D2336 - 2 ; case 11
	.short _021D25E0 - _021D2336 - 2 ; case 12
	.short _021D25FA - _021D2336 - 2 ; case 13
	.short _021D260E - _021D2336 - 2 ; case 14
	.short _021D2628 - _021D2336 - 2 ; case 15
	.short _021D263C - _021D2336 - 2 ; case 16
	.short _021D2656 - _021D2336 - 2 ; case 17
	.short _021D266A - _021D2336 - 2 ; case 18
	.short _021D2690 - _021D2336 - 2 ; case 19
	.short _021D26A0 - _021D2336 - 2 ; case 20
	.short _021D26B4 - _021D2336 - 2 ; case 21
	.short _021D26F0 - _021D2336 - 2 ; case 22
	.short _021D2714 - _021D2336 - 2 ; case 23
	.short _021D2744 - _021D2336 - 2 ; case 24
	.short _021D2776 - _021D2336 - 2 ; case 25
	.short _021D278E - _021D2336 - 2 ; case 26
	.short _021D27D0 - _021D2336 - 2 ; case 27
	.short _021D27E4 - _021D2336 - 2 ; case 28
	.short _021D282E - _021D2336 - 2 ; case 29
	.short _021D283E - _021D2336 - 2 ; case 30
	.short _021D2852 - _021D2336 - 2 ; case 31
	.short _021D288A - _021D2336 - 2 ; case 32
	.short _021D289A - _021D2336 - 2 ; case 33
	.short _021D28B8 - _021D2336 - 2 ; case 34
	.short _021D28D0 - _021D2336 - 2 ; case 35
	.short _021D28EA - _021D2336 - 2 ; case 36
	.short _021D2904 - _021D2336 - 2 ; case 37
	.short _021D291E - _021D2336 - 2 ; case 38
	.short _021D2938 - _021D2336 - 2 ; case 39
	.short _021D2958 - _021D2336 - 2 ; case 40
	.short _021D2978 - _021D2336 - 2 ; case 41
	.short _021D298C - _021D2336 - 2 ; case 42
	.short _021D29A0 - _021D2336 - 2 ; case 43
	.short _021D29C0 - _021D2336 - 2 ; case 44
	.short _021D2A06 - _021D2336 - 2 ; case 45
	.short _021D2A16 - _021D2336 - 2 ; case 46
	.short _021D2A2A - _021D2336 - 2 ; case 47
	.short _021D2A5A - _021D2336 - 2 ; case 48
	.short _021D2AC6 - _021D2336 - 2 ; case 49
	.short _021D2ADA - _021D2336 - 2 ; case 50
	.short _021D2AFE - _021D2336 - 2 ; case 51
	.short _021D2B36 - _021D2336 - 2 ; case 52
	.short _021D2B70 - _021D2336 - 2 ; case 53
	.short _021D2B8A - _021D2336 - 2 ; case 54
	.short _021D2BDC - _021D2336 - 2 ; case 55
	.short _021D2C00 - _021D2336 - 2 ; case 56
	.short _021D2C12 - _021D2336 - 2 ; case 57
	.short _021D2C22 - _021D2336 - 2 ; case 58
	.short _021D2C3C - _021D2336 - 2 ; case 59
	.short _021D2C54 - _021D2336 - 2 ; case 60
	.short _021D2C64 - _021D2336 - 2 ; case 61
	.short _021D2C76 - _021D2336 - 2 ; case 62
	.short _021D2C88 - _021D2336 - 2 ; case 63
	.short _021D2CC2 - _021D2336 - 2 ; case 64
	.short _021D2CD4 - _021D2336 - 2 ; case 65
	.short _021D2CE6 - _021D2336 - 2 ; case 66
	.short _021D2D02 - _021D2336 - 2 ; case 67
	.short _021D2D7A - _021D2336 - 2 ; case 68
	.short _021D2D8C - _021D2336 - 2 ; case 69
	.short _021D2DA4 - _021D2336 - 2 ; case 70
	.short _021D2DB6 - _021D2336 - 2 ; case 71
	.short _021D2DCE - _021D2336 - 2 ; case 72
	.short _021D2DEE - _021D2336 - 2 ; case 73
	.short _021D2E20 - _021D2336 - 2 ; case 74
	.short _021D2E40 - _021D2336 - 2 ; case 75
	.short _021D2E52 - _021D2336 - 2 ; case 76
	.short _021D2E6C - _021D2336 - 2 ; case 77
	.short _021D2ED4 - _021D2336 - 2 ; case 78
	.short _021D2EE2 - _021D2336 - 2 ; case 79
	.short _021D2F02 - _021D2336 - 2 ; case 80
	.short _021D2F44 - _021D2336 - 2 ; case 81
	.short _021D2F64 - _021D2336 - 2 ; case 82
	.short _021D2F7C - _021D2336 - 2 ; case 83
	.short _021D2F8E - _021D2336 - 2 ; case 84
	.short _021D2FA0 - _021D2336 - 2 ; case 85
	.short _021D2FB2 - _021D2336 - 2 ; case 86
	.short _021D2FCA - _021D2336 - 2 ; case 87
	.short _021D2FDC - _021D2336 - 2 ; case 88
	.short _021D2FEE - _021D2336 - 2 ; case 89
	.short _021D3000 - _021D2336 - 2 ; case 90
	.short _021D3068 - _021D2336 - 2 ; case 91
	.short _021D307A - _021D2336 - 2 ; case 92
	.short _021D308C - _021D2336 - 2 ; case 93
	.short _021D30D4 - _021D2336 - 2 ; case 94
	.short _021D30E2 - _021D2336 - 2 ; case 95
	.short _021D30F4 - _021D2336 - 2 ; case 96
	.short _021D312E - _021D2336 - 2 ; case 97
	.short _021D3142 - _021D2336 - 2 ; case 98
	.short _021D315A - _021D2336 - 2 ; case 99
	.short _021D316C - _021D2336 - 2 ; case 100
	.short _021D317C - _021D2336 - 2 ; case 101
	.short _021D3196 - _021D2336 - 2 ; case 102
	.short _021D31B0 - _021D2336 - 2 ; case 103
	.short _021D31C0 - _021D2336 - 2 ; case 104
	.short _021D31F6 - _021D2336 - 2 ; case 105
	.short _021D320E - _021D2336 - 2 ; case 106
	.short _021D321E - _021D2336 - 2 ; case 107
	.short _021D322C - _021D2336 - 2 ; case 108
	.short _021D323E - _021D2336 - 2 ; case 109
_021D2412:
	ldr r1, _021D2738 ; =0x00000405
	mov r0, #2
	mov r2, #1
	bl sub_02004550
	ldr r0, _021D2738 ; =0x00000405
	add r1, r5, #0
	bl sub_020055D0
	add r0, r5, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r4, #0xc]
	bl _021D3240
_021D2452:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D251A
	add r0, r4, #0
	mov r1, #0x28
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D251A
	mov r0, #2
	str r0, [r4, #0xc]
	bl _021D3240
_021D246E:
	add r1, r5, #0
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D251A
	mov r0, #3
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	bl _021D3240
_021D248A:
	ldr r0, _021D2738 ; =0x00000405
	bl sub_0200549C
	add r0, r4, #0
	mov r1, #1
	add r0, #0x89
	strb r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x8a
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1A20
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #0x10
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r5, #0
	bl sub_0200F174
	mov r0, #4
	str r0, [r4, #0xc]
	bl _021D3240
_021D24D6:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D251A
	mov r0, #5
	str r0, [r4, #0xc]
	bl _021D3240
_021D24E6:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1510
	cmp r0, #1
	bne _021D251A
	mov r0, #6
	str r0, [r4, #0xc]
	bl _021D3240
_021D24FA:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D251A
	mov r0, #7
	str r0, [r4, #0xc]
	bl _021D3240
_021D250E:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1648
	cmp r0, #1
	beq _021D251E
_021D251A:
	bl _021D3240
_021D251E:
	ldr r0, [r4, #0x48]
	cmp r0, #1
	beq _021D2530
	cmp r0, #2
	beq _021D253C
	cmp r0, #3
	beq _021D2550
	bl _021D3240
_021D2530:
	mov r0, #0xa
	str r0, [r4, #0x10]
	mov r0, #8
	str r0, [r4, #0xc]
	bl _021D3240
_021D253C:
	mov r0, #0x1f
	str r0, [r4, #0x10]
	mov r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	bl _021D3240
_021D2550:
	mov r0, #0x29
	str r0, [r4, #0xc]
	bl _021D3240
_021D2558:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	bl sub_0200F174
	mov r0, #9
	str r0, [r4, #0xc]
	bl _021D3240
_021D2578:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D267C
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	mov r0, #1
	add r1, r5, #0
	bl sub_02019120
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	bl _021D3240
_021D2598:
	add r1, r4, #0
	mov r2, #1
	add r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	add r0, r4, #0
	mov r1, #1
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0xb
	str r0, [r4, #0xc]
	bl _021D3240
_021D25D0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D267C
	mov r0, #0xc
	str r0, [r4, #0xc]
	bl _021D3240
_021D25E0:
	mov r1, #0x12
	str r1, [sp]
	mov r1, #2
	add r2, r5, #0
	mov r3, #3
	bl ov73_021D1784
	cmp r0, #1
	bne _021D267C
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl _021D3240
_021D25FA:
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	mov r0, #0xe
	str r0, [r4, #0xc]
	bl _021D3240
_021D260E:
	mov r1, #0xc
	str r1, [sp]
	mov r1, #3
	add r2, r5, #0
	mov r3, #7
	bl ov73_021D1784
	cmp r0, #1
	bne _021D267C
	mov r0, #0xf
	str r0, [r4, #0xc]
	bl _021D3240
_021D2628:
	add r1, r4, #0
	mov r2, #3
	add r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	mov r0, #0x10
	str r0, [r4, #0xc]
	bl _021D3240
_021D263C:
	mov r1, #0xc
	str r1, [sp]
	mov r1, #4
	mov r2, #2
	add r3, r1, #0
	bl ov73_021D1784
	cmp r0, #1
	bne _021D267C
	mov r0, #0x11
	str r0, [r4, #0xc]
	bl _021D3240
_021D2656:
	mov r1, #6
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D267C
	mov r0, #0x12
	str r0, [r4, #0xc]
	bl _021D3240
_021D266A:
	mov r1, #0xa
	str r1, [sp]
	mov r1, #5
	mov r2, #2
	mov r3, #4
	bl ov73_021D1784
	cmp r0, #1
	beq _021D2680
_021D267C:
	bl _021D3240
_021D2680:
	mov r0, #0x13
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	bl _021D3240
_021D2690:
	add r0, r5, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #0x14
	str r0, [r4, #0xc]
	bl _021D3240
_021D26A0:
	mov r1, #7
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D279A
	mov r0, #0x15
	str r0, [r4, #0xc]
	bl _021D3240
_021D26B4:
	ldr r6, _021D273C ; =0x021D3864
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x68]
	bl sub_02015958
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	add r0, r4, #0
	mov r1, #3
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #0x16
	str r0, [r4, #0xc]
	bl _021D3240
_021D26F0:
	ldr r0, _021D2740 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _021D2700
	mov r0, #0x1b
	str r0, [r4, #0xc]
	bl _021D3240
_021D2700:
	ldr r0, [r4, #0x68]
	bl sub_020159C0
	sub r0, r0, #3
	cmp r0, #1
	bhi _021D279A
	mov r0, #0x17
	str r0, [r4, #0xc]
	bl _021D3240
_021D2714:
	ldr r0, [r4, #0x68]
	bl sub_020159C0
	cmp r0, #1
	beq _021D2726
	cmp r0, #2
	beq _021D272E
	bl _021D3240
_021D2726:
	mov r0, #0x18
	str r0, [r4, #0xc]
	bl _021D3240
_021D272E:
	mov r0, #0x1a
	str r0, [r4, #0xc]
	bl _021D3240
	mov r8, r8
	; .align 2, 0
_021D2738: .word 0x00000405
_021D273C: .word 0x021D3864
_021D2740: .word 0x021BF67C
_021D2744:
	mov r1, #6
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D279A
	ldr r0, [r4, #0x68]
	bl sub_02015A54
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x19
	str r0, [r4, #0xc]
	bl _021D3240
_021D2776:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D279A
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	mov r0, #0x1c
	str r0, [r4, #0xc]
	bl _021D3240
_021D278E:
	mov r1, #6
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	beq _021D279E
_021D279A:
	bl _021D3240
_021D279E:
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	ldr r0, [r4, #0x68]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #1
	add r0, #0x88
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D19DC
	add r0, r4, #0
	mov r1, #1
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #0xc
	str r0, [r4, #0xc]
	bl _021D3240
_021D27D0:
	mov r1, #8
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D28AC
	mov r0, #0x16
	str r0, [r4, #0xc]
	bl _021D3240
_021D27E4:
	add r1, r4, #0
	add r1, #0x88
	strb r5, [r1]
	bl ov73_021D19DC
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	add r2, r5, #0
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x1d
	str r0, [r4, #0xc]
	bl _021D3240
_021D282E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D28AC
	mov r0, #0x1e
	str r0, [r4, #0xc]
	bl _021D3240
_021D283E:
	mov r1, #9
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D28AC
	mov r0, #6
	str r0, [r4, #0xc]
	bl _021D3240
_021D2852:
	add r1, r4, #0
	mov r2, #4
	add r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	add r0, r4, #0
	mov r1, #2
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x20
	str r0, [r4, #0xc]
	bl _021D3240
_021D288A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D28AC
	mov r0, #0x21
	str r0, [r4, #0xc]
	bl _021D3240
_021D289A:
	mov r1, #6
	str r1, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #9
	bl ov73_021D1784
	cmp r0, #1
	beq _021D28B0
_021D28AC:
	bl _021D3240
_021D28B0:
	mov r0, #0x22
	str r0, [r4, #0xc]
	bl _021D3240
_021D28B8:
	mov r3, #8
	mov r1, #0xb
	mov r2, #1
	str r3, [sp]
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x23
	str r0, [r4, #0xc]
	bl _021D3240
_021D28D0:
	mov r1, #6
	str r1, [sp]
	mov r1, #0xc
	mov r2, #1
	mov r3, #9
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x24
	str r0, [r4, #0xc]
	bl _021D3240
_021D28EA:
	mov r1, #0xe
	str r1, [sp]
	mov r1, #0xd
	mov r2, #1
	mov r3, #5
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x25
	str r0, [r4, #0xc]
	bl _021D3240
_021D2904:
	mov r1, #4
	str r1, [sp]
	mov r1, #0xe
	mov r2, #1
	mov r3, #0xa
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x26
	str r0, [r4, #0xc]
	bl _021D3240
_021D291E:
	mov r1, #0xc
	str r1, [sp]
	mov r1, #0xf
	mov r2, #1
	mov r3, #6
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x27
	str r0, [r4, #0xc]
	bl _021D3240
_021D2938:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	bl sub_0200F174
	mov r0, #0x28
	str r0, [r4, #0xc]
	bl _021D3240
_021D2958:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D29C8
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #0x1c
	str r0, [r4, #0xc]
	bl _021D3240
_021D2978:
	mov r1, #1
	mov r2, #2
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x2a
	str r0, [r4, #0xc]
	bl _021D3240
_021D298C:
	mov r1, #0x10
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D29C8
	mov r0, #0x2b
	str r0, [r4, #0xc]
	bl _021D3240
_021D29A0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [sp, #8]
	mov r0, #4
	add r2, r5, #0
	add r3, r5, #0
	bl sub_0200F174
	mov r0, #0x2c
	str r0, [r4, #0xc]
	bl _021D3240
_021D29C0:
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D29CC
_021D29C8:
	bl _021D3240
_021D29CC:
	add r0, r4, #0
	bl ov73_021D1CE0
	add r0, r4, #0
	mov r1, #4
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #4
	add r3, r5, #0
	bl sub_0200F174
	mov r0, #0x2d
	str r0, [r4, #0xc]
	bl _021D3240
_021D2A06:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D2AD2
	mov r0, #0x2e
	str r0, [r4, #0xc]
	bl _021D3240
_021D2A16:
	mov r1, #0x11
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2AD2
	mov r0, #0x2f
	str r0, [r4, #0xc]
	bl _021D3240
_021D2A2A:
	bl ov73_021D0FFC
	cmp r0, #1
	bne _021D2A4C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r4, #0x18]
	bl sub_02019EBC
	mov r0, #0x30
	str r0, [r4, #0xc]
	b _021D3240
_021D2A4C:
	ldr r0, _021D2D54 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _021D2AD2
	mov r0, #0x31
	str r0, [r4, #0xc]
	b _021D3240
_021D2A5A:
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D2A70
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r4, #0x98
	sub r0, r0, #1
	str r0, [r4, #0]
	b _021D3240
_021D2A70:
	ldr r6, _021D2D58 ; =0x021D37F4
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	ldr r0, _021D2D5C ; =0x0000FFFF
	cmp r1, r0
	bne _021D2A9A
	ldr r0, _021D2D60 ; =0x00000706
	bl sub_02005748
	mov r0, #0x32
	str r0, [r4, #0xc]
	b _021D3240
_021D2A9A:
	mov r0, #0x20
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0]
	mov r3, #6
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	mov r0, #0x7d
	bl sub_02006E3C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	mov r0, #4
	add r4, #0x98
	str r0, [r4, #0]
	b _021D3240
_021D2AC6:
	mov r1, #0x12
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	beq _021D2AD4
_021D2AD2:
	b _021D3240
_021D2AD4:
	mov r0, #0x2f
	str r0, [r4, #0xc]
	b _021D3240
_021D2ADA:
	mov r0, #1
	mov r1, #0x10
	add r2, r5, #0
	mov r3, #0xb
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #0x10
	add r2, r5, #0
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #0x33
	str r0, [r4, #0xc]
	b _021D3240
_021D2AFE:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	mov r0, #1
	add r1, r5, #0
	mov r2, #0x10
	mov r3, #0xb
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r5, #0
	mov r2, #0x10
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #0x34
	str r0, [r4, #0xc]
	b _021D3240
_021D2B36:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	add r2, r5, #0
	mov r3, #0xb
	bl sub_0200AAE0
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	add r2, r5, #0
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #0x35
	str r0, [r4, #0xc]
	b _021D3240
_021D2B70:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	mov r0, #0x36
	str r0, [r4, #0xc]
	b _021D3240
_021D2B8A:
	bl ov73_021D1B80
	mov r0, #6
	add r1, r5, #0
	bl sub_02019120
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x94
	bl ov73_021D200C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x8b
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1B14
	mov r0, #1
	str r0, [sp]
	mov r0, #0x10
	add r1, r5, #0
	add r2, r0, #0
	mov r3, #0xb
	bl sub_0200AAE0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x10
	add r1, r5, #0
	add r2, r0, #0
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #0x37
	str r0, [r4, #0xc]
	b _021D3240
_021D2BDC:
	add r1, r4, #0
	add r1, #0x94
	bl ov73_021D200C
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	beq _021D2BF0
_021D2BEE:
	b _021D3240
_021D2BF0:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x38
	str r0, [r4, #0xc]
	b _021D3240
_021D2C00:
	add r1, r4, #0
	add r1, #0x94
	bl ov73_021D200C
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x39
	str r0, [r4, #0xc]
	b _021D3240
_021D2C12:
	mov r1, #0x28
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x3a
	str r0, [r4, #0xc]
	b _021D3240
_021D2C22:
	mov r1, #0x13
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2CF2
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	mov r0, #0x3b
	str r0, [r4, #0xc]
	b _021D3240
_021D2C3C:
	mov r1, #2
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	add r0, r4, #0
	bl ov73_021D230C
	mov r0, #0x3c
	str r0, [r4, #0xc]
	b _021D3240
_021D2C54:
	mov r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x3d
	str r0, [r4, #0xc]
	b _021D3240
_021D2C64:
	mov r1, #0x14
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x3e
	str r0, [r4, #0xc]
	b _021D3240
_021D2C76:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x3f
	str r0, [r4, #0xc]
	b _021D3240
_021D2C88:
	bl ov73_021D1DCC
	add r0, r4, #0
	mov r1, #2
	add r0, #0x89
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x8a
	strb r1, [r0]
	add r0, r4, #0
	bl ov73_021D1A20
	add r2, r5, #0
	add r3, r2, #0
	ldr r0, [r4, #0x18]
	mov r1, #1
	sub r3, #0x30
	bl sub_02019184
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r2, r5, #0
	mov r3, #0x30
	bl sub_02019184
	mov r0, #0x40
	str r0, [r4, #0xc]
	b _021D3240
_021D2CC2:
	mov r1, #1
	add r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x41
	str r0, [r4, #0xc]
	b _021D3240
_021D2CD4:
	mov r1, #2
	add r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	mov r0, #0x42
	str r0, [r4, #0xc]
	b _021D3240
_021D2CE6:
	mov r1, #0x15
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	beq _021D2CF4
_021D2CF2:
	b _021D3240
_021D2CF4:
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #0x43
	str r0, [r4, #0xc]
	b _021D3240
_021D2D02:
	ldr r0, _021D2D54 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	and r1, r0
	cmp r1, #1
	bne _021D2D34
	mov r0, #6
	str r0, [r4, #0x7c]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x80
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r4, #0x78]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2D2E
	mov r0, #0x44
	str r0, [r4, #0xc]
	b _021D3240
_021D2D2E:
	mov r0, #0x46
	str r0, [r4, #0xc]
	b _021D3240
_021D2D34:
	mov r1, #0x20
	and r1, r0
	cmp r1, #0x20
	beq _021D2D44
	mov r1, #0x10
	and r0, r1
	cmp r0, #0x10
	bne _021D2D72
_021D2D44:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2D64
	mov r1, #1
	b _021D2D66
	nop
_021D2D54: .word 0x021BF67C
_021D2D58: .word 0x021D37F4
_021D2D5C: .word 0x0000FFFF
_021D2D60: .word 0x00000706
_021D2D64:
	mov r1, #0
_021D2D66:
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	ldr r0, _021D303C ; =0x000005DC
	bl sub_02005748
_021D2D72:
	add r0, r4, #0
	bl ov73_021D1DE8
	b _021D3240
_021D2D7A:
	mov r1, #2
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2E0A
	mov r0, #0x45
	str r0, [r4, #0xc]
	b _021D3240
_021D2D8C:
	mov r1, #1
	add r2, r5, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D2E0A
	add r0, r4, #0
	bl ov73_021D1EFC
	mov r0, #0x48
	str r0, [r4, #0xc]
	b _021D3240
_021D2DA4:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2E0A
	mov r0, #0x47
	str r0, [r4, #0xc]
	b _021D3240
_021D2DB6:
	mov r1, #2
	add r2, r5, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D2E0A
	add r0, r4, #0
	bl ov73_021D1EFC
	mov r0, #0x48
	str r0, [r4, #0xc]
	b _021D3240
_021D2DCE:
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2DDA
	mov r1, #0x16
	b _021D2DDC
_021D2DDA:
	mov r1, #0x17
_021D2DDC:
	add r0, r4, #0
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2E0A
	mov r0, #0x49
	str r0, [r4, #0xc]
	b _021D3240
_021D2DEE:
	add r1, r5, #0
	add r2, r5, #0
	bl ov73_021D1648
	cmp r0, #1
	bne _021D2E0A
	ldr r1, [r4, #0x48]
	sub r0, r5, #2
	cmp r1, r0
	beq _021D2E12
	cmp r1, #1
	beq _021D2E0C
	cmp r1, #2
	beq _021D2E12
_021D2E0A:
	b _021D3240
_021D2E0C:
	mov r0, #0x4b
	str r0, [r4, #0xc]
	b _021D3240
_021D2E12:
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019EBC
	mov r0, #0x4a
	str r0, [r4, #0xc]
	b _021D3240
_021D2E20:
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2E2C
	mov r1, #1
	b _021D2E2E
_021D2E2C:
	mov r1, #2
_021D2E2E:
	add r0, r4, #0
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2F26
	mov r0, #0x3f
	str r0, [r4, #0xc]
	b _021D3240
_021D2E40:
	mov r1, #0x18
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2F26
	mov r0, #0x4c
	str r0, [r4, #0xc]
	b _021D3240
_021D2E52:
	add r0, #0x84
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x70]
	str r1, [r0, #4]
	ldr r0, _021D3040 ; =0x020F2DAC
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0x14]
	mov r0, #0x4d
	str r0, [r4, #0xc]
	b _021D3240
_021D2E6C:
	add r0, r5, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2EA4
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	add r2, r5, #0
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	b _021D2EB8
_021D2EA4:
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	add r2, r5, #0
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
_021D2EB8:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x4e
	str r0, [r4, #0xc]
	b _021D3240
_021D2ED4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D2F26
	mov r0, #0x4f
	str r0, [r4, #0xc]
	b _021D3240
_021D2EE2:
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2EEE
	mov r1, #0x19
	b _021D2EF0
_021D2EEE:
	mov r1, #0x1a
_021D2EF0:
	add r0, r4, #0
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2F26
	mov r0, #0x50
	str r0, [r4, #0xc]
	b _021D3240
_021D2F02:
	add r1, r5, #0
	add r2, r5, #0
	bl ov73_021D1648
	cmp r0, #1
	bne _021D2F26
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	ldr r1, [r4, #0x48]
	sub r0, r5, #2
	cmp r1, r0
	beq _021D2F32
	cmp r1, #1
	beq _021D2F28
	cmp r1, #2
	beq _021D2F32
_021D2F26:
	b _021D3240
_021D2F28:
	mov r0, #0x52
	str r0, [r4, #0x10]
	mov r0, #0x51
	str r0, [r4, #0xc]
	b _021D3240
_021D2F32:
	ldr r0, [r4, #0x70]
	ldr r0, [r0, #0x18]
	bl sub_020237E8
	mov r0, #0x3f
	str r0, [r4, #0x10]
	mov r0, #0x51
	str r0, [r4, #0xc]
	b _021D3240
_021D2F44:
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D2F50
	mov r1, #1
	b _021D2F52
_021D2F50:
	mov r1, #2
_021D2F52:
	add r0, r4, #0
	mov r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	b _021D3240
_021D2F64:
	add r1, r4, #0
	mov r2, #1
	add r1, #0x89
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	mov r0, #0x53
	str r0, [r4, #0xc]
	b _021D3240
_021D2F7C:
	mov r1, #1
	add r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	mov r0, #0x54
	str r0, [r4, #0xc]
	b _021D3240
_021D2F8E:
	mov r1, #0x1b
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D300C
	mov r0, #0x55
	str r0, [r4, #0xc]
	b _021D3240
_021D2FA0:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	mov r0, #0x56
	str r0, [r4, #0xc]
	b _021D3240
_021D2FB2:
	add r1, r4, #0
	mov r2, #0xa
	add r1, #0x89
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	mov r0, #0x57
	str r0, [r4, #0xc]
	b _021D3240
_021D2FCA:
	mov r1, #1
	add r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	mov r0, #0x58
	str r0, [r4, #0xc]
	b _021D3240
_021D2FDC:
	mov r1, #0x1c
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D300C
	mov r0, #0x59
	str r0, [r4, #0xc]
	b _021D3240
_021D2FEE:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D300C
	mov r0, #0x5a
	str r0, [r4, #0xc]
	b _021D3240
_021D3000:
	mov r1, #2
	mov r2, #1
	bl ov73_021D1648
	cmp r0, #1
	beq _021D300E
_021D300C:
	b _021D3240
_021D300E:
	ldr r1, [r4, #0x48]
	cmp r1, #5
	bhi _021D3110
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3020: ; jump table
	.short _021D3240 - _021D3020 - 2 ; case 0
	.short _021D302C - _021D3020 - 2 ; case 1
	.short _021D3032 - _021D3020 - 2 ; case 2
	.short _021D3032 - _021D3020 - 2 ; case 3
	.short _021D3032 - _021D3020 - 2 ; case 4
	.short _021D3032 - _021D3020 - 2 ; case 5
_021D302C:
	mov r0, #0x5c
	str r0, [r4, #0xc]
	b _021D3240
_021D3032:
	sub r1, r1, #1
	lsl r2, r1, #3
	ldr r1, _021D3044 ; =0x021D3954
	b _021D3048
	nop
_021D303C: .word 0x000005DC
_021D3040: .word 0x020F2DAC
_021D3044: .word 0x021D3954
_021D3048:
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r4, #0x74]
	add r1, r6, #0
	ldr r0, [r0, #0x18]
	bl sub_02023810
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x5b
	str r0, [r4, #0xc]
	b _021D3240
_021D3068:
	mov r1, #1
	mov r2, #2
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D3110
	mov r0, #0x5f
	str r0, [r4, #0xc]
	b _021D3240
_021D307A:
	ldr r0, _021D3248 ; =0x020F2DAC
	ldr r1, [r4, #0x74]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0x14]
	mov r0, #0x5d
	str r0, [r4, #0xc]
	b _021D3240
_021D308C:
	add r0, r5, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	add r2, r5, #0
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x5e
	str r0, [r4, #0xc]
	b _021D3240
_021D30D4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D3110
	mov r0, #0x5f
	str r0, [r4, #0xc]
	b _021D3240
_021D30E2:
	mov r1, #0x1d
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D3110
	mov r0, #0x60
	str r0, [r4, #0xc]
	b _021D3240
_021D30F4:
	add r1, r5, #0
	add r2, r5, #0
	bl ov73_021D1648
	cmp r0, #1
	bne _021D3110
	ldr r1, [r4, #0x48]
	sub r0, r5, #2
	cmp r1, r0
	beq _021D3120
	cmp r1, #1
	beq _021D3112
	cmp r1, #2
	beq _021D3120
_021D3110:
	b _021D3240
_021D3112:
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	mov r0, #0x61
	str r0, [r4, #0xc]
	b _021D3240
_021D3120:
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0x18]
	bl sub_020237E8
	mov r0, #0x58
	str r0, [r4, #0xc]
	b _021D3240
_021D312E:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	beq _021D313C
	b _021D3240
_021D313C:
	mov r0, #0x62
	str r0, [r4, #0xc]
	b _021D3240
_021D3142:
	add r1, r4, #0
	mov r2, #1
	add r1, #0x89
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	mov r0, #0x63
	str r0, [r4, #0xc]
	b _021D3240
_021D315A:
	mov r1, #1
	add r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D3240
	mov r0, #0x64
	str r0, [r4, #0xc]
	b _021D3240
_021D316C:
	mov r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D3240
	mov r0, #0x65
	str r0, [r4, #0xc]
	b _021D3240
_021D317C:
	mov r1, #0x1e
	mov r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D3240
	add r0, r5, #0
	mov r1, #0x32
	bl sub_0200564C
	mov r0, #0x66
	str r0, [r4, #0xc]
	b _021D3240
_021D3196:
	mov r1, #1
	add r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D3240
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02019EBC
	mov r0, #0x67
	str r0, [r4, #0xc]
	b _021D3240
_021D31B0:
	mov r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D3240
	mov r0, #0x68
	str r0, [r4, #0xc]
	b _021D3240
_021D31C0:
	add r1, r4, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _021D31DE
	add r1, r4, #0
	mov r2, #2
	add r1, #0x89
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	b _021D31F0
_021D31DE:
	add r1, r4, #0
	mov r2, #6
	add r1, #0x89
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
_021D31F0:
	mov r0, #0x69
	str r0, [r4, #0xc]
	b _021D3240
_021D31F6:
	mov r1, #1
	add r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D3240
	add r0, r4, #0
	bl ov73_021D1F08
	mov r0, #0x6a
	str r0, [r4, #0xc]
	b _021D3240
_021D320E:
	mov r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D3240
	mov r0, #0x6b
	str r0, [r4, #0xc]
	b _021D3240
_021D321E:
	bl ov73_021D1F18
	cmp r0, #1
	bne _021D3240
	mov r0, #0x6c
	str r0, [r4, #0xc]
	b _021D3240
_021D322C:
	ldr r0, _021D324C ; =0x021D3820
	ldr r2, [r4, #0]
	add r1, r5, #0
	bl sub_020067E8
	str r0, [r4, #0x14]
	mov r0, #0x6d
	str r0, [r4, #0xc]
	b _021D3240
_021D323E:
	mov r5, #1
_021D3240:
	add r0, r5, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_021D3248: .word 0x020F2DAC
_021D324C: .word 0x021D3820
	thumb_func_end ov73_021D2318

	thumb_func_start ov73_021D3250
ov73_021D3250: ; 0x021D3250
	push {r4, lr}
	mov r2, #1
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x53
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #0x53
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x53
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov73_021D3250

	thumb_func_start ov73_021D3280
ov73_021D3280: ; 0x021D3280
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #5
	bls _021D3296
	b _021D33EA
_021D3296:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D32A2: ; jump table
	.short _021D32AE - _021D32A2 - 2 ; case 0
	.short _021D3334 - _021D32A2 - 2 ; case 1
	.short _021D335A - _021D32A2 - 2 ; case 2
	.short _021D3384 - _021D32A2 - 2 ; case 3
	.short _021D3396 - _021D32A2 - 2 ; case 4
	.short _021D33C8 - _021D32A2 - 2 ; case 5
_021D32AE:
	add r0, r6, #0
	add r1, r6, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r6, #0
	bl sub_0200F344
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D33F0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D33F4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov73_021D342C
	add r0, r4, #0
	bl ov73_021D366C
	ldr r0, _021D33F8 ; =ov73_021D3420
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	bl sub_020241F0
	add r1, r6, #0
	add r7, r0, #0
	str r1, [sp]
	ldr r2, _021D33FC ; =0x0000FFFC
	add r1, r7, #0
	mov r3, #7
	bl sub_020039F8
	mov r2, #2
	add r0, r7, #0
	add r1, r6, #0
	lsl r2, r2, #8
	bl sub_020C00B4
	mov r0, #0x3c
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r5, #0]
	b _021D33EA
_021D3334:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3340
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D33EA
_021D3340:
	ldr r0, _021D3400 ; =0x00000406
	bl sub_02004224
	ldr r1, _021D3400 ; =0x00000406
	mov r0, #4
	mov r2, #1
	bl sub_02004550
	mov r0, #0x5a
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r5, #0]
	b _021D33EA
_021D335A:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3366
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D33EA
_021D3366:
	str r6, [r4, #0x24]
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
	b _021D33EA
_021D3384:
	bl ov73_021D37AC
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D33EA
	mov r0, #4
	str r0, [r5, #0]
	b _021D33EA
_021D3396:
	bl ov73_021D37AC
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x28
	mov r3, #0x30
	bl ov73_021D3698
	cmp r0, #1
	bne _021D33EA
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r5, #0]
	b _021D33EA
_021D33C8:
	bl ov73_021D37AC
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D33EA
	add r0, r4, #0
	bl ov73_021D368C
	add r0, r4, #0
	bl ov73_021D35F4
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r6, #1
_021D33EA:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D33F0: .word 0xFFFFE0FF
_021D33F4: .word 0x04001000
_021D33F8: .word ov73_021D3420
_021D33FC: .word 0x0000FFFC
_021D3400: .word 0x00000406
	thumb_func_end ov73_021D3280

	thumb_func_start ov73_021D3404
ov73_021D3404: ; 0x021D3404
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov73_021D3404

	thumb_func_start ov73_021D3420
ov73_021D3420: ; 0x021D3420
	ldr r3, _021D3428 ; =sub_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D3428: .word sub_0201C2B8
	thumb_func_end ov73_021D3420

	thumb_func_start ov73_021D342C
ov73_021D342C: ; 0x021D342C
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D35D8 ; =0x021D3AC0
	add r4, r0, #0
	add r3, sp, #0x90
	mov r2, #5
_021D3438:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D3438
	add r0, sp, #0x90
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x80
	ldr r5, _021D35DC ; =0x021D3A40
	str r0, [r4, #4]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D35E0 ; =0x021D3A6C
	add r3, sp, #0x64
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r3, [r4, #0]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _021D35E4 ; =0x021D3A88
	add r3, sp, #0x48
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
	ldr r0, [r4, #4]
	add r3, r1, #0
	bl sub_020183C4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	bl sub_02006E3C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	bl sub_02006E60
	ldr r5, _021D35E8 ; =0x021D3A50
	add r3, sp, #0x2c
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #1
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #1
	bl sub_02006E60
	ldr r5, _021D35EC ; =0x021D3AA4
	add r3, sp, #0x10
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #3
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	mov r1, #6
	str r0, [sp, #4]
	mov r0, #0x88
	add r3, r2, #0
	bl sub_02006E84
	mov r3, #0x40
	mov r0, #7
	str r3, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #9
	str r0, [sp, #8]
	mov r0, #0x88
	mov r2, #0
	bl sub_02006E9C
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0x20
	bl sub_02002E7C
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r2, #0xc
	ldr r0, _021D35F0 ; =0x04000050
	mov r1, #2
	mov r3, #4
	str r2, [sp]
	bl sub_020BF55C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D35D8: .word 0x021D3AC0
_021D35DC: .word 0x021D3A40
_021D35E0: .word 0x021D3A6C
_021D35E4: .word 0x021D3A88
_021D35E8: .word 0x021D3A50
_021D35EC: .word 0x021D3AA4
_021D35F0: .word 0x04000050
	thumb_func_end ov73_021D342C

	thumb_func_start ov73_021D35F4
ov73_021D35F4: ; 0x021D35F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, _021D3668 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	pop {r4, pc}
	nop
_021D3668: .word 0x04000050
	thumb_func_end ov73_021D35F4

	thumb_func_start ov73_021D366C
ov73_021D366C: ; 0x021D366C
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _021D3688 ; =0x0000025F
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r4, #8]
	bl sub_0201D710
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
_021D3688: .word 0x0000025F
	thumb_func_end ov73_021D366C

	thumb_func_start ov73_021D368C
ov73_021D368C: ; 0x021D368C
	ldr r3, _021D3694 ; =sub_0200B190
	ldr r0, [r0, #8]
	bx r3
	nop
_021D3694: .word sub_0200B190
	thumb_func_end ov73_021D368C

	thumb_func_start ov73_021D3698
ov73_021D3698: ; 0x021D3698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r7, r1, #0
	mov r6, #0
	cmp r0, #3
	bhi _021D3798
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D36B4: ; jump table
	.short _021D36BC - _021D36B4 - 2 ; case 0
	.short _021D3756 - _021D36B4 - 2 ; case 1
	.short _021D3768 - _021D36B4 - 2 ; case 2
	.short _021D3782 - _021D36B4 - 2 ; case 3
_021D36BC:
	mov r0, #2
	add r1, r6, #0
	bl sub_02019120
	mov r0, #1
	ldr r1, [r4, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	add r5, r0, #0
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200B1B8
	add r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _021D37A0 ; =0x021D3A38
	add r1, #0x10
	bl sub_0201A8D4
	add r1, r6, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add r0, r6, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r7, r0, #1
	add r0, r5, #0
	bl sub_02023C5C
	lsl r1, r0, #4
	mov r0, #0xc0
	sub r0, r0, r1
	lsr r0, r0, #1
	str r0, [sp]
	add r1, r6, #0
	ldr r0, _021D37A4 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	add r2, r5, #0
	add r3, r7, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A954
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #0xf0
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
	b _021D3798
_021D3756:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3762
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D3798
_021D3762:
	mov r0, #2
	str r0, [r4, #0xc]
	b _021D3798
_021D3768:
	ldr r0, _021D37A8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _021D377C
	mov r0, #2
	and r0, r1
	cmp r0, #2
	bne _021D3798
_021D377C:
	mov r0, #3
	str r0, [r4, #0xc]
	b _021D3798
_021D3782:
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	add r0, r6, #0
	str r0, [r4, #0xc]
	mov r6, #1
_021D3798:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D37A0: .word 0x021D3A38
_021D37A4: .word 0x000F0200
_021D37A8: .word 0x021BF67C
	thumb_func_end ov73_021D3698

	thumb_func_start ov73_021D37AC
ov73_021D37AC: ; 0x021D37AC
	push {r3, lr}
	ldr r1, [r0, #0x20]
	mov r2, #3
	add r3, r1, #4
	str r3, [r0, #0x20]
	ldr r0, [r0, #4]
	mov r1, #1
	asr r3, r3, #4
	bl sub_02019184
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov73_021D37AC
	; 0x021D37C4
