	.include "macros/function.inc"
	.include "overlay094/ov94_0223E46C.inc"

	

	.text


	thumb_func_start ov94_0223E46C
ov94_0223E46C: ; 0x0223E46C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223E9B8
	ldr r0, [r4, #4]
	bl ov94_0223E598
	add r0, r4, #0
	bl ov94_0223E6B8
	add r0, r4, #0
	bl ov94_0223E7D4
	add r0, r4, #0
	bl ov94_0223E770
	ldr r1, _0223E538 ; =0x00000F6C
	ldr r2, _0223E53C ; =0x00000B94
	add r0, r4, r1
	add r1, #0xe0
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl ov94_0223F9FC
	mov r3, #0
	ldr r0, _0223E540 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _0223E544 ; =0x00000B98
	ldr r0, _0223E548 ; =0x00000F7C
	ldr r1, [r4, r2]
	sub r2, #0x1a
	ldrsh r2, [r4, r2]
	add r0, r4, r0
	bl ov94_02242158
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E540 ; =0x00010200
	ldr r2, _0223E53C ; =0x00000B94
	str r0, [sp, #8]
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223E54C ; =0x00000F9C
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov94_02242204
	ldr r1, _0223E550 ; =0x00000B81
	mov r2, #1
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov94_02242970
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223E540 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, _0223E53C ; =0x00000B94
	ldr r0, _0223E554 ; =0x00000FBC
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov94_022422B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E540 ; =0x00010200
	ldr r3, _0223E558 ; =0x0000105C
	str r0, [sp, #8]
	ldr r2, _0223E55C ; =0x00000BA4
	add r0, r4, r3
	ldr r1, [r4, r2]
	sub r2, #0x10
	add r3, #0xf4
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov94_0224218C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223E538: .word 0x00000F6C
_0223E53C: .word 0x00000B94
_0223E540: .word 0x00010200
_0223E544: .word 0x00000B98
_0223E548: .word 0x00000F7C
_0223E54C: .word 0x00000F9C
_0223E550: .word 0x00000B81
_0223E554: .word 0x00000FBC
_0223E558: .word 0x0000105C
_0223E55C: .word 0x00000BA4
	thumb_func_end ov94_0223E46C

	thumb_func_start ov94_0223E560
ov94_0223E560: ; 0x0223E560
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223E570 ; =0x02246860
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0223E570: .word 0x02246860
	thumb_func_end ov94_0223E560

	thumb_func_start ov94_0223E574
ov94_0223E574: ; 0x0223E574
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223E7C4
	add r0, r4, #0
	bl ov94_0223EA20
	add r0, r4, #0
	bl ov94_0223E968
	ldr r0, [r4, #4]
	bl ov94_0223E684
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0223E574

	thumb_func_start ov94_0223E598
ov94_0223E598: ; 0x0223E598
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0223E674 ; =0x02245DC8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
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
	ldr r5, _0223E678 ; =0x02245DAC
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
	ldr r5, _0223E67C ; =0x02245DE4
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
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0223E680 ; =0x02245E00
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
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0223E674: .word 0x02245DC8
_0223E678: .word 0x02245DAC
_0223E67C: .word 0x02245DE4
_0223E680: .word 0x02245E00
	thumb_func_end ov94_0223E598

	thumb_func_start ov94_0223E684
ov94_0223E684: ; 0x0223E684
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
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
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_0223E684

	thumb_func_start ov94_0223E6B8
ov94_0223E6B8: ; 0x0223E6B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xd
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1a
	add r2, r5, #0
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_0223E6B8

	thumb_func_start ov94_0223E770
ov94_0223E770: ; 0x0223E770
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223E7C0 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E80
	bl sub_02039734
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223E7C0: .word 0x00000D54
	thumb_func_end ov94_0223E770

	thumb_func_start ov94_0223E7C4
ov94_0223E7C4: ; 0x0223E7C4
	mov r1, #0x37
	lsl r1, r1, #6
	ldr r3, _0223E7D0 ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223E7D0: .word sub_02021BD4
	thumb_func_end ov94_0223E7C4

	thumb_func_start ov94_0223E7D4
ov94_0223E7D4: ; 0x0223E7D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r3, #1
	str r0, [sp, #0x14]
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223E944 ; =0x00000F1C
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223E944 ; =0x00000F1C
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	mov r2, #0
	ldr r0, _0223E948 ; =0x000F0D00
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _0223E944 ; =0x00000F1C
	ldr r0, [sp, #0x14]
	ldr r3, _0223E94C ; =0x00000BB4
	add r0, r0, r1
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r3]
	mov r3, #1
	bl ov94_022458CC
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223E950 ; =0x00000EFC
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223E950 ; =0x00000EFC
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _0223E954 ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223E958 ; =0x02245D94
	mov r7, #0
	mov r6, #1
	add r5, r0, r1
_0223E860:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r6, #0x16
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #6
	blt _0223E860
	ldr r1, _0223E954 ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223E95C ; =0x02245D84
	add r0, r0, r1
	mov r5, #0
	mov r6, #0x96
	str r0, [sp, #0x18]
_0223E8AE:
	add r0, r5, #6
	lsl r7, r0, #4
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x18]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	add r1, r1, r7
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r0, r7
	bl sub_0201ADA4
	add r5, r5, #1
	add r6, #0x10
	add r4, r4, #4
	cmp r5, #2
	blt _0223E8AE
	ldr r1, _0223E960 ; =0x0000104C
	ldr r0, [sp, #0x14]
	ldr r4, _0223E964 ; =0x02245D8C
	mov r7, #0
	mov r6, #0x85
	add r5, r0, r1
_0223E900:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r6, #0x38
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #2
	blt _0223E900
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E944: .word 0x00000F1C
_0223E948: .word 0x000F0D00
_0223E94C: .word 0x00000BB4
_0223E950: .word 0x00000EFC
_0223E954: .word 0x00000F6C
_0223E958: .word 0x02245D94
_0223E95C: .word 0x02245D84
_0223E960: .word 0x0000104C
_0223E964: .word 0x02245D8C
	thumb_func_end ov94_0223E7D4

	thumb_func_start ov94_0223E968
ov94_0223E968: ; 0x0223E968
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223E9A8 ; =0x00000EFC
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223E9AC ; =0x00000F1C
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223E9B0 ; =0x00000F6C
	mov r4, #0
	add r5, r6, r0
_0223E982:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0223E982
	ldr r0, _0223E9B4 ; =0x0000104C
	mov r4, #0
	add r5, r6, r0
_0223E996:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _0223E996
	pop {r4, r5, r6, pc}
	nop
_0223E9A8: .word 0x00000EFC
_0223E9AC: .word 0x00000F1C
_0223E9B0: .word 0x00000F6C
_0223E9B4: .word 0x0000104C
	thumb_func_end ov94_0223E968

	thumb_func_start ov94_0223E9B8
ov94_0223E9B8: ; 0x0223E9B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x29
	bl sub_0200B1EC
	ldr r1, _0223EA18 ; =0x00000BB4
	str r0, [r4, r1]
	mov r0, #0x3e
	mov r1, #0x30
	bl sub_02018144
	ldr r1, _0223EA1C ; =0x00001084
	mov r2, #0x30
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r2, _0223EA1C ; =0x00001084
	mov r0, #0x3e
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x1c
	bl ov94_02242524
	ldr r1, _0223EA1C ; =0x00001084
	ldr r1, [r4, r1]
	str r0, [r1, #0x18]
	mov r0, #0x3e
	bl ov94_02242548
	ldr r1, _0223EA1C ; =0x00001084
	ldr r2, [r4, r1]
	add r1, #0x38
	str r0, [r2, #0x14]
	add r0, r4, r1
	bl ov94_02242AAC
	pop {r4, pc}
	; .align 2, 0
_0223EA18: .word 0x00000BB4
_0223EA1C: .word 0x00001084
	thumb_func_end ov94_0223E9B8

	thumb_func_start ov94_0223EA20
ov94_0223EA20: ; 0x0223EA20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223EA54 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	bl sub_020181C4
	ldr r0, _0223EA54 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x18]
	bl sub_020181C4
	ldr r0, _0223EA54 ; =0x00001084
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223EA58 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_0223EA54: .word 0x00001084
_0223EA58: .word 0x00000BB4
	thumb_func_end ov94_0223EA20

	thumb_func_start ov94_0223EA5C
ov94_0223EA5C: ; 0x0223EA5C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EA80 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EA80: .word 0x00000F0F
	thumb_func_end ov94_0223EA5C

	thumb_func_start ov94_0223EA84
ov94_0223EA84: ; 0x0223EA84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223EFAC
	ldr r0, _0223EBB0 ; =0x021BF67C
	mov r2, #1
	ldr r1, [r0, #0x48]
	add r0, r1, #0
	tst r0, r2
	beq _0223EB42
	add r0, r4, #0
	bl ov94_0223EF94
	cmp r0, #5
	bls _0223EAA4
	b _0223EBAC
_0223EAA4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EAB0: ; jump table
	.short _0223EABC - _0223EAB0 - 2 ; case 0
	.short _0223EAC8 - _0223EAB0 - 2 ; case 1
	.short _0223EB02 - _0223EAB0 - 2 ; case 2
	.short _0223EB0E - _0223EAB0 - 2 ; case 3
	.short _0223EB1A - _0223EAB0 - 2 ; case 4
	.short _0223EB20 - _0223EAB0 - 2 ; case 5
_0223EABC:
	mov r0, #3
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EAC8:
	ldr r0, _0223EBB8 ; =0x00000B7E
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _0223EAF6
	mov r1, #0x12
	bl sub_020759F0
	ldr r1, _0223EBBC ; =0x00001084
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r1, [r4, r1]
	ldr r0, _0223EBB8 ; =0x00000B7E
	ldr r1, [r1, #0x20]
	add r0, r4, r0
	bl ov94_02241B80
	cmp r0, #0
	beq _0223EAF6
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223EAF6:
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB02:
	mov r0, #0xb
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB0E:
	mov r0, #0xe
	str r0, [r4, #0x2c]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB1A:
	mov r0, #0x11
	str r0, [r4, #0x2c]
	b _0223EBAC
_0223EB20:
	ldr r0, _0223EBC0 ; =0x00000F0F
	mov r1, #0xf
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x19
	bl ov94_0223C3F4
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB42:
	mov r0, #2
	tst r0, r1
	beq _0223EB68
	ldr r0, _0223EBC0 ; =0x00000F0F
	mov r1, #0xf
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x19
	bl ov94_0223C3F4
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
	b _0223EBAC
_0223EB68:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov94_02244214
	add r5, r0, #0
	ldr r0, _0223EBC4 ; =0x00001092
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223EBAC
	cmp r5, #0
	blt _0223EBAC
	add r0, r5, #1
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0223EBC8 ; =0x00000ED4
	ldr r0, [r1, r0]
	lsl r1, r5, #2
	add r1, #0x10
	bl sub_02021D6C
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0x12
	lsl r0, r0, #4
	str r5, [r4, r0]
	ldr r0, _0223EBB4 ; =0x000005DC
	bl sub_02005748
_0223EBAC:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EBB0: .word 0x021BF67C
_0223EBB4: .word 0x000005DC
_0223EBB8: .word 0x00000B7E
_0223EBBC: .word 0x00001084
_0223EBC0: .word 0x00000F0F
_0223EBC4: .word 0x00001092
_0223EBC8: .word 0x00000ED4
	thumb_func_end ov94_0223EA84

	thumb_func_start ov94_0223EBCC
ov94_0223EBCC: ; 0x0223EBCC
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _0223EC60 ; =0x00000B7E
	add r4, r0, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bne _0223EBFA
	ldr r1, _0223EC64 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0xc
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EC68 ; =0x000005F3
	bl sub_02005748
	b _0223EC58
_0223EBFA:
	ldr r2, _0223EC6C ; =0x00001150
	add r1, r3, #6
	add r0, r4, r3
	add r3, #0xe
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, r4, r1
	bl ov94_0223FB0C
	cmp r0, #0
	beq _0223EC32
	ldr r0, _0223EC64 ; =0x00000F0F
	mov r1, #0x21
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EC68 ; =0x000005F3
	bl sub_02005748
	b _0223EC58
_0223EC32:
	ldr r0, _0223EC70 ; =0x000005FF
	bl sub_02005748
	ldr r0, _0223EC64 ; =0x00000F0F
	mov r1, #0xd
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x12
	bl ov94_0223C3F4
	add r0, r4, #0
	bl ov94_022442E4
_0223EC58:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EC60: .word 0x00000B7E
_0223EC64: .word 0x00000F0F
_0223EC68: .word 0x000005F3
_0223EC6C: .word 0x00001150
_0223EC70: .word 0x000005FF
	thumb_func_end ov94_0223EBCC

	thumb_func_start ov94_0223EC74
ov94_0223EC74: ; 0x0223EC74
	push {r3, r4, lr}
	sub sp, #0x2c
	cmp r1, #1
	ldr r0, [r0, #0]
	bne _0223EC86
	ldr r0, [r0, #0]
	bl sub_0202DA9C
	b _0223EC8C
_0223EC86:
	ldr r0, [r0, #0]
	bl sub_0202DA8C
_0223EC8C:
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x1c]
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x20]
	lsr r1, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0xc
	add r1, sp, #0
	bl ov4_021D806C
	add r0, sp, #0xc
	bl RTC_ConvertDateToDay
	add r4, r0, #0
	add r0, sp, #0x1c
	bl RTC_ConvertDateToDay
	sub r0, r4, r0
	bmi _0223ECCE
	cmp r0, #3
	bge _0223ECCE
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, pc}
_0223ECCE:
	mov r0, #0
	add sp, #0x2c
	pop {r3, r4, pc}
	thumb_func_end ov94_0223EC74

	thumb_func_start ov94_0223ECD4
ov94_0223ECD4: ; 0x0223ECD4
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #1
	add r5, r0, #0
	mov r4, #3
	bl ov94_0223EC74
	cmp r0, #0
	beq _0223ECE8
	add r4, r4, #2
_0223ECE8:
	add r0, r5, #0
	mov r1, #0
	bl ov94_0223EC74
	cmp r0, #0
	beq _0223ECF6
	add r4, r4, #2
_0223ECF6:
	ldr r0, _0223ED88 ; =0x00001150
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223ED10
	ldr r0, _0223ED8C ; =0x00000B7E
	mov r2, #0x95
	lsl r2, r2, #2
	add r0, r5, r0
	add r1, r4, #0
	add r2, r5, r2
	bl ov94_0223B9B0
	b _0223ED4E
_0223ED10:
	add r0, sp, #0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldr r1, _0223ED8C ; =0x00000B7E
	add r0, sp, #0
	ldrsh r2, [r5, r1]
	strh r2, [r0]
	add r2, r1, #2
	ldrsb r2, [r5, r2]
	strb r2, [r0, #2]
	add r2, r1, #3
	ldrsb r2, [r5, r2]
	strb r2, [r0, #3]
	add r2, r1, #4
	ldrsb r2, [r5, r2]
	add r1, r1, #5
	strb r2, [r0, #4]
	ldrsb r1, [r5, r1]
	strb r1, [r0, #5]
	ldr r1, _0223ED88 ; =0x00001150
	strb r4, [r0, #6]
	ldr r1, [r5, r1]
	strb r1, [r0, #7]
	mov r1, #0x95
	lsl r1, r1, #2
	add r0, sp, #0
	add r1, r5, r1
	bl ov94_0223BA24
_0223ED4E:
	ldr r1, _0223ED8C ; =0x00000B7E
	ldrh r2, [r5, r1]
	add r0, r1, #6
	strh r2, [r5, r0]
	add r0, r1, #2
	ldrh r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	strh r2, [r5, r0]
	add r0, r1, #4
	ldrh r2, [r5, r0]
	add r0, r1, #0
	add r0, #0xa
	strh r2, [r5, r0]
	ldr r2, _0223ED88 ; =0x00001150
	add r1, #0xe
	ldr r0, [r5, r2]
	sub r2, #0xbe
	str r0, [r5, r1]
	ldr r0, _0223ED90 ; =0x00001484
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x13
	str r0, [r5, #0x2c]
	strh r1, [r5, r2]
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223ED88: .word 0x00001150
_0223ED8C: .word 0x00000B7E
_0223ED90: .word 0x00001484
	thumb_func_end ov94_0223ECD4

	thumb_func_start ov94_0223ED94
ov94_0223ED94: ; 0x0223ED94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _0223EE1C
	bl ov94_0223B7D8
	add r5, r0, #0
	ldr r0, _0223EE38 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x16
	bhi _0223EE32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EDC0: ; jump table
	.short _0223EE16 - _0223EDC0 - 2 ; case 0
	.short _0223EE0A - _0223EDC0 - 2 ; case 1
	.short _0223EE10 - _0223EDC0 - 2 ; case 2
	.short _0223EE16 - _0223EDC0 - 2 ; case 3
	.short _0223EE32 - _0223EDC0 - 2 ; case 4
	.short _0223EE32 - _0223EDC0 - 2 ; case 5
	.short _0223EE32 - _0223EDC0 - 2 ; case 6
	.short _0223EE32 - _0223EDC0 - 2 ; case 7
	.short _0223EE32 - _0223EDC0 - 2 ; case 8
	.short _0223EE32 - _0223EDC0 - 2 ; case 9
	.short _0223EE32 - _0223EDC0 - 2 ; case 10
	.short _0223EE32 - _0223EDC0 - 2 ; case 11
	.short _0223EE32 - _0223EDC0 - 2 ; case 12
	.short _0223EE0A - _0223EDC0 - 2 ; case 13
	.short _0223EE32 - _0223EDC0 - 2 ; case 14
	.short _0223EDEE - _0223EDC0 - 2 ; case 15
	.short _0223EDEE - _0223EDC0 - 2 ; case 16
	.short _0223EDEE - _0223EDC0 - 2 ; case 17
	.short _0223EDEE - _0223EDC0 - 2 ; case 18
	.short _0223EDEE - _0223EDC0 - 2 ; case 19
	.short _0223EDEE - _0223EDC0 - 2 ; case 20
	.short _0223EDEE - _0223EDC0 - 2 ; case 21
	.short _0223EDEE - _0223EDC0 - 2 ; case 22
_0223EDEE:
	mov r0, #0x47
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r0, _0223EE3C ; =0x000005FF
	bl sub_020057A4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov94_02244234
	mov r0, #0x14
	str r0, [r4, #0x2c]
	b _0223EE32
_0223EE0A:
	mov r0, #0x1d
	str r0, [r4, #0x2c]
	b _0223EE32
_0223EE10:
	bl sub_02038A0C
	b _0223EE32
_0223EE16:
	mov r0, #0x16
	str r0, [r4, #0x2c]
	b _0223EE32
_0223EE1C:
	ldr r0, _0223EE38 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223EE32
	bl sub_02038A0C
_0223EE32:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_0223EE38: .word 0x00001484
_0223EE3C: .word 0x000005FF
	thumb_func_end ov94_0223ED94

	thumb_func_start ov94_0223EE40
ov94_0223EE40: ; 0x0223EE40
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x47
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	ldr r1, _0223EE94 ; =0x00000F0F
	bne _0223EE70
	str r1, [sp]
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EE98 ; =0x000005F3
	bl sub_02005748
	b _0223EE8E
_0223EE70:
	str r1, [sp]
	mov r1, #0x1e
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x15
	bl ov94_0223C3F4
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0223EE8E:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EE94: .word 0x00000F0F
_0223EE98: .word 0x000005F3
	thumb_func_end ov94_0223EE40

	thumb_func_start ov94_0223EE9C
ov94_0223EE9C: ; 0x0223EE9C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x42
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	add r2, r2, #1
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #0x2d
	ble _0223EED0
	ldr r1, _0223EED8 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x20
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EEDC ; =0x00001092
	mov r1, #1
	strh r1, [r4, r0]
_0223EED0:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EED8: .word 0x00000F0F
_0223EEDC: .word 0x00001092
	thumb_func_end ov94_0223EE9C

	thumb_func_start ov94_0223EEE0
ov94_0223EEE0: ; 0x0223EEE0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF10 ; =0x00000B84
	add r4, r0, #0
	mov r3, #0
	strh r3, [r4, r1]
	ldr r1, _0223EF14 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x26
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _0223EF18 ; =0x000005F3
	bl sub_02005748
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EF10: .word 0x00000B84
_0223EF14: .word 0x00000F0F
_0223EF18: .word 0x000005F3
	thumb_func_end ov94_0223EEE0

	thumb_func_start ov94_0223EF1C
ov94_0223EF1C: ; 0x0223EF1C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF50 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x93
	mov r2, #4
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0x1e
	bl ov94_0223C3F4
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	ldr r0, _0223EF54 ; =0x000005F3
	bl sub_02005748
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EF50: .word 0x00000F0F
_0223EF54: .word 0x000005F3
	thumb_func_end ov94_0223EF1C

	thumb_func_start ov94_0223EF58
ov94_0223EF58: ; 0x0223EF58
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF8C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x98
	mov r2, #4
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #2
	bl ov94_0223C3F4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	ldr r0, _0223EF90 ; =0x000005F3
	bl sub_02005748
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EF8C: .word 0x00000F0F
_0223EF90: .word 0x000005F3
	thumb_func_end ov94_0223EF58

	thumb_func_start ov94_0223EF94
ov94_0223EF94: ; 0x0223EF94
	ldr r1, _0223EFA8 ; =0x00001084
	ldr r1, [r0, r1]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223EFA2
	ldr r0, [r1, #0x28]
	bx lr
_0223EFA2:
	ldr r0, [r1, #0x2c]
	add r0, r0, #4
	bx lr
	; .align 2, 0
_0223EFA8: .word 0x00001084
	thumb_func_end ov94_0223EF94

	thumb_func_start ov94_0223EFAC
ov94_0223EFAC: ; 0x0223EFAC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223F094 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0223EFEE
	ldr r0, _0223F098 ; =0x00001084
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223EFD8
	ldr r0, [r1, #0x28]
	cmp r0, #0
	ble _0223F064
	sub r0, r0, #1
	str r0, [r1, #0x28]
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
	b _0223F064
_0223EFD8:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0223EFE4
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223EFE4:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x2c]
	b _0223F064
_0223EFEE:
	mov r1, #0x80
	tst r1, r0
	beq _0223F026
	ldr r0, _0223F098 ; =0x00001084
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223F010
	ldr r0, [r1, #0x28]
	cmp r0, #3
	bge _0223F064
	add r0, r0, #1
	str r0, [r1, #0x28]
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
	b _0223F064
_0223F010:
	ldr r0, [r1, #0x2c]
	cmp r0, #1
	beq _0223F01C
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223F01C:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #1
	ldr r0, [r4, r0]
	str r1, [r0, #0x2c]
	b _0223F064
_0223F026:
	mov r1, #0x10
	tst r1, r0
	beq _0223F046
	ldr r0, _0223F098 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #1
	beq _0223F03C
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223F03C:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #1
	ldr r0, [r4, r0]
	str r1, [r0, #0x24]
	b _0223F064
_0223F046:
	mov r1, #0x20
	tst r0, r1
	beq _0223F064
	ldr r0, _0223F098 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0223F05C
	ldr r0, _0223F09C ; =0x000005DC
	bl sub_02005748
_0223F05C:
	ldr r0, _0223F098 ; =0x00001084
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x24]
_0223F064:
	add r0, r4, #0
	bl ov94_0223EF94
	lsl r1, r0, #2
	ldr r0, _0223F0A0 ; =0x02246848
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	bl ov94_0223EF94
	lsl r1, r0, #2
	ldr r0, _0223F0A4 ; =0x0224684A
	ldrh r0, [r0, r1]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223F094: .word 0x021BF67C
_0223F098: .word 0x00001084
_0223F09C: .word 0x000005DC
_0223F0A0: .word 0x02246848
_0223F0A4: .word 0x0224684A
	thumb_func_end ov94_0223EFAC

	thumb_func_start ov94_0223F0A8
ov94_0223F0A8: ; 0x0223F0A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223F0A8

	thumb_func_start ov94_0223F0D0
ov94_0223F0D0: ; 0x0223F0D0
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F148 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #9
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #4
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F14C ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _0223F14C ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xea
	ldr r1, _0223F150 ; =0x00000F4C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _0223F150 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0223F148: .word 0x00000F0F
_0223F14C: .word 0x00000F3C
_0223F150: .word 0x00000F4C
	thumb_func_end ov94_0223F0D0

	thumb_func_start ov94_0223F154
ov94_0223F154: ; 0x0223F154
	push {r4, lr}
	ldr r3, _0223F17C ; =0x00000B94
	add r4, r0, #0
	ldr r1, _0223F180 ; =0x0000106C
	ldr r2, _0223F184 ; =0x00000F3C
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl ov94_022426A8
	ldr r1, _0223F188 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F18C ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F17C: .word 0x00000B94
_0223F180: .word 0x0000106C
_0223F184: .word 0x00000F3C
_0223F188: .word 0x00001078
_0223F18C: .word 0x0000FFFF
	thumb_func_end ov94_0223F154

	thumb_func_start ov94_0223F190
ov94_0223F190: ; 0x0223F190
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F240 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	cmp r0, #9
	bhi _0223F1C6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F1B2: ; jump table
	.short _0223F23A - _0223F1B2 - 2 ; case 0
	.short _0223F1D0 - _0223F1B2 - 2 ; case 1
	.short _0223F1D0 - _0223F1B2 - 2 ; case 2
	.short _0223F1D0 - _0223F1B2 - 2 ; case 3
	.short _0223F1D0 - _0223F1B2 - 2 ; case 4
	.short _0223F1D0 - _0223F1B2 - 2 ; case 5
	.short _0223F1D0 - _0223F1B2 - 2 ; case 6
	.short _0223F1D0 - _0223F1B2 - 2 ; case 7
	.short _0223F1D0 - _0223F1B2 - 2 ; case 8
	.short _0223F1D0 - _0223F1B2 - 2 ; case 9
_0223F1C6:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223F1F4
	b _0223F23A
_0223F1D0:
	ldr r0, _0223F244 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _0223F248 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F24C ; =0x000005DC
	bl sub_02005748
	mov r0, #6
	str r0, [r4, #0x2c]
	b _0223F23A
_0223F1F4:
	ldr r0, _0223F244 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _0223F248 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F250 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F254 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, _0223F250 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F258 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F24C ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0x2c]
_0223F23A:
	mov r0, #3
	pop {r4, pc}
	nop
_0223F240: .word 0x00001078
_0223F244: .word 0x00001084
_0223F248: .word 0x0000106C
_0223F24C: .word 0x000005DC
_0223F250: .word 0x00000F3C
_0223F254: .word 0x00000EFC
_0223F258: .word 0x00000F4C
	thumb_func_end ov94_0223F190

	thumb_func_start ov94_0223F25C
ov94_0223F25C: ; 0x0223F25C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r3, _0223F29C ; =0x00000B98
	add r4, r0, #0
	ldr r1, [r4, r3]
	sub r3, r3, #4
	str r1, [sp]
	ldr r1, _0223F2A0 ; =0x00001084
	ldr r2, [r4, r1]
	sub r1, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0]
	add r1, r4, r1
	ldr r2, [r2, #0x10]
	str r2, [sp, #8]
	ldr r2, _0223F2A4 ; =0x00000F4C
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov94_022427C0
	ldr r1, _0223F2A8 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F2AC ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #7
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223F29C: .word 0x00000B98
_0223F2A0: .word 0x00001084
_0223F2A4: .word 0x00000F4C
_0223F2A8: .word 0x00001078
_0223F2AC: .word 0x0000FFFF
	thumb_func_end ov94_0223F25C

	thumb_func_start ov94_0223F2B0
ov94_0223F2B0: ; 0x0223F2B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223F3EC ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0223F2D8
	add r0, r0, #1
	cmp r5, r0
	bne _0223F2D6
	b _0223F3E4
_0223F2D6:
	b _0223F31E
_0223F2D8:
	ldr r0, _0223F3F0 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _0223F3F4 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F3F8 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F3FC ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	str r0, [r4, #0x2c]
	ldr r0, _0223F3F0 ; =0x00001084
	ldr r3, [r4, r0]
	add r0, #0x38
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
	b _0223F3E4
_0223F31E:
	ldr r0, _0223F3F0 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _0223F3F4 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _0223F400 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F3F8 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _0223F400 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F3F8 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _0223F404 ; =0x00000B7E
	strh r5, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _0223F3FC ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223F408 ; =0x00000F7C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, _0223F40C ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _0223F410 ; =0x00000B98
	ldr r0, _0223F408 ; =0x00000F7C
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r2, r5, #0
	bl ov94_02242158
	add r0, r5, #0
	mov r1, #0x12
	bl sub_020759F0
	ldr r1, _0223F3F0 ; =0x00001084
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r3, [r4, r1]
	add r1, #0x38
	add r0, r4, r1
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
	ldr r1, _0223F3F0 ; =0x00001084
	ldr r0, _0223F404 ; =0x00000B7E
	ldr r1, [r4, r1]
	add r0, r4, r0
	ldr r1, [r1, #0x20]
	bl ov94_02241B80
	cmp r0, #0
	beq _0223F3E4
	ldr r0, _0223F414 ; =0x00000F9C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223F40C ; =0x00010200
	ldr r2, _0223F418 ; =0x00000B94
	str r0, [sp, #8]
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223F414 ; =0x00000F9C
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov94_02242204
_0223F3E4:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F3EC: .word 0x00001078
_0223F3F0: .word 0x00001084
_0223F3F4: .word 0x0000106C
_0223F3F8: .word 0x00000F4C
_0223F3FC: .word 0x000005DC
_0223F400: .word 0x00000F3C
_0223F404: .word 0x00000B7E
_0223F408: .word 0x00000F7C
_0223F40C: .word 0x00010200
_0223F410: .word 0x00000B98
_0223F414: .word 0x00000F9C
_0223F418: .word 0x00000B94
	thumb_func_end ov94_0223F2B0

	thumb_func_start ov94_0223F41C
ov94_0223F41C: ; 0x0223F41C
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F46C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #9
	bl ov94_0223C3F4
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F470 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _0223F470 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F46C: .word 0x00000F0F
_0223F470: .word 0x00000F3C
	thumb_func_end ov94_0223F41C

	thumb_func_start ov94_0223F474
ov94_0223F474: ; 0x0223F474
	push {r4, lr}
	ldr r2, _0223F49C ; =0x00000B94
	add r4, r0, #0
	ldr r0, _0223F4A0 ; =0x0000106C
	ldr r1, _0223F4A4 ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	bl ov94_02242840
	ldr r1, _0223F4A8 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F4AC ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F49C: .word 0x00000B94
_0223F4A0: .word 0x0000106C
_0223F4A4: .word 0x00000F3C
_0223F4A8: .word 0x00001078
_0223F4AC: .word 0x0000FFFF
	thumb_func_end ov94_0223F474

	thumb_func_start ov94_0223F4B0
ov94_0223F4B0: ; 0x0223F4B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223F580 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #2
	bhi _0223F4D8
	cmp r4, #0
	beq _0223F51C
	cmp r4, #1
	beq _0223F51C
	cmp r4, #2
	beq _0223F51C
	b _0223F578
_0223F4D8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0223F578
	ldr r0, _0223F580 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F584 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F588 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F58C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223F588 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F590 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223F578
_0223F51C:
	ldr r0, _0223F580 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F584 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F588 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F588 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F590 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x2e
	add r1, r4, #1
	lsl r0, r0, #6
	strb r1, [r5, r0]
	ldr r0, _0223F594 ; =0x00000F9C
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223F598 ; =0x00010200
	ldr r2, _0223F59C ; =0x00000B94
	str r0, [sp, #8]
	ldr r1, [r5, r2]
	sub r2, #0x14
	ldr r0, _0223F594 ; =0x00000F9C
	ldrsb r2, [r5, r2]
	add r0, r5, r0
	mov r3, #1
	bl ov94_02242204
_0223F578:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F580: .word 0x00001078
_0223F584: .word 0x0000106C
_0223F588: .word 0x00000F3C
_0223F58C: .word 0x00000EFC
_0223F590: .word 0x000005DC
_0223F594: .word 0x00000F9C
_0223F598: .word 0x00010200
_0223F59C: .word 0x00000B94
	thumb_func_end ov94_0223F4B0

	thumb_func_start ov94_0223F5A0
ov94_0223F5A0: ; 0x0223F5A0
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F5F0 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xb
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F5F4 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _0223F5F4 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F5F0: .word 0x00000F0F
_0223F5F4: .word 0x00000F3C
	thumb_func_end ov94_0223F5A0

	thumb_func_start ov94_0223F5F8
ov94_0223F5F8: ; 0x0223F5F8
	push {r4, lr}
	ldr r2, _0223F624 ; =0x00000B94
	add r4, r0, #0
	ldr r0, _0223F628 ; =0x0000106C
	ldr r1, _0223F62C ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	mov r3, #1
	bl ov94_022428B0
	ldr r1, _0223F630 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F634 ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223F624: .word 0x00000B94
_0223F628: .word 0x0000106C
_0223F62C: .word 0x00000F3C
_0223F630: .word 0x00001078
_0223F634: .word 0x0000FFFF
	thumb_func_end ov94_0223F5F8

	thumb_func_start ov94_0223F638
ov94_0223F638: ; 0x0223F638
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223F704 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #0xb
	beq _0223F662
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0223F662
	add r0, r0, #1
	cmp r4, r0
	beq _0223F6FC
	b _0223F69E
_0223F662:
	ldr r0, _0223F704 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F708 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F70C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F710 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223F70C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F714 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223F6FC
_0223F69E:
	ldr r0, _0223F704 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F708 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F70C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F70C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F714 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223F718 ; =0x00000B7E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov94_02242934
	ldr r0, _0223F71C ; =0x00000FBC
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, _0223F720 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, _0223F724 ; =0x00000B94
	ldr r0, _0223F71C ; =0x00000FBC
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r4, #0
	bl ov94_022422B8
_0223F6FC:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F704: .word 0x00001078
_0223F708: .word 0x0000106C
_0223F70C: .word 0x00000F3C
_0223F710: .word 0x00000EFC
_0223F714: .word 0x000005DC
_0223F718: .word 0x00000B7E
_0223F71C: .word 0x00000FBC
_0223F720: .word 0x00010200
_0223F724: .word 0x00000B94
	thumb_func_end ov94_0223F638

	thumb_func_start ov94_0223F728
ov94_0223F728: ; 0x0223F728
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223F778 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa9
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xf
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xb6
	ldr r1, _0223F77C ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _0223F77C ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F778: .word 0x00000F0F
_0223F77C: .word 0x00000F3C
	thumb_func_end ov94_0223F728

	thumb_func_start ov94_0223F780
ov94_0223F780: ; 0x0223F780
	push {r4, lr}
	ldr r3, _0223F7AC ; =0x00000BA4
	add r4, r0, #0
	ldr r0, _0223F7B0 ; =0x0000106C
	ldr r1, _0223F7B4 ; =0x00000F3C
	ldr r2, [r4, r3]
	sub r3, #0x10
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, r1
	bl ov94_022429B4
	ldr r1, _0223F7B8 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _0223F7BC ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0x10
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F7AC: .word 0x00000BA4
_0223F7B0: .word 0x0000106C
_0223F7B4: .word 0x00000F3C
_0223F7B8: .word 0x00001078
_0223F7BC: .word 0x0000FFFF
	thumb_func_end ov94_0223F780

	thumb_func_start ov94_0223F7C0
ov94_0223F7C0: ; 0x0223F7C0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223F890 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223F888
	sub r0, r0, #1
	cmp r4, r0
	beq _0223F7EE
	ldr r0, _0223F894 ; =0x02245FD4
	ldr r0, [r0, #0]
	add r0, r0, #1
	cmp r4, r0
	bne _0223F82A
_0223F7EE:
	ldr r0, _0223F890 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F898 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F89C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F8A0 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _0223F89C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F8A4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223F888
_0223F82A:
	ldr r0, _0223F890 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223F898 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223F89C ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223F89C ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223F8A4 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r1, r4, #0
	bl ov94_02242A44
	ldr r0, _0223F8A8 ; =0x0000105C
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223F8AC ; =0x00010200
	ldr r3, _0223F8A8 ; =0x0000105C
	str r0, [sp, #8]
	ldr r2, _0223F8B0 ; =0x00000BA4
	add r0, r5, r3
	ldr r1, [r5, r2]
	sub r2, #0x10
	add r3, #0xf4
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl ov94_0224218C
_0223F888:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F890: .word 0x00001078
_0223F894: .word 0x02245FD4
_0223F898: .word 0x0000106C
_0223F89C: .word 0x00000F3C
_0223F8A0: .word 0x00000EFC
_0223F8A4: .word 0x000005DC
_0223F8A8: .word 0x0000105C
_0223F8AC: .word 0x00010200
_0223F8B0: .word 0x00000BA4
	thumb_func_end ov94_0223F7C0

	thumb_func_start ov94_0223F8B4
ov94_0223F8B4: ; 0x0223F8B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0223F8D0 ; =0x00000186
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _0223F8D4 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0x1a
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223F8D0: .word 0x00000186
_0223F8D4: .word 0x00001070
	thumb_func_end ov94_0223F8B4

	thumb_func_start ov94_0223F8D8
ov94_0223F8D8: ; 0x0223F8D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F91C ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223F916
	sub r1, r1, #1
	cmp r0, r1
	bne _0223F8FA
	mov r0, #0
	str r0, [r4, #0x2c]
	b _0223F916
_0223F8FA:
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r4, #0
	bl ov94_022442E4
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0223F916:
	mov r0, #3
	pop {r4, pc}
	nop
_0223F91C: .word 0x00001070
	thumb_func_end ov94_0223F8D8

	thumb_func_start ov94_0223F920
ov94_0223F920: ; 0x0223F920
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r0, #3
	bx lr
	thumb_func_end ov94_0223F920

	thumb_func_start ov94_0223F928
ov94_0223F928: ; 0x0223F928
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223F94C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x92
	mov r2, #1
	mov r3, #0
	bl ov94_0223F9A4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223F94C: .word 0x00000F0F
	thumb_func_end ov94_0223F928

	thumb_func_start ov94_0223F950
ov94_0223F950: ; 0x0223F950
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F96C ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F968
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223F968:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F96C: .word 0x00000BE4
	thumb_func_end ov94_0223F950

	thumb_func_start ov94_0223F970
ov94_0223F970: ; 0x0223F970
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223F9A0 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223F99C
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x2d
	ble _0223F99C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223F99C:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223F9A0: .word 0x00000BE4
	thumb_func_end ov94_0223F970

	thumb_func_start ov94_0223F9A4
ov94_0223F9A4: ; 0x0223F9A4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223F9F0 ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223F9F4 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223F9F4 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223F9F4 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223F9F8 ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223F9F0: .word 0x00000B94
_0223F9F4: .word 0x00000EFC
_0223F9F8: .word 0x00000BE4
	thumb_func_end ov94_0223F9A4

	thumb_func_start ov94_0223F9FC
ov94_0223F9FC: ; 0x0223F9FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #0x3b
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x3d
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x20
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x3f
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x40
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0xa5
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223FB04 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x41
	bl sub_0200B1EC
	add r6, r0, #0
	add r3, r5, #0
	add r3, #0x67
	ldrb r3, [r3]
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223FB08 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x60
	add r1, r6, #0
	bl ov94_02245900
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0x42
	bl sub_0200B1EC
	add r4, r0, #0
	add r3, r5, #0
	add r3, #0x77
	ldrb r3, [r3]
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223FB08 ; =0x00010200
	str r3, [sp]
	add r5, #0x70
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FB04: .word 0x000F0200
_0223FB08: .word 0x00010200
	thumb_func_end ov94_0223F9FC

	thumb_func_start ov94_0223FB0C
ov94_0223FB0C: ; 0x0223FB0C
	push {r4, r5}
	mov r4, #0
	ldrsh r5, [r0, r4]
	ldrsh r4, [r1, r4]
	cmp r5, r4
	bne _0223FB40
	mov r4, #2
	ldrsb r5, [r0, r4]
	ldrsb r4, [r1, r4]
	cmp r5, r4
	bne _0223FB40
	mov r4, #3
	ldrsb r5, [r0, r4]
	ldrsb r4, [r1, r4]
	cmp r5, r4
	bne _0223FB40
	mov r4, #4
	ldrsb r5, [r0, r4]
	ldrsb r0, [r1, r4]
	cmp r5, r0
	bne _0223FB40
	cmp r2, r3
	bne _0223FB40
	mov r0, #1
	pop {r4, r5}
	bx lr
_0223FB40:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov94_0223FB0C

	.rodata


	.global Unk_ov94_02245D84
Unk_ov94_02245D84: ; 0x02245D84
	.incbin "incbin/overlay94_rodata.bin", 0x38C, 0x394 - 0x38C

	.global Unk_ov94_02245D8C
Unk_ov94_02245D8C: ; 0x02245D8C
	.incbin "incbin/overlay94_rodata.bin", 0x394, 0x39C - 0x394

	.global Unk_ov94_02245D94
Unk_ov94_02245D94: ; 0x02245D94
	.incbin "incbin/overlay94_rodata.bin", 0x39C, 0x3B4 - 0x39C

	.global Unk_ov94_02245DAC
Unk_ov94_02245DAC: ; 0x02245DAC
	.incbin "incbin/overlay94_rodata.bin", 0x3B4, 0x3D0 - 0x3B4

	.global Unk_ov94_02245DC8
Unk_ov94_02245DC8: ; 0x02245DC8
	.incbin "incbin/overlay94_rodata.bin", 0x3D0, 0x3EC - 0x3D0

	.global Unk_ov94_02245DE4
Unk_ov94_02245DE4: ; 0x02245DE4
	.incbin "incbin/overlay94_rodata.bin", 0x3EC, 0x408 - 0x3EC

	.global Unk_ov94_02245E00
Unk_ov94_02245E00: ; 0x02245E00
	.incbin "incbin/overlay94_rodata.bin", 0x408, 0x1C


	.data


	.global Unk_ov94_02246848
Unk_ov94_02246848: ; 0x02246848
	.incbin "incbin/overlay94_data.bin", 0x448, 0x460 - 0x448

	.global Unk_ov94_02246860
Unk_ov94_02246860: ; 0x02246860
	.incbin "incbin/overlay94_data.bin", 0x460, 0x7C

