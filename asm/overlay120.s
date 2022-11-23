	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov120_021D0D80
ov120_021D0D80: ; 0x021D0D80
	push {r4, lr}
	mov r2, #1
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x78
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #0x78
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x78
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov120_021D0D80

	thumb_func_start ov120_021D0DB0
ov120_021D0DB0: ; 0x021D0DB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #5
	bls _021D0DC6
	b _021D0EEA
_021D0DC6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0DD2: ; jump table
	.short _021D0DDE - _021D0DD2 - 2 ; case 0
	.short _021D0E44 - _021D0DD2 - 2 ; case 1
	.short _021D0E58 - _021D0DD2 - 2 ; case 2
	.short _021D0E82 - _021D0DD2 - 2 ; case 3
	.short _021D0E98 - _021D0DD2 - 2 ; case 4
	.short _021D0EC8 - _021D0DD2 - 2 ; case 5
_021D0DDE:
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
	ldr r0, _021D0EF0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0EF4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov120_021D0F24
	add r0, r4, #0
	bl ov120_021D114C
	ldr r0, _021D0EF8 ; =ov120_021D0F18
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	add r0, r6, #0
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r5, #0]
	b _021D0EEA
_021D0E44:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D0E50
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D0EEA
_021D0E50:
	str r6, [r4, #0x24]
	mov r0, #2
	str r0, [r5, #0]
	b _021D0EEA
_021D0E58:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D0E64
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D0EEA
_021D0E64:
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
	b _021D0EEA
_021D0E82:
	bl ov120_021D1178
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0EEA
	mov r0, #0xf0
	str r0, [r4, #0x24]
	mov r0, #4
	str r0, [r5, #0]
	b _021D0EEA
_021D0E98:
	bl ov120_021D1178
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D0EA8
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D0EEA
_021D0EA8:
	add r0, r6, #0
	str r0, [r4, #0x24]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, [r4, #0]
	add r2, r0, #0
	str r1, [sp, #8]
	add r1, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r5, #0]
	b _021D0EEA
_021D0EC8:
	bl ov120_021D1178
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0EEA
	add r0, r4, #0
	bl ov120_021D116C
	add r0, r4, #0
	bl ov120_021D10D4
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r6, #1
_021D0EEA:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D0EF0: .word 0xFFFFE0FF
_021D0EF4: .word 0x04001000
_021D0EF8: .word ov120_021D0F18
	thumb_func_end ov120_021D0DB0

	thumb_func_start ov120_021D0EFC
ov120_021D0EFC: ; 0x021D0EFC
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
	thumb_func_end ov120_021D0EFC

	thumb_func_start ov120_021D0F18
ov120_021D0F18: ; 0x021D0F18
	ldr r3, _021D0F20 ; =sub_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D0F20: .word sub_0201C2B8
	thumb_func_end ov120_021D0F18

	thumb_func_start ov120_021D0F24
ov120_021D0F24: ; 0x021D0F24
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D10B8 ; =0x021D1210
	add r4, r0, #0
	add r3, sp, #0x90
	mov r2, #5
_021D0F30:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D0F30
	add r0, sp, #0x90
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x80
	ldr r5, _021D10BC ; =0x021D1190
	str r0, [r4, #4]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D10C0 ; =0x021D11BC
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
	ldr r5, _021D10C4 ; =0x021D11F4
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
	ldr r5, _021D10C8 ; =0x021D11D8
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
	ldr r5, _021D10CC ; =0x021D11A0
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
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc1
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc1
	mov r3, #3
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	mov r1, #3
	str r0, [sp, #4]
	mov r0, #0xc1
	add r3, r2, #0
	bl sub_02006E84
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
	ldr r0, _021D10D0 ; =0x04000050
	mov r1, #2
	mov r3, #4
	str r2, [sp]
	bl sub_020BF55C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D10B8: .word 0x021D1210
_021D10BC: .word 0x021D1190
_021D10C0: .word 0x021D11BC
_021D10C4: .word 0x021D11F4
_021D10C8: .word 0x021D11D8
_021D10CC: .word 0x021D11A0
_021D10D0: .word 0x04000050
	thumb_func_end ov120_021D0F24

	thumb_func_start ov120_021D10D4
ov120_021D10D4: ; 0x021D10D4
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
	ldr r0, _021D1148 ; =0x04000050
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
_021D1148: .word 0x04000050
	thumb_func_end ov120_021D10D4

	thumb_func_start ov120_021D114C
ov120_021D114C: ; 0x021D114C
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _021D1168 ; =0x0000025F
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
_021D1168: .word 0x0000025F
	thumb_func_end ov120_021D114C

	thumb_func_start ov120_021D116C
ov120_021D116C: ; 0x021D116C
	ldr r3, _021D1174 ; =sub_0200B190
	ldr r0, [r0, #8]
	bx r3
	nop
_021D1174: .word sub_0200B190
	thumb_func_end ov120_021D116C

	thumb_func_start ov120_021D1178
ov120_021D1178: ; 0x021D1178
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
	thumb_func_end ov120_021D1178
	; 0x021D1190

	.incbin "data/overlay120.bin"
