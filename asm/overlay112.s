	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov112_0225C700
ov112_0225C700: ; 0x0225C700
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02006840
	mov r2, #5
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x6b
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x27
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x6b
	bl sub_0200681C
	mov r2, #0x27
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #0]
	mov r1, #0x6b
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #8
	bl ov112_0225C9BC
	mov r0, #0x53
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #8
	mov r2, #0x6b
	bl ov112_0225CC64
	ldr r0, [r4, #4]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #0x6b
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r2, #0
	add r0, #0xe9
	add r2, #0xe1
	ldr r3, [r4, #0]
	add r0, r4, r0
	add r1, #8
	add r2, r4, r2
	bl ov112_0225CDA8
	ldr r0, [r5, #8]
	add r1, r4, #0
	str r0, [sp]
	mov r2, #0x6b
	str r2, [sp, #4]
	add r0, r2, #0
	add r0, #0xf5
	add r2, #0xe1
	ldr r3, [r4, #0]
	add r0, r4, r0
	add r1, #8
	add r2, r4, r2
	bl ov112_0225CFC0
	mov r0, #0x59
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #8
	mov r2, #0x6b
	bl ov112_0225D1EC
	mov r0, #2
	lsl r0, r0, #8
	add r1, r4, #0
	add r0, r4, r0
	add r1, #8
	mov r2, #0x6b
	bl ov112_0225D57C
	ldr r0, _0225C7C0 ; =ov112_0225C964
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0225C7C0: .word ov112_0225C964
	thumb_func_end ov112_0225C700

	thumb_func_start ov112_0225C7C4
ov112_0225C7C4: ; 0x0225C7C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r6, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bls _0225C7E2
	b _0225C8EA
_0225C7E2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225C7EE: ; jump table
	.short _0225C7F8 - _0225C7EE - 2 ; case 0
	.short _0225C81E - _0225C7EE - 2 ; case 1
	.short _0225C82E - _0225C7EE - 2 ; case 2
	.short _0225C8BC - _0225C7EE - 2 ; case 3
	.short _0225C8DC - _0225C7EE - 2 ; case 4
_0225C7F8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r6, #8]
	mov r1, #1
	bl ov66_0222E31C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225C8EA
_0225C81E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225C8EA
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225C8EA
_0225C82E:
	ldr r0, _0225C8F8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _0225C84A
	ldr r0, [r6, #8]
	bl ov66_0222E12C
	cmp r0, #1
	beq _0225C84A
	bl ov66_02231760
	cmp r0, #1
	bne _0225C860
_0225C84A:
	ldr r0, [r6, #8]
	bl ov66_0222E12C
	cmp r0, #1
	bne _0225C85A
	ldr r0, [r6, #8]
	bl ov66_0222E2A4
_0225C85A:
	mov r0, #3
	str r0, [r5, #0]
	b _0225C8EA
_0225C860:
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	add r0, r4, r0
	bl ov112_0225CDFC
	cmp r0, #1
	bne _0225C87E
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #1
	bl ov112_0225D718
_0225C87E:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, #0]
	add r0, r4, r0
	bl ov112_0225CFD8
	cmp r0, #1
	bne _0225C89A
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #2
	bl ov112_0225D718
_0225C89A:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r4, #0]
	ldr r2, [r6, #8]
	add r0, r4, r0
	mov r3, #0x6b
	bl ov112_0225D304
	cmp r0, #1
	bne _0225C8EA
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #3
	bl ov112_0225D718
	b _0225C8EA
_0225C8BC:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225C8EA
_0225C8DC:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225C8EA
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225C8EA:
	ldr r1, [r6, #8]
	add r0, r4, #0
	bl ov112_0225C970
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225C8F8: .word 0x021BF67C
	thumb_func_end ov112_0225C7C4

	thumb_func_start ov112_0225C8FC
ov112_0225C8FC: ; 0x0225C8FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov112_0225D6DC
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov112_0225CDF8
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov112_0225CFD4
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov112_0225D2D0
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov112_0225CC84
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r4, #8
	add r0, r4, #0
	bl ov112_0225C9F4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x6b
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov112_0225C8FC

	thumb_func_start ov112_0225C964
ov112_0225C964: ; 0x0225C964
	ldr r3, _0225C96C ; =ov112_0225CA20
	add r0, #8
	bx r3
	nop
_0225C96C: .word ov112_0225CA20
	thumb_func_end ov112_0225C964

	thumb_func_start ov112_0225C970
ov112_0225C970: ; 0x0225C970
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x55
	add r5, r0, #0
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #8
	add r2, r5, #0
	add r1, r5, r1
	add r2, #8
	bl ov112_0225CE60
	mov r1, #0x16
	str r4, [sp]
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x14
	add r2, r5, #0
	ldr r3, [r5, #0]
	add r1, r5, r1
	add r2, #8
	bl ov112_0225D004
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov112_0225D3E0
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl ov112_0225D700
	add r5, #8
	add r0, r5, #0
	bl ov112_0225CA14
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225C970

	thumb_func_start ov112_0225C9BC
ov112_0225C9BC: ; 0x0225C9BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xa9
	add r4, r1, #0
	bl sub_02006C24
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x30
	add r1, r4, #0
	bl sub_0201DBEC
	ldr r0, _0225C9F0 ; =0x0225D858
	bl sub_0201FE94
	add r0, r5, #0
	add r1, r4, #0
	bl ov112_0225CA34
	add r0, r5, #0
	add r1, r4, #0
	bl ov112_0225CB98
	pop {r3, r4, r5, pc}
	nop
_0225C9F0: .word 0x0225D858
	thumb_func_end ov112_0225C9BC

	thumb_func_start ov112_0225C9F4
ov112_0225C9F4: ; 0x0225C9F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov112_0225CB60
	add r0, r4, #0
	bl ov112_0225CC38
	pop {r4, pc}
	thumb_func_end ov112_0225C9F4

	thumb_func_start ov112_0225CA14
ov112_0225CA14: ; 0x0225CA14
	ldr r3, _0225CA1C ; =sub_020219F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CA1C: .word sub_020219F8
	thumb_func_end ov112_0225CA14

	thumb_func_start ov112_0225CA20
ov112_0225CA20: ; 0x0225CA20
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0200A858
	bl sub_0201DCAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CA20

	thumb_func_start ov112_0225CA34
ov112_0225CA34: ; 0x0225CA34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _0225CB50 ; =0x0225D834
	add r7, r1, #0
	bl sub_02018368
	add r0, r7, #0
	bl sub_02018340
	str r0, [r5, #0]
	ldr r0, _0225CB54 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0
	ldr r6, _0225CB58 ; =0x0225D8C0
	ldr r4, _0225CB5C ; =0x0225D844
	str r0, [sp, #0x10]
_0225CA5C:
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r7, #0
	bl sub_02019690
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [sp, #0x10]
	add r6, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0225CA5C
	mov r1, #0
	str r1, [sp]
	mov r0, #5
	str r7, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #6
	add r2, r7, #0
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	mov r1, #1
	ldr r0, [r5, r0]
	ldr r2, [r5, #0]
	add r3, r1, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0]
	mov r1, #3
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0]
	mov r1, #4
	mov r3, #2
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #5
	str r7, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r2, #4
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0]
	mov r1, #2
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r7, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0]
	mov r1, #6
	mov r3, #4
	bl sub_0200710C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CB50: .word 0x0225D834
_0225CB54: .word 0x021BF6DC
_0225CB58: .word 0x0225D8C0
_0225CB5C: .word 0x0225D844
	thumb_func_end ov112_0225CA34

	thumb_func_start ov112_0225CB60
ov112_0225CB60: ; 0x0225CB60
	push {r4, r5, r6, lr}
	ldr r5, _0225CB90 ; =0x0225D844
	add r6, r0, #0
	mov r4, #0
_0225CB68:
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0225CB68
	ldr r0, [r6, #0]
	bl sub_020181C4
	ldr r0, _0225CB94 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	pop {r4, r5, r6, pc}
	nop
_0225CB90: .word 0x0225D844
_0225CB94: .word 0x021BF6DC
	thumb_func_end ov112_0225CB60

	thumb_func_start ov112_0225CB98
ov112_0225CB98: ; 0x0225CB98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl sub_0200A784
	ldr r0, _0225CC30 ; =0x0225D814
	ldr r1, _0225CC34 ; =0x00200010
	mov r2, #0x10
	bl sub_0201E88C
	mov r0, #0x20
	add r1, r6, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	ldr r1, _0225CC34 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add r1, r5, #0
	mov r0, #0x20
	add r1, #8
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r5, #4]
	add r0, r5, #0
	mov r2, #1
	add r0, #8
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0x13
	mov r4, #0
	lsl r7, r7, #4
_0225CC04:
	mov r0, #0x20
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225CC04
	bl sub_02039734
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CC30: .word 0x0225D814
_0225CC34: .word 0x00200010
	thumb_func_end ov112_0225CB98

	thumb_func_start ov112_0225CC38
ov112_0225CC38: ; 0x0225CC38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021964
	mov r6, #0x13
	mov r4, #0
	lsl r6, r6, #4
_0225CC48:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225CC48
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov112_0225CC38

	thumb_func_start ov112_0225CC64
ov112_0225CC64: ; 0x0225CC64
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #5
	str r2, [sp]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #5
	mov r2, #0
	add r3, r4, #4
	bl sub_020071D0
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CC64

	thumb_func_start ov112_0225CC84
ov112_0225CC84: ; 0x0225CC84
	ldr r3, _0225CC8C ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_0225CC8C: .word sub_020181C4
	thumb_func_end ov112_0225CC84

	thumb_func_start ov112_0225CC90
ov112_0225CC90: ; 0x0225CC90
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r0, [r0, #4]
	add r4, r1, #0
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	add r1, r2, #6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	add r2, r3, #5
	lsl r2, r2, #0x18
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	add r3, sp, #0x18
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	ldr r0, [r4, #0]
	lsr r2, r2, #0x18
	lsl r3, r3, #1
	add r3, r3, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov112_0225CC90

	thumb_func_start ov112_0225CCE8
ov112_0225CCE8: ; 0x0225CCE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x38]
	mov r1, #3
	add r7, r2, #0
	add r6, r3, #0
	bl sub_020E2178
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x38]
	mov r1, #3
	bl sub_020E2178
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _0225CD0E
	add r0, r0, #2
_0225CD0E:
	ldr r1, [sp, #0x3c]
	cmp r1, #1
	bne _0225CD16
	add r0, r0, #1
_0225CD16:
	ldr r1, [r4, #4]
	lsl r2, r6, #1
	add r6, r2, #4
	mov r2, #2
	str r2, [sp]
	str r2, [sp, #4]
	add r2, r1, #0
	add r2, #0xc
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	lsl r0, r0, #0x19
	lsl r2, r2, #0x19
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r0, [r1]
	lsl r4, r7, #1
	add r4, #0x15
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	mov r1, #3
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0225CD7C
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #3
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	b _0225CD9A
_0225CD7C:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0225CD9A
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
_0225CD9A:
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CCE8

	thumb_func_start ov112_0225CDA8
ov112_0225CDA8: ; 0x0225CDA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov66_0222EB48
	mov r1, #0
	strb r1, [r5]
	mov r1, #0x3c
	str r0, [sp]
	bl sub_020E2178
	add r0, r0, #1
	strb r0, [r5, #1]
	mov r0, #0
	strb r0, [r5, #2]
	ldr r0, [sp]
	mov r1, #0x28
	bl sub_020E2178
	str r0, [r5, #8]
	mov r0, #1
	strb r0, [r5, #4]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #5]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	bl ov112_0225CDFC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov112_0225CE60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CDA8

	thumb_func_start ov112_0225CDF8
ov112_0225CDF8: ; 0x0225CDF8
	bx lr
	; .align 2, 0
	thumb_func_end ov112_0225CDF8

	thumb_func_start ov112_0225CDFC
ov112_0225CDFC: ; 0x0225CDFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #8
	add r6, r2, #0
	mov r4, #0
	bl ov66_02231C10
	cmp r0, #0
	bne _0225CE18
	add sp, #0xc
	add r0, r4, #0
	pop {r3, r4, r5, r6, pc}
_0225CE18:
	ldrb r0, [r5, #4]
	cmp r0, #1
	bne _0225CE26
	add r0, r4, #0
	strb r0, [r5, #4]
	mov r4, #1
	strb r4, [r5, #5]
_0225CE26:
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov66_022314BC
	add r0, sp, #4
	add r1, r5, #0
	add r2, sp, #0
	bl ov66_022314BC
	add r0, sp, #0
	ldrb r2, [r0, #2]
	ldr r1, [r5, #8]
	cmp r2, r1
	bhs _0225CE50
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _0225CE50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225CE58
_0225CE50:
	mov r4, #1
	strb r4, [r5, #5]
	ldr r0, [sp, #4]
	str r0, [r5, #0]
_0225CE58:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CDFC

	thumb_func_start ov112_0225CE60
ov112_0225CE60: ; 0x0225CE60
	push {r3, lr}
	ldrb r3, [r0, #4]
	cmp r3, #1
	bne _0225CE6E
	bl ov112_0225CE74
	pop {r3, pc}
_0225CE6E:
	bl ov112_0225CE88
	pop {r3, pc}
	thumb_func_end ov112_0225CE60

	thumb_func_start ov112_0225CE74
ov112_0225CE74: ; 0x0225CE74
	ldrh r1, [r0, #6]
	add r1, r1, #1
	strh r1, [r0, #6]
	ldrh r1, [r0, #6]
	cmp r1, #0x10
	bls _0225CE84
	mov r1, #0
	strh r1, [r0, #6]
_0225CE84:
	bx lr
	; .align 2, 0
	thumb_func_end ov112_0225CE74

	thumb_func_start ov112_0225CE88
ov112_0225CE88: ; 0x0225CE88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldrb r1, [r4, #1]
	mov r0, #0x3c
	ldrb r2, [r4, #2]
	mul r0, r1
	ldrb r1, [r4]
	add r2, r2, r0
	mov r0, #0xe1
	lsl r0, r0, #4
	mul r0, r1
	ldr r1, [r4, #8]
	add r0, r2, r0
	bl sub_020E2178
	ldrb r1, [r4, #5]
	add r5, r0, #0
	cmp r1, #0
	beq _0225CF36
	mov r2, #0
	strh r2, [r4, #6]
	strb r2, [r4, #5]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0]
	mov r1, #3
	mov r3, #5
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	mov r0, #0
	str r0, [sp, #0x1c]
_0225CEE2:
	ldr r0, [sp, #0x1c]
	mov r1, #3
	sub r6, r1, r0
	mov r0, #0xa
	add r7, r6, #0
	mul r7, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #0x20]
_0225CEF6:
	mov r0, #9
	sub r3, r0, r4
	add r0, r3, r7
	cmp r0, r5
	blo _0225CF22
	cmp r0, r5
	bne _0225CF08
	mov r2, #1
	b _0225CF12
_0225CF08:
	cmp r6, #3
	bne _0225CF10
	mov r2, #2
	b _0225CF12
_0225CF10:
	mov r2, #0
_0225CF12:
	ldr r0, [sp, #0x20]
	lsl r3, r3, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl ov112_0225CC90
_0225CF22:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0225CEF6
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _0225CEE2
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CF36:
	cmp r5, #0x28
	bhs _0225CFB8
	ldrh r1, [r4, #6]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrh r6, [r4, #6]
	mov r1, #0x1b
	lsr r3, r6, #0x1f
	lsl r2, r6, #0x1b
	sub r2, r2, r3
	ror r2, r1
	mov r1, #0xa
	add r7, r3, r2
	bl sub_020E2178
	str r1, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020E2178
	cmp r7, #0
	bne _0225CF9E
	ldr r2, [r4, #8]
	mov r1, #0x1e
	mul r1, r2
	lsr r4, r1, #2
	mov r2, #6
	mov r5, #0
_0225CF6E:
	add r1, r5, #1
	add r3, r4, #0
	mul r3, r1
	cmp r3, r6
	bls _0225CF80
	ldr r1, _0225CFBC ; =0x0225D824
	lsl r2, r5, #2
	ldr r2, [r1, r2]
	b _0225CF86
_0225CF80:
	add r5, r1, #0
	cmp r1, #4
	blt _0225CF6E
_0225CF86:
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x18]
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl ov112_0225CC90
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CF9E:
	cmp r7, #0x10
	bne _0225CFB8
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x18]
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r2, #3
	lsr r3, r3, #0x18
	bl ov112_0225CC90
_0225CFB8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CFBC: .word 0x0225D824
	thumb_func_end ov112_0225CE88

	thumb_func_start ov112_0225CFC0
ov112_0225CFC0: ; 0x0225CFC0
	push {r3, lr}
	mov r0, #0
	str r0, [sp]
	add r0, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl ov112_0225D08C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CFC0

	thumb_func_start ov112_0225CFD4
ov112_0225CFD4: ; 0x0225CFD4
	bx lr
	; .align 2, 0
	thumb_func_end ov112_0225CFD4

	thumb_func_start ov112_0225CFD8
ov112_0225CFD8: ; 0x0225CFD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r5, #0
	bl ov66_02231C54
	cmp r0, #0
	beq _0225CFFE
	cmp r0, #1
	beq _0225CFF2
	cmp r0, #2
	beq _0225CFF8
	b _0225CFFE
_0225CFF2:
	mov r5, #1
	strh r5, [r4, #2]
	b _0225CFFE
_0225CFF8:
	mov r0, #3
	strh r0, [r4, #2]
	mov r5, #1
_0225CFFE:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov112_0225CFD8

	thumb_func_start ov112_0225D004
ov112_0225D004: ; 0x0225D004
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #4
	bhi _0225D086
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D01C: ; jump table
	.short _0225D086 - _0225D01C - 2 ; case 0
	.short _0225D026 - _0225D01C - 2 ; case 1
	.short _0225D032 - _0225D01C - 2 ; case 2
	.short _0225D058 - _0225D01C - 2 ; case 3
	.short _0225D064 - _0225D01C - 2 ; case 4
_0225D026:
	mov r0, #2
	strh r0, [r4, #2]
	mov r0, #0
	add sp, #4
	strh r0, [r4]
	pop {r3, r4, pc}
_0225D032:
	mov r0, #0
	ldrsh r0, [r4, r0]
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ov112_0225D144
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	cmp r1, #0x20
	blt _0225D086
	add sp, #4
	strh r0, [r4, #2]
	pop {r3, r4, pc}
_0225D058:
	mov r0, #4
	strh r0, [r4, #2]
	mov r0, #0
	add sp, #4
	strh r0, [r4]
	pop {r3, r4, pc}
_0225D064:
	mov r0, #0
	ldrsh r0, [r4, r0]
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ov112_0225D164
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	cmp r1, #0x20
	blt _0225D086
	strh r0, [r4, #2]
_0225D086:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov112_0225D004

	thumb_func_start ov112_0225D08C
ov112_0225D08C: ; 0x0225D08C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #8
	add r6, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r3, [sp, #0x1c]
	str r2, [sp, #0xc]
	add r0, r1, #0
	str r1, [sp, #0x18]
	ldr r0, [r0, #0]
	mov r1, #3
	mov r3, #0x15
	ldr r7, [sp, #0x50]
	bl sub_02019CB8
	mov r5, #0
	str r5, [sp, #0x2c]
_0225D0BA:
	ldr r0, [sp, #0x2c]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_0225D0C4:
	add r0, r6, #0
	add r1, r4, r5
	bl ov66_02231C18
	cmp r0, #0
	beq _0225D12E
	add r0, r6, #0
	add r1, r4, r5
	bl ov66_02231C24
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, r5
	bl ov66_02231C30
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r1, r4, r5
	bl ov66_02231C3C
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r1, r4, r5
	bl ov66_02231C48
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r1, r4, r5
	bl ov66_0222E924
	cmp r7, #2
	bne _0225D10E
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _0225D10E
	mov r1, #0
	b _0225D110
_0225D10E:
	add r1, r7, #0
_0225D110:
	str r1, [sp]
	ldr r1, [sp, #0x28]
	lsl r2, r4, #0x18
	str r1, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x34]
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	lsr r2, r2, #0x18
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov112_0225CCE8
_0225D12E:
	add r4, r4, #1
	cmp r4, #5
	blt _0225D0C4
	ldr r0, [sp, #0x2c]
	add r5, r5, #5
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	blt _0225D0BA
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D08C

	thumb_func_start ov112_0225D144
ov112_0225D144: ; 0x0225D144
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	mov r4, #7
	tst r4, r5
	bne _0225D162
	lsr r5, r5, #3
	mov r4, #1
	tst r4, r5
	bne _0225D15A
	mov r4, #2
	b _0225D15C
_0225D15A:
	mov r4, #0
_0225D15C:
	str r4, [sp]
	bl ov112_0225D08C
_0225D162:
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D144

	thumb_func_start ov112_0225D164
ov112_0225D164: ; 0x0225D164
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	mov r4, #7
	tst r4, r5
	bne _0225D17E
	lsr r4, r5, #3
	mov r5, #1
	tst r4, r5
	beq _0225D178
	mov r5, #0
_0225D178:
	str r5, [sp]
	bl ov112_0225D08C
_0225D17E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D164

	thumb_func_start ov112_0225D180
ov112_0225D180: ; 0x0225D180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #0
_0225D18C:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov66_02231D00
	add r1, r0, #0
	cmp r1, #0x14
	beq _0225D1B0
	ldr r0, [sp]
	bl ov66_0222E924
	cmp r0, #1
	bne _0225D1AC
	mov r0, #9
	strb r0, [r5, r4]
	b _0225D1B0
_0225D1AC:
	mov r0, #5
	strb r0, [r5, r4]
_0225D1B0:
	add r4, r4, #1
	cmp r4, #4
	blt _0225D18C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D180

	thumb_func_start ov112_0225D1B8
ov112_0225D1B8: ; 0x0225D1B8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	lsl r6, r2, #5
	ldr r7, [r1, #0xc]
	str r0, [sp]
	add r5, r4, #0
	add r6, #0xa
_0225D1C6:
	ldr r2, [sp]
	mov r0, #0xf
	ldrb r2, [r2, r4]
	add r1, r6, r5
	mov r3, #4
	lsl r2, r2, #1
	add r2, #0xe0
	add r2, r7, r2
	bl sub_0201DC68
	cmp r0, #0
	bne _0225D1E2
	bl sub_02022974
_0225D1E2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225D1C6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D1B8

	thumb_func_start ov112_0225D1EC
ov112_0225D1EC: ; 0x0225D1EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r7, #3
	add r5, r0, #0
	ldr r6, _0225D2C4 ; =0x0225D804
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r4, #0
	str r0, [sp, #0x20]
	lsl r7, r7, #8
	add r5, #0x60
_0225D204:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r2, r4, #0
	bl ov112_0225D408
	ldrb r0, [r6]
	add r1, r5, #0
	mov r2, #3
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, #7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r3, #1
	ldr r0, [r0, #0]
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r0, #0x20
	str r0, [sp, #0x20]
	add r7, #0x3c
	add r6, r6, #1
	add r5, #0x10
	cmp r4, #3
	blt _0225D204
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #8
	bl sub_02023790
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x14]
	add r1, #0x90
	str r0, [r1, #0]
	mov r1, #5
	ldr r0, [sp, #0x18]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r3, [sp, #0x1c]
	mov r1, #0
	add r2, #0x98
	bl sub_020071EC
	ldr r1, [sp, #0x14]
	mov r2, #4
	add r1, #0x94
	str r0, [r1, #0]
	ldr r1, [sp, #0x14]
	mov r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	mov r3, #0xfa
	ldr r1, [r1, #0xc]
	add r1, #0xee
	bl sub_0201972C
	ldr r1, [sp, #0x14]
	ldr r3, _0225D2C8 ; =0x0000011A
	add r1, #0x98
	ldr r1, [r1, #0]
	mov r0, #0
	ldr r1, [r1, #0xc]
	mov r2, #4
	add r1, #0xee
	bl sub_0201972C
	ldr r1, [sp, #0x14]
	ldr r3, _0225D2CC ; =0x0000013A
	add r1, #0x98
	str r1, [sp, #0x14]
	ldr r1, [r1, #0]
	mov r0, #0
	ldr r1, [r1, #0xc]
	mov r2, #4
	add r1, #0xee
	bl sub_0201972C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D2C4: .word 0x0225D804
_0225D2C8: .word 0x0000011A
_0225D2CC: .word 0x0000013A
	thumb_func_end ov112_0225D1EC

	thumb_func_start ov112_0225D2D0
ov112_0225D2D0: ; 0x0225D2D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r4, r5, #0
	mov r6, #0
	add r4, #0x60
_0225D2EC:
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl ov112_0225D44C
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x20
	cmp r6, #3
	blt _0225D2EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov112_0225D2D0

	thumb_func_start ov112_0225D304
ov112_0225D304: ; 0x0225D304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	add r1, sp, #0x14
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov66_0222E934
	mov r0, #2
	add r4, r6, #0
	ldr r7, _0225D3DC ; =0x0225D810
	str r0, [sp, #0xc]
	add r4, #0x40
_0225D322:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0225D358
	add r0, r4, #0
	bl ov112_0225D4E4
	cmp r0, #1
	bne _0225D358
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	cmp r1, #3
	bge _0225D352
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r3, r4, #0
	str r0, [sp]
	lsl r0, r1, #5
	ldr r1, [r4, #8]
	ldr r2, [r7, #4]
	add r0, r6, r0
	add r3, #0x1c
	bl ov112_0225D460
_0225D352:
	add r0, r4, #0
	bl ov112_0225D4DC
_0225D358:
	ldr r0, [sp, #0xc]
	sub r4, #0x20
	sub r7, r7, #4
	sub r0, r0, #1
	str r0, [sp, #0xc]
	bpl _0225D322
	ldrb r0, [r6]
	cmp r0, #0
	bne _0225D3D6
	add r0, r5, #0
	bl ov66_02231C60
	cmp r0, #1
	bne _0225D3D6
	add r7, sp, #0x14
_0225D376:
	add r0, r5, #0
	bl ov66_02231C78
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r3, r6, #0
	str r0, [sp]
	add r3, #0x90
	ldr r3, [r3, #0]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov66_02231C94
	cmp r0, #1
	bne _0225D3C6
	ldr r3, [sp, #4]
	add r0, sp, #0x10
	add r1, r5, #0
	add r2, r4, #0
	bl ov112_0225D180
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r2, #0x15
	str r0, [sp]
	add r0, r6, #0
	add r6, #0x90
	ldr r1, [r6, #0]
	lsl r2, r2, #4
	add r3, sp, #0x10
	bl ov112_0225D460
	add r0, r5, #0
	bl ov66_02231C04
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D3C6:
	add r0, r5, #0
	bl ov66_02231C04
	add r0, r5, #0
	bl ov66_02231C60
	cmp r0, #1
	beq _0225D376
_0225D3D6:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D3DC: .word 0x0225D810
	thumb_func_end ov112_0225D304

	thumb_func_start ov112_0225D3E0
ov112_0225D3E0: ; 0x0225D3E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r6, #0
	mov r7, #0
	add r4, #0x60
	add r5, r6, #0
_0225D3EC:
	ldrb r0, [r6]
	cmp r0, #1
	bne _0225D3FA
	add r0, r5, #0
	add r1, r4, #0
	bl ov112_0225D4F8
_0225D3FA:
	add r7, r7, #1
	add r6, #0x20
	add r4, #0x10
	add r5, #0x20
	cmp r7, #3
	blt _0225D3EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D3E0

	thumb_func_start ov112_0225D408
ov112_0225D408: ; 0x0225D408
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #8
	add r1, r3, #0
	bl sub_02023790
	str r0, [r5, #8]
	add r0, r6, #7
	strb r0, [r5, #1]
	mov r3, #0
	add r5, #0xc
	str r3, [sp]
	mov r0, #0xb4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r2, #3
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov112_0225D408

	thumb_func_start ov112_0225D44C
ov112_0225D44C: ; 0x0225D44C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020237BC
	add r4, #0xc
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov112_0225D44C

	thumb_func_start ov112_0225D460
ov112_0225D460: ; 0x0225D460
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02023810
	mov r0, #1
	strb r0, [r5]
	mov r2, #0
	strh r2, [r5, #2]
	strh r6, [r5, #4]
	add r1, r7, #0
	bl sub_02002D7C
	strh r0, [r5, #6]
	mov r0, #1
	ldrh r1, [r5, #6]
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r5, #6]
	mov r0, #0x5a
	ldrh r1, [r5, #6]
	lsl r0, r0, #4
	cmp r1, r0
	bls _0225D49C
	bl sub_02022974
_0225D49C:
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #8]
	add r0, #0xc
	mov r1, #1
	bl sub_0201D738
	ldrb r0, [r4]
	ldr r1, [sp, #0x20]
	strb r0, [r5, #0x1c]
	ldrb r0, [r4, #1]
	strb r0, [r5, #0x1d]
	ldrb r0, [r4, #2]
	strb r0, [r5, #0x1e]
	ldrb r0, [r4, #3]
	strb r0, [r5, #0x1f]
	add r0, r5, #0
	ldrb r2, [r5, #1]
	add r0, #0x1c
	bl ov112_0225D1B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D460

	thumb_func_start ov112_0225D4DC
ov112_0225D4DC: ; 0x0225D4DC
	mov r1, #0
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov112_0225D4DC

	thumb_func_start ov112_0225D4E4
ov112_0225D4E4: ; 0x0225D4E4
	ldrh r1, [r0, #2]
	mov r3, #1
	add r2, r1, #1
	ldrh r1, [r0, #4]
	cmp r2, r1
	bgt _0225D4F4
	strh r2, [r0, #2]
	mov r3, #0
_0225D4F4:
	add r0, r3, #0
	bx lr
	thumb_func_end ov112_0225D4E4

	thumb_func_start ov112_0225D4F8
ov112_0225D4F8: ; 0x0225D4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r0, [r5, #6]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x20]
	mul r0, r1
	ldrh r1, [r5, #4]
	bl sub_020E1F6C
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	cmp r4, r0
	bge _0225D522
	mov r0, #0xff
	sub r7, r0, r4
	mov r6, #0
	b _0225D530
_0225D522:
	sub r6, r4, r0
	ldr r0, [sp, #0x20]
	mov r7, #0
	sub r4, r0, r4
	cmp r4, #0xff
	ble _0225D530
	mov r4, #0xff
_0225D530:
	mov r0, #0xff
	str r0, [sp]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r0, #0x5a
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x10
	lsl r1, r7, #0x10
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	mov r3, #0
	lsl r1, r4, #0x10
	str r3, [sp, #0xc]
	lsr r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xf
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, #0x18]
	lsr r2, r2, #0x10
	bl sub_0201AE08
	ldr r0, [sp, #0x1c]
	bl sub_0201A9A4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov112_0225D4F8

	thumb_func_start ov112_0225D57C
ov112_0225D57C: ; 0x0225D57C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r1, #0
	mov r2, #0x70
	str r0, [sp, #0x14]
	bl sub_020D5124
	ldr r2, _0225D6CC ; =0x0000028D
	ldr r3, [sp, #0x1c]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x1c]
	mov r0, #0x80
	bl sub_02023790
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, _0225D6D0 ; =0x0225D968
	ldr r5, _0225D6D4 ; =0x0225D880
	str r0, [sp, #0x28]
	ldr r0, _0225D6D8 ; =0x0225D960
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
_0225D5BC:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldrh r1, [r1]
	ldr r0, [sp, #0x20]
	ldr r2, [r2, #0]
	bl ov112_0225D73C
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x14]
	mov r2, #0
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	ldrb r0, [r5, #6]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldrb r3, [r5]
	ldr r0, [r0, #0]
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	bl sub_0200B1B8
	ldr r0, [sp, #0x34]
	bl sub_02023C5C
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldrb r6, [r5, #8]
	bl sub_02023C3C
	ldr r1, [sp, #0x1c]
	add r0, r0, #1
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	mov r7, #0
	cmp r0, #0
	bls _0225D68A
_0225D620:
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02023C9C
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0225D63A
	cmp r0, #1
	beq _0225D640
	cmp r0, #2
	beq _0225D656
	b _0225D666
_0225D63A:
	ldrb r0, [r5, #7]
	str r0, [sp, #0x2c]
	b _0225D666
_0225D640:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	add r0, r0, #1
	ldrb r1, [r5, #7]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #0x2c]
	b _0225D666
_0225D656:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	ldrb r1, [r5, #7]
	sub r0, r1, r0
	str r0, [sp, #0x2c]
_0225D666:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r4, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x30]
	add r7, r7, #1
	add r6, #0x10
	cmp r7, r0
	blo _0225D620
_0225D68A:
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0201A9A4
	ldr r0, [sp, #0x28]
	add r5, #0x10
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	cmp r0, #4
	blt _0225D5BC
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	ldr r0, [sp, #0x38]
	bl sub_0200B190
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D6CC: .word 0x0000028D
_0225D6D0: .word 0x0225D968
_0225D6D4: .word 0x0225D880
_0225D6D8: .word 0x0225D960
	thumb_func_end ov112_0225D57C

	thumb_func_start ov112_0225D6DC
ov112_0225D6DC: ; 0x0225D6DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r6, #0
	add r4, #0x40
_0225D6E6:
	add r0, r5, #0
	bl sub_0201A8FC
	add r0, r4, #0
	bl ov112_0225D75C
	add r6, r6, #1
	add r5, #0x10
	add r4, #0xc
	cmp r6, #4
	blt _0225D6E6
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov112_0225D6DC

	thumb_func_start ov112_0225D700
ov112_0225D700: ; 0x0225D700
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x40
_0225D708:
	add r0, r5, #0
	bl ov112_0225D784
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #4
	blt _0225D708
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D700

	thumb_func_start ov112_0225D718
ov112_0225D718: ; 0x0225D718
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _0225D726
	bl sub_02022974
_0225D726:
	cmp r4, #0
	bne _0225D72E
	bl sub_02022974
_0225D72E:
	mov r0, #0xc
	add r5, #0x40
	mul r0, r4
	add r0, r5, r0
	bl ov112_0225D778
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D718

	thumb_func_start ov112_0225D73C
ov112_0225D73C: ; 0x0225D73C
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	strb r3, [r0, #2]
	strb r3, [r0, #3]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	strb r3, [r0, #7]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r3, [r0, #0xa]
	strb r3, [r0, #0xb]
	strh r1, [r0, #6]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov112_0225D73C

	thumb_func_start ov112_0225D75C
ov112_0225D75C: ; 0x0225D75C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	bx lr
	thumb_func_end ov112_0225D75C

	thumb_func_start ov112_0225D778
ov112_0225D778: ; 0x0225D778
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov112_0225D778

	thumb_func_start ov112_0225D784
ov112_0225D784: ; 0x0225D784
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0x1c
	bls _0225D794
	mov r0, #0
	strh r0, [r4]
_0225D794:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225D800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0225D7AA
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0225D7AA:
	ldrh r0, [r4, #2]
	cmp r0, #2
	bhs _0225D7BA
	lsl r1, r0, #4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r3, r0, #1
	b _0225D7D0
_0225D7BA:
	cmp r0, #0xe
	bhs _0225D7C2
	mov r3, #0x10
	b _0225D7D0
_0225D7C2:
	sub r0, #0xe
	lsl r0, r0, #4
	mov r1, #0xe
	bl sub_020E1F6C
	mov r1, #0x10
	sub r3, r1, r0
_0225D7D0:
	mov r1, #0xe
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #0x19
	lsl r3, r3, #0x18
	str r0, [sp]
	add r0, sp, #4
	add r1, r4, #4
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0200393C
	add r0, r4, #4
	mov r1, #2
	bl sub_020C2C54
	ldrh r1, [r4, #6]
	add r0, r4, #4
	mov r2, #2
	bl sub_020C00B4
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
_0225D800:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov112_0225D784
	; 0x0225D804

	.incbin "data/overlay112.bin"
