	.include "macros/function.inc"
	.include "include/ov62_02239D60.inc"

	

	.text


	thumb_func_start ov62_02239D60
ov62_02239D60: ; 0x02239D60
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x66
	bl sub_02030A80
	ldr r1, _02239D88 ; =0x00002ED8
	str r0, [r4, r1]
	lsl r0, r5, #2
	add r2, r4, r0
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl ov61_0222AFC0
	pop {r3, r4, r5, pc}
	nop
_02239D88: .word 0x00002ED8
	thumb_func_end ov62_02239D60

	thumb_func_start ov62_02239D8C
ov62_02239D8C: ; 0x02239D8C
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02239D9C ; =0x00002ED8
	ldr r3, _02239DA0 ; =sub_02030A98
	ldr r0, [r1, r0]
	bx r3
	nop
_02239D9C: .word 0x00002ED8
_02239DA0: .word sub_02030A98
	thumb_func_end ov62_02239D8C

	thumb_func_start ov62_02239DA4
ov62_02239DA4: ; 0x02239DA4
	mov r2, #0
_02239DA6:
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	beq _02239DB0
	mov r0, #1
	bx lr
_02239DB0:
	add r2, r2, #1
	add r0, r0, #2
	cmp r2, #0x1e
	blt _02239DA6
	mov r0, #0
	bx lr
	thumb_func_end ov62_02239DA4

	thumb_func_start ov62_02239DBC
ov62_02239DBC: ; 0x02239DBC
	push {r3, r4}
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	add r2, r4, #0
	cmp r4, #0x1e
	bge _02239DE6
	lsl r1, r4, #1
	add r3, r0, r1
_02239DCE:
	ldrh r1, [r3, #0x2c]
	cmp r1, #0
	beq _02239DDE
	mov r1, #0x1b
	lsl r1, r1, #4
	str r2, [r0, r1]
	pop {r3, r4}
	bx lr
_02239DDE:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x1e
	blt _02239DCE
_02239DE6:
	mov r3, #0
	cmp r4, #0
	ble _02239E06
	add r2, r0, #0
_02239DEE:
	ldrh r1, [r2, #0x2c]
	cmp r1, #0
	beq _02239DFE
	mov r1, #0x1b
	lsl r1, r1, #4
	str r3, [r0, r1]
	pop {r3, r4}
	bx lr
_02239DFE:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, r4
	blt _02239DEE
_02239E06:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02239DBC

	thumb_func_start ov62_02239E0C
ov62_02239E0C: ; 0x02239E0C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r5, r2]
	cmp r0, #3
	bhi _02239EBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239E26: ; jump table
	.short _02239E2E - _02239E26 - 2 ; case 0
	.short _02239E54 - _02239E26 - 2 ; case 1
	.short _02239E80 - _02239E26 - 2 ; case 2
	.short _02239E94 - _02239E26 - 2 ; case 3
_02239E2E:
	cmp r1, #2
	bne _02239EBA
	add r0, r5, #0
	bl ov62_02234520
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02239E46
	sub r1, r1, #1
	b _02239E48
_02239E46:
	mov r1, #0x11
_02239E48:
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239E54:
	cmp r1, #2
	bne _02239EBA
	add r0, r5, #0
	bl ov62_02234520
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	mov r1, #0x12
	bl _s32_div_f
	mov r0, #0x1a
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239E80:
	cmp r1, #0
	bne _02239EBA
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #9
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239E94:
	cmp r1, #0
	bne _02239EBA
	add r0, r5, #0
	bl ov62_02234520
	add r0, r4, #4
	bl ov62_02239DA4
	cmp r0, #0
	beq _02239EB2
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239EB2:
	ldr r1, _02239EBC ; =0x0000010F
	add r0, r5, #0
	bl ov62_0223AC0C
_02239EBA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02239EBC: .word 0x0000010F
	thumb_func_end ov62_02239E0C

	thumb_func_start ov62_02239EC0
ov62_02239EC0: ; 0x02239EC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x86
	add r4, r2, #0
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	cmp r1, #0
	bne _02239EF8
	cmp r5, #6
	beq _02239EEA
	add r0, r4, #0
	bl ov62_02234520
	mov r0, #0xe
	lsl r0, r0, #6
	str r5, [r6, r0]
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
	pop {r4, r5, r6, pc}
_02239EEA:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
_02239EF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_02239EC0

	thumb_func_start ov62_02239EFC
ov62_02239EFC: ; 0x02239EFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x86
	add r4, r2, #0
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	cmp r1, #0
	bne _02239F34
	cmp r5, #6
	beq _02239F26
	add r0, r4, #0
	bl ov62_02234520
	mov r0, #0xe
	lsl r0, r0, #6
	str r5, [r6, r0]
	add r0, r4, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r4, r5, r6, pc}
_02239F26:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0xc
	bl ov62_0222FB60
_02239F34:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_02239EFC

	thumb_func_start ov62_02239F38
ov62_02239F38: ; 0x02239F38
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _02239F92
	cmp r0, #0
	beq _02239F52
	cmp r0, #1
	beq _02239F74
	cmp r0, #2
	beq _02239F84
_02239F52:
	add r0, r5, #0
	bl ov62_02234520
	ldr r0, _02239F94 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02239F6A
	add r0, r5, #0
	mov r1, #7
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239F6A:
	add r0, r5, #0
	mov r1, #8
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239F74:
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #9
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239F84:
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #6
	bl ov62_0222FB60
_02239F92:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02239F94: .word 0x00002F64
	thumb_func_end ov62_02239F38

	thumb_func_start ov62_02239F98
ov62_02239F98: ; 0x02239F98
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _0223A0A0
	cmp r0, #0
	beq _02239FB0
	cmp r0, #1
	beq _0223A078
	pop {r3, r4, r5, pc}
_02239FB0:
	add r0, r5, #0
	bl ov62_02234520
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	mov r1, #0x1e
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov62_02239DBC
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, _0223A0A4 ; =0x00002F68
	str r1, [r4, r0]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl _s32_div_f
	ldr r2, _0223A0A8 ; =0x00002F6C
	str r0, [r4, r2]
	sub r1, r2, #4
	ldr r3, [r4, r1]
	mov r1, #0x18
	mul r1, r3
	ldr r3, [r4, r2]
	mov r2, #0x16
	mov r0, #0x6f
	mul r2, r3
	lsl r0, r0, #4
	add r1, #0x6e
	add r2, #0x34
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8B8
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223B140
	add r0, r5, #0
	bl ov62_0223B050
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov62_0223ADC0
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	lsl r1, r2, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x2c]
	cmp r1, #0
	beq _0223A0A0
	sub r0, #0x58
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	beq _0223A0A0
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	sub r1, #0x54
	lsl r0, r2, #1
	add r0, r4, r0
	add r2, r4, r2
	ldrh r0, [r0, #0x2c]
	ldrb r1, [r2, r1]
	bl sub_02005844
	pop {r3, r4, r5, pc}
_0223A078:
	add r0, r5, #0
	bl ov62_02234520
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r5, #0
	mov r1, #0xb
	bl ov62_0222FB60
_0223A0A0:
	pop {r3, r4, r5, pc}
	nop
_0223A0A4: .word 0x00002F68
_0223A0A8: .word 0x00002F6C
	thumb_func_end ov62_02239F98

	thumb_func_start ov62_0223A0AC
ov62_0223A0AC: ; 0x0223A0AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_0223131C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0x24
	str r0, [sp, #8]
	sub r0, #0x2c
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, #0xd2
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #2
	mov r3, #3
	bl ov62_0223454C
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0x24
	str r0, [sp, #8]
	sub r0, #0x2c
	str r0, [sp, #0xc]
	mov r0, #1
	mov r1, #0xd9
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #2
	mov r3, #0x35
	bl ov62_0223454C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223A0AC

	thumb_func_start ov62_0223A110
ov62_0223A110: ; 0x0223A110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022345A8
	mov r0, #0xd9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022345A8
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223A110

	thumb_func_start ov62_0223A138
ov62_0223A138: ; 0x0223A138
	mov r2, #0
	add r3, r0, #0
_0223A13C:
	ldrh r1, [r3, #0x2c]
	cmp r1, #0
	beq _0223A14A
	mov r1, #0x1b
	lsl r1, r1, #4
	str r2, [r0, r1]
	bx lr
_0223A14A:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x1e
	blt _0223A13C
	bx lr
	thumb_func_end ov62_0223A138

	thumb_func_start ov62_0223A154
ov62_0223A154: ; 0x0223A154
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r2, #0x67
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r0, #0x66
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov61_0222AE88
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_0223A154

	thumb_func_start ov62_0223A17C
ov62_0223A17C: ; 0x0223A17C
	push {r3, r4, r5, lr}
	ldr r1, _0223A280 ; =0x00002F70
	add r5, r0, #0
	mov r0, #0x66
	bl sub_02018144
	ldr r2, _0223A280 ; =0x00002F70
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024420
	str r0, [r4, #0]
	mov r0, #0x83
	mov r2, #0x1a
	lsl r0, r0, #4
	lsl r2, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	ldr r2, [r4, r2]
	add r3, r4, #4
	bl ov62_0223A154
	add r0, r4, #0
	bl ov62_0223A138
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	bl ov62_022315C8
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223A284 ; =0x02248DB4
	ldr r2, _0223A288 ; =ov62_02239E0C
	mov r1, #4
	add r3, r5, #0
	bl sub_02023FCC
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223A28C ; =0x02248DDC
	ldr r2, _0223A290 ; =ov62_02239EC0
	mov r1, #7
	add r3, r5, #0
	bl sub_02023FCC
	mov r1, #0xcd
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223A28C ; =0x02248DDC
	ldr r2, _0223A294 ; =ov62_02239EFC
	mov r1, #7
	add r3, r5, #0
	bl sub_02023FCC
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223A298 ; =0x02248D6C
	ldr r2, _0223A29C ; =ov62_02239F38
	mov r1, #3
	add r3, r5, #0
	bl sub_02023FCC
	mov r1, #0xcf
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223A2A0 ; =0x02248D54
	ldr r2, _0223A2A4 ; =ov62_02239F98
	mov r1, #2
	add r3, r5, #0
	bl sub_02023FCC
	mov r1, #0xd
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x66
	bl sub_02030A80
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_02030AA0
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223A280: .word 0x00002F70
_0223A284: .word 0x02248DB4
_0223A288: .word ov62_02239E0C
_0223A28C: .word 0x02248DDC
_0223A290: .word ov62_02239EC0
_0223A294: .word ov62_02239EFC
_0223A298: .word 0x02248D6C
_0223A29C: .word ov62_02239F38
_0223A2A0: .word 0x02248D54
_0223A2A4: .word ov62_02239F98
	thumb_func_end ov62_0223A17C

	thumb_func_start ov62_0223A2A8
ov62_0223A2A8: ; 0x0223A2A8
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223A2C2
	cmp r1, #1
	beq _0223A32E
	cmp r1, #2
	beq _0223A35E
	b _0223A388
_0223A2C2:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _0223A2D8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223A2D8:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223A38E
_0223A32E:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223A38E
_0223A35E:
	bl ov62_02233790
	cmp r0, #0
	beq _0223A38E
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223A0AC
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	bl ov62_02234314
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223A38E
_0223A388:
	mov r1, #2
	bl ov62_0222FB60
_0223A38E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223A2A8

	thumb_func_start ov62_0223A394
ov62_0223A394: ; 0x0223A394
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223A3A8
	b _0223A4B8
_0223A3A8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223A3B4: ; jump table
	.short _0223A3BC - _0223A3B4 - 2 ; case 0
	.short _0223A3FE - _0223A3B4 - 2 ; case 1
	.short _0223A436 - _0223A3B4 - 2 ; case 2
	.short _0223A462 - _0223A3B4 - 2 ; case 3
_0223A3BC:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	bl ov62_02231560
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223B140
	add r0, r4, #0
	bl ov62_0223AFEC
	add r0, r4, #0
	bl ov62_0223AD7C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223A3FE:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	mov r2, #1
	add r1, r5, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A4B8
	mov r0, #0x83
	mov r2, #0x1a
	lsl r0, r0, #4
	lsl r2, r2, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, #0]
	ldr r2, [r5, r2]
	add r3, r5, #4
	bl ov62_0223A154
	add r0, r5, #0
	bl ov62_0223A138
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A4B8
_0223A436:
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223B230
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223B124
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223AFC0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A4B8
_0223A462:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A4B8
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ov62_0223ADC0
	add r0, r4, #0
	bl ov62_0223AD20
	ldr r1, _0223A4C0 ; =0x0000010E
	add r0, r4, #0
	bl ov62_0223AC0C
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223B124
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223AFC0
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0223A4C4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_0223A4B8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223A4C0: .word 0x0000010E
_0223A4C4: .word 0x04000050
	thumb_func_end ov62_0223A394

	thumb_func_start ov62_0223A4C8
ov62_0223A4C8: ; 0x0223A4C8
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _0223A4FC
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	b _0223A522
_0223A4FC:
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020129D0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
_0223A522:
	mov r0, #0x35
	lsl r0, r0, #4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0xdb
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	thumb_func_end ov62_0223A4C8

	thumb_func_start ov62_0223A544
ov62_0223A544: ; 0x0223A544
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223A55C
	cmp r0, #1
	beq _0223A5D2
	b _0223A62A
_0223A55C:
	ldr r0, _0223A630 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B9E0
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A5B4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4f
	mov r3, #7
	bl sub_0200710C
	add r0, r5, #0
	bl ov62_0223AB14
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223A4C8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223A5B4:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223A62A
_0223A5D2:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A60E
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #6
	bl ov62_0222FB60
	mov r1, #0x11
	add r0, r5, #0
	lsl r1, r1, #4
	bl ov62_0223AC0C
_0223A60E:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223A62A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223A630: .word 0x000006F4
	thumb_func_end ov62_0223A544

	thumb_func_start ov62_0223A634
ov62_0223A634: ; 0x0223A634
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223A634

	thumb_func_start ov62_0223A64C
ov62_0223A64C: ; 0x0223A64C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223A666
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A666:
	ldr r0, [r4, #8]
	cmp r0, #7
	bls _0223A66E
	b _0223A824
_0223A66E:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223A67A: ; jump table
	.short _0223A68A - _0223A67A - 2 ; case 0
	.short _0223A6A8 - _0223A67A - 2 ; case 1
	.short _0223A6F4 - _0223A67A - 2 ; case 2
	.short _0223A73A - _0223A67A - 2 ; case 3
	.short _0223A73E - _0223A67A - 2 ; case 4
	.short _0223A780 - _0223A67A - 2 ; case 5
	.short _0223A7AA - _0223A67A - 2 ; case 6
	.short _0223A802 - _0223A67A - 2 ; case 7
_0223A68A:
	add r0, r4, #0
	bl ov62_0223ABBC
	ldr r0, _0223A834 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223A6A8:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	bl ov62_02231560
	add r0, r4, #0
	bl ov62_0223B140
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223AFEC
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223AD7C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A6F4:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A71C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223A71C:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223A82C
_0223A73A:
	add r0, r0, #1
	str r0, [r4, #8]
_0223A73E:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #4
	bl ov62_02231AAC
	ldr r0, _0223A838 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A780:
	add r0, r4, #0
	bl ov62_0224112C
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0xe
	str r1, [sp]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	ldr r3, [r5, #0]
	bl ov61_0222B224
	cmp r0, #1
	bne _0223A82C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A7AA:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0xc
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _0223A838 ; =0x00000565
	bne _0223A7DE
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #2
	bl ov62_022348B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A7DE:
	mov r1, #0
	bl sub_020057A4
	add r0, r4, #0
	mov r1, #0x30
	bl ov62_02233704
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223196C
	ldr r0, _0223A83C ; =0x0000055F
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A802:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A824:
	add r0, r4, #0
	mov r1, #0xa
	bl ov62_0222FB60
_0223A82C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223A834: .word 0x000006F4
_0223A838: .word 0x00000565
_0223A83C: .word 0x0000055F
	thumb_func_end ov62_0223A64C

	thumb_func_start ov62_0223A840
ov62_0223A840: ; 0x0223A840
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223A85C
	cmp r0, #1
	beq _0223A87A
	cmp r0, #2
	beq _0223A8E0
	b _0223A92E
_0223A85C:
	ldr r0, _0223A934 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B9E0
	add r0, r5, #0
	bl ov62_0223ABBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223A87A:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A8C2
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223A4C8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4d
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223A8C2:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223A92E
_0223A8E0:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A912
	ldr r1, _0223A938 ; =0x0000010E
	add r0, r5, #0
	bl ov62_0223AC0C
	add r0, r5, #0
	mov r1, #3
	bl ov62_0222FB60
_0223A912:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223A92E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223A934: .word 0x000006F4
_0223A938: .word 0x0000010E
	thumb_func_end ov62_0223A840

	thumb_func_start ov62_0223A93C
ov62_0223A93C: ; 0x0223A93C
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223A958
	cmp r1, #1
	beq _0223A9A2
	cmp r1, #2
	beq _0223A9E8
	b _0223A9EE
_0223A958:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov62_02231560
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223B140
	add r0, r5, #0
	bl ov62_0223AFEC
	add r0, r5, #0
	bl ov62_0223AD7C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223A9A2:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A9CA
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223A9CA:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223A9EE
_0223A9E8:
	mov r1, #0xa
	bl ov62_0222FB60
_0223A9EE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov62_0223A93C

	thumb_func_start ov62_0223A9F4
ov62_0223A9F4: ; 0x0223A9F4
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223AA10
	cmp r1, #1
	beq _0223AA3C
	cmp r1, #2
	beq _0223AA82
	b _0223AA88
_0223AA10:
	bl ov62_0223ABBC
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov62_02231560
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223AA3C:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223AA64
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223AA64:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223AA88
_0223AA82:
	mov r1, #0xd
	bl ov62_0222FB60
_0223AA88:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223A9F4

	thumb_func_start ov62_0223AA90
ov62_0223AA90: ; 0x0223AA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r1, #0x86
	ldr r6, _0223AB08 ; =0x00000101
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	add r0, r6, #0
	add r0, #0xb3
	ldr r5, _0223AB0C ; =0x02248D9C
	ldr r7, _0223AB10 ; =0x02248D78
	add r4, r1, r0
_0223AAAE:
	add r0, r4, #0
	bl sub_0201A7A0
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #2
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl sub_0201A7E8
	ldr r1, [r7, #0]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A9A4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r4, #0x10
	add r5, r5, #4
	mul r0, r1
	add r6, r6, r0
	ldr r0, [sp, #0x18]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0223AAAE
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223AB08: .word 0x00000101
_0223AB0C: .word 0x02248D9C
_0223AB10: .word 0x02248D78
	thumb_func_end ov62_0223AA90

	thumb_func_start ov62_0223AB14
ov62_0223AB14: ; 0x0223AB14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r1, [r0, r1]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r5, _0223ABB4 ; =0x02248DC4
	mov r6, #1
	mov r7, #0
	add r4, r1, r0
_0223AB2C:
	add r0, r4, #0
	bl sub_0201A7A0
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #6
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r0, #0x48]
	add r1, #0x3c
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov62_0223429C
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223ABB8 ; =0x000F0D00
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r7, r7, #1
	add r4, #0x10
	mul r0, r1
	add r6, r6, r0
	add r5, r5, #4
	cmp r7, #6
	blo _0223AB2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223ABB4: .word 0x02248DC4
_0223ABB8: .word 0x000F0D00
	thumb_func_end ov62_0223AB14

	thumb_func_start ov62_0223ABBC
ov62_0223ABBC: ; 0x0223ABBC
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x8d
	lsl r0, r0, #2
	mov r4, #0
	add r5, r1, r0
_0223ABCC:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blo _0223ABCC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223ABBC

	thumb_func_start ov62_0223ABE4
ov62_0223ABE4: ; 0x0223ABE4
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x6d
	lsl r0, r0, #2
	mov r4, #0
	add r5, r1, r0
_0223ABF4:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0223ABF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223ABE4

	thumb_func_start ov62_0223AC0C
ov62_0223AC0C: ; 0x0223AC0C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r5, [r0, r2]
	mov r6, #0x75
	ldr r0, [r0, #0x48]
	lsl r6, r6, #2
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, r6
	mov r1, #0xcc
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AC54 ; =0x000F0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r6
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223AC54: .word 0x000F0D00
	thumb_func_end ov62_0223AC0C

	thumb_func_start ov62_0223AC58
ov62_0223AC58: ; 0x0223AC58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	ldr r0, [r5, #0x48]
	add r1, #0x1c
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	mov r0, #0x66
	bl ov62_02231690
	ldr r1, _0223AD18 ; =0x000004D4
	str r0, [sp, #0x14]
	ldr r1, [r5, r1]
	add r0, r6, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0xe3
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023D28
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_022349A8
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x14]
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xcc
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AD1C ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B3F0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223AD18: .word 0x000004D4
_0223AD1C: .word 0x000F0D00
	thumb_func_end ov62_0223AC58

	thumb_func_start ov62_0223AD20
ov62_0223AD20: ; 0x0223AD20
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	mov r6, #0x71
	mov r0, #0xff
	mov r1, #0x66
	lsl r6, r6, #2
	bl sub_02023790
	add r1, r5, #4
	add r4, r0, #0
	bl sub_02023D28
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, r6
	add r1, r4, #0
	bl ov62_0223429C
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AD78 ; =0x000F0100
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r6
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223AD78: .word 0x000F0100
	thumb_func_end ov62_0223AD20

	thumb_func_start ov62_0223AD7C
ov62_0223AD7C: ; 0x0223AD7C
	push {r4, r5, r6, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r5, _0223ADAC ; =0x02248D78
	mov r6, #0
	add r4, r1, r0
_0223AD8E:
	ldr r1, [r5, #0]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A9A4
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #2
	blt _0223AD8E
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223ADAC: .word 0x02248D78
	thumb_func_end ov62_0223AD7C

	thumb_func_start ov62_0223ADB0
ov62_0223ADB0: ; 0x0223ADB0
	and r0, r1
	cmp r1, r0
	bne _0223ADBA
	mov r0, #1
	bx lr
_0223ADBA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov62_0223ADB0

	thumb_func_start ov62_0223ADC0
ov62_0223ADC0: ; 0x0223ADC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r7, #0x6d
	lsl r7, r7, #2
	add r0, r4, r7
	mov r1, #0
	bl sub_0201ADA4
	lsl r0, r5, #1
	add r0, r4, r0
	ldrh r6, [r0, #0x2c]
	cmp r6, #0
	bne _0223ADF0
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_0223ADF0:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r2, r7, #0
	sub r2, #0x5c
	add r5, r0, #0
	ldr r0, [r4, r2]
	add r2, #0x58
	ldr r2, [r4, r2]
	mov r1, #1
	lsl r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	bne _0223AE14
	add r6, r7, #0
	add r6, #0x3a
_0223AE14:
	add r0, r6, #0
	mov r1, #0x66
	add r2, sp, #0x10
	bl sub_0200B274
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02023D28
	add r0, r4, r7
	add r1, r5, #0
	bl ov62_0223429C
	add r3, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AE5C ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, r7
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223AE5C: .word 0x000F0D00
	thumb_func_end ov62_0223ADC0

	thumb_func_start ov62_0223AE60
ov62_0223AE60: ; 0x0223AE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r4, [r0, #0x28]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x1c]
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223AFBC ; =0x000186A0
	ldr r2, [sp, #0x20]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #2
	bl sub_0200CD7C
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223AFBC ; =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223AFBC ; =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r2, #0x13
	bl sub_0200CE3C
	ldr r7, [sp, #0x24]
	mov r4, #0
	add r5, r7, #0
_0223AED2:
	ldr r0, [sp, #0x24]
	ldrh r6, [r7, #0x2c]
	add r1, r0, r4
	mov r0, #0x57
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x18]
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	lsl r1, r4
	bl ov62_0223ADB0
	str r0, [sp, #0x28]
	cmp r6, #0
	beq _0223AFAE
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02079D8C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0223AFBC ; =0x000186A0
	ldr r1, [sp, #0x1c]
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r2, #0x13
	bl sub_0200D888
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #0x18
	mul r2, r0
	add r2, #0x6e
	add r0, sp, #0x2c
	strh r2, [r0]
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #0x16
	mul r1, r0
	add r1, #0x30
	add r0, sp, #0x2c
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	add r0, r1, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #1
	str r0, [sp, #0x3c]
	add r0, r1, #0
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, _0223AFBC ; =0x000186A0
	add r2, sp, #0x2c
	add r0, r4, r0
	str r0, [sp, #0x40]
	ldr r0, _0223AFBC ; =0x000186A0
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	sub r0, r1, #1
	str r0, [sp, #0x50]
	sub r0, r1, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl sub_0200CE6C
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	bl sub_02079EDC
	add r1, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #4
	bl sub_0200D430
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D364
	mov r0, #0xad
	lsl r0, r0, #2
	mov r1, #0x1e
	ldr r0, [r5, r0]
	sub r1, r1, r4
	bl sub_0200D474
_0223AFAE:
	add r4, r4, #1
	add r7, r7, #2
	add r5, r5, #4
	cmp r4, #0x1e
	blt _0223AED2
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223AFBC: .word 0x000186A0
	thumb_func_end ov62_0223AE60

	thumb_func_start ov62_0223AFC0
ov62_0223AFC0: ; 0x0223AFC0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r6, #0
	add r5, r4, #0
_0223AFCE:
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223AFE0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0200D3F4
_0223AFE0:
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #0x1e
	blt _0223AFCE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_0223AFC0

	thumb_func_start ov62_0223AFEC
ov62_0223AFEC: ; 0x0223AFEC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r7, r0]
	ldr r0, [r7, #0x1c]
	ldr r1, _0223B04C ; =0x000186A0
	bl sub_0200D080
	ldr r0, [r7, #0x1c]
	ldr r1, _0223B04C ; =0x000186A0
	bl sub_0200D090
	ldr r0, [r7, #0x1c]
	ldr r1, _0223B04C ; =0x000186A0
	bl sub_0200D0A0
	mov r6, #0
	add r5, r4, #0
_0223B012:
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223B03E
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223B03E
	ldr r1, _0223B04C ; =0x000186A0
	ldr r0, [r7, #0x1c]
	add r1, r6, r1
	bl sub_0200D070
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	mov r0, #0xad
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0223B03E:
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #0x1e
	blt _0223B012
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B04C: .word 0x000186A0
	thumb_func_end ov62_0223AFEC

	thumb_func_start ov62_0223B050
ov62_0223B050: ; 0x0223B050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x10]
	ldr r4, [r0, r1]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	lsl r1, r2, #2
	add r1, r4, r1
	add r3, r1, #0
	add r3, #0xe0
	ldr r3, [r3, #0]
	add r5, r4, r2
	str r3, [sp, #0x14]
	add r3, r0, #0
	sub r3, #0x54
	ldrb r7, [r5, r3]
	lsl r3, r2, #1
	add r3, r4, r3
	ldrh r5, [r3, #0x2c]
	ldr r6, [r1, #0x68]
	cmp r5, #0
	bne _0223B08E
	mov r0, #0xcb
	mov r1, #0
	lsl r0, r0, #2
	add sp, #0x34
	str r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_0223B08E:
	sub r0, #0x58
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	bne _0223B0AC
	ldr r0, _0223B11C ; =0x000001EA
	cmp r5, r0
	bne _0223B0A8
	mov r7, #1
	b _0223B0AA
_0223B0A8:
	mov r7, #0
_0223B0AA:
	ldr r5, _0223B120 ; =0x000001EE
_0223B0AC:
	add r0, r5, #0
	mov r1, #0x66
	bl sub_02075894
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02075DAC
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl sub_02075E38
	lsl r3, r7, #0x18
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	mov r2, #2
	lsr r3, r3, #0x18
	str r6, [sp]
	bl sub_02076648
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, sp, #0x24
	add r1, r5, #0
	mov r3, #2
	str r6, [sp, #8]
	bl sub_02075FB4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x24
	ldr r0, [r0, #0x64]
	mov r2, #0x2a
	mov r3, #0x5b
	bl sub_02007C34
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	bl sub_020759B8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223B11C: .word 0x000001EA
_0223B120: .word 0x000001EE
	thumb_func_end ov62_0223B050

	thumb_func_start ov62_0223B124
ov62_0223B124: ; 0x0223B124
	push {r3, lr}
	add r2, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223B13E
	mov r1, #6
	bl sub_02007DEC
_0223B13E:
	pop {r3, pc}
	thumb_func_end ov62_0223B124

	thumb_func_start ov62_0223B140
ov62_0223B140: ; 0x0223B140
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223B156
	bl sub_02007DC8
_0223B156:
	pop {r3, pc}
	thumb_func_end ov62_0223B140

	thumb_func_start ov62_0223B158
ov62_0223B158: ; 0x0223B158
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl sub_02024420
	ldr r1, _0223B228 ; =0x0000017A
	ldrb r2, [r4, r1]
	cmp r2, #0x10
	blo _0223B17C
	cmp r2, #0x18
	bhs _0223B17C
	mov r2, #0
	strb r2, [r4, r1]
_0223B17C:
	ldr r1, _0223B228 ; =0x0000017A
	ldrb r1, [r4, r1]
	cmp r1, #0x18
	blo _0223B18E
	cmp r1, #0x20
	bhs _0223B18E
	sub r1, #0x18
	bl sub_02079CFC
_0223B18E:
	ldr r0, _0223B228 ; =0x0000017A
	ldrb r1, [r4, r0]
	cmp r1, #0x20
	blo _0223B19A
	mov r1, #0
	strb r1, [r4, r0]
_0223B19A:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B228 ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8a
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B228 ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8c
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0xc0
	mov r1, #0xa2
	str r0, [sp, #8]
	add r2, r1, #0
	str r0, [sp, #0xc]
	add r2, #0xd8
	ldrb r3, [r4, r2]
	ldr r0, [r5, #0x28]
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0x8b
	mov r3, #0x66
	bl sub_02002FEC
	add r0, r5, #0
	bl ov62_0223B050
	add r0, r5, #0
	bl ov62_0223AE60
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov62_0223ADC0
	add r0, r5, #0
	bl ov62_0223AD20
	ldr r1, _0223B22C ; =0x0000010E
	add r0, r5, #0
	bl ov62_0223AC0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B228: .word 0x0000017A
_0223B22C: .word 0x0000010E
	thumb_func_end ov62_0223B158

	thumb_func_start ov62_0223B230
ov62_0223B230: ; 0x0223B230
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl sub_02024420
	ldr r1, _0223B2E4 ; =0x0000017A
	ldrb r2, [r4, r1]
	cmp r2, #0x10
	blo _0223B254
	cmp r2, #0x18
	bhs _0223B254
	mov r2, #0
	strb r2, [r4, r1]
_0223B254:
	ldr r1, _0223B2E4 ; =0x0000017A
	ldrb r1, [r4, r1]
	cmp r1, #0x18
	blo _0223B270
	cmp r1, #0x20
	bhs _0223B270
	sub r1, #0x18
	bl sub_02079CFC
	cmp r0, #0
	bne _0223B270
	ldr r0, _0223B2E4 ; =0x0000017A
	mov r1, #0
	strb r1, [r4, r0]
_0223B270:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B2E4 ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8a
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B2E4 ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8c
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0xc0
	mov r1, #0xa2
	str r0, [sp, #8]
	add r2, r1, #0
	str r0, [sp, #0xc]
	add r2, #0xd8
	ldrb r3, [r4, r2]
	ldr r0, [r5, #0x28]
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0x8b
	mov r3, #0x66
	bl sub_02002FEC
	add r0, r5, #0
	bl ov62_0223B050
	add r0, r5, #0
	bl ov62_0223AE60
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B2E4: .word 0x0000017A
	thumb_func_end ov62_0223B230

	thumb_func_start ov62_0223B2E8
ov62_0223B2E8: ; 0x0223B2E8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223B304
	cmp r1, #1
	beq _0223B37E
	cmp r1, #2
	beq _0223B3C2
	b _0223B400
_0223B304:
	mov r1, #2
	bl ov62_022302F0
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223AA90
	add r0, r5, #0
	bl ov62_0223B158
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223B124
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223AFC0
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4d
	mov r3, #7
	bl sub_0200710C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223B400
_0223B37E:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r4, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223B400
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223B124
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223AFC0
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _0223B408 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223B400
_0223B3C2:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223B3E4
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, #0x14
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #3
	bl ov62_0222FB60
_0223B3E4:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223B400:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223B408: .word 0x04000050
	thumb_func_end ov62_0223B2E8

	thumb_func_start ov62_0223B40C
ov62_0223B40C: ; 0x0223B40C
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223B40C

	thumb_func_start ov62_0223B424
ov62_0223B424: ; 0x0223B424
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r7, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223B43A
	cmp r1, #1
	beq _0223B474
	b _0223B4CA
_0223B43A:
	bl ov62_0223AFEC
	add r0, r5, #0
	bl ov62_0223B140
	add r0, r5, #0
	bl ov62_0223ABE4
	add r0, r5, #0
	bl ov62_0223A110
	ldr r0, _0223B560 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B8B0
	ldr r0, _0223B560 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B9E0
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223B55C
_0223B474:
	bl ov62_02233790
	cmp r0, #0
	beq _0223B55C
	mov r6, #0
	add r4, r7, #0
_0223B480:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024034
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _0223B480
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov62_02231688
	add r0, r5, #0
	bl ov62_0223146C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223B55C
_0223B4CA:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223B524
	add r0, r5, #0
	bl ov62_022318E8
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02030A98
	add r0, r7, #0
	bl sub_020181C4
	b _0223B55C
_0223B524:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223B55C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B560: .word 0x000006F4
	thumb_func_end ov62_0223B424

	thumb_func_start ov62_0223B564
ov62_0223B564: ; 0x0223B564
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223B580
	cmp r1, #1
	beq _0223B60A
	cmp r1, #2
	beq _0223B646
	b _0223B684
_0223B580:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #2
	bl ov62_022302F0
	add r0, r5, #0
	bl ov62_0223AA90
	ldr r1, _0223B68C ; =0x00000113
	add r0, r5, #0
	bl ov62_0223AC0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4f
	mov r3, #7
	bl sub_0200710C
	add r0, r5, #0
	bl ov62_0223AB14
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223A4C8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223B684
_0223B60A:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r4, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223B684
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _0223B690 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223B684
_0223B646:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223B668
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, #0xc
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #3
	bl ov62_0222FB60
_0223B668:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223B684:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223B68C: .word 0x00000113
_0223B690: .word 0x04000050
	thumb_func_end ov62_0223B564

	thumb_func_start ov62_0223B694
ov62_0223B694: ; 0x0223B694
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223B694

	thumb_func_start ov62_0223B6AC
ov62_0223B6AC: ; 0x0223B6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r1, _0223B75C ; =0x02248D50
	ldr r5, _0223B760 ; =0x02248D5C
	ldr r2, [r1, #0x14]
	ldr r1, [r1, #0x18]
	mov r7, #1
	str r1, [sp, #0x24]
	mov r1, #0
	str r1, [sp, #0x18]
	mov r1, #0x8d
	lsl r1, r1, #2
	add r6, sp, #0x20
	str r2, [sp, #0x20]
	add r4, r0, r1
_0223B6D2:
	add r0, r4, #0
	bl sub_0201A7A0
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #6
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [r6, #0]
	ldr r0, [r0, #0x48]
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov62_0223429C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B764 ; =0x000F0D00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	mul r0, r1
	add r7, r7, r0
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, r5, #4
	add r6, r6, #4
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223B6D2
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B75C: .word 0x02248D50
_0223B760: .word 0x02248D5C
_0223B764: .word 0x000F0D00
	thumb_func_end ov62_0223B6AC

	thumb_func_start ov62_0223B768
ov62_0223B768: ; 0x0223B768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	mov r6, #0x8d
	add r7, r1, #0
	ldr r4, [r5, r0]
	lsl r6, r6, #2
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	add r1, r7, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B7BC ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B7BC: .word 0x000F0D00
	thumb_func_end ov62_0223B768

	thumb_func_start ov62_0223B7C0
ov62_0223B7C0: ; 0x0223B7C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	mov r6, #0x8d
	ldr r4, [r5, r0]
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #0xc
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x22
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0x40
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B83C ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, r6
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223B83C: .word 0x000F0D00
	thumb_func_end ov62_0223B7C0

	thumb_func_start ov62_0223B840
ov62_0223B840: ; 0x0223B840
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_0223B840

	thumb_func_start ov62_0223B860
ov62_0223B860: ; 0x0223B860
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x8d
	lsl r0, r0, #2
	mov r4, #0
	add r5, r1, r0
_0223B870:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _0223B870
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223B860

	thumb_func_start ov62_0223B888
ov62_0223B888: ; 0x0223B888
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	mov r1, #0x6d
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsl r1, r1, #2
	ldr r5, _0223B94C ; =0x02248D50
	mov r7, #0
	add r4, r0, r1
_0223B8A6:
	add r0, r4, #0
	bl sub_0201A7A0
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #2
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	cmp r7, #0
	bne _0223B902
	mov r1, #0xe
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	ldr r1, _0223B950 ; =0x00000136
	ldr r0, [r0, #0x48]
	add r1, r2, r1
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov62_0223429C
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x18]
_0223B902:
	cmp r6, #0
	beq _0223B928
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B954 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
_0223B928:
	add r0, r4, #0
	bl sub_0201A9A4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r7, r7, #1
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r4, #0x10
	add r0, r0, r2
	add r5, r5, #4
	str r0, [sp, #0x20]
	cmp r7, #1
	blo _0223B8A6
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B94C: .word 0x02248D50
_0223B950: .word 0x00000136
_0223B954: .word 0x000F0D00
	thumb_func_end ov62_0223B888

	thumb_func_start ov62_0223B958
ov62_0223B958: ; 0x0223B958
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x6d
	lsl r0, r0, #2
	mov r4, #0
	add r5, r1, r0
_0223B968:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #1
	blo _0223B968
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223B958

	thumb_func_start ov62_0223B980
ov62_0223B980: ; 0x0223B980
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223B99A
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223B99A:
	ldr r0, [r4, #8]
	cmp r0, #8
	bls _0223B9A2
	b _0223BD2C
_0223B9A2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B9AE: ; jump table
	.short _0223B9C0 - _0223B9AE - 2 ; case 0
	.short _0223BA06 - _0223B9AE - 2 ; case 1
	.short _0223BA94 - _0223B9AE - 2 ; case 2
	.short _0223BAD4 - _0223B9AE - 2 ; case 3
	.short _0223BAF2 - _0223B9AE - 2 ; case 4
	.short _0223BB9A - _0223B9AE - 2 ; case 5
	.short _0223BBD8 - _0223B9AE - 2 ; case 6
	.short _0223BC58 - _0223B9AE - 2 ; case 7
	.short _0223BCA0 - _0223B9AE - 2 ; case 8
_0223B9C0:
	ldr r0, _0223BD10 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	add r0, r4, #0
	bl ov62_0223ABE4
	add r0, r4, #0
	bl ov62_0223ABBC
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	bl ov62_02231560
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223BA06:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223BA76
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	add r3, r1, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x4e
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223BA76:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223BE5E
_0223BA94:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r1, _0223BD14 ; =0x00000121
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, _0223BD18 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BAD4:
	add r0, r4, #0
	bl ov62_0224112C
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	bl ov61_0222B290
	cmp r0, #1
	beq _0223BAEA
	b _0223BE5E
_0223BAEA:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BAF2:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0x10
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _0223BD18 ; =0x00000565
	bne _0223BB86
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #3
	bl ov62_022348B8
	mov r0, #0xe2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0223BD1C ; =0x00002F64
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223AA90
	ldr r0, _0223BD10 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B8B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #7
	str r0, [r4, #8]
	b _0223BE5E
_0223BB86:
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223BD20 ; =0x0000055F
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BB9A:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223BBD2
	ldr r0, [r4, #8]
	ldr r1, _0223BD24 ; =0x00000126
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov62_02231AAC
	b _0223BE5E
_0223BBD2:
	mov r0, #0xff
	str r0, [r4, #8]
	b _0223BE5E
_0223BBD8:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x3c
	bge _0223BBEA
	bl sub_02022798
	cmp r0, #1
	bne _0223BC6E
_0223BBEA:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, _0223BD1C ; =0x00002F64
	mov r1, #0
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223AA90
	ldr r0, _0223BD10 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B8B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BC58:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223BC70
_0223BC6E:
	b _0223BE5E
_0223BC70:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x4f
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BCA0:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223BCF0
	add r0, r4, #0
	mov r1, #2
	bl ov62_022302F0
	ldr r1, _0223BD28 ; =0x00000113
	add r0, r4, #0
	bl ov62_0223AC0C
	add r0, r4, #0
	bl ov62_0223AB14
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_0223BCF0:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223BE5E
	nop
_0223BD10: .word 0x000006F4
_0223BD14: .word 0x00000121
_0223BD18: .word 0x00000565
_0223BD1C: .word 0x00002F64
_0223BD20: .word 0x0000055F
_0223BD24: .word 0x00000126
_0223BD28: .word 0x00000113
_0223BD2C:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_02231664
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r5, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223BE26
	add r0, r4, #0
	bl ov62_0223B888
	add r0, r4, #0
	bl ov62_0223BE7C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223BE64 ; =0x00002EAC
	ldr r3, _0223BE68 ; =0x02248DF8
	add r2, r5, r0
	mov r6, #5
_0223BD6A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223BD6A
	ldr r0, [r3, #0]
	mov r1, #0xe2
	str r0, [r2, #0]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _0223BE6C ; =0x00002EB0
	add r1, #0xf4
	str r2, [r5, r0]
	add r0, r4, r1
	add r1, r4, #0
	mov r2, #2
	bl ov62_022335BC
	ldr r0, _0223BE70 ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	ldr r3, _0223BE64 ; =0x00002EAC
	ldr r0, _0223BE70 ; =0x0000049C
	add r2, r5, r3
	sub r3, #0xa0
	add r0, r4, r0
	add r1, r4, #0
	add r3, r5, r3
	bl ov62_02232AAC
	ldr r1, _0223BE74 ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov62_02233638
	ldr r0, _0223BE70 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #1
	bl ov62_0223331C
	ldr r0, _0223BE70 ; =0x0000049C
	mov r1, #0x38
	add r0, r4, r0
	mov r2, #0xb0
	bl ov62_02233434
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223B6AC
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r3, _0223BE78 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r4, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x44
	lsl r3, r3, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
_0223BE26:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223BE5E:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223BE64: .word 0x00002EAC
_0223BE68: .word 0x02248DF8
_0223BE6C: .word 0x00002EB0
_0223BE70: .word 0x0000049C
_0223BE74: .word 0x0000047C
_0223BE78: .word 0x000004D8
	thumb_func_end ov62_0223B980

	thumb_func_start ov62_0223BE7C
ov62_0223BE7C: ; 0x0223BE7C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp]
	ldr r7, [r0, r1]
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r6, #0
	cmp r0, #0
	ble _0223BEE6
	add r4, r7, #0
	add r5, r7, #0
_0223BE96:
	mov r0, #0x14
	mov r1, #0x66
	bl sub_02023790
	ldr r1, _0223BEE8 ; =0x00002E10
	str r0, [r4, r1]
	add r0, r1, #0
	mov r1, #0xe3
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl sub_02023D28
	ldr r1, _0223BEE8 ; =0x00002E10
	ldr r0, [sp]
	ldr r1, [r4, r1]
	bl ov62_022349A8
	mov r0, #0x1e
	mov r1, #0x66
	bl sub_02023790
	ldr r1, _0223BEEC ; =0x00002E0C
	str r0, [r4, r1]
	add r0, r1, #0
	mov r1, #0xe3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r0, [r4, r0]
	add r1, #0x80
	bl sub_02023D28
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, r0
	blt _0223BE96
_0223BEE6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BEE8: .word 0x00002E10
_0223BEEC: .word 0x00002E0C
	thumb_func_end ov62_0223BE7C

	thumb_func_start ov62_0223BEF0
ov62_0223BEF0: ; 0x0223BEF0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0223BF38
	add r5, r6, #0
	add r7, r4, #0
_0223BF08:
	ldr r0, _0223BF3C ; =0x00002E0C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223BF18
	bl sub_020237BC
	ldr r0, _0223BF3C ; =0x00002E0C
	str r7, [r5, r0]
_0223BF18:
	ldr r0, _0223BF40 ; =0x00002E10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223BF2A
	bl sub_020237BC
	ldr r0, _0223BF40 ; =0x00002E10
	mov r1, #0
	str r1, [r5, r0]
_0223BF2A:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _0223BF08
_0223BF38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF3C: .word 0x00002E0C
_0223BF40: .word 0x00002E10
	thumb_func_end ov62_0223BEF0

	thumb_func_start ov62_0223BF44
ov62_0223BF44: ; 0x0223BF44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _0223BFA0 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223BF92
	ldr r0, _0223BFA4 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223BFA8 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223BFA8 ; =0x0000049C
	ldr r2, _0223BFAC ; =0x00002E0C
	add r0, r5, r0
	add r1, r5, #0
	add r2, r4, r2
	bl ov62_02232BB4
	ldr r2, _0223BFB0 ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x44
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8EC
_0223BF92:
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BFA0: .word 0x00002F64
_0223BFA4: .word 0x0000047C
_0223BFA8: .word 0x0000049C
_0223BFAC: .word 0x00002E0C
_0223BFB0: .word 0x000004D8
	thumb_func_end ov62_0223BF44

	thumb_func_start ov62_0223BFB4
ov62_0223BFB4: ; 0x0223BFB4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223BFD2
	cmp r1, #1
	beq _0223C0A0
	cmp r1, #2
	bne _0223BFD0
	b _0223C0D6
_0223BFD0:
	b _0223C11A
_0223BFD2:
	bl ov62_0223BEF0
	add r0, r5, #0
	bl ov62_0223B860
	ldr r0, _0223C120 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C016
	add r0, r5, #0
	bl ov62_0223B958
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C124 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223C128 ; =0x0000049C
	add r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223C128 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022334FC
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	b _0223C036
_0223C016:
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C12C ; =0x00002ED8
	add r1, r5, #0
	add r0, r4, r0
	bl ov62_02232394
	add r0, r5, #0
	bl ov62_02239D8C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
_0223C036:
	ldr r0, _0223C120 ; =0x00002F64
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223AA90
	add r0, r5, #0
	mov r1, #0xff
	bl ov62_0223AC58
	ldr r0, _0223C130 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B8B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223C0A0:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C11A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4f
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223C11A
_0223C0D6:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C11A
	add r0, r5, #0
	mov r1, #2
	bl ov62_022302F0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _0223C134 ; =0x00000113
	add r0, r5, #0
	bl ov62_0223AC0C
	add r0, r5, #0
	bl ov62_0223AB14
	add r0, r5, #0
	mov r1, #3
	bl ov62_0222FB60
_0223C11A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C120: .word 0x00002F64
_0223C124: .word 0x0000047C
_0223C128: .word 0x0000049C
_0223C12C: .word 0x00002ED8
_0223C130: .word 0x000006F4
_0223C134: .word 0x00000113
	thumb_func_end ov62_0223BFB4

	thumb_func_start ov62_0223C138
ov62_0223C138: ; 0x0223C138
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223C14C
	b _0223C306
_0223C14C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C158: ; jump table
	.short _0223C160 - _0223C158 - 2 ; case 0
	.short _0223C1FC - _0223C158 - 2 ; case 1
	.short _0223C21A - _0223C158 - 2 ; case 2
	.short _0223C2B2 - _0223C158 - 2 ; case 3
_0223C160:
	bl ov62_0223B860
	ldr r0, _0223C3E8 ; =0x00002F64
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223C19E
	add r0, r4, #0
	bl ov62_0223B958
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C3EC ; =0x0000047C
	add r0, r4, r0
	bl ov62_02233600
	ldr r0, _0223C3F0 ; =0x0000049C
	add r0, r4, r0
	bl ov62_022332FC
	ldr r0, _0223C3F0 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov62_022334FC
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	b _0223C1BE
_0223C19E:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C3F4 ; =0x00002ED8
	add r1, r4, #0
	add r0, r5, r0
	bl ov62_02232394
	add r0, r4, #0
	bl ov62_02239D8C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
_0223C1BE:
	ldr r0, _0223C3F8 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B8B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223C1FC:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C2C8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223C3E0
_0223C21A:
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C3FC ; =0x000004D4
	add r3, r5, #4
	ldr r0, [r4, r0]
	mov r2, #0x33
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	add r6, #0x80
_0223C234:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C234
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, r5, #0
	bl ov62_0223A138
	add r0, r4, #0
	mov r1, #2
	bl ov62_022302F0
	add r0, r4, #0
	bl ov62_0223AA90
	add r0, r4, #0
	bl ov62_0223B158
	add r0, r4, #0
	mov r1, #0xff
	bl ov62_0223AC58
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223B124
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223AFC0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x4b
	mov r3, #7
	bl sub_0200710C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223C3E0
_0223C2B2:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r5, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223C2CA
_0223C2C8:
	b _0223C3E0
_0223C2CA:
	add r0, r4, #0
	mov r1, #0
	bl ov62_0223B124
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223AFC0
	add r0, r4, #0
	bl ov62_0223B7C0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _0223C400 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223C3E0
_0223C306:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223C3C4
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov62_0223A138
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, _0223C404 ; =0x00002F68
	str r1, [r5, r0]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #6
	bl _s32_div_f
	ldr r3, _0223C408 ; =0x00002F6C
	mov r1, #0x6f
	str r0, [r5, r3]
	sub r2, r3, #4
	ldr r6, [r5, r2]
	mov r2, #0x18
	mul r2, r6
	ldr r6, [r5, r3]
	mov r3, #0x16
	mul r3, r6
	lsl r1, r1, #4
	add r2, #0x6e
	add r3, #0x34
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	lsl r1, r2, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x2c]
	cmp r1, #0
	beq _0223C3BC
	sub r0, #0x58
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	beq _0223C3BC
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	sub r1, #0x54
	lsl r0, r2, #1
	add r0, r5, r0
	add r2, r5, r2
	ldrh r0, [r0, #0x2c]
	ldrb r1, [r2, r1]
	bl sub_02005844
_0223C3BC:
	add r0, r4, #0
	mov r1, #0xa
	bl ov62_0222FB60
_0223C3C4:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223C3E0:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223C3E8: .word 0x00002F64
_0223C3EC: .word 0x0000047C
_0223C3F0: .word 0x0000049C
_0223C3F4: .word 0x00002ED8
_0223C3F8: .word 0x000006F4
_0223C3FC: .word 0x000004D4
_0223C400: .word 0x04000050
_0223C404: .word 0x00002F68
_0223C408: .word 0x00002F6C
	thumb_func_end ov62_0223C138

	thumb_func_start ov62_0223C40C
ov62_0223C40C: ; 0x0223C40C
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223C40C

	thumb_func_start ov62_0223C424
ov62_0223C424: ; 0x0223C424
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223C440
	cmp r0, #1
	beq _0223C486
	cmp r0, #2
	beq _0223C492
	b _0223C50A
_0223C440:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov62_02231560
	add r0, r5, #0
	bl ov62_0223B140
	add r0, r5, #0
	bl ov62_0223AFEC
	add r0, r5, #0
	bl ov62_0223AD7C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	add r0, r5, #0
	bl ov62_0223ABE4
	add r0, r5, #0
	bl ov62_0223B840
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223C486:
	ldr r0, _0223C624 ; =0x00002F64
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223C492:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223C4AA
	b _0223C61C
_0223C4AA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	add r3, r1, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4e
	mov r3, #7
	bl sub_0200710C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223C61C
_0223C50A:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r4, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C61C
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0208B9E0
	add r0, r5, #0
	bl ov62_0223B888
	add r0, r5, #0
	bl ov62_0223B6AC
	ldr r0, _0223C628 ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #2
	bl ov62_022335BC
	ldr r3, _0223C62C ; =0x00002EAC
	ldr r0, _0223C630 ; =0x0000049C
	add r2, r4, r3
	sub r3, #0xa0
	add r0, r5, r0
	add r1, r5, #0
	add r3, r4, r3
	bl ov62_02232AAC
	ldr r1, _0223C628 ; =0x0000047C
	add r0, r5, r1
	add r1, #0x20
	add r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223C630 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov62_0223331C
	ldr r0, _0223C630 ; =0x0000049C
	mov r1, #0x38
	add r0, r5, r0
	mov r2, #0xb0
	bl ov62_02233434
	ldr r3, _0223C634 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r5, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x44
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _0223C624 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C5FC
	ldr r0, _0223C628 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223C630 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223C630 ; =0x0000049C
	ldr r2, _0223C638 ; =0x00002E0C
	add r0, r5, r0
	add r1, r5, #0
	add r2, r4, r2
	bl ov62_02232BB4
	ldr r2, _0223C634 ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x44
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8EC
_0223C5FC:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
_0223C61C:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223C624: .word 0x00002F64
_0223C628: .word 0x0000047C
_0223C62C: .word 0x00002EAC
_0223C630: .word 0x0000049C
_0223C634: .word 0x000004D8
_0223C638: .word 0x00002E0C
	thumb_func_end ov62_0223C424

	thumb_func_start ov62_0223C63C
ov62_0223C63C: ; 0x0223C63C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223C658
	cmp r0, #1
	beq _0223C6C2
	cmp r0, #2
	beq _0223C73E
	b _0223C782
_0223C658:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, _0223C788 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C672
	add r0, r5, #0
	bl ov62_0223B958
_0223C672:
	ldr r0, _0223C78C ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223C790 ; =0x0000049C
	add r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223C790 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022334FC
	ldr r0, _0223C788 ; =0x00002F64
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov62_02231560
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223C6C2:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #1
	add r1, r4, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C782
	ldr r1, _0223C794 ; =0x000004D4
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov62_02239D60
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C798 ; =0x00002ED8
	add r1, r5, #0
	add r0, r4, r0
	bl ov62_02232378
	ldr r0, _0223C798 ; =0x00002ED8
	mov r1, #0
	add r0, r4, r0
	bl ov62_022323B8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223C782
_0223C73E:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C782
	ldr r0, _0223C798 ; =0x00002ED8
	mov r1, #1
	add r0, r4, r0
	bl ov62_022323B8
	ldr r1, _0223C788 ; =0x00002F64
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r1, #0x79
	bl ov62_0223B768
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
_0223C782:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C788: .word 0x00002F64
_0223C78C: .word 0x0000047C
_0223C790: .word 0x0000049C
_0223C794: .word 0x000004D4
_0223C798: .word 0x00002ED8
	thumb_func_end ov62_0223C63C

	thumb_func_start ov62_0223C79C
ov62_0223C79C: ; 0x0223C79C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223C7B8
	cmp r1, #1
	beq _0223C7C6
	cmp r1, #2
	beq _0223C7EA
	b _0223C84A
_0223C7B8:
	ldr r0, _0223C92C ; =0x00002F64
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223C924
_0223C7C6:
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223C930 ; =0x00002ED8
	add r1, r5, #0
	add r0, r4, r0
	bl ov62_02232394
	add r0, r5, #0
	bl ov62_02239D8C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223C7EA:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #1
	add r1, r4, r1
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223C802
	b _0223C924
_0223C802:
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	add r3, r1, #0
	bl sub_0200710C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223C924
_0223C84A:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C924
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r1, _0223C92C ; =0x00002F64
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r1, #0x79
	bl ov62_0223B768
	add r0, r5, #0
	bl ov62_0223B888
	ldr r0, _0223C934 ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #2
	bl ov62_022335BC
	ldr r3, _0223C938 ; =0x00002EAC
	ldr r0, _0223C93C ; =0x0000049C
	add r2, r4, r3
	sub r3, #0xa0
	add r0, r5, r0
	add r1, r5, #0
	add r3, r4, r3
	bl ov62_02232AAC
	ldr r1, _0223C934 ; =0x0000047C
	add r0, r5, r1
	add r1, #0x20
	add r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223C93C ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov62_0223331C
	ldr r0, _0223C93C ; =0x0000049C
	mov r1, #0x38
	add r0, r5, r0
	mov r2, #0xb0
	bl ov62_02233434
	ldr r0, _0223C92C ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C900
	ldr r0, _0223C934 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223C93C ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223C93C ; =0x0000049C
	ldr r2, _0223C940 ; =0x00002E0C
	add r0, r5, r0
	add r1, r5, #0
	add r2, r4, r2
	bl ov62_02232BB4
	ldr r2, _0223C944 ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x44
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8EC
_0223C900:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
_0223C924:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223C92C: .word 0x00002F64
_0223C930: .word 0x00002ED8
_0223C934: .word 0x0000047C
_0223C938: .word 0x00002EAC
_0223C93C: .word 0x0000049C
_0223C940: .word 0x00002E0C
_0223C944: .word 0x000004D8
	thumb_func_end ov62_0223C79C

	thumb_func_start ov62_0223C948
ov62_0223C948: ; 0x0223C948
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r7, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223C95E
	cmp r1, #1
	beq _0223C9B4
	b _0223CA0A
_0223C95E:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223ABE4
	add r0, r5, #0
	bl ov62_0223A110
	ldr r0, _0223CAA0 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B8B0
	ldr r0, _0223CAA0 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0208B8B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223CA9C
_0223C9B4:
	bl ov62_02233790
	cmp r0, #0
	beq _0223CA9C
	mov r6, #0
	add r4, r7, #0
_0223C9C0:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024034
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _0223C9C0
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov62_02231688
	add r0, r5, #0
	bl ov62_0223146C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223CA9C
_0223CA0A:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223CA64
	add r0, r5, #0
	bl ov62_022318E8
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02030A98
	add r0, r7, #0
	bl sub_020181C4
	b _0223CA9C
_0223CA64:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223CA9C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CAA0: .word 0x000006F4
	thumb_func_end ov62_0223C948

	thumb_func_start ov62_0223CAA4
ov62_0223CAA4: ; 0x0223CAA4
	bx lr
	; .align 2, 0
	thumb_func_end ov62_0223CAA4

	thumb_func_start ov62_0223CAA8
ov62_0223CAA8: ; 0x0223CAA8
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r1, #0]
	ldr r4, [r0, r2]
	cmp r1, #1
	bne _0223CAC0
	mov r0, #0xe2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0223CAC0:
	bl ov62_0224112C
	mov r1, #0xe3
	lsl r1, r1, #2
	add r1, r4, r1
	mov r2, #0x14
	bl ov61_0222BD18
	mov r1, #0xe2
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	add r1, #0x54
	ldr r2, _0223CAE8 ; =0x00002A30
	add r0, r4, r0
	add r1, r4, r1
	bl MI_CpuCopy8
	pop {r4, pc}
	nop
_0223CAE8: .word 0x00002A30
	thumb_func_end ov62_0223CAA8

	.rodata


	.global Unk_ov62_02248D50
Unk_ov62_02248D50: ; 0x02248D50
	.incbin "incbin/overlay62_rodata.bin", 0x624, 0x628 - 0x624

	.global Unk_ov62_02248D54
Unk_ov62_02248D54: ; 0x02248D54
	.incbin "incbin/overlay62_rodata.bin", 0x628, 0x630 - 0x628

	.global Unk_ov62_02248D5C
Unk_ov62_02248D5C: ; 0x02248D5C
	.incbin "incbin/overlay62_rodata.bin", 0x630, 0x638 - 0x630

	.global Unk_ov62_02248D64
Unk_ov62_02248D64: ; 0x02248D64
	.incbin "incbin/overlay62_rodata.bin", 0x638, 0x640 - 0x638

	.global Unk_ov62_02248D6C
Unk_ov62_02248D6C: ; 0x02248D6C
	.incbin "incbin/overlay62_rodata.bin", 0x640, 0x64C - 0x640

	.global Unk_ov62_02248D78
Unk_ov62_02248D78: ; 0x02248D78
	.incbin "incbin/overlay62_rodata.bin", 0x64C, 0x658 - 0x64C

	.global Unk_ov62_02248D84
Unk_ov62_02248D84: ; 0x02248D84
	.incbin "incbin/overlay62_rodata.bin", 0x658, 0x664 - 0x658

	.global Unk_ov62_02248D90
Unk_ov62_02248D90: ; 0x02248D90
	.incbin "incbin/overlay62_rodata.bin", 0x664, 0x670 - 0x664

	.global Unk_ov62_02248D9C
Unk_ov62_02248D9C: ; 0x02248D9C
	.incbin "incbin/overlay62_rodata.bin", 0x670, 0x67C - 0x670

	.global Unk_ov62_02248DA8
Unk_ov62_02248DA8: ; 0x02248DA8
	.incbin "incbin/overlay62_rodata.bin", 0x67C, 0x688 - 0x67C

	.global Unk_ov62_02248DB4
Unk_ov62_02248DB4: ; 0x02248DB4
	.incbin "incbin/overlay62_rodata.bin", 0x688, 0x698 - 0x688

	.global Unk_ov62_02248DC4
Unk_ov62_02248DC4: ; 0x02248DC4
	.incbin "incbin/overlay62_rodata.bin", 0x698, 0x6B0 - 0x698

	.global Unk_ov62_02248DDC
Unk_ov62_02248DDC: ; 0x02248DDC
	.incbin "incbin/overlay62_rodata.bin", 0x6B0, 0x6CC - 0x6B0

	.global Unk_ov62_02248DF8
Unk_ov62_02248DF8: ; 0x02248DF8
	.incbin "incbin/overlay62_rodata.bin", 0x6CC, 0x6F8 - 0x6CC

	.global Unk_ov62_02248E24
Unk_ov62_02248E24: ; 0x02248E24
	.incbin "incbin/overlay62_rodata.bin", 0x6F8, 0x724 - 0x6F8

	.global Unk_ov62_02248E50
Unk_ov62_02248E50: ; 0x02248E50
	.incbin "incbin/overlay62_rodata.bin", 0x724, 0x38

