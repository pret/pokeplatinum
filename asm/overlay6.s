	.include "macros/function.inc"


	.text

	thumb_func_start ov6_0223E140
ov6_0223E140: ; 0x0223E140
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x38]
	cmp r1, #5
	bhi _0223E196
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E156: ; jump table
	.short _0223E162 - _0223E156 - 2 ; case 0
	.short _0223E16E - _0223E156 - 2 ; case 1
	.short _0223E196 - _0223E156 - 2 ; case 2
	.short _0223E180 - _0223E156 - 2 ; case 3
	.short _0223E18C - _0223E156 - 2 ; case 4
	.short _0223E196 - _0223E156 - 2 ; case 5
_0223E162:
	bl ov6_0223E234
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	pop {r4, pc}
_0223E16E:
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	bl ov6_0223E2BC
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	pop {r4, pc}
_0223E180:
	bl ov6_0223E2E8
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	pop {r4, pc}
_0223E18C:
	bl ov6_0223E248
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
_0223E196:
	pop {r4, pc}
	thumb_func_end ov6_0223E140

	thumb_func_start ov6_0223E198
ov6_0223E198: ; 0x0223E198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #2
	beq _0223E1A6
	bl sub_02022974
_0223E1A6:
	mov r0, #3
	str r0, [r4, #0x38]
	pop {r4, pc}
	thumb_func_end ov6_0223E198

	thumb_func_start ov6_0223E1AC
ov6_0223E1AC: ; 0x0223E1AC
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end ov6_0223E1AC

	thumb_func_start ov6_0223E1B0
ov6_0223E1B0: ; 0x0223E1B0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223E1CC ; =0x02248EDC
	add r3, sp, #0
	mov r2, #5
_0223E1BA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223E1BA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223E1CC: .word 0x02248EDC
	thumb_func_end ov6_0223E1B0

	thumb_func_start ov6_0223E1D0
ov6_0223E1D0: ; 0x0223E1D0
	push {r4, r5, lr}
	sub sp, #0x2c
	ldr r5, _0223E22C ; =0x02248E38
	add r3, sp, #0x1c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _0223E230 ; =0x02248EC0
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
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_0223E22C: .word 0x02248E38
_0223E230: .word 0x02248EC0
	thumb_func_end ov6_0223E1D0

	thumb_func_start ov6_0223E234
ov6_0223E234: ; 0x0223E234
	ldr r3, _0223E240 ; =sub_0200DA3C
	mov r2, #1
	add r1, r0, #0
	ldr r0, _0223E244 ; =ov6_0223E25C
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_0223E240: .word sub_0200DA3C
_0223E244: .word ov6_0223E25C
	thumb_func_end ov6_0223E234

	thumb_func_start ov6_0223E248
ov6_0223E248: ; 0x0223E248
	ldr r3, _0223E254 ; =sub_0200DA3C
	mov r2, #1
	add r1, r0, #0
	ldr r0, _0223E258 ; =ov6_0223E280
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_0223E254: .word sub_0200DA3C
_0223E258: .word ov6_0223E280
	thumb_func_end ov6_0223E248

	thumb_func_start ov6_0223E25C
ov6_0223E25C: ; 0x0223E25C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov6_0223E1B0
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl ov6_0223E2A4
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl ov6_0223E1D0
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_0223E25C

	thumb_func_start ov6_0223E280
ov6_0223E280: ; 0x0223E280
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #4
	bl sub_0201FE94
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl ov6_0223E2A4
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	bl ov6_0223E2AC
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_0223E280

	thumb_func_start ov6_0223E2A4
ov6_0223E2A4: ; 0x0223E2A4
	ldr r3, _0223E2A8 ; =FUN_021D143C
	bx r3
	; .align 2, 0
_0223E2A8: .word FUN_021D143C
	thumb_func_end ov6_0223E2A4

	thumb_func_start ov6_0223E2AC
ov6_0223E2AC: ; 0x0223E2AC
	push {r3, lr}
	bl FUN_021D1434
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	pop {r3, pc}
	thumb_func_end ov6_0223E2AC

	thumb_func_start ov6_0223E2BC
ov6_0223E2BC: ; 0x0223E2BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r6, _0223E2E4 ; =0x02248F04
	add r3, r0, #0
	add r2, r1, #0
	add r5, sp, #0
	mov r4, #5
_0223E2CA:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r4, r4, #1
	bne _0223E2CA
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, sp, #0
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	bl FUN_021E2098
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223E2E4: .word 0x02248F04
	thumb_func_end ov6_0223E2BC

	thumb_func_start ov6_0223E2E8
ov6_0223E2E8: ; 0x0223E2E8
	ldr r3, _0223E2F4 ; =sub_0200DA3C
	mov r2, #1
	add r1, r0, #0
	ldr r0, _0223E2F8 ; =ov6_0223E2FC
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_0223E2F4: .word sub_0200DA3C
_0223E2F8: .word ov6_0223E2FC
	thumb_func_end ov6_0223E2E8

	thumb_func_start ov6_0223E2FC
ov6_0223E2FC: ; 0x0223E2FC
	push {r4, lr}
	add r1, #0x2c
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	mov r2, #0
	add r3, r1, #0
	bl FUN_021E20E8
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223E2FC

	thumb_func_start ov6_0223E318
ov6_0223E318: ; 0x0223E318
	push {r4, lr}
	ldr r0, [r0, #0x38]
	add r4, r2, #0
	bl sub_0206251C
	cmp r4, #1
	bne _0223E330
	mov r1, #1
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r4, pc}
_0223E330:
	mov r1, #1
	lsl r1, r1, #0x14
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223E318

	thumb_func_start ov6_0223E33C
ov6_0223E33C: ; 0x0223E33C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223E358
	cmp r0, #1
	beq _0223E370
	b _0223E380
_0223E358:
	ldr r0, [r4, #0]
	bl ov6_0223FE9C
	ldr r0, [r4, #0]
	bl ov6_0223FF6C
	cmp r0, #1
	bne _0223E380
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223E380
_0223E370:
	ldr r0, [r4, #0]
	bl ov6_0223FE08
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0223E380:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_0223E33C

	thumb_func_start ov6_0223E384
ov6_0223E384: ; 0x0223E384
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x10
	mov r0, #0
_0223E3A0:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223E3A0
	mov r0, #4
	bl ov6_0223FDE4
	str r0, [r5, #0]
	mov r1, #0x10
	str r1, [sp]
	ldr r0, [r4, #0x24]
	lsl r1, r1, #9
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r2, #0
	mov r3, #1
	bl ov6_0223FE1C
	ldr r1, _0223E3D4 ; =ov6_0223E33C
	add r0, r6, #0
	add r2, r5, #0
	bl sub_02050944
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E3D4: .word ov6_0223E33C
	thumb_func_end ov6_0223E384

	thumb_func_start ov6_0223E3D8
ov6_0223E3D8: ; 0x0223E3D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov6_0223FFF8
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov6_0223FFF4
	ldr r1, [r5, #8]
	cmp r1, r0
	beq _0223E404
	mov r1, #2
	str r0, [r5, #8]
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	sub r1, r4, r0
	ldr r0, [r5, #0]
	bl ov6_0223FFFC
_0223E404:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_0223E3D8

	thumb_func_start ov6_0223E408
ov6_0223E408: ; 0x0223E408
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #7
	bhi _0223E4E4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E42A: ; jump table
	.short _0223E43A - _0223E42A - 2 ; case 0
	.short _0223E44A - _0223E42A - 2 ; case 1
	.short _0223E45E - _0223E42A - 2 ; case 2
	.short _0223E476 - _0223E42A - 2 ; case 3
	.short _0223E4A0 - _0223E42A - 2 ; case 4
	.short _0223E4B2 - _0223E42A - 2 ; case 5
	.short _0223E4C4 - _0223E42A - 2 ; case 6
	.short _0223E4D4 - _0223E42A - 2 ; case 7
_0223E43A:
	mov r0, #0
	mov r1, #1
	bl sub_0200564C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223E4E4
_0223E44A:
	bl sub_02005684
	cmp r0, #0
	bne _0223E4E4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x10
	str r0, [r4, #4]
	b _0223E4E4
_0223E45E:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0223E4E4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, _0223E4E8 ; =0x0000065C
	bl sub_02005748
	b _0223E4E4
_0223E476:
	ldr r0, [r4, #0]
	bl ov6_0223FE9C
	add r0, r4, #0
	bl ov6_0223E3D8
	ldr r0, [r4, #0]
	bl ov6_0223FF6C
	cmp r0, #1
	bne _0223E4E4
	ldr r0, _0223E4E8 ; =0x0000065C
	mov r1, #0
	bl sub_020057A4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x10
	str r0, [r4, #4]
	b _0223E4E4
_0223E4A0:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0223E4E4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223E4E4
_0223E4B2:
	mov r0, #0x7f
	mov r1, #0x10
	mov r2, #0
	bl sub_0200560C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223E4E4
_0223E4C4:
	bl sub_02005684
	cmp r0, #0
	bne _0223E4E4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223E4E4
_0223E4D4:
	ldr r0, [r4, #0]
	bl ov6_0223FE08
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0223E4E4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223E4E8: .word 0x0000065C
	thumb_func_end ov6_0223E408

	thumb_func_start ov6_0223E4EC
ov6_0223E4EC: ; 0x0223E4EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x10
	bl sub_02018144
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x10
	mov r0, #0
_0223E508:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223E508
	mov r0, #4
	bl ov6_0223FDE4
	str r0, [r5, #0]
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #1
	bl ov6_0223FE1C
	ldr r0, [r5, #0]
	bl ov6_0223FFF4
	str r0, [r5, #8]
	ldr r1, _0223E544 ; =ov6_0223E408
	add r0, r6, #0
	add r2, r5, #0
	bl sub_02050944
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223E544: .word ov6_0223E408
	thumb_func_end ov6_0223E4EC

	thumb_func_start ov6_0223E548
ov6_0223E548: ; 0x0223E548
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x78
	bl sub_020D5124
	mov r0, #4
	add r1, r5, #0
	bl ov6_02240104
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_0223E548

	thumb_func_start ov6_0223E568
ov6_0223E568: ; 0x0223E568
	ldr r3, _0223E570 ; =ov6_022401B8
	ldr r0, [r2, #0x48]
	bx r3
	nop
_0223E570: .word ov6_022401B8
	thumb_func_end ov6_0223E568

	thumb_func_start ov6_0223E574
ov6_0223E574: ; 0x0223E574
	push {r4, r5, r6, lr}
	add r4, r2, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	cmp r0, #0xb
	bls _0223E582
	b _0223E6D2
_0223E582:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E58E: ; jump table
	.short _0223E5A6 - _0223E58E - 2 ; case 0
	.short _0223E5AA - _0223E58E - 2 ; case 1
	.short _0223E5B0 - _0223E58E - 2 ; case 2
	.short _0223E5C6 - _0223E58E - 2 ; case 3
	.short _0223E616 - _0223E58E - 2 ; case 4
	.short _0223E62E - _0223E58E - 2 ; case 5
	.short _0223E65E - _0223E58E - 2 ; case 6
	.short _0223E66E - _0223E58E - 2 ; case 7
	.short _0223E68A - _0223E58E - 2 ; case 8
	.short _0223E69E - _0223E58E - 2 ; case 9
	.short _0223E6B8 - _0223E58E - 2 ; case 10
	.short _0223E6D2 - _0223E58E - 2 ; case 11
_0223E5A6:
	add r0, r0, #1
	str r0, [r4, #0]
_0223E5AA:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0223E5B0:
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl ov6_022401D0
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E5C6:
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0xc
	beq _0223E5FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _0223E5FE
	ldr r2, [r4, #4]
	mov r1, #0x1f
	lsr r5, r2, #0x1f
	lsl r3, r2, #0x1f
	sub r3, r3, r5
	ror r3, r1
	ldr r0, [r4, #0x48]
	add r1, r5, r3
	bl ov6_02240364
	add r5, r0, #0
	beq _0223E5FE
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0223E5FE
_0223E5FC:
	mov r5, #1
_0223E5FE:
	ldr r0, [r4, #0x48]
	bl ov6_022405D0
	cmp r0, #0
	beq _0223E6D2
	cmp r5, #0
	beq _0223E6D2
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #4
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E616:
	ldr r0, [r4, #0x48]
	mov r1, #0
	mov r2, #0x3c
	bl ov6_02240364
	cmp r0, #0
	beq _0223E6D2
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #0xb
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E62E:
	add r0, r4, #0
	add r0, #0x6c
	bl ov6_0223E71C
	add r6, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #3
	bne _0223E652
	ldr r0, [r4, #0x74]
	bl ov6_02240060
	cmp r0, #0xd
	bne _0223E652
	mov r0, #4
	add r1, r5, #0
	bl ov6_02240B9C
	str r0, [r4, #0x54]
_0223E652:
	cmp r6, #1
	bne _0223E6D2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E65E:
	add r0, r4, #0
	add r0, #0xc
	bl ov6_0223E198
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E66E:
	add r0, r4, #0
	add r0, #0xc
	bl ov6_0223E140
	add r0, r4, #0
	add r0, #0xc
	bl ov6_0223E1AC
	cmp r0, #5
	bne _0223E6D2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E68A:
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl ov6_02240C44
	mov r0, #0x48
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0223E69E:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0223E6B8
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov6_0223E318
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0223E6B8:
	ldr r0, [r4, #0x54]
	bl ov6_02240C7C
	cmp r0, #1
	bne _0223E6D2
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov6_0223E318
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0223E6D2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_0223E574

	thumb_func_start ov6_0223E6D4
ov6_0223E6D4: ; 0x0223E6D4
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x48]
	bl ov6_02240228
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0223E6E8
	bl ov6_02240C94
_0223E6E8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223E6D4

	thumb_func_start ov6_0223E6EC
ov6_0223E6EC: ; 0x0223E6EC
	ldr r0, [r0, #4]
	ldr r3, _0223E6F8 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0223E6FC ; =0x02248E90
	bx r3
	nop
_0223E6F8: .word FUN_021D1B6C
_0223E6FC: .word 0x02248E90
	thumb_func_end ov6_0223E6EC

	thumb_func_start ov6_0223E700
ov6_0223E700: ; 0x0223E700
	ldr r3, _0223E704 ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_0223E704: .word FUN_021D1BEC
	thumb_func_end ov6_0223E700

	thumb_func_start ov6_0223E708
ov6_0223E708: ; 0x0223E708
	push {r3, lr}
	bl FUN_021D1C2C
	ldr r0, [r0, #0]
	cmp r0, #0xb
	bne _0223E718
	mov r0, #1
	pop {r3, pc}
_0223E718:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_0223E708

	thumb_func_start ov6_0223E71C
ov6_0223E71C: ; 0x0223E71C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _0223E7B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E732: ; jump table
	.short _0223E73C - _0223E732 - 2 ; case 0
	.short _0223E74C - _0223E732 - 2 ; case 1
	.short _0223E764 - _0223E732 - 2 ; case 2
	.short _0223E784 - _0223E732 - 2 ; case 3
	.short _0223E7A4 - _0223E732 - 2 ; case 4
_0223E73C:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bpl _0223E7B0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E7B0
_0223E74C:
	ldr r0, [r4, #8]
	mov r1, #0xd
	mov r2, #4
	mov r3, #8
	bl ov6_02240000
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0x10
	str r0, [r4, #4]
	b _0223E7B0
_0223E764:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bpl _0223E7B0
	ldr r0, [r4, #8]
	mov r1, #0xd
	mov r2, #4
	mov r3, #8
	bl ov6_02240000
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0x10
	str r0, [r4, #4]
	b _0223E7B0
_0223E784:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bpl _0223E7B0
	ldr r0, [r4, #8]
	mov r1, #0xd
	mov r2, #4
	mov r3, #0x20
	bl ov6_02240000
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0x28
	str r0, [r4, #4]
	b _0223E7B0
_0223E7A4:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bpl _0223E7B0
	mov r0, #1
	pop {r4, pc}
_0223E7B0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_0223E71C

	thumb_func_start ov6_0223E7B4
ov6_0223E7B4: ; 0x0223E7B4
	push {r4, r5, r6, lr}
	ldr r0, [r1, #0x38]
	mov r1, #0
	add r4, r2, #0
	bl sub_0206251C
	add r5, r0, #0
	bne _0223E7C8
	bl sub_02022974
_0223E7C8:
	add r0, r5, #0
	bl sub_02063020
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	bl sub_02063040
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r0, #4
	bl ov6_02240768
	add r1, r6, #0
	mov r2, #0
	add r3, r5, #0
	str r0, [r4, #0]
	bl ov6_0224077C
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_0223E7B4

	thumb_func_start ov6_0223E7F0
ov6_0223E7F0: ; 0x0223E7F0
	ldr r3, _0223E7F8 ; =ov6_02240774
	ldr r0, [r2, #0]
	bx r3
	nop
_0223E7F8: .word ov6_02240774
	thumb_func_end ov6_0223E7F0

	thumb_func_start ov6_0223E7FC
ov6_0223E7FC: ; 0x0223E7FC
	ldr r3, _0223E804 ; =ov6_022407A8
	ldr r0, [r2, #0]
	bx r3
	nop
_0223E804: .word ov6_022407A8
	thumb_func_end ov6_0223E7FC

	thumb_func_start ov6_0223E808
ov6_0223E808: ; 0x0223E808
	ldr r3, _0223E810 ; =ov6_022407B0
	ldr r0, [r2, #0]
	bx r3
	nop
_0223E810: .word ov6_022407B0
	thumb_func_end ov6_0223E808

	thumb_func_start ov6_0223E814
ov6_0223E814: ; 0x0223E814
	ldr r0, [r0, #4]
	ldr r3, _0223E820 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0223E824 ; =0x02248E78
	bx r3
	nop
_0223E820: .word FUN_021D1B6C
_0223E824: .word 0x02248E78
	thumb_func_end ov6_0223E814

	thumb_func_start ov6_0223E828
ov6_0223E828: ; 0x0223E828
	ldr r3, _0223E82C ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_0223E82C: .word FUN_021D1BEC
	thumb_func_end ov6_0223E828

	thumb_func_start ov6_0223E830
ov6_0223E830: ; 0x0223E830
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, _0223E8B8 ; =0x00001701
	ldr r1, [r5, #0x24]
	add r4, r2, #0
	bl sub_02020910
	ldr r0, _0223E8BC ; =0x000C8A55
	ldr r1, [r5, #0x24]
	bl sub_02020A50
	ldr r0, _0223E8C0 ; =0x002280EF
	str r0, [sp, #8]
	ldr r0, _0223E8C4 ; =0x000CA424
	str r0, [sp, #0xc]
	ldr r0, _0223E8C8 ; =0x00268C50
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x24]
	add r0, sp, #8
	bl sub_02020ACC
	ldr r1, _0223E8CC ; =0x000022A2
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x3e
	lsl r1, r1, #0xa
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r5, #0x24]
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #2
	mov r1, #0x7d
	ldr r2, [r5, #0x24]
	lsl r0, r0, #0xc
	lsl r1, r1, #0x10
	bl sub_020206BC
	mov r0, #4
	bl ov6_022409F4
	str r0, [r4, #4]
	mov r0, #4
	bl ov6_02240AC8
	str r0, [r4, #8]
	ldr r1, [r5, #0x24]
	add r0, sp, #8
	bl sub_02020AAC
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov6_02240A18
	ldr r0, [r4, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov6_02240AEC
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0223E8B8: .word 0x00001701
_0223E8BC: .word 0x000C8A55
_0223E8C0: .word 0x002280EF
_0223E8C4: .word 0x000CA424
_0223E8C8: .word 0x00268C50
_0223E8CC: .word 0x000022A2
	thumb_func_end ov6_0223E830

	thumb_func_start ov6_0223E8D0
ov6_0223E8D0: ; 0x0223E8D0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, _0223E968 ; =0x00000F81
	ldr r1, [r5, #0x24]
	add r4, r2, #0
	bl sub_02020910
	ldr r0, _0223E96C ; =0x0017E532
	ldr r1, [r5, #0x24]
	bl sub_02020A50
	ldr r0, _0223E970 ; =0x00F99D58
	str r0, [sp, #8]
	ldr r0, _0223E974 ; =0x000C5502
	str r0, [sp, #0xc]
	ldr r0, _0223E978 ; =0x028CF549
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x24]
	add r0, sp, #8
	bl sub_02020ACC
	ldr r1, _0223E97C ; =0x00000642
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, _0223E980 ; =0x0000EDA0
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r5, #0x24]
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #0x16
	mov r1, #0x7d
	ldr r2, [r5, #0x24]
	lsl r0, r0, #0xe
	lsl r1, r1, #0x10
	bl sub_020206BC
	add r0, r5, #0
	add r0, #0x4c
	bl FUN_021D5278
	ldr r0, [r5, #0x44]
	mov r1, #3
	bl FUN_021D521C
	str r0, [r5, #0x4c]
	mov r0, #4
	bl ov6_022409F4
	str r0, [r4, #4]
	mov r0, #4
	bl ov6_02240AC8
	str r0, [r4, #8]
	ldr r1, [r5, #0x24]
	add r0, sp, #8
	bl sub_02020AAC
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov6_02240A50
	ldr r0, [r4, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov6_02240B24
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0223E968: .word 0x00000F81
_0223E96C: .word 0x0017E532
_0223E970: .word 0x00F99D58
_0223E974: .word 0x000C5502
_0223E978: .word 0x028CF549
_0223E97C: .word 0x00000642
_0223E980: .word 0x0000EDA0
	thumb_func_end ov6_0223E8D0

	thumb_func_start ov6_0223E984
ov6_0223E984: ; 0x0223E984
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, _0223EA1C ; =0x000004C1
	ldr r1, [r5, #0x24]
	add r4, r2, #0
	bl sub_02020910
	ldr r0, _0223EA20 ; =0x0026BEC1
	ldr r1, [r5, #0x24]
	bl sub_02020A50
	ldr r0, _0223EA24 ; =0x01DF5DFD
	str r0, [sp, #8]
	ldr r0, _0223EA28 ; =0x00073A0C
	str r0, [sp, #0xc]
	ldr r0, _0223EA2C ; =0x02B9F4A2
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x24]
	add r0, sp, #8
	bl sub_02020ACC
	ldr r1, _0223EA30 ; =0x000004C2
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x29
	lsl r1, r1, #6
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r5, #0x24]
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #0xb
	ldr r1, _0223EA34 ; =0x005C8000
	ldr r2, [r5, #0x24]
	lsl r0, r0, #0x10
	bl sub_020206BC
	add r0, r5, #0
	add r0, #0x4c
	bl FUN_021D5278
	ldr r0, [r5, #0x44]
	mov r1, #3
	bl FUN_021D521C
	str r0, [r5, #0x4c]
	mov r0, #4
	bl ov6_022409F4
	str r0, [r4, #4]
	mov r0, #4
	bl ov6_02240AC8
	str r0, [r4, #8]
	ldr r1, [r5, #0x24]
	add r0, sp, #8
	bl sub_02020AAC
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov6_02240A8C
	ldr r0, [r4, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov6_02240B60
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0223EA1C: .word 0x000004C1
_0223EA20: .word 0x0026BEC1
_0223EA24: .word 0x01DF5DFD
_0223EA28: .word 0x00073A0C
_0223EA2C: .word 0x02B9F4A2
_0223EA30: .word 0x000004C2
_0223EA34: .word 0x005C8000
	thumb_func_end ov6_0223E984

	thumb_func_start ov6_0223EA38
ov6_0223EA38: ; 0x0223EA38
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #4]
	bl ov6_02240A00
	ldr r0, [r4, #8]
	bl ov6_02240AD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223EA38

	thumb_func_start ov6_0223EA4C
ov6_0223EA4C: ; 0x0223EA4C
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #4]
	bl ov6_02240A08
	ldr r0, [r4, #8]
	bl ov6_02240ADC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223EA4C

	thumb_func_start ov6_0223EA60
ov6_0223EA60: ; 0x0223EA60
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #4]
	bl ov6_02240A10
	ldr r0, [r4, #8]
	bl ov6_02240AE4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223EA60

	thumb_func_start ov6_0223EA74
ov6_0223EA74: ; 0x0223EA74
	lsl r2, r1, #2
	ldr r1, _0223EA88 ; =0x02248E2C
	ldr r3, _0223EA8C ; =FUN_021D1B6C
	ldr r2, [r1, r2]
	ldr r1, _0223EA90 ; =0x02249860
	str r2, [r1, #8]
	ldr r0, [r0, #4]
	ldr r1, _0223EA94 ; =0x02249860
	ldr r0, [r0, #4]
	bx r3
	; .align 2, 0
_0223EA88: .word 0x02248E2C
_0223EA8C: .word FUN_021D1B6C
_0223EA90: .word 0x02249860
_0223EA94: .word 0x02249860
	thumb_func_end ov6_0223EA74

	thumb_func_start ov6_0223EA98
ov6_0223EA98: ; 0x0223EA98
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xac
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	ldr r2, _0223EB2C ; =0x02248E48
	lsl r4, r0, #3
	add r0, r5, #0
	ldr r2, [r2, r4]
	add r0, #0x9c
	add r1, r6, #0
	mov r3, #4
	bl sub_020170D8
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x9c
	bl sub_02017258
	mov r1, #0
	add r0, r5, #0
	add r0, #0x24
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r0, #0x24
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r5, #0
	add r0, #0x24
	mov r1, #1
	bl sub_02017348
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	ldr r3, _0223EB30 ; =0x02248E4C
	add r0, #0xc0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r3, [r3, r4]
	add r0, #0xac
	add r1, #0x9c
	add r2, r6, #0
	bl sub_02017164
	add r0, r5, #0
	add r0, #0xac
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	add r5, #0xac
	add r0, #0x24
	add r1, r5, #0
	bl sub_0201727C
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223EB2C: .word 0x02248E48
_0223EB30: .word 0x02248E4C
	thumb_func_end ov6_0223EA98

	thumb_func_start ov6_0223EB34
ov6_0223EB34: ; 0x0223EB34
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	bl sub_02017110
	add r0, r4, #0
	add r4, #0xc0
	add r0, #0xac
	add r1, r4, #0
	bl sub_020171A0
	pop {r4, pc}
	thumb_func_end ov6_0223EB34

	thumb_func_start ov6_0223EB4C
ov6_0223EB4C: ; 0x0223EB4C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r0, r5, #0
	bl ov6_02240074
	str r0, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r1, #0
	add r0, #0xe6
	add r1, #0xe6
	str r5, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #1
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #8
	ldr r0, [r4, r1]
	bl sub_0205EF3C
	bl sub_0205EB3C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	add r0, r4, #0
	bl ov6_0223EA98
	mov r1, #0xc
	ldrsh r1, [r4, r1]
	ldr r0, _0223EBCC ; =0x0400006C
	bl sub_020BDEC4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EBCC: .word 0x0400006C
	thumb_func_end ov6_0223EB4C

	thumb_func_start ov6_0223EBD0
ov6_0223EBD0: ; 0x0223EBD0
	ldr r3, _0223EBD8 ; =ov6_022400A8
	ldr r0, [r2, #8]
	bx r3
	nop
_0223EBD8: .word ov6_022400A8
	thumb_func_end ov6_0223EBD0

	thumb_func_start ov6_0223EBDC
ov6_0223EBDC: ; 0x0223EBDC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #5
	bgt _0223EC04
	cmp r1, #0
	blt _0223EC0A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EBF8: ; jump table
	.short _0223EC0C - _0223EBF8 - 2 ; case 0
	.short _0223EC60 - _0223EBF8 - 2 ; case 1
	.short _0223ECD8 - _0223EBF8 - 2 ; case 2
	.short _0223ED1C - _0223EBF8 - 2 ; case 3
	.short _0223ED8E - _0223EBF8 - 2 ; case 4
	.short _0223EDD0 - _0223EBF8 - 2 ; case 5
_0223EC04:
	cmp r1, #0x63
	bne _0223EC0A
	b _0223EE3C
_0223EC0A:
	b _0223EE42
_0223EC0C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223EE54 ; =0x0023D000
	add r0, #0xd4
	str r1, [r0, #0]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x14
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #0x14
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223EE4C
_0223EC60:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xe4
	add r3, #0xf4
	add r6, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223ECBA
	cmp r6, #0
	bne _0223ECBC
_0223ECBA:
	b _0223EE4C
_0223ECBC:
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	mov r1, #0x1e
	str r0, [sp, #4]
	lsl r1, r1, #4
	add r2, r0, #0
	mov r3, #0x64
	bl sub_020059D0
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223EE4C
_0223ECD8:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	mov r1, #0x6f
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xd4
	str r1, [r0, #0]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x14
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223EE4C
_0223ED1C:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r0, #0]
	lsl r0, r1, #3
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xd8
	ldr r2, [r1, #0]
	lsl r1, r0, #1
	add r0, r0, r1
	add r1, r2, r0
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, r4, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0xe4
	add r3, #0xd8
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223EE4C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223EE4C
_0223ED8E:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223EE58 ; =0x001FB000
	add r0, #0xd4
	str r1, [r0, #0]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x14
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223EE4C
_0223EDD0:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xd8
	ldr r2, [r1, #0]
	lsl r1, r0, #1
	add r0, r0, r1
	sub r1, r2, r0
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, r4, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0xe4
	add r3, #0xd8
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223EE4C
	mov r0, #0x63
	str r0, [r4, #0x18]
	b _0223EE4C
_0223EE3C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_0223EE42:
	mov r0, #0
	str r0, [r4, #0x18]
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EE4C:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0223EE54: .word 0x0023D000
_0223EE58: .word 0x001FB000
	thumb_func_end ov6_0223EBDC

	thumb_func_start ov6_0223EE5C
ov6_0223EE5C: ; 0x0223EE5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0x63
	bgt _0223EEAA
	blt _0223EE6C
	b _0223F5A2
_0223EE6C:
	cmp r1, #0x14
	bls _0223EE74
	bl _0223F6CA
_0223EE74:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EE80: ; jump table
	.short _0223EEB4 - _0223EE80 - 2 ; case 0
	.short _0223EF0C - _0223EE80 - 2 ; case 1
	.short _0223EF76 - _0223EE80 - 2 ; case 2
	.short _0223EFB6 - _0223EE80 - 2 ; case 3
	.short _0223F02A - _0223EE80 - 2 ; case 4
	.short _0223F048 - _0223EE80 - 2 ; case 5
	.short _0223F0B2 - _0223EE80 - 2 ; case 6
	.short _0223F10A - _0223EE80 - 2 ; case 7
	.short _0223F1B0 - _0223EE80 - 2 ; case 8
	.short _0223F1E6 - _0223EE80 - 2 ; case 9
	.short _0223F252 - _0223EE80 - 2 ; case 10
	.short _0223F2AA - _0223EE80 - 2 ; case 11
	.short _0223F338 - _0223EE80 - 2 ; case 12
	.short _0223F38C - _0223EE80 - 2 ; case 13
	.short _0223F40C - _0223EE80 - 2 ; case 14
	.short _0223F43E - _0223EE80 - 2 ; case 15
	.short _0223F474 - _0223EE80 - 2 ; case 16
	.short _0223F496 - _0223EE80 - 2 ; case 17
	.short _0223F4C6 - _0223EE80 - 2 ; case 18
	.short _0223F4CE - _0223EE80 - 2 ; case 19
	.short _0223F514 - _0223EE80 - 2 ; case 20
_0223EEAA:
	cmp r1, #0x64
	bne _0223EEB0
	b _0223F668
_0223EEB0:
	bl _0223F6CA
_0223EEB4:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r1, r4, #0
	ldr r2, _0223F19C ; =0x0022B000
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r4, #0
	ldr r2, _0223F1A0 ; =0x0015B000
	add r1, #0xd8
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x20
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #0x20
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223EF0C:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, r4, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r6, r4, #0
	add r1, r4, #0
	add r3, #0xf4
	add r6, #0xe0
	add r1, #0xe4
	add r0, r4, #0
	ldr r3, [r3, #0]
	ldr r6, [r6, #0]
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	add r0, #0x24
	add r3, r3, r6
	bl sub_02017350
	cmp r5, #0
	beq _0223F020
	cmp r7, #0
	beq _0223F020
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223EF76:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F1A4 ; =0x001FB000
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F1A0 ; =0x0015B000
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x20
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223EFB6:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r0, #0]
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xd8
	ldr r2, [r1, #0]
	lsl r1, r0, #1
	add r0, r0, r1
	add r1, r2, r0
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, r4, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0xe4
	add r3, #0xd8
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	bne _0223F022
_0223F020:
	b _0223F6D4
_0223F022:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F02A:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, #0xd8
	bl sub_02017358
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_0223F048:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r0, #0]
	mov r0, #0xb
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xd8
	add r3, r4, #0
	ldr r1, [r1, #0]
	lsl r0, r0, #1
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, #0xd8
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0x40
	blt _0223F190
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F0B2:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r1, r4, #0
	ldr r2, _0223F1A8 ; =0x001D1000
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r4, #0
	ldr r2, _0223F1AC ; =0x001F2000
	add r1, #0xd8
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x20
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #0x20
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F10A:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xdc
	add r3, r4, #0
	ldr r1, [r1, #0]
	lsl r0, r0, #2
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0xdc
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0xe4
	ldr r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xdc
	ldr r1, [r1, #0]
	add r3, #0xf4
	add r0, r4, #0
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223F190
	cmp r6, #0
	bne _0223F192
_0223F190:
	b _0223F6D4
_0223F192:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
	nop
_0223F19C: .word 0x0022B000
_0223F1A0: .word 0x0015B000
_0223F1A4: .word 0x001FB000
_0223F1A8: .word 0x001D1000
_0223F1AC: .word 0x001F2000
_0223F1B0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0206296C
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02065638
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, #0xd8
	bl sub_02017358
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_0223F1E6:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r0, #0]
	mov r0, #0xb
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xd8
	ldr r1, [r1, #0]
	add r3, r4, #0
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, #0xd8
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0x20
	blt _0223F32E
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F252:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r1, r4, #0
	ldr r2, _0223F5B0 ; =0x001F7000
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r4, #0
	ldr r2, _0223F5B4 ; =0x001F9000
	add r1, #0xd8
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x20
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #0x20
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F2AA:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r0, #0]
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xe0
	add r3, r4, #0
	add r6, r4, #0
	ldr r1, [r1, #0]
	lsl r0, r0, #1
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, #0xf4
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r1, r4, #0
	add r6, #0xe0
	add r1, #0xe4
	add r0, r4, #0
	ldr r3, [r3, #0]
	ldr r6, [r6, #0]
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	add r0, #0x24
	add r3, r3, r6
	bl sub_02017350
	cmp r5, #0
	beq _0223F32E
	cmp r7, #0
	bne _0223F330
_0223F32E:
	b _0223F6D4
_0223F330:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F338:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F5B0 ; =0x001F7000
	add r0, #0xd4
	str r1, [r0, #0]
	mov r1, #0x79
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #8
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #8
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F38C:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r6, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #4
	blt _0223F3E6
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	bge _0223F3E6
	add r0, r0, #2
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223F5B8 ; =0x0400006C
	bl sub_020BDEC4
_0223F3E6:
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xe4
	add r3, #0xf4
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r6, #0
	beq _0223F48C
	cmp r5, #0
	beq _0223F48C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F40C:
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	bge _0223F422
	add r0, r0, #2
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223F5B8 ; =0x0400006C
	bl sub_020BDEC4
	b _0223F6D4
_0223F422:
	add r1, #0xfc
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02062D64
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F43E:
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0223F454
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223F5B8 ; =0x0400006C
	bl sub_020BDEC4
	b _0223F6D4
_0223F454:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xd0
	str r0, [r1, #0]
	mov r1, #4
	str r1, [sp]
	ldr r1, _0223F5BC ; =0x000001E1
	str r0, [sp, #4]
	add r2, r0, #0
	mov r3, #0x64
	bl sub_020059D0
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F474:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0x3c
	bge _0223F48E
_0223F48C:
	b _0223F6D4
_0223F48E:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F496:
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	bge _0223F4AC
	add r0, r0, #2
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223F5B8 ; =0x0400006C
	bl sub_020BDEC4
	b _0223F6D4
_0223F4AC:
	add r1, #0xfc
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02062D64
	add r0, r4, #0
	add r0, #0x24
	mov r1, #1
	bl sub_02017348
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_0223F4C6:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F4CE:
	add r0, r4, #0
	mov r2, #0
	add r0, #0xd0
	str r2, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F5C0 ; =0x0015D000
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xdc
	str r2, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r0, r4, #0
	add r2, r4, #0
	ldr r1, [sp, #0x10]
	add r0, #0xd4
	str r1, [r0, #0]
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #0x20
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F514:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0223F554
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223F5B8 ; =0x0400006C
	bl sub_020BDEC4
_0223F554:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r4, #0
	add r1, #0xdc
	ldr r1, [r1, #0]
	lsl r0, r0, #3
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xdc
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0xd4
	ldr r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xdc
	ldr r1, [r1, #0]
	add r3, r4, #0
	add r3, #0xf4
	add r0, r4, #0
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	bne _0223F59C
	b _0223F6D4
_0223F59C:
	mov r0, #0x63
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F5A2:
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	ldr r0, [r4, #0x10]
	lsl r1, r0, #3
	ldr r0, _0223F5C4 ; =0x02248EA8
	b _0223F5C8
	; .align 2, 0
_0223F5B0: .word 0x001F7000
_0223F5B4: .word 0x001F9000
_0223F5B8: .word 0x0400006C
_0223F5BC: .word 0x000001E1
_0223F5C0: .word 0x0015D000
_0223F5C4: .word 0x02248EA8
_0223F5C8:
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _0223F5E0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0223F5EE
_0223F5E0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0223F5EE:
	bl sub_020E1740
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	ldr r0, [r4, #0x10]
	lsl r1, r0, #3
	ldr r0, _0223F740 ; =0x02248EAC
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _0223F616
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0223F624
_0223F616:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0223F624:
	bl sub_020E1740
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #0x14
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #0x14
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F668:
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, r4, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0xe4
	add r3, #0xf4
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223F6D4
	cmp r6, #0
	beq _0223F6D4
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F6D4
_0223F6CA:
	mov r0, #0
	str r0, [r4, #0x18]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223F6D4:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0223F738
	cmp r0, #0x14
	bne _0223F6F6
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0206296C
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02065638
_0223F6F6:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x28
	bne _0223F714
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0206296C
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02065638
_0223F714:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x32
	bne _0223F732
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0206296C
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02065638
_0223F732:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_0223F738:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223F740: .word 0x02248EAC
	thumb_func_end ov6_0223EE5C

	thumb_func_start ov6_0223F744
ov6_0223F744: ; 0x0223F744
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #6
	bgt _0223F76E
	cmp r1, #0
	blt _0223F774
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F760: ; jump table
	.short _0223F776 - _0223F760 - 2 ; case 0
	.short _0223F7C8 - _0223F760 - 2 ; case 1
	.short _0223F82A - _0223F760 - 2 ; case 2
	.short _0223F87C - _0223F760 - 2 ; case 3
	.short _0223F8F2 - _0223F760 - 2 ; case 4
	.short _0223F946 - _0223F760 - 2 ; case 5
	.short _0223F9A8 - _0223F760 - 2 ; case 6
_0223F76E:
	cmp r1, #0x63
	bne _0223F774
	b _0223F9C6
_0223F774:
	b _0223F9CC
_0223F776:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F9DC ; =0x0025E000
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F9E0 ; =0x00172000
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #8
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #8
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F7C8:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xe4
	add r3, #0xf4
	add r6, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223F8D2
	cmp r6, #0
	beq _0223F8D2
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F82A:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F9E4 ; =0x001B6000
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F9E8 ; =0x001BA000
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #8
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #8
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F87C:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xe4
	add r3, #0xf4
	add r6, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	bne _0223F8D4
_0223F8D2:
	b _0223F9D6
_0223F8D4:
	cmp r6, #0
	beq _0223F9D6
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	ldr r1, _0223F9EC ; =0x000001E2
	str r0, [sp, #4]
	add r2, r0, #0
	mov r3, #0x64
	bl sub_020059D0
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F8F2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	mov r1, #0x7e
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223F9F0 ; =0x00151000
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02017358
	add r2, r4, #0
	add r2, #0xd4
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #8
	bl ov6_0223FD0C
	add r2, r4, #0
	add r2, #0xd8
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #8
	bl ov6_0223FD0C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F946:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x24
	add r1, sp, #0x10
	add r3, sp, #8
	bl sub_02017358
	add r1, r4, #0
	add r1, #0xd0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r4, #0
	add r1, #0xd0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xe4
	add r3, #0xf4
	add r6, r0, #0
	add r0, r4, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r5, #0
	beq _0223F9D6
	cmp r6, #0
	beq _0223F9D6
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F9A8:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0xf
	ble _0223F9D6
	mov r0, #0x63
	str r0, [r4, #0x18]
	b _0223F9D6
_0223F9C6:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_0223F9CC:
	mov r0, #0
	str r0, [r4, #0x18]
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223F9D6:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223F9DC: .word 0x0025E000
_0223F9E0: .word 0x00172000
_0223F9E4: .word 0x001B6000
_0223F9E8: .word 0x001BA000
_0223F9EC: .word 0x000001E2
_0223F9F0: .word 0x00151000
	thumb_func_end ov6_0223F744

	thumb_func_start ov6_0223F9F4
ov6_0223F9F4: ; 0x0223F9F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0223FA0A
	cmp r1, #1
	beq _0223FA36
	cmp r1, #2
	beq _0223FA88
	b _0223FAE8
_0223FA0A:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0223FA1A
	cmp r1, #1
	beq _0223FA20
	cmp r1, #2
	beq _0223FA26
	b _0223FA2A
_0223FA1A:
	bl ov6_0223EBDC
	b _0223FA2A
_0223FA20:
	bl ov6_0223F744
	b _0223FA2A
_0223FA26:
	bl ov6_0223EE5C
_0223FA2A:
	cmp r0, #0
	beq _0223FAEE
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	b _0223FAEE
_0223FA36:
	mov r1, #0x7e
	lsl r1, r1, #0xe
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, _0223FAF4 ; =0x001B7000
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x24
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	add r2, r5, #0
	add r2, #0xd4
	add r0, r5, #0
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	add r0, #0xe4
	mov r3, #6
	bl ov6_0223FD0C
	add r2, r5, #0
	add r2, #0xd8
	add r0, r5, #0
	ldr r1, [sp]
	ldr r2, [r2, #0]
	add r0, #0xf4
	mov r3, #6
	bl ov6_0223FD0C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	b _0223FAEE
_0223FA88:
	add r0, #0x24
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	add r1, r5, #0
	add r1, #0xd0
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0xe4
	bl ov6_0223FD18
	add r1, r5, #0
	add r1, #0xd0
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0xf4
	bl ov6_0223FD18
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r3, r5, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r1, r5, #0
	add r1, #0xe4
	add r3, #0xf4
	add r0, r5, #0
	ldr r1, [r1, #0]
	ldr r2, [sp, #4]
	ldr r3, [r3, #0]
	add r0, #0x24
	bl sub_02017350
	cmp r4, #0
	beq _0223FAEE
	cmp r6, #0
	beq _0223FAEE
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	b _0223FAEE
_0223FAE8:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223FAEE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223FAF4: .word 0x001B7000
	thumb_func_end ov6_0223F9F4

	thumb_func_start ov6_0223FAF8
ov6_0223FAF8: ; 0x0223FAF8
	push {r3, r4, r5, lr}
	sub sp, #0x28
	ldr r5, _0223FCAC ; =0x02248E20
	add r3, r1, #0
	ldmia r5!, {r0, r1}
	add r4, r2, #0
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223FB1C
	cmp r0, #1
	beq _0223FBAE
	cmp r0, #2
	beq _0223FBF8
	b _0223FC40
_0223FB1C:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223FB36
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	b _0223FC74
_0223FB36:
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0223FB4C
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223FCB0 ; =0x0400006C
	bl sub_020BDEC4
	b _0223FC74
_0223FB4C:
	ldr r1, [r3, #0x24]
	add r0, sp, #0x1c
	bl sub_02020AAC
	ldr r5, _0223FCB4 ; =0x02248E14
	add r3, sp, #4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	ble _0223FB7E
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0223FB8C
_0223FB7E:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0223FB8C:
	bl sub_020E1740
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x63
	mov r3, #5
	add r0, #0x24
	lsl r2, r2, #0xc
	lsl r3, r3, #0x12
	bl sub_02017350
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223FC74
_0223FBAE:
	add r0, r4, #0
	bl ov6_0223F9F4
	cmp r0, #0
	beq _0223FBCA
	ldr r0, _0223FCB8 ; =0x000006D6
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223FBF8
_0223FBCA:
	ldr r0, [r4, #0x20]
	add r2, r0, #1
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x10]
	lsl r1, r0, #2
	add r0, sp, #0x10
	ldr r0, [r0, r1]
	cmp r0, r2
	bge _0223FC74
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	beq _0223FBF2
	add r0, r0, #2
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223FCB0 ; =0x0400006C
	bl sub_020BDEC4
	b _0223FC74
_0223FBF2:
	mov r0, #0
	str r0, [r4, #0x20]
	b _0223FC74
_0223FBF8:
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	beq _0223FC0E
	add r0, r0, #2
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223FCB0 ; =0x0400006C
	bl sub_020BDEC4
	b _0223FC74
_0223FC0E:
	ldr r0, [r4, #0x10]
	mov r1, #0x1e
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov6_0223EB34
	ldr r0, [r4, #0x10]
	cmp r0, #3
	beq _0223FC38
	add r0, r4, #0
	bl ov6_0223EA98
	mov r0, #0
	str r0, [r4, #0]
	b _0223FC74
_0223FC38:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223FC74
_0223FC40:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223FC5A
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xd0
	str r1, [r0, #0]
	b _0223FC74
_0223FC5A:
	mov r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0223FC70
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrsh r1, [r4, r1]
	ldr r0, _0223FCB0 ; =0x0400006C
	bl sub_020BDEC4
	b _0223FC74
_0223FC70:
	mov r0, #6
	str r0, [r4, #0]
_0223FC74:
	ldr r0, [r4, #0x10]
	cmp r0, #3
	beq _0223FCA8
	ldr r1, _0223FCBC ; =0x04000454
	mov r0, #0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xac
	lsr r1, r1, #0xe
	bl sub_020171CC
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	add r4, #0x24
	add r0, r4, #0
	bl sub_02017294
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
_0223FCA8:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223FCAC: .word 0x02248E20
_0223FCB0: .word 0x0400006C
_0223FCB4: .word 0x02248E14
_0223FCB8: .word 0x000006D6
_0223FCBC: .word 0x04000454
	thumb_func_end ov6_0223FAF8

	thumb_func_start ov6_0223FCC0
ov6_0223FCC0: ; 0x0223FCC0
	ldr r3, _0223FCC8 ; =ov6_022400C4
	ldr r0, [r2, #8]
	bx r3
	nop
_0223FCC8: .word ov6_022400C4
	thumb_func_end ov6_0223FCC0

	thumb_func_start ov6_0223FCCC
ov6_0223FCCC: ; 0x0223FCCC
	ldr r0, [r0, #4]
	ldr r3, _0223FCD8 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0223FCDC ; =0x02248E60
	bx r3
	nop
_0223FCD8: .word FUN_021D1B6C
_0223FCDC: .word 0x02248E60
	thumb_func_end ov6_0223FCCC

	thumb_func_start ov6_0223FCE0
ov6_0223FCE0: ; 0x0223FCE0
	ldr r3, _0223FCE4 ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_0223FCE4: .word FUN_021D1BEC
	thumb_func_end ov6_0223FCE0

	thumb_func_start ov6_0223FCE8
ov6_0223FCE8: ; 0x0223FCE8
	push {r3, lr}
	bl FUN_021D1C2C
	mov r1, #3
	str r1, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov6_0223FCE8

	thumb_func_start ov6_0223FCF4
ov6_0223FCF4: ; 0x0223FCF4
	push {r3, lr}
	bl FUN_021D1C2C
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0223FCF4

	thumb_func_start ov6_0223FD00
ov6_0223FD00: ; 0x0223FD00
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov6_0223FD00

	thumb_func_start ov6_0223FD0C
ov6_0223FD0C: ; 0x0223FD0C
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov6_0223FD0C

	thumb_func_start ov6_0223FD18
ov6_0223FD18: ; 0x0223FD18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0xc]
	add r2, r1, #0
	cmp r2, r4
	blt _0223FD2A
	add r2, r4, #0
	mov r6, #1
	b _0223FD2C
_0223FD2A:
	mov r6, #0
_0223FD2C:
	ldr r0, [r5, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r4, #0xc
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_0223FD18

	thumb_func_start ov6_0223FD58
ov6_0223FD58: ; 0x0223FD58
	push {r3, lr}
	bl sub_020170BC
	pop {r3, pc}
	thumb_func_end ov6_0223FD58

	thumb_func_start ov6_0223FD60
ov6_0223FD60: ; 0x0223FD60
	push {r3, lr}
	bl sub_020170D8
	pop {r3, pc}
	thumb_func_end ov6_0223FD60

	thumb_func_start ov6_0223FD68
ov6_0223FD68: ; 0x0223FD68
	ldr r3, _0223FD6C ; =sub_02017110
	bx r3
	; .align 2, 0
_0223FD6C: .word sub_02017110
	thumb_func_end ov6_0223FD68

	thumb_func_start ov6_0223FD70
ov6_0223FD70: ; 0x0223FD70
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02017164
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov6_0223FD70

	thumb_func_start ov6_0223FD84
ov6_0223FD84: ; 0x0223FD84
	ldr r3, _0223FD88 ; =sub_020171A0
	bx r3
	; .align 2, 0
_0223FD88: .word sub_020171A0
	thumb_func_end ov6_0223FD84

	thumb_func_start ov6_0223FD8C
ov6_0223FD8C: ; 0x0223FD8C
	ldr r3, _0223FD94 ; =sub_020171CC
	mov r1, #1
	lsl r1, r1, #0xc
	bx r3
	; .align 2, 0
_0223FD94: .word sub_020171CC
	thumb_func_end ov6_0223FD8C

	thumb_func_start ov6_0223FD98
ov6_0223FD98: ; 0x0223FD98
	ldr r3, _0223FDA0 ; =sub_02017204
	mov r1, #1
	lsl r1, r1, #0xc
	bx r3
	; .align 2, 0
_0223FDA0: .word sub_02017204
	thumb_func_end ov6_0223FD98

	thumb_func_start ov6_0223FDA4
ov6_0223FDA4: ; 0x0223FDA4
	ldr r3, _0223FDA8 ; =sub_02017240
	bx r3
	; .align 2, 0
_0223FDA8: .word sub_02017240
	thumb_func_end ov6_0223FDA4

	thumb_func_start ov6_0223FDAC
ov6_0223FDAC: ; 0x0223FDAC
	ldr r3, _0223FDB0 ; =sub_02017258
	bx r3
	; .align 2, 0
_0223FDB0: .word sub_02017258
	thumb_func_end ov6_0223FDAC

	thumb_func_start ov6_0223FDB4
ov6_0223FDB4: ; 0x0223FDB4
	ldr r3, _0223FDB8 ; =sub_0201727C
	bx r3
	; .align 2, 0
_0223FDB8: .word sub_0201727C
	thumb_func_end ov6_0223FDB4

	thumb_func_start ov6_0223FDBC
ov6_0223FDBC: ; 0x0223FDBC
	ldr r3, _0223FDC0 ; =sub_02017294
	bx r3
	; .align 2, 0
_0223FDC0: .word sub_02017294
	thumb_func_end ov6_0223FDBC

	thumb_func_start ov6_0223FDC4
ov6_0223FDC4: ; 0x0223FDC4
	ldr r3, _0223FDC8 ; =sub_02017348
	bx r3
	; .align 2, 0
_0223FDC8: .word sub_02017348
	thumb_func_end ov6_0223FDC4

	thumb_func_start ov6_0223FDCC
ov6_0223FDCC: ; 0x0223FDCC
	push {r3, lr}
	bl sub_02017350
	pop {r3, pc}
	thumb_func_end ov6_0223FDCC

	thumb_func_start ov6_0223FDD4
ov6_0223FDD4: ; 0x0223FDD4
	push {r3, lr}
	bl sub_0201736C
	pop {r3, pc}
	thumb_func_end ov6_0223FDD4

	thumb_func_start ov6_0223FDDC
ov6_0223FDDC: ; 0x0223FDDC
	ldr r3, _0223FDE0 ; =sub_02017388
	bx r3
	; .align 2, 0
_0223FDE0: .word sub_02017388
	thumb_func_end ov6_0223FDDC

	thumb_func_start ov6_0223FDE4
ov6_0223FDE4: ; 0x0223FDE4
	push {r3, r4, r5, lr}
	mov r1, #0x4c
	add r5, r0, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_020203AC
	str r0, [r4, #0]
	mov r0, #5
	str r0, [r4, #0x40]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_0223FDE4

	thumb_func_start ov6_0223FE08
ov6_0223FE08: ; 0x0223FE08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020203B8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0223FE08

	thumb_func_start ov6_0223FE1C
ov6_0223FE1C: ; 0x0223FE1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bl ov6_0223FF7C
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, #0]
	bl sub_020203C0
	ldr r1, [sp, #0x2c]
	add r0, sp, #4
	bl sub_02020AAC
	add r3, sp, #4
	add r2, r5, #0
	add r2, #0x28
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r6, #0
	str r0, [r2, #0]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02020690
	ldr r0, [r5, #0]
	bl sub_020203D4
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #8
	add r2, r7, #0
	add r3, r4, #0
	bl ov6_0223FD0C
	add r0, r5, #0
	ldr r2, [sp]
	add r0, #0x18
	mov r1, #0
	add r3, r4, #0
	bl ov6_0223FD0C
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x48]
	ldr r0, _0223FE98 ; =0x000006D5
	bl sub_02005748
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FE98: .word 0x000006D5
	thumb_func_end ov6_0223FE1C

	thumb_func_start ov6_0223FE9C
ov6_0223FE9C: ; 0x0223FE9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	cmp r1, #5
	bhi _0223FF68
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FEB2: ; jump table
	.short _0223FEBE - _0223FEB2 - 2 ; case 0
	.short _0223FEE0 - _0223FEB2 - 2 ; case 1
	.short _0223FF02 - _0223FEB2 - 2 ; case 2
	.short _0223FF28 - _0223FEB2 - 2 ; case 3
	.short _0223FF5C - _0223FEB2 - 2 ; case 4
	.short _0223FF68 - _0223FEB2 - 2 ; case 5
_0223FEBE:
	ldr r1, [r4, #0x44]
	add r1, r1, #1
	str r1, [r4, #0x44]
	bl ov6_0223FFC8
	add r5, r0, #0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x18]
	add r0, r4, #0
	bl ov6_0223FFE4
	cmp r5, #1
	bne _0223FF68
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_0223FEE0:
	ldr r1, [r4, #0x44]
	sub r1, r1, #1
	str r1, [r4, #0x44]
	bl ov6_0223FFC8
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x18]
	add r0, r4, #0
	bl ov6_0223FFE4
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _0223FF68
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_0223FF02:
	ldr r1, [r4, #0x44]
	add r1, r1, #1
	str r1, [r4, #0x44]
	bl ov6_0223FFC8
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x18]
	add r5, r0, #0
	add r0, r4, #0
	neg r1, r1
	neg r2, r2
	bl ov6_0223FFE4
	cmp r5, #1
	bne _0223FF68
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_0223FF28:
	ldr r1, [r4, #0x44]
	sub r1, r1, #1
	str r1, [r4, #0x44]
	bl ov6_0223FFC8
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x18]
	add r0, r4, #0
	neg r1, r1
	neg r2, r2
	bl ov6_0223FFE4
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _0223FF68
	ldr r0, [r4, #0x48]
	sub r0, r0, #1
	str r0, [r4, #0x48]
	beq _0223FF54
	mov r0, #0
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_0223FF54:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
_0223FF5C:
	ldr r0, [r4, #4]
	bl sub_020203D4
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
_0223FF68:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_0223FE9C

	thumb_func_start ov6_0223FF6C
ov6_0223FF6C: ; 0x0223FF6C
	ldr r0, [r0, #0x40]
	cmp r0, #5
	bne _0223FF76
	mov r0, #1
	bx lr
_0223FF76:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov6_0223FF6C

	thumb_func_start ov6_0223FF7C
ov6_0223FF7C: ; 0x0223FF7C
	add r3, r0, #0
	add r3, #8
	mov r2, #0x10
	mov r1, #0
_0223FF84:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0223FF84
	add r3, r0, #0
	add r3, #0x18
	mov r2, #0x10
	mov r1, #0
_0223FF94:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0223FF94
	add r1, r0, #0
	add r3, r0, #0
	mov r2, #0
	add r1, #0x28
	add r3, #0x28
	strb r2, [r1]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	strb r2, [r3, #8]
	strb r2, [r3, #9]
	strb r2, [r3, #0xa]
	strb r2, [r3, #0xb]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_0223FF7C

	thumb_func_start ov6_0223FFC8
ov6_0223FFC8: ; 0x0223FFC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x44]
	add r0, #8
	bl ov6_0223FD18
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x44]
	add r0, #0x18
	bl ov6_0223FD18
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_0223FFC8

	thumb_func_start ov6_0223FFE4
ov6_0223FFE4: ; 0x0223FFE4
	ldr r3, [r0, #0x34]
	add r1, r3, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	add r1, r1, r2
	str r1, [r0, #0x2c]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_0223FFE4

	thumb_func_start ov6_0223FFF4
ov6_0223FFF4: ; 0x0223FFF4
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end ov6_0223FFF4

	thumb_func_start ov6_0223FFF8
ov6_0223FFF8: ; 0x0223FFF8
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov6_0223FFF8

	thumb_func_start ov6_0223FFFC
ov6_0223FFFC: ; 0x0223FFFC
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov6_0223FFFC

	thumb_func_start ov6_02240000
ov6_02240000: ; 0x02240000
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #3
	beq _0224001E
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0224001E
	bl sub_0200DA58
	mov r0, #0
	str r0, [r5, #0x20]
_0224001E:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov6_0223FD00
	mov r0, #0
	str r0, [r5, #0x10]
	str r0, [r5, #0x1c]
	str r6, [r5, #0x18]
	str r4, [r5, #0x14]
	ldr r0, _02240054 ; =0x0400006C
	ldr r1, [r5, #0]
	bl sub_020BDEC4
	mov r2, #1
	ldr r0, _02240058 ; =ov6_02240064
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
	str r0, [r5, #0x20]
	ldr r0, _0224005C ; =0x000006D4
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240054: .word 0x0400006C
_02240058: .word ov6_02240064
_0224005C: .word 0x000006D4
	thumb_func_end ov6_02240000

	thumb_func_start ov6_02240060
ov6_02240060: ; 0x02240060
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov6_02240060

	thumb_func_start ov6_02240064
ov6_02240064: ; 0x02240064
	ldr r3, _0224006C ; =sub_020BDEC4
	ldr r0, _02240070 ; =0x0400006C
	ldr r1, [r1, #0]
	bx r3
	; .align 2, 0
_0224006C: .word sub_020BDEC4
_02240070: .word 0x0400006C
	thumb_func_end ov6_02240064

	thumb_func_start ov6_02240074
ov6_02240074: ; 0x02240074
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #6
	bl sub_02018144
	mov r2, #5
	mov r1, #0
	lsl r2, r2, #6
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x4b
	str r5, [r4, #0]
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0x10
	add r0, r4, r0
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02240074

	thumb_func_start ov6_022400A8
ov6_022400A8: ; 0x022400A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #5
	beq _022400BA
	bl sub_02022974
_022400BA:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022400A8

	thumb_func_start ov6_022400C4
ov6_022400C4: ; 0x022400C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022400FC
	sub r0, r0, #4
	cmp r0, #1
	bls _022400FC
	ldr r0, _02240100 ; =0x04000454
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	add r4, #0x40
	add r0, r4, #0
	bl ov6_0223FDBC
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
_022400FC:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02240100: .word 0x04000454
	thumb_func_end ov6_022400C4

	thumb_func_start ov6_02240104
ov6_02240104: ; 0x02240104
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x12
	lsl r1, r1, #4
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x12
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	str r6, [r4, #4]
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #0x47
	lsl r0, r0, #2
	str r5, [r4, r0]
	sub r0, #0x10
	add r0, r4, r0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020182CC
	mov r2, #0x47
	lsl r2, r2, #2
	add r0, r4, #0
	ldr r1, [r4, r2]
	sub r2, #0x10
	add r0, #0x34
	add r2, r4, r2
	bl ov6_02240260
	ldr r0, [r4, #4]
	bl sub_0203D170
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xac
	mov r1, #0x4a
	add r2, r6, #0
	mov r3, #2
	str r5, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xac
	mov r1, #0x4c
	add r2, r6, #0
	mov r3, #2
	str r5, [sp, #0xc]
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xac
	mov r1, #0x4b
	mov r2, #0
	mov r3, #0xc0
	str r5, [sp, #4]
	bl sub_02006E84
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	mov r0, #0
	str r0, [r4, #0x34]
	mov r0, #0x1f
	str r0, [r4, #0x38]
	str r0, [sp]
	ldr r0, _022401B4 ; =0x04000050
	ldr r3, [r4, #0x34]
	mov r1, #4
	mov r2, #1
	bl sub_020BF55C
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022401B4: .word 0x04000050
	thumb_func_end ov6_02240104

	thumb_func_start ov6_022401B8
ov6_022401B8: ; 0x022401B8
	push {r4, lr}
	mov r1, #0x43
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r0, #0x34
	bl ov6_02240340
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov6_022401B8

	thumb_func_start ov6_022401D0
ov6_022401D0: ; 0x022401D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r1, #0
	ldr r1, [r4, #4]
	add r0, #8
	mov r2, #1
	bl ov6_02240240
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02063050
	add r0, r4, #0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, #0x34
	bl ov6_022402E4
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #8
	add r2, r5, #0
	bl ov6_02240240
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02063050
	mov r0, #1
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_022401D0

	thumb_func_start ov6_02240214
ov6_02240214: ; 0x02240214
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224021E
	cmp r0, #5
	bne _02240222
_0224021E:
	mov r0, #1
	bx lr
_02240222:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02240214

	thumb_func_start ov6_02240228
ov6_02240228: ; 0x02240228
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02240214
	cmp r0, #1
	beq _0224023C
	add r4, #0x34
	add r0, r4, #0
	bl ov6_02240600
_0224023C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02240228

	thumb_func_start ov6_02240240
ov6_02240240: ; 0x02240240
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x38]
	add r1, r2, #0
	bl sub_0206251C
	str r0, [r4, #0]
	cmp r0, #0
	bne _02240256
	bl sub_02022974
_02240256:
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02240240

	thumb_func_start ov6_02240260
ov6_02240260: ; 0x02240260
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #8]
	mov r0, #0xac
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02006C24
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, #0x80
	mov r2, #6
	add r3, r6, #0
	bl ov6_0223FD60
	ldr r0, [sp, #8]
	ldr r5, [sp, #8]
	str r0, [sp, #0x10]
	add r0, #0x80
	mov r4, #0
	add r5, #0x90
	str r0, [sp, #0x10]
_0224028E:
	ldr r1, [sp, #0x10]
	str r6, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r3, r4, #4
	str r7, [sp, #4]
	bl ov6_0223FD70
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #2
	blt _0224028E
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, #8
	add r1, #0x80
	bl ov6_0223FDAC
	ldr r4, [sp, #8]
	ldr r6, [sp, #8]
	mov r5, #0
	add r4, #0x90
	add r6, #8
_022402BC:
	add r0, r6, #0
	add r1, r4, #0
	bl ov6_0223FDB4
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #2
	blt _022402BC
	ldr r0, [sp, #8]
	mov r1, #0
	add r0, #8
	str r0, [sp, #8]
	bl ov6_0223FDC4
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02240260

	thumb_func_start ov6_022402E4
ov6_022402E4: ; 0x022402E4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #8
	bl ov6_0223FDCC
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r6, #0
	add r0, #8
	add r2, r1, #0
	add r3, r1, #0
	bl ov6_0223FDD4
	mov r4, #0
	add r5, r6, #0
	add r5, #0x90
	add r7, r4, #0
_02240306:
	add r0, r5, #0
	add r1, r7, #0
	bl ov6_0223FDA4
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #2
	blt _02240306
	add r0, r6, #0
	mov r2, #0
	add r0, #0xcc
	str r2, [r0, #0]
	add r0, r6, #0
	add r0, #0xb8
	str r2, [r0, #0]
	add r0, r6, #0
	mov r1, #0x52
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xd4
	add r6, #8
	str r2, [r0, #0]
	add r0, r6, #0
	mov r1, #1
	bl ov6_0223FDC4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022402E4

	thumb_func_start ov6_02240340
ov6_02240340: ; 0x02240340
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	add r6, r1, #0
	bl ov6_0223FD68
	mov r4, #0
	add r5, #0x90
_02240350:
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_0223FD84
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #2
	blt _02240350
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02240340

	thumb_func_start ov6_02240364
ov6_02240364: ; 0x02240364
	push {r3, r4, r5, r6}
	sub sp, #8
	add r3, r1, #0
	add r1, r2, #0
	mov r6, #0
	add r2, sp, #0
	str r6, [r2, #0]
	str r6, [r2, #4]
	ldr r2, _022405C8 ; =0x021BF67C
	add r0, #0x34
	ldr r4, [r2, #0x48]
	mov r2, #0x40
	tst r2, r4
	beq _02240392
	ldr r2, [r0, #0]
	add r2, r2, #1
	lsr r5, r2, #0x1f
	lsl r4, r2, #0x1b
	sub r4, r4, r5
	mov r2, #0x1b
	ror r4, r2
	add r2, r5, r4
	str r2, [r0, #0]
_02240392:
	ldr r2, _022405C8 ; =0x021BF67C
	ldr r4, [r2, #0x48]
	mov r2, #0x80
	tst r2, r4
	beq _022403AC
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _022403A8
	sub r2, r2, #1
	str r2, [r0, #0]
	b _022403AC
_022403A8:
	mov r2, #0x1f
	str r2, [r0, #0]
_022403AC:
	ldr r2, _022405C8 ; =0x021BF67C
	ldr r4, [r2, #0x48]
	mov r2, #0x10
	tst r2, r4
	beq _022403C8
	ldr r2, [r0, #4]
	add r2, r2, #1
	lsr r5, r2, #0x1f
	lsl r4, r2, #0x1b
	sub r4, r4, r5
	mov r2, #0x1b
	ror r4, r2
	add r2, r5, r4
	str r2, [r0, #4]
_022403C8:
	ldr r2, _022405C8 ; =0x021BF67C
	ldr r4, [r2, #0x48]
	mov r2, #0x20
	tst r2, r4
	beq _022403E2
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _022403DE
	sub r2, r2, #1
	str r2, [r0, #4]
	b _022403E2
_022403DE:
	mov r2, #0x1f
	str r2, [r0, #4]
_022403E2:
	cmp r1, #0xe
	bls _022403E8
	b _02240584
_022403E8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022403F4: ; jump table
	.short _02240412 - _022403F4 - 2 ; case 0
	.short _02240426 - _022403F4 - 2 ; case 1
	.short _02240426 - _022403F4 - 2 ; case 2
	.short _02240426 - _022403F4 - 2 ; case 3
	.short _02240426 - _022403F4 - 2 ; case 4
	.short _0224046C - _022403F4 - 2 ; case 5
	.short _0224046C - _022403F4 - 2 ; case 6
	.short _0224046C - _022403F4 - 2 ; case 7
	.short _0224046C - _022403F4 - 2 ; case 8
	.short _022404B2 - _022403F4 - 2 ; case 9
	.short _022404B2 - _022403F4 - 2 ; case 10
	.short _022404F8 - _022403F4 - 2 ; case 11
	.short _022404F8 - _022403F4 - 2 ; case 12
	.short _0224053E - _022403F4 - 2 ; case 13
	.short _0224053E - _022403F4 - 2 ; case 14
_02240412:
	ldr r1, [r0, #4]
	cmp r1, #0x10
	ble _0224041E
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_0224041E:
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp]
	b _022405A4
_02240426:
	cmp r3, #0
	ldr r1, [r0, #0]
	beq _0224044C
	cmp r1, #8
	bge _02240436
	add r1, r1, #1
	str r1, [r0, #0]
	b _0224043A
_02240436:
	mov r1, #1
	str r1, [sp]
_0224043A:
	ldr r1, [r0, #4]
	cmp r1, #8
	ble _02240446
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_02240446:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_0224044C:
	cmp r1, #2
	ble _02240456
	sub r1, r1, #1
	str r1, [r0, #0]
	b _0224045A
_02240456:
	mov r1, #1
	str r1, [sp]
_0224045A:
	ldr r1, [r0, #4]
	cmp r1, #0xe
	bge _02240466
	add r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_02240466:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_0224046C:
	cmp r3, #0
	ldr r1, [r0, #0]
	beq _02240492
	cmp r1, #8
	bge _0224047C
	add r1, r1, #1
	str r1, [r0, #0]
	b _02240480
_0224047C:
	mov r1, #1
	str r1, [sp]
_02240480:
	ldr r1, [r0, #4]
	cmp r1, #8
	ble _0224048C
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_0224048C:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_02240492:
	cmp r1, #3
	ble _0224049C
	sub r1, r1, #1
	str r1, [r0, #0]
	b _022404A0
_0224049C:
	mov r1, #1
	str r1, [sp]
_022404A0:
	ldr r1, [r0, #4]
	cmp r1, #0xd
	bge _022404AC
	add r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_022404AC:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_022404B2:
	cmp r3, #0
	ldr r1, [r0, #0]
	beq _022404D8
	cmp r1, #8
	bge _022404C2
	add r1, r1, #1
	str r1, [r0, #0]
	b _022404C6
_022404C2:
	mov r1, #1
	str r1, [sp]
_022404C6:
	ldr r1, [r0, #4]
	cmp r1, #8
	ble _022404D2
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_022404D2:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_022404D8:
	cmp r1, #4
	ble _022404E2
	sub r1, r1, #1
	str r1, [r0, #0]
	b _022404E6
_022404E2:
	mov r1, #1
	str r1, [sp]
_022404E6:
	ldr r1, [r0, #4]
	cmp r1, #0xc
	bge _022404F2
	add r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_022404F2:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_022404F8:
	cmp r3, #0
	ldr r1, [r0, #0]
	beq _0224051E
	cmp r1, #8
	bge _02240508
	add r1, r1, #1
	str r1, [r0, #0]
	b _0224050C
_02240508:
	mov r1, #1
	str r1, [sp]
_0224050C:
	ldr r1, [r0, #4]
	cmp r1, #8
	ble _02240518
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_02240518:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_0224051E:
	cmp r1, #5
	ble _02240528
	sub r1, r1, #1
	str r1, [r0, #0]
	b _0224052C
_02240528:
	mov r1, #1
	str r1, [sp]
_0224052C:
	ldr r1, [r0, #4]
	cmp r1, #0xb
	bge _02240538
	add r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_02240538:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_0224053E:
	cmp r3, #0
	ldr r1, [r0, #0]
	beq _02240564
	cmp r1, #8
	bge _0224054E
	add r1, r1, #1
	str r1, [r0, #0]
	b _02240552
_0224054E:
	mov r1, #1
	str r1, [sp]
_02240552:
	ldr r1, [r0, #4]
	cmp r1, #8
	ble _0224055E
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_0224055E:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_02240564:
	cmp r1, #6
	ble _0224056E
	sub r1, r1, #1
	str r1, [r0, #0]
	b _02240572
_0224056E:
	mov r1, #1
	str r1, [sp]
_02240572:
	ldr r1, [r0, #4]
	cmp r1, #0xa
	bge _0224057E
	add r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_0224057E:
	mov r1, #1
	str r1, [sp, #4]
	b _022405A4
_02240584:
	ldr r1, [r0, #0]
	cmp r1, #0
	ble _02240590
	sub r1, r1, #1
	str r1, [r0, #0]
	b _02240594
_02240590:
	mov r1, #1
	str r1, [sp]
_02240594:
	ldr r1, [r0, #4]
	cmp r1, #0
	ble _022405A0
	sub r1, r1, #1
	str r1, [r0, #4]
	b _022405A4
_022405A0:
	mov r1, #1
	str r1, [sp, #4]
_022405A4:
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _022405CC ; =0x04000052
	strh r1, [r0]
	ldr r0, [sp]
	cmp r0, #0
	beq _022405BE
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022405BE
	mov r6, #1
_022405BE:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6}
	bx lr
	nop
_022405C8: .word 0x021BF67C
_022405CC: .word 0x04000052
	thumb_func_end ov6_02240364

	thumb_func_start ov6_022405D0
ov6_022405D0: ; 0x022405D0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r7, #0x34
	add r5, r7, #0
	mov r4, #0
	add r5, #0x90
_022405DC:
	add r0, r5, #0
	bl ov6_0223FD98
	add r4, r4, #1
	add r6, r0, #0
	add r5, #0x14
	cmp r4, #2
	blt _022405DC
	cmp r6, #0
	beq _022405FA
	add r7, #8
	add r0, r7, #0
	mov r1, #0
	bl ov6_0223FDC4
_022405FA:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022405D0

	thumb_func_start ov6_02240600
ov6_02240600: ; 0x02240600
	ldr r3, _02240608 ; =ov6_0223FDBC
	add r0, #8
	bx r3
	nop
_02240608: .word ov6_0223FDBC
	thumb_func_end ov6_02240600

	thumb_func_start ov6_0224060C
ov6_0224060C: ; 0x0224060C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x1e
	lsl r1, r1, #4
	add r4, r0, #0
	bl sub_02018144
	mov r2, #0x1e
	add r6, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	add r0, r6, #0
	mov r1, #0x62
	add r2, r5, #0
	add r3, r4, #0
	bl ov6_0223FD58
	add r5, r6, #0
	mov r4, #0
	add r5, #0x10
_02240638:
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_022407B8
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _02240638
	mov r0, #7
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r6, r0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_0224060C

	thumb_func_start ov6_02240654
ov6_02240654: ; 0x02240654
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x10
_0224065E:
	add r0, r5, #0
	bl ov6_022407DC
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _0224065E
	add r0, r6, #0
	bl ov6_0223FD68
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02240654

	thumb_func_start ov6_0224067C
ov6_0224067C: ; 0x0224067C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _02240694
	bl sub_02022974
_02240694:
	mov r0, #0x71
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #0
	add r1, #8
	str r4, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	str r6, [r5, r1]
	add r1, r0, #0
	add r1, #0x10
	str r7, [r5, r1]
	add r2, sp, #8
	add r1, r0, #0
	ldrh r3, [r2, #0x14]
	add r1, #0x14
	strh r3, [r5, r1]
	add r1, r0, #0
	ldrh r3, [r2, #0x18]
	add r1, #0x16
	strh r3, [r5, r1]
	add r1, r0, #0
	ldrh r2, [r2, #0x1c]
	add r1, #0x18
	strh r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [sp, #0x18]
	sub r0, r0, #4
	str r2, [r5, r1]
	mov r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_0224067C

	thumb_func_start ov6_022406D8
ov6_022406D8: ; 0x022406D8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r2, #0x71
	add r5, r0, #0
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r1, r1, #1
	str r1, [r5, r2]
	ldr r1, [r5, r2]
	cmp r1, #0
	bge _0224073A
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [r5, r2]
	bl ov6_022408A8
	add r4, r0, #0
	bne _02240700
	bl sub_02022974
_02240700:
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	mov r2, #1
	str r0, [sp]
	add r0, r1, #4
	ldr r0, [r5, r0]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r3, #0x60
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0xc
	ldrh r0, [r5, r0]
	str r0, [sp, #0xc]
	add r0, r1, #0
	add r0, #0xe
	ldrh r0, [r5, r0]
	add r1, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r5, r1]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov6_022407E8
_0224073A:
	mov r4, #0
	add r5, #0x10
_0224073E:
	add r0, r5, #0
	bl ov6_0224085C
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _0224073E
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022406D8

	thumb_func_start ov6_02240750
ov6_02240750: ; 0x02240750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x10
_02240758:
	add r0, r5, #0
	bl ov6_0224089C
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _02240758
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02240750

	thumb_func_start ov6_02240768
ov6_02240768: ; 0x02240768
	ldr r3, _02240770 ; =ov6_0224060C
	mov r1, #6
	bx r3
	nop
_02240770: .word ov6_0224060C
	thumb_func_end ov6_02240768

	thumb_func_start ov6_02240774
ov6_02240774: ; 0x02240774
	ldr r3, _02240778 ; =ov6_02240654
	bx r3
	; .align 2, 0
_02240778: .word ov6_02240654
	thumb_func_end ov6_02240774

	thumb_func_start ov6_0224077C
ov6_0224077C: ; 0x0224077C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r4, #0x40
	str r4, [sp]
	mov r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	lsl r5, r1, #0x10
	lsl r1, r4, #9
	add r1, r5, r1
	lsl r5, r2, #0x10
	mov r2, #0xa
	lsl r2, r2, #0x10
	add r2, r5, r2
	lsl r5, r3, #0x10
	lsl r3, r4, #0xa
	add r3, r5, r3
	bl ov6_0224067C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_0224077C

	thumb_func_start ov6_022407A8
ov6_022407A8: ; 0x022407A8
	ldr r3, _022407AC ; =ov6_022406D8
	bx r3
	; .align 2, 0
_022407AC: .word ov6_022406D8
	thumb_func_end ov6_022407A8

	thumb_func_start ov6_022407B0
ov6_022407B0: ; 0x022407B0
	ldr r3, _022407B4 ; =ov6_02240750
	bx r3
	; .align 2, 0
_022407B4: .word ov6_02240750
	thumb_func_end ov6_022407B0

	thumb_func_start ov6_022407B8
ov6_022407B8: ; 0x022407B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x90
	bl sub_020D5124
	add r0, r4, #4
	add r1, r5, #0
	bl ov6_0223FDAC
	add r0, r4, #4
	mov r1, #0
	bl ov6_0223FDC4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022407B8

	thumb_func_start ov6_022407DC
ov6_022407DC: ; 0x022407DC
	ldr r3, _022407E4 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x90
	bx r3
	; .align 2, 0
_022407E4: .word sub_020D5124
	thumb_func_end ov6_022407DC

	thumb_func_start ov6_022407E8
ov6_022407E8: ; 0x022407E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _022407FC
	bl sub_02022974
_022407FC:
	add r0, r5, #0
	add r0, #0x7c
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov6_0223FD0C
	add r0, r5, #4
	mov r1, #1
	bl ov6_0223FDC4
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #4
	bl ov6_0223FDCC
	mov r2, #1
	add r0, r5, #4
	add r1, r4, #0
	lsl r2, r2, #0xc
	add r3, r4, #0
	bl ov6_0223FDD4
	add r1, sp, #8
	ldrh r1, [r1, #0x1c]
	add r0, r5, #4
	mov r2, #0
	bl ov6_0223FDDC
	add r1, sp, #8
	ldrh r1, [r1, #0x20]
	add r0, r5, #4
	mov r2, #1
	bl ov6_0223FDDC
	add r1, sp, #8
	ldrh r1, [r1, #0x24]
	add r0, r5, #4
	mov r2, #2
	bl ov6_0223FDDC
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add r5, #0x8c
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022407E8

	thumb_func_start ov6_0224085C
ov6_0224085C: ; 0x0224085C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224089A
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0x8c
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0x7c
	bl ov6_0223FD18
	ldr r1, [r4, #0x7c]
	mov r2, #1
	add r5, r0, #0
	add r0, r4, #4
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl ov6_0223FDD4
	cmp r5, #1
	bne _0224089A
	mov r0, #0
	str r0, [r4, #0]
_0224089A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_0224085C

	thumb_func_start ov6_0224089C
ov6_0224089C: ; 0x0224089C
	ldr r3, _022408A4 ; =ov6_0223FDBC
	add r0, r0, #4
	bx r3
	nop
_022408A4: .word ov6_0223FDBC
	thumb_func_end ov6_0224089C

	thumb_func_start ov6_022408A8
ov6_022408A8: ; 0x022408A8
	mov r2, #0
	add r3, r0, #0
_022408AC:
	ldr r1, [r3, #0x10]
	cmp r1, #0
	bne _022408BC
	mov r1, #0x90
	add r0, #0x10
	mul r1, r2
	add r0, r0, r1
	bx lr
_022408BC:
	add r2, r2, #1
	add r3, #0x90
	cmp r2, #3
	blt _022408AC
	mov r0, #0
	bx lr
	thumb_func_end ov6_022408A8

	thumb_func_start ov6_022408C8
ov6_022408C8: ; 0x022408C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #0xd4
	add r6, r0, #0
	bl sub_02018144
	add r7, r0, #0
	mov r1, #0
	mov r2, #0xd4
	bl sub_020D5124
	add r0, r7, #0
	add r0, #0xc4
	add r1, r6, #0
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x62
	add r1, r6, #0
	bl sub_02006C24
	str r0, [sp, #8]
	add r0, r7, #0
	ldr r1, [sp, #8]
	add r0, #0x78
	add r2, r4, #0
	add r3, r6, #0
	bl ov6_0223FD60
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0xc4
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r5, r7, #0
	str r0, [sp, #0x10]
	add r0, #0x78
	mov r4, #0
	add r5, #0x88
	str r0, [sp, #0x10]
_0224091A:
	ldr r0, [sp, #0xc]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r4, #1
	bl ov6_0223FD70
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0224091A
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x78
	bl ov6_0223FDAC
	add r4, r7, #0
	mov r5, #0
	add r4, #0x88
_02240944:
	add r0, r7, #0
	add r1, r4, #0
	bl ov6_0223FDB4
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #3
	blt _02240944
	add r0, r7, #0
	mov r1, #0
	bl ov6_0223FDC4
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_022408C8

	thumb_func_start ov6_02240968
ov6_02240968: ; 0x02240968
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x78
	bl ov6_0223FD68
	add r5, r7, #0
	add r6, r7, #0
	mov r4, #0
	add r5, #0x88
	add r6, #0xc4
_0224097C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_0223FD84
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0224097C
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02240968

	thumb_func_start ov6_02240994
ov6_02240994: ; 0x02240994
	push {r4, lr}
	add r4, r0, #0
	bl ov6_0223FDCC
	ldr r1, _022409D0 ; =0xFFFFFFF8
	add r0, r4, #0
	add r1, sp
	ldrh r1, [r1, #0x10]
	mov r2, #0
	bl ov6_0223FDDC
	ldr r1, _022409D0 ; =0xFFFFFFF8
	add r0, r4, #0
	add r1, sp
	ldrh r1, [r1, #0x18]
	mov r2, #2
	bl ov6_0223FDDC
	ldr r1, _022409D0 ; =0xFFFFFFF8
	add r0, r4, #0
	add r1, sp
	ldrh r1, [r1, #0x14]
	mov r2, #1
	bl ov6_0223FDDC
	add r0, r4, #0
	mov r1, #1
	bl ov6_0223FDC4
	pop {r4, pc}
	; .align 2, 0
_022409D0: .word 0xFFFFFFF8
	thumb_func_end ov6_02240994

	thumb_func_start ov6_022409D4
ov6_022409D4: ; 0x022409D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x88
_022409DC:
	add r0, r5, #0
	bl ov6_0223FD8C
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _022409DC
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022409D4

	thumb_func_start ov6_022409EC
ov6_022409EC: ; 0x022409EC
	ldr r3, _022409F0 ; =ov6_0223FDBC
	bx r3
	; .align 2, 0
_022409F0: .word ov6_0223FDBC
	thumb_func_end ov6_022409EC

	thumb_func_start ov6_022409F4
ov6_022409F4: ; 0x022409F4
	ldr r3, _022409FC ; =ov6_022408C8
	mov r1, #0
	bx r3
	nop
_022409FC: .word ov6_022408C8
	thumb_func_end ov6_022409F4

	thumb_func_start ov6_02240A00
ov6_02240A00: ; 0x02240A00
	ldr r3, _02240A04 ; =ov6_02240968
	bx r3
	; .align 2, 0
_02240A04: .word ov6_02240968
	thumb_func_end ov6_02240A00

	thumb_func_start ov6_02240A08
ov6_02240A08: ; 0x02240A08
	ldr r3, _02240A0C ; =ov6_022409D4
	bx r3
	; .align 2, 0
_02240A0C: .word ov6_022409D4
	thumb_func_end ov6_02240A08

	thumb_func_start ov6_02240A10
ov6_02240A10: ; 0x02240A10
	ldr r3, _02240A14 ; =ov6_022409EC
	bx r3
	; .align 2, 0
_02240A14: .word ov6_022409EC
	thumb_func_end ov6_02240A10

	thumb_func_start ov6_02240A18
ov6_02240A18: ; 0x02240A18
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, _02240A3C ; =0x0000F49F
	str r4, [sp]
	ldr r4, _02240A40 ; =0x000080B5
	str r4, [sp, #4]
	sub r4, r4, #7
	str r4, [sp, #8]
	ldr r4, _02240A44 ; =0x00029BA8
	add r1, r1, r4
	ldr r4, _02240A48 ; =0x00037294
	sub r2, r2, r4
	ldr r4, _02240A4C ; =0x000B6876
	sub r3, r3, r4
	bl ov6_02240994
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02240A3C: .word 0x0000F49F
_02240A40: .word 0x000080B5
_02240A44: .word 0x00029BA8
_02240A48: .word 0x00037294
_02240A4C: .word 0x000B6876
	thumb_func_end ov6_02240A18

	thumb_func_start ov6_02240A50
ov6_02240A50: ; 0x02240A50
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, _02240A74 ; =0x0000E5B1
	str r4, [sp]
	ldr r4, _02240A78 ; =0x0000C163
	str r4, [sp, #4]
	ldr r4, _02240A7C ; =0x00007FF8
	str r4, [sp, #8]
	ldr r4, _02240A80 ; =0x00116A4F
	add r1, r1, r4
	ldr r4, _02240A84 ; =0x0004F16B
	add r2, r2, r4
	ldr r4, _02240A88 ; =0x00092118
	sub r3, r3, r4
	bl ov6_02240994
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02240A74: .word 0x0000E5B1
_02240A78: .word 0x0000C163
_02240A7C: .word 0x00007FF8
_02240A80: .word 0x00116A4F
_02240A84: .word 0x0004F16B
_02240A88: .word 0x00092118
	thumb_func_end ov6_02240A50

	thumb_func_start ov6_02240A8C
ov6_02240A8C: ; 0x02240A8C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, _02240AB4 ; =0x0000E71D
	str r4, [sp]
	ldr r4, _02240AB8 ; =0x00005335
	str r4, [sp, #4]
	ldr r4, _02240ABC ; =0x00007992
	str r4, [sp, #8]
	mov r4, #0xc6
	lsl r4, r4, #0xc
	sub r1, r1, r4
	ldr r4, _02240AC0 ; =0x00056FFF
	add r2, r2, r4
	ldr r4, _02240AC4 ; =0x00210008
	sub r3, r3, r4
	bl ov6_02240994
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02240AB4: .word 0x0000E71D
_02240AB8: .word 0x00005335
_02240ABC: .word 0x00007992
_02240AC0: .word 0x00056FFF
_02240AC4: .word 0x00210008
	thumb_func_end ov6_02240A8C

	thumb_func_start ov6_02240AC8
ov6_02240AC8: ; 0x02240AC8
	ldr r3, _02240AD0 ; =ov6_0224060C
	mov r1, #6
	bx r3
	nop
_02240AD0: .word ov6_0224060C
	thumb_func_end ov6_02240AC8

	thumb_func_start ov6_02240AD4
ov6_02240AD4: ; 0x02240AD4
	ldr r3, _02240AD8 ; =ov6_02240654
	bx r3
	; .align 2, 0
_02240AD8: .word ov6_02240654
	thumb_func_end ov6_02240AD4

	thumb_func_start ov6_02240ADC
ov6_02240ADC: ; 0x02240ADC
	ldr r3, _02240AE0 ; =ov6_022406D8
	bx r3
	; .align 2, 0
_02240AE0: .word ov6_022406D8
	thumb_func_end ov6_02240ADC

	thumb_func_start ov6_02240AE4
ov6_02240AE4: ; 0x02240AE4
	ldr r3, _02240AE8 ; =ov6_02240750
	bx r3
	; .align 2, 0
_02240AE8: .word ov6_02240750
	thumb_func_end ov6_02240AE4

	thumb_func_start ov6_02240AEC
ov6_02240AEC: ; 0x02240AEC
	push {r4, lr}
	sub sp, #0x10
	mov r4, #0x40
	str r4, [sp]
	ldr r4, _02240B1C ; =0x0000F49F
	str r4, [sp, #4]
	ldr r4, _02240B20 ; =0x000080B5
	str r4, [sp, #8]
	sub r4, r4, #7
	str r4, [sp, #0xc]
	mov r4, #0x11
	lsl r4, r4, #0xc
	add r1, r1, r4
	mov r4, #0x6f
	lsl r4, r4, #0xc
	sub r2, r2, r4
	mov r4, #0xcb
	lsl r4, r4, #0xc
	sub r3, r3, r4
	bl ov6_0224067C
	add sp, #0x10
	pop {r4, pc}
	nop
_02240B1C: .word 0x0000F49F
_02240B20: .word 0x000080B5
	thumb_func_end ov6_02240AEC

	thumb_func_start ov6_02240B24
ov6_02240B24: ; 0x02240B24
	push {r4, lr}
	sub sp, #0x10
	mov r4, #0x40
	str r4, [sp]
	ldr r4, _02240B50 ; =0x0000E5B1
	str r4, [sp, #4]
	ldr r4, _02240B54 ; =0x0000C163
	str r4, [sp, #8]
	ldr r4, _02240B58 ; =0x00007FF8
	str r4, [sp, #0xc]
	ldr r4, _02240B5C ; =0x00252000
	add r1, r1, r4
	mov r4, #0x43
	lsl r4, r4, #0xc
	add r2, r2, r4
	mov r4, #0xe
	lsl r4, r4, #0xe
	sub r3, r3, r4
	bl ov6_0224067C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02240B50: .word 0x0000E5B1
_02240B54: .word 0x0000C163
_02240B58: .word 0x00007FF8
_02240B5C: .word 0x00252000
	thumb_func_end ov6_02240B24

	thumb_func_start ov6_02240B60
ov6_02240B60: ; 0x02240B60
	push {r4, lr}
	sub sp, #0x10
	mov r4, #0x40
	str r4, [sp]
	ldr r4, _02240B90 ; =0x0000E71D
	str r4, [sp, #4]
	ldr r4, _02240B94 ; =0x00005335
	str r4, [sp, #8]
	ldr r4, _02240B98 ; =0x00007992
	str r4, [sp, #0xc]
	mov r4, #0x53
	lsl r4, r4, #0xe
	sub r1, r1, r4
	mov r4, #0xd
	lsl r4, r4, #0xc
	sub r2, r2, r4
	mov r4, #0x71
	lsl r4, r4, #0xe
	sub r3, r3, r4
	bl ov6_0224067C
	add sp, #0x10
	pop {r4, pc}
	nop
_02240B90: .word 0x0000E71D
_02240B94: .word 0x00005335
_02240B98: .word 0x00007992
	thumb_func_end ov6_02240B60

	thumb_func_start ov6_02240B9C
ov6_02240B9C: ; 0x02240B9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #0xec
	add r7, r0, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0xec
	add r6, r0, #0
	bl sub_020D5124
	mov r0, #0x62
	add r1, r7, #0
	bl sub_02006C24
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd8
	str r4, [r0, #0]
	add r0, r6, #0
	add r0, #0xdc
	add r1, r7, #0
	mov r2, #0x20
	bl sub_020182CC
	add r0, r6, #0
	ldr r1, [sp, #8]
	add r0, #0x78
	mov r2, #0xf
	add r3, r7, #0
	bl ov6_0223FD60
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0xdc
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x78
	mov r4, #0
	add r5, #0x88
	str r0, [sp, #0x10]
_02240BF4:
	ldr r0, [sp, #0xc]
	str r7, [sp]
	add r3, r4, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, #0x10
	bl ov6_0223FD70
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _02240BF4
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x78
	bl ov6_0223FDAC
	add r4, r6, #0
	mov r5, #0
	add r4, #0x88
_02240C20:
	add r0, r6, #0
	add r1, r4, #0
	bl ov6_0223FDB4
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #4
	blt _02240C20
	add r0, r6, #0
	mov r1, #0
	bl ov6_0223FDC4
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02240B9C

	thumb_func_start ov6_02240C44
ov6_02240C44: ; 0x02240C44
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r1, sp, #0
	bl sub_02063050
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov6_0223FDCC
	add r0, r4, #0
	mov r1, #1
	bl ov6_0223FDC4
	ldr r0, _02240C78 ; =0x000006D8
	bl sub_02005748
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02240C78: .word 0x000006D8
	thumb_func_end ov6_02240C44

	thumb_func_start ov6_02240C7C
ov6_02240C7C: ; 0x02240C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x88
_02240C84:
	add r0, r5, #0
	bl ov6_0223FD98
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _02240C84
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02240C7C

	thumb_func_start ov6_02240C94
ov6_02240C94: ; 0x02240C94
	ldr r3, _02240C98 ; =ov6_0223FDBC
	bx r3
	; .align 2, 0
_02240C98: .word ov6_0223FDBC
	thumb_func_end ov6_02240C94

	thumb_func_start ov6_02240C9C
ov6_02240C9C: ; 0x02240C9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02013960
	sub r1, r0, #1
	cmp r1, #1
	bhi _02240CB8
	ldr r0, [r5, #0x6c]
	str r0, [r4, #0]
	ldr r0, [r5, #0x70]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_02240CB8:
	sub r0, r0, #3
	cmp r0, #1
	bhi _02240CC6
	ldr r0, [r5, #0x74]
	str r0, [r4, #0]
	ldr r0, [r5, #0x78]
	str r0, [r6, #0]
_02240CC6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02240C9C

	thumb_func_start ov6_02240CC8
ov6_02240CC8: ; 0x02240CC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202D834
	str r0, [sp]
	bl sub_0202D898
	cmp r0, #0
	beq _02240CFE
	ldr r0, [sp]
	mov r1, #2
	bl sub_0202D814
	bl ov6_02243218
	ldr r1, [r5, #0x1c]
	ldr r1, [r1, #0]
	cmp r1, r0
	bne _02240CFE
	ldr r0, [r4, #0x64]
	str r0, [r6, #0]
	ldr r0, [r4, #0x68]
	str r0, [r7, #0]
_02240CFE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02240CC8

	thumb_func_start ov6_02240D00
ov6_02240D00: ; 0x02240D00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203A2FC
	cmp r0, #0
	beq _02240D54
	add r1, sp, #0
	ldr r0, [r5, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_0202DA10
	cmp r4, #0
	beq _02240D54
	mov r0, #0x6a
	mov r1, #8
	mov r2, #4
	bl sub_02006ADC
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldr r1, _02240D58 ; =0x0000FFFF
	cmp r2, r1
	beq _02240D40
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	str r1, [r6, #0]
_02240D40:
	add r1, sp, #0
	ldrh r2, [r1]
	ldr r1, _02240D58 ; =0x0000FFFF
	cmp r2, r1
	beq _02240D50
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	str r1, [r7, #0]
_02240D50:
	bl sub_020181C4
_02240D54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240D58: .word 0x0000FFFF
	thumb_func_end ov6_02240D00

	thumb_func_start ov6_02240D5C
ov6_02240D5C: ; 0x02240D5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	str r0, [sp, #0x1c]
	add r2, sp, #0x24
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, #1
	bl ov6_02241874
	add r1, sp, #0x24
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _02240D9A
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02240D9A:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203A640
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r2, r4, #0
	add r3, sp, #0x30
	bl ov6_02242634
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D9D8
	cmp r0, #0
	bne _02240DE4
	add r0, r7, #0
	bl sub_02054A40
	mov r1, #1
	str r1, [sp, #0x34]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x24
	strb r0, [r1, #0x18]
_02240DE4:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	add r1, sp, #0x24
	str r0, [sp]
	ldrb r1, [r1]
	mov r0, #0
	add r2, sp, #0x30
	bl ov6_0224226C
	add r1, sp, #0x24
	strb r0, [r1]
	add r0, r5, #0
	add r1, sp, #0x24
	bl ov6_02241ABC
	ldr r0, [sp, #0x20]
	add r1, sp, #0x24
	bl ov6_02241A90
	add r1, sp, #0x24
	ldrb r1, [r1]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	bl ov6_022417C8
	cmp r0, #0
	beq _02240E2A
	mov r0, #1
	str r0, [sp, #0x10]
	b _02240E2E
_02240E2A:
	mov r0, #0
	str r0, [sp, #0x10]
_02240E2E:
	add r1, sp, #0x44
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r1, [sp]
	add r0, sp, #0x48
	str r0, [sp, #4]
	add r0, sp, #0x4c
	add r3, r5, #0
	str r0, [sp, #8]
	add r3, #0x94
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_020696DC
	cmp r0, #0
	bne _02240E5E
	mov r0, #0
	str r0, [sp, #0x50]
	b _02240E64
_02240E5E:
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x50]
_02240E64:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02240E70
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02240E70:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02240E84
	mov r0, #1
	str r0, [sp, #0xc]
	b _02240E88
_02240E84:
	mov r0, #0
	str r0, [sp, #0xc]
_02240E88:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02240EF0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02240EF0
	add r0, r5, #0
	add r1, sp, #0x28
	bl ov6_02242440
	cmp r0, #0
	beq _02240EF0
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl sub_0202D93C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #0x30
	bl ov6_02242388
	cmp r0, #0
	bne _02240EEA
	mov r0, #0xb
	add r1, r0, #0
	add r1, #0xf5
	bl sub_02051D8C
	str r0, [sp, #0x2c]
	add r1, r5, #0
	bl sub_02052314
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	bl ov6_0224239C
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02050E10
	add sp, #0xb4
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02240EEA:
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02240EF0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02240F0E
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, sp, #0x2c
	bl ov6_02242328
	b _02240F18
_02240F0E:
	mov r0, #0xb
	mov r1, #0x4a
	bl sub_02051D8C
	str r0, [sp, #0x2c]
_02240F18:
	ldr r0, [sp, #0x2c]
	add r1, r5, #0
	bl sub_02052314
	add r0, sp, #0x24
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02240FDC
	mov r7, #4
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x54
	add r3, r7, #0
_02240F32:
	ldr r6, [r1, #8]
	add r0, r0, #1
	str r6, [r2, #0]
	ldrsb r6, [r1, r7]
	strh r6, [r2, #4]
	ldrsb r6, [r1, r3]
	add r1, #8
	strh r6, [r2, #6]
	add r2, #8
	cmp r0, #0xc
	blt _02240F32
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0x64
	add r2, sp, #0x6c
	bl ov6_02240C9C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x54
	add r3, sp, #0x5c
	bl ov6_02240CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x84
	add r3, sp, #0x8c
	bl ov6_02240D00
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x94
	add r3, sp, #0x9c
	bl ov6_022477B8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02240FB2
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0x54
	bl ov6_02242354
	add r0, sp, #0x54
	str r0, [sp]
	add r0, sp, #0x30
	str r0, [sp, #4]
	add r0, sp, #0x44
	str r0, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	add r3, r4, #0
	bl ov6_02241674
	b _02241024
_02240FB2:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	ldr r1, [sp, #0x2c]
	mov r2, #0xb
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, #0xc]
	bl sub_02079170
	add r0, sp, #0x30
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	add r3, sp, #0x54
	bl ov6_0224174C
	b _02241024
_02240FDC:
	cmp r0, #1
	bne _02241014
	mov r0, #0
	add r1, sp, #0x54
	mov r3, #0xd0
	mov r6, #0xd1
_02240FE8:
	add r2, r4, #0
	add r2, #0xd4
	ldr r2, [r2, #0]
	add r0, r0, #1
	str r2, [r1, #0]
	ldrsb r2, [r4, r3]
	strh r2, [r1, #4]
	ldrsb r2, [r4, r6]
	add r4, #8
	strh r2, [r1, #6]
	add r1, #8
	cmp r0, #5
	blt _02240FE8
	add r0, sp, #0x30
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	add r3, sp, #0x54
	bl ov6_02241790
	b _02241024
_02241014:
	bl sub_02022974
	ldr r0, [sp, #0x2c]
	bl sub_020520A4
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241024:
	cmp r0, #0
	beq _02241032
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02050E10
	b _02241036
_02241032:
	mov r0, #0
	str r0, [sp, #0x10]
_02241036:
	mov r0, #4
	bl sub_0201833C
	cmp r0, #0
	bne _02241044
	bl sub_02022974
_02241044:
	mov r0, #0xb
	bl sub_0201833C
	cmp r0, #0
	bne _02241052
	bl sub_02022974
_02241052:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0224105E
	ldr r0, [sp, #0x2c]
	bl sub_020520A4
_0224105E:
	mov r0, #0
	add r5, #0x78
	strh r0, [r5]
	ldr r0, [sp, #0x10]
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02240D5C

	thumb_func_start ov6_0224106C
ov6_0224106C: ; 0x0224106C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl ov6_02242164
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	bne _02241086
	add sp, #0x94
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241086:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r3, sp, #0x20
	bl ov6_02242634
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r3, r0, #0
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp]
	mov r0, #1
	add r2, sp, #0x20
	bl ov6_0224226C
	add r6, r0, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _022410D8
	bl sub_02022974
_022410D8:
	cmp r5, r6
	blt _022410E2
	add sp, #0x94
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022410E2:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	add r1, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	bl ov6_02242328
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_02052314
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_0205285C
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A2F0
	cmp r0, #0
	beq _02241154
	ldr r0, [sp, #8]
	bl ov6_02247660
	cmp r0, #0
	beq _02241154
	add r0, sp, #0x18
	add r0, #1
	add r1, sp, #0x18
	bl ov6_02247794
	add r0, sp, #0x1c
	bl ov6_022477A0
	add r0, sp, #0x18
	ldrb r3, [r0, #1]
	ldrb r4, [r0]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	add r0, sp, #0x34
_0224113E:
	lsl r5, r1, #3
	add r1, r1, #1
	lsl r1, r1, #0x18
	add r6, r0, r5
	str r2, [r0, r5]
	strh r3, [r6, #4]
	lsr r1, r1, #0x18
	strh r4, [r6, #6]
	cmp r1, #5
	blo _0224113E
	b _022411A2
_02241154:
	ldr r0, [sp, #8]
	bl sub_0203A640
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0224116A
	cmp r1, #1
	beq _02241172
	cmp r1, #2
	beq _0224117A
	b _02241180
_0224116A:
	mov r1, #0x4a
	lsl r1, r1, #2
	add r4, r0, r1
	b _02241180
_02241172:
	mov r1, #0x55
	lsl r1, r1, #2
	add r4, r0, r1
	b _02241180
_0224117A:
	mov r1, #6
	lsl r1, r1, #6
	add r4, r0, r1
_02241180:
	mov r6, #0
	add r1, sp, #0x34
	mov r7, #1
_02241186:
	lsl r5, r6, #3
	add r3, r4, r5
	ldr r0, [r3, #4]
	add r2, r1, r5
	str r0, [r1, r5]
	ldrsb r0, [r4, r5]
	strh r0, [r2, #4]
	ldrsb r0, [r3, r7]
	strh r0, [r2, #6]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _02241186
_022411A2:
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0]
	add r3, sp, #0x34
	bl ov6_022417AC
	cmp r0, #0
	bne _022411C2
	add sp, #0x94
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022411C2:
	mov r0, #1
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_0224106C

	thumb_func_start ov6_022411C8
ov6_022411C8: ; 0x022411C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	str r1, [sp, #0xc]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02054F94
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0x1c
	bl ov6_02241874
	cmp r0, #0
	bne _022411FC
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022411FC:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203A640
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	add r3, sp, #0x28
	bl ov6_02242634
	mov r0, #1
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, sp, #0x3c
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [sp, #0x2c]
	str r1, [r0, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02241248
	mov r0, #1
	str r0, [sp, #0x10]
	b _0224124C
_02241248:
	mov r0, #0
	str r0, [sp, #0x10]
_0224124C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02241294
	add r0, r5, #0
	add r1, sp, #0x20
	bl ov6_02242440
	cmp r0, #0
	beq _02241294
	mov r0, #0xb
	add r1, r0, #0
	add r1, #0xf5
	bl sub_02051D8C
	str r0, [sp, #0x24]
	add r1, r5, #0
	bl sub_02052314
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	bl ov6_0224239C
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	bl sub_02050E78
	add sp, #0xac
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02241294:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _022412B2
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, sp, #0x24
	bl ov6_02242328
	b _022412BC
_022412B2:
	mov r0, #0xb
	mov r1, #0x4a
	bl sub_02051D8C
	str r0, [sp, #0x24]
_022412BC:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	bl sub_02052314
	add r0, sp, #0x1c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02241380
	mov r7, #4
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x4c
	add r3, r7, #0
_022412D6:
	ldr r6, [r1, #8]
	add r0, r0, #1
	str r6, [r2, #0]
	ldrsb r6, [r1, r7]
	strh r6, [r2, #4]
	ldrsb r6, [r1, r3]
	add r1, #8
	strh r6, [r2, #6]
	add r2, #8
	cmp r0, #0xc
	blt _022412D6
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0x5c
	add r2, sp, #0x64
	bl ov6_02240C9C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x4c
	add r3, sp, #0x54
	bl ov6_02240CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x7c
	add r3, sp, #0x84
	bl ov6_02240D00
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x8c
	add r3, sp, #0x94
	bl ov6_022477B8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02241356
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0x4c
	bl ov6_02242354
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	add r0, sp, #0x3c
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, r4, #0
	bl ov6_02241674
	b _022413C2
_02241356:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	ldr r1, [sp, #0x24]
	mov r2, #0xb
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r5, #0xc]
	bl sub_02079170
	add r0, sp, #0x28
	str r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, sp, #0x4c
	bl ov6_0224174C
	b _022413C2
_02241380:
	cmp r0, #1
	bne _022413B8
	mov r0, #0
	add r1, sp, #0x4c
	mov r3, #0xd0
	mov r6, #0xd1
_0224138C:
	add r2, r4, #0
	add r2, #0xd4
	ldr r2, [r2, #0]
	add r0, r0, #1
	str r2, [r1, #0]
	ldrsb r2, [r4, r3]
	strh r2, [r1, #4]
	ldrsb r2, [r4, r6]
	add r4, #8
	strh r2, [r1, #6]
	add r1, #8
	cmp r0, #5
	blt _0224138C
	add r0, sp, #0x28
	str r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, sp, #0x4c
	bl ov6_02241790
	b _022413C2
_022413B8:
	bl sub_02022974
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022413C2:
	cmp r0, #0
	beq _022413D2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	bl sub_02050E78
	b _022413D6
_022413D2:
	bl sub_02022974
_022413D6:
	mov r0, #0
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022411C8

	thumb_func_start ov6_022413E4
ov6_022413E4: ; 0x022413E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	add r7, r0, #0
	add r2, sp, #0x20
	add r0, r5, #0
	add r1, r7, #0
	add r2, #1
	bl ov6_02241874
	add r1, sp, #0x20
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _02241426
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241426:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203A640
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, sp, #0x28
	bl ov6_02242634
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D9D8
	cmp r0, #0
	bne _02241470
	add r0, r6, #0
	bl sub_02054A40
	mov r1, #1
	str r1, [sp, #0x2c]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strb r0, [r1, #0x14]
_02241470:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r3, r0, #0
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	str r0, [sp]
	ldrb r1, [r1]
	mov r0, #0
	add r2, sp, #0x28
	bl ov6_0224226C
	add r1, sp, #0x20
	strb r0, [r1]
	add r0, r5, #0
	add r1, sp, #0x20
	bl ov6_02241ABC
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	bl ov6_02241A90
	add r1, sp, #0x20
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r7, #0
	bl ov6_022417C8
	cmp r0, #0
	beq _022414B6
	mov r0, #1
	str r0, [sp, #0x10]
	b _022414BA
_022414B6:
	mov r0, #0
	str r0, [sp, #0x10]
_022414BA:
	add r1, sp, #0x3c
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [sp, #0x48]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _022414DC
	mov r0, #1
	str r0, [sp, #0xc]
	b _022414E0
_022414DC:
	mov r0, #0
	str r0, [sp, #0xc]
_022414E0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02241538
	add r0, r5, #0
	add r1, sp, #0x24
	bl ov6_02242440
	cmp r0, #0
	beq _02241538
	ldr r0, [sp, #0x24]
	mov r1, #6
	bl sub_0202D93C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #0x28
	bl ov6_02242388
	cmp r0, #0
	bne _02241532
	mov r0, #0xb
	add r1, r0, #0
	add r1, #0xf5
	bl sub_02051D8C
	str r0, [r4, #0]
	add r1, r5, #0
	bl sub_02052314
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	ldr r2, [r4, #0]
	bl ov6_0224239C
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	add sp, #0xac
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02241532:
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241538:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02241556
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	bl ov6_02242328
	b _02241560
_02241556:
	mov r0, #0xb
	mov r1, #0x4a
	bl sub_02051D8C
	str r0, [r4, #0]
_02241560:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02052314
	add r0, sp, #0x20
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02241624
	mov r7, #4
	ldr r1, [sp, #0x14]
	mov r0, #0
	add r2, sp, #0x4c
	add r3, r7, #0
_0224157A:
	ldr r6, [r1, #8]
	add r0, r0, #1
	str r6, [r2, #0]
	ldrsb r6, [r1, r7]
	strh r6, [r2, #4]
	ldrsb r6, [r1, r3]
	add r1, #8
	strh r6, [r2, #6]
	add r2, #8
	cmp r0, #0xc
	blt _0224157A
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	add r1, sp, #0x5c
	add r2, sp, #0x64
	bl ov6_02240C9C
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, sp, #0x4c
	add r3, sp, #0x54
	bl ov6_02240CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x7c
	add r3, sp, #0x84
	bl ov6_02240D00
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, sp, #0x8c
	add r3, sp, #0x94
	bl ov6_022477B8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _022415FA
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0x4c
	bl ov6_02242354
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	add r0, sp, #0x3c
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [r4, #0]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov6_02241674
	b _02241634
_022415FA:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	ldr r1, [r4, #0]
	mov r2, #0xb
	str r0, [r1, #0x20]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0xc]
	bl sub_02079170
	add r0, sp, #0x28
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r3, sp, #0x4c
	bl ov6_0224174C
	b _02241634
_02241624:
	bl sub_02022974
	ldr r0, [r4, #0]
	bl sub_020520A4
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241634:
	cmp r0, #0
	bne _0224163C
	mov r0, #0
	str r0, [sp, #0x10]
_0224163C:
	mov r0, #4
	bl sub_0201833C
	cmp r0, #0
	bne _0224164A
	bl sub_02022974
_0224164A:
	mov r0, #0xb
	bl sub_0201833C
	cmp r0, #0
	bne _02241658
	bl sub_02022974
_02241658:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02241666
	ldr r0, [r4, #0]
	bl sub_020520A4
	b _0224166C
_02241666:
	mov r0, #0
	add r5, #0x78
	strh r0, [r5]
_0224166C:
	ldr r0, [sp, #0x10]
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022413E4

	thumb_func_start ov6_02241674
ov6_02241674: ; 0x02241674
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r6, [sp, #0x38]
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	add r7, r2, #0
	str r1, [sp, #0x10]
	ldr r4, [sp, #0x30]
	cmp r0, #0
	beq _02241722
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _022416A8
	ldr r0, [r3, #0x7c]
	str r0, [r4, #0x20]
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0x28]
	add r0, r3, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r3, #0x88
	str r0, [r4, #0x50]
	ldr r0, [r3, #0]
	str r0, [r4, #0x58]
_022416A8:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl sub_0206978C
	ldr r0, [r6, #4]
	cmp r0, #1
	bne _022416E4
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	bl sub_02025F20
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r3, [r6, #8]
	bl ov6_02241F2C
	b _022416FE
_022416E4:
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r3, r4, #0
	bl ov6_02241F7C
_022416FE:
	add r4, r0, #0
	cmp r4, #0
	beq _02241744
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r5, #0x94
	ldr r3, [r5, #0]
	add r1, r6, #0
	bl sub_02069474
	b _02241744
_02241722:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r2, [sp, #0x34]
	mov r1, #0xff
	add r3, r4, #0
	str r7, [sp, #8]
	bl ov6_02241DC4
	add r4, r0, #0
	beq _02241744
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
_02241744:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02241674

	thumb_func_start ov6_0224174C
ov6_0224174C: ; 0x0224174C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0xff
	add r6, r3, #0
	str r4, [sp, #8]
	bl ov6_02241DC4
	cmp r0, #0
	bne _02241774
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02241774:
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0xff
	add r3, r6, #0
	str r4, [sp, #8]
	bl ov6_02241DC4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_0224174C

	thumb_func_start ov6_02241790
ov6_02241790: ; 0x02241790
	push {lr}
	sub sp, #0xc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	mov r1, #0xff
	bl ov6_02241DC4
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov6_02241790

	thumb_func_start ov6_022417AC
ov6_022417AC: ; 0x022417AC
	push {lr}
	sub sp, #0xc
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl ov6_02241DC4
	add sp, #0xc
	pop {pc}
	thumb_func_end ov6_022417AC

	thumb_func_start ov6_022417C8
ov6_022417C8: ; 0x022417C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	lsl r1, r7, #8
	add r5, r0, #0
	add r6, r2, #0
	bl ov6_022418B4
	cmp r0, #0
	bne _02241808
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _02241800
	bl sub_02022974
_02241800:
	cmp r4, #5
	blo _02241808
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241808:
	add r0, r6, #0
	mov r4, #0x28
	bl sub_0205DAD4
	cmp r0, #0
	beq _0224181C
	add r4, #0x1e
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
	b _0224182C
_0224181C:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _0224182C
	add r4, #0x1e
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0224182C:
	add r0, r5, #0
	bl sub_02055C40
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246B74
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x64
	bls _02241844
	mov r4, #0x64
_02241844:
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x64
	blo _0224185C
	bl sub_02022974
_0224185C:
	cmp r6, r4
	bge _02241870
	add r0, r5, #0
	add r1, r7, #0
	bl ov6_022418DC
	cmp r0, #0
	beq _02241870
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241870:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022417C8

	thumb_func_start ov6_02241874
ov6_02241874: ; 0x02241874
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl sub_0205DE6C
	cmp r0, #0
	beq _022418B0
	add r0, r6, #0
	bl sub_0205DB58
	cmp r0, #0
	beq _022418A0
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl ov6_02242158
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_022418A0:
	mov r0, #0
	strb r0, [r4]
	add r0, r5, #0
	bl ov6_0224214C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_022418B0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02241874

	thumb_func_start ov6_022418B4
ov6_022418B4: ; 0x022418B4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0xa
	bl sub_020E2178
	lsr r1, r0, #8
	cmp r1, #8
	bls _022418C8
	mov r1, #8
_022418C8:
	mov r0, #8
	add r4, #0x78
	sub r1, r0, r1
	ldrh r0, [r4]
	cmp r0, r1
	blo _022418D8
	mov r0, #1
	pop {r4, pc}
_022418D8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_022418B4

	thumb_func_start ov6_022418DC
ov6_022418DC: ; 0x022418DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _022418F8
	bl sub_02022974
_022418F8:
	cmp r5, r4
	blo _02241900
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241900:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022418DC

	thumb_func_start ov6_02241904
ov6_02241904: ; 0x02241904
	push {r4, lr}
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _0224191E
	bl sub_02022974
_0224191E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x14
	bhs _0224192A
	mov r0, #0
	pop {r4, pc}
_0224192A:
	blo _02241934
	cmp r0, #0x28
	bhs _02241934
	mov r0, #1
	pop {r4, pc}
_02241934:
	cmp r0, #0x28
	blo _02241940
	cmp r0, #0x32
	bhs _02241940
	mov r0, #2
	pop {r4, pc}
_02241940:
	cmp r0, #0x32
	blo _0224194C
	cmp r0, #0x3c
	bhs _0224194C
	mov r0, #3
	pop {r4, pc}
_0224194C:
	cmp r0, #0x3c
	blo _02241958
	cmp r0, #0x46
	bhs _02241958
	mov r0, #4
	pop {r4, pc}
_02241958:
	cmp r0, #0x46
	blo _02241964
	cmp r0, #0x50
	bhs _02241964
	mov r0, #5
	pop {r4, pc}
_02241964:
	cmp r0, #0x50
	blo _02241970
	cmp r0, #0x55
	bhs _02241970
	mov r0, #6
	pop {r4, pc}
_02241970:
	cmp r0, #0x55
	blo _0224197C
	cmp r0, #0x5a
	bhs _0224197C
	mov r0, #7
	pop {r4, pc}
_0224197C:
	cmp r0, #0x5a
	blo _02241988
	cmp r0, #0x5e
	bhs _02241988
	mov r0, #8
	pop {r4, pc}
_02241988:
	cmp r0, #0x5e
	blo _02241994
	cmp r0, #0x62
	bhs _02241994
	mov r0, #9
	pop {r4, pc}
_02241994:
	cmp r0, #0x62
	bne _0224199C
	mov r0, #0xa
	pop {r4, pc}
_0224199C:
	mov r0, #0xb
	pop {r4, pc}
	thumb_func_end ov6_02241904

	thumb_func_start ov6_022419A0
ov6_022419A0: ; 0x022419A0
	push {r4, lr}
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _022419BA
	bl sub_02022974
_022419BA:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x3c
	bhs _022419C6
	mov r0, #0
	pop {r4, pc}
_022419C6:
	blo _022419D0
	cmp r0, #0x5a
	bhs _022419D0
	mov r0, #1
	pop {r4, pc}
_022419D0:
	cmp r0, #0x5a
	blo _022419DC
	cmp r0, #0x5f
	bhs _022419DC
	mov r0, #2
	pop {r4, pc}
_022419DC:
	cmp r0, #0x5f
	blo _022419E8
	cmp r0, #0x63
	bhs _022419E8
	mov r0, #3
	pop {r4, pc}
_022419E8:
	mov r0, #4
	pop {r4, pc}
	thumb_func_end ov6_022419A0

	thumb_func_start ov6_022419EC
ov6_022419EC: ; 0x022419EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x64
	blo _02241A0A
	bl sub_02022974
_02241A0A:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	cmp r5, #0
	beq _02241A1C
	cmp r5, #1
	beq _02241A40
	cmp r5, #2
	beq _02241A64
	b _02241A88
_02241A1C:
	cmp r0, #0x3c
	bhs _02241A24
	mov r4, #0
	b _02241A8C
_02241A24:
	cmp r0, #0x5a
	bhs _02241A2C
	mov r4, #1
	b _02241A8C
_02241A2C:
	cmp r0, #0x5f
	bhs _02241A34
	mov r4, #2
	b _02241A8C
_02241A34:
	cmp r0, #0x63
	bhs _02241A3C
	mov r4, #3
	b _02241A8C
_02241A3C:
	mov r4, #4
	b _02241A8C
_02241A40:
	cmp r0, #0x28
	bhs _02241A48
	mov r4, #0
	b _02241A8C
_02241A48:
	cmp r0, #0x50
	bhs _02241A50
	mov r4, #1
	b _02241A8C
_02241A50:
	cmp r0, #0x5f
	bhs _02241A58
	mov r4, #2
	b _02241A8C
_02241A58:
	cmp r0, #0x63
	bhs _02241A60
	mov r4, #3
	b _02241A8C
_02241A60:
	mov r4, #4
	b _02241A8C
_02241A64:
	cmp r0, #0x28
	bhs _02241A6C
	mov r4, #0
	b _02241A8C
_02241A6C:
	cmp r0, #0x50
	bhs _02241A74
	mov r4, #1
	b _02241A8C
_02241A74:
	cmp r0, #0x5f
	bhs _02241A7C
	mov r4, #2
	b _02241A8C
_02241A7C:
	cmp r0, #0x63
	bhs _02241A84
	mov r4, #3
	b _02241A8C
_02241A84:
	mov r4, #4
	b _02241A8C
_02241A88:
	bl sub_02022974
_02241A8C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022419EC

	thumb_func_start ov6_02241A90
ov6_02241A90: ; 0x02241A90
	push {r4, lr}
	add r4, r1, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0xe0
	beq _02241AAC
	mov r0, #5
	lsl r0, r0, #6
	cmp r1, r0
	bne _02241AB8
_02241AAC:
	ldrb r0, [r4]
	mov r1, #3
	lsl r0, r0, #1
	bl sub_020E1F6C
	strb r0, [r4]
_02241AB8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02241A90

	thumb_func_start ov6_02241ABC
ov6_02241ABC: ; 0x02241ABC
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202D834
	bl sub_0202DA04
	cmp r0, #1
	bne _02241AD6
	ldrb r0, [r4]
	asr r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_02241AD6:
	cmp r0, #2
	bne _02241AE2
	ldrb r1, [r4]
	lsr r0, r1, #1
	add r0, r1, r0
	strb r0, [r4]
_02241AE2:
	pop {r4, pc}
	thumb_func_end ov6_02241ABC

	thumb_func_start ov6_02241AE4
ov6_02241AE4: ; 0x02241AE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	bne _02241B1E
	ldrb r0, [r1, #0xe]
	cmp r0, #0x1c
	bne _02241B1E
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r5, r0, #0x10
	cmp r5, #2
	blo _02241B04
	bl sub_02022974
_02241B04:
	cmp r5, #0
	bne _02241B1E
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	mov r1, #0x19
	bl sub_020E2178
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_02241B1E:
	bl sub_0201D2E8
	ldr r1, _02241B3C ; =0x00000A3E
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x19
	blo _02241B34
	bl sub_02022974
_02241B34:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02241B3C: .word 0x00000A3E
	thumb_func_end ov6_02241AE4

	thumb_func_start ov6_02241B40
ov6_02241B40: ; 0x02241B40
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldrh r2, [r0, #6]
	ldrh r1, [r0, #4]
	cmp r1, r2
	blo _02241B54
	lsl r0, r2, #0x18
	lsr r5, r0, #0x18
	lsl r0, r1, #0x18
	b _02241B5A
_02241B54:
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	lsl r0, r2, #0x18
_02241B5A:
	lsr r4, r0, #0x18
	bl sub_0201D2E8
	sub r1, r4, r5
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _02241BA4
	ldrb r0, [r7, #0xe]
	cmp r0, #0x37
	beq _02241B84
	cmp r0, #0x48
	beq _02241B84
	cmp r0, #0x2e
	bne _02241BA4
_02241B84:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r7, r0, #0x10
	cmp r7, #2
	blo _02241B94
	bl sub_02022974
_02241B94:
	cmp r7, #0
	bne _02241BA0
	add r0, r5, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02241BA0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241BA4:
	add r0, r5, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02241B40

	thumb_func_start ov6_02241BAC
ov6_02241BAC: ; 0x02241BAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r6, [sp, #0x40]
	str r1, [sp, #0x14]
	mov r0, #0xb
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl sub_02073C74
	str r0, [sp, #0x1c]
	bl sub_02073C2C
	ldrb r0, [r6, #0xd]
	mov r7, #0
	cmp r0, #0
	bne _02241C38
	ldrb r0, [r6, #0xe]
	cmp r0, #0x38
	bne _02241C16
	ldr r0, [sp, #0x10]
	mov r1, #0x12
	bl sub_020759F0
	cmp r0, #0
	beq _02241C38
	cmp r0, #0xfe
	beq _02241C38
	cmp r0, #0xff
	beq _02241C38
	bl sub_0201D2E8
	ldr r1, _02241CBC ; =0x00005556
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _02241BFE
	bl sub_02022974
_02241BFE:
	cmp r4, #0
	beq _02241C38
	ldr r0, [sp, #0x44]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r7, #1
	b _02241C38
_02241C16:
	cmp r0, #0x1c
	bne _02241C38
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02241C2A
	bl sub_02022974
_02241C2A:
	cmp r4, #0
	bne _02241C38
	ldr r0, [sp, #0x44]
	bl sub_02075BCC
	str r0, [sp, #0x20]
	mov r7, #1
_02241C38:
	add r0, r5, #0
	bl sub_02075E64
	add r4, r0, #0
	cmp r7, #0
	beq _02241C86
_02241C44:
	ldrb r0, [r6, #0xe]
	cmp r0, #0x38
	bne _02241C6C
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_02075DAC
	add r7, r0, #0
	cmp r7, #2
	bne _02241C5C
	bl sub_02022974
_02241C5C:
	ldr r0, [sp, #0x24]
	cmp r7, r0
	bne _02241C86
	add r0, r5, #0
	bl sub_02075E64
	add r4, r0, #0
	b _02241C44
_02241C6C:
	cmp r0, #0x1c
	bne _02241C44
	add r0, r4, #0
	bl sub_02075BFC
	ldr r1, [sp, #0x20]
	cmp r0, r1
	beq _02241C86
	add r0, r5, #0
	bl sub_02075E64
	add r4, r0, #0
	b _02241C44
_02241C86:
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #0]
	mov r3, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02073D80
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x48]
	add r1, r6, #0
	bl ov6_02242514
	cmp r0, #0
	bne _02241CB2
	bl sub_02022974
_02241CB2:
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241CBC: .word 0x00005556
	thumb_func_end ov6_02241BAC

	thumb_func_start ov6_02241CC0
ov6_02241CC0: ; 0x02241CC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0xb
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	add r0, r7, #0
	mov r1, #0x12
	mov r6, #1
	bl sub_020759F0
	cmp r0, #0
	beq _02241CEE
	cmp r0, #0xfe
	beq _02241CEE
	cmp r0, #0xff
	bne _02241CF0
_02241CEE:
	mov r6, #0
_02241CF0:
	cmp r6, #0
	beq _02241D80
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _02241D80
	ldrb r0, [r5, #0xe]
	cmp r0, #0x38
	bne _02241D80
	bl sub_0201D2E8
	ldr r1, _02241DC0 ; =0x00005556
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #3
	blo _02241D16
	bl sub_02022974
_02241D16:
	cmp r6, #0
	beq _02241D80
	ldr r0, [sp, #0x28]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #1
	bne _02241D30
	mov r6, #0
	b _02241D3C
_02241D30:
	cmp r6, #0
	bne _02241D38
	mov r6, #1
	b _02241D3C
_02241D38:
	bl sub_02022974
_02241D3C:
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	bl ov6_02241AE4
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x20
	bl sub_02074088
	add r0, r4, #0
	mov r1, #7
	add r2, r5, #0
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x2c]
	add r1, r5, #0
	add r2, r4, #0
	bl ov6_02242514
	cmp r0, #0
	bne _02241D76
	bl sub_02022974
_02241D76:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241D80:
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	bl ov6_02241AE4
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x20
	bl sub_02074044
	add r0, r4, #0
	mov r1, #7
	add r2, r5, #0
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x2c]
	add r1, r5, #0
	add r2, r4, #0
	bl ov6_02242514
	cmp r0, #0
	bne _02241DB4
	bl sub_02022974
_02241DB4:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02241DC0: .word 0x00005556
	thumb_func_end ov6_02241CC0

	thumb_func_start ov6_02241DC4
ov6_02241DC4: ; 0x02241DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	mov r7, #0
	add r1, sp, #0x10
	strb r7, [r1]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r1, #0
	beq _02241DE8
	cmp r1, #1
	beq _02241E44
	cmp r1, #2
	beq _02241E90
	b _02241EDE
_02241DE8:
	mov r1, #8
	str r1, [sp]
	mov r1, #0x2a
	str r1, [sp, #4]
	add r1, sp, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xc
	bl ov6_0224222C
	cmp r0, #0
	bne _02241E26
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xc
	bl ov6_0224222C
	cmp r0, #0
	bne _02241E26
	bl ov6_02241904
	add r1, sp, #0x10
	strb r0, [r1]
_02241E26:
	add r2, sp, #0x10
	ldrb r2, [r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov6_022425D4
	add r1, sp, #0x10
	strb r0, [r1]
	ldrb r0, [r1]
	lsl r0, r0, #3
	add r0, r4, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _02241EE2
_02241E44:
	mov r1, #8
	str r1, [sp]
	mov r1, #0x2a
	str r1, [sp, #4]
	add r1, sp, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	cmp r0, #0
	bne _02241E7E
	bl ov6_022419A0
	add r1, sp, #0x10
	strb r0, [r1]
_02241E7E:
	add r0, sp, #0x10
	ldrb r0, [r0]
	add r1, r5, #0
	lsl r0, r0, #3
	add r0, r4, r0
	bl ov6_02241B40
	add r7, r0, #0
	b _02241EE2
_02241E90:
	mov r1, #8
	str r1, [sp]
	mov r1, #0x2a
	str r1, [sp, #4]
	add r1, sp, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	cmp r0, #0
	bne _02241ECC
	ldr r0, [sp, #0xc]
	bl ov6_022419EC
	add r1, sp, #0x10
	strb r0, [r1]
_02241ECC:
	add r0, sp, #0x10
	ldrb r0, [r0]
	add r1, r5, #0
	lsl r0, r0, #3
	add r0, r4, r0
	bl ov6_02241B40
	add r7, r0, #0
	b _02241EE2
_02241EDE:
	bl sub_02022974
_02241EE2:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov6_022422D0
	cmp r0, #0
	beq _02241EF6
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241EF6:
	add r0, r7, #0
	add r1, r5, #0
	bl ov6_02242388
	cmp r0, #1
	bne _02241F08
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241F08:
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x10
	ldrb r0, [r0]
	ldr r2, [sp, #0x2c]
	add r1, r7, #0
	lsl r0, r0, #3
	ldr r0, [r4, r0]
	add r3, r5, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov6_02241CC0
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02241DC4

	thumb_func_start ov6_02241F2C
ov6_02241F2C: ; 0x02241F2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02241F40
	bl sub_02022974
_02241F40:
	lsl r0, r4, #0x18
	lsr r1, r0, #0x18
	cmp r7, #0
	beq _02241F62
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl ov6_02241BAC
	b _02241F76
_02241F62:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl ov6_02241CC0
_02241F76:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02241F2C

	thumb_func_start ov6_02241F7C
ov6_02241F7C: ; 0x02241F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r6, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	mov r0, #8
	str r0, [sp]
	mov r0, #0x2a
	add r5, r3, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r1, r2, #0
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl ov6_0224222C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _02241FD2
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl ov6_0224222C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _02241FD2
	bl ov6_02241904
	add r1, sp, #0x10
	strb r0, [r1]
_02241FD2:
	add r0, sp, #0x10
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	ldrh r1, [r1, #4]
	ldr r5, [r5, r0]
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	cmp r0, #0
	bne _02241FFE
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02069774
	add r0, r4, #0
	bl sub_02069B74
	b _0224201A
_02241FFE:
	cmp r5, r0
	bne _02242012
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	bl sub_02069B74
	b _0224201A
_02242012:
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_02069434
_0224201A:
	ldr r0, [sp, #0x2c]
	str r6, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0xc]
	lsr r0, r0, #0x10
	add r1, r7, #0
	bl ov6_02241CC0
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02241F7C

	thumb_func_start ov6_02242034
ov6_02242034: ; 0x02242034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_021EFFE4
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	add r3, sp, #0x10
	bl ov6_02242634
	bl sub_0201D2E8
	ldr r1, _022420D0 ; =0x00001746
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xb
	blo _02242072
	bl sub_02022974
_02242072:
	add r0, r6, #5
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, sp, #0x10
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	bne _022420A4
	ldrb r0, [r0, #0xe]
	cmp r0, #0x37
	beq _0224208E
	cmp r0, #0x48
	beq _0224208E
	cmp r0, #0x2e
	bne _022420A4
_0224208E:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r6, r0, #0x10
	cmp r6, #2
	blo _0224209E
	bl sub_02022974
_0224209E:
	cmp r6, #0
	beq _022420A4
	mov r7, #0xf
_022420A4:
	add r0, r5, #0
	bl FUN_021F0040
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #2
	orr r0, r2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r3, sp, #0x10
	str r4, [sp, #4]
	bl ov6_02241CC0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022420D0: .word 0x00001746
	thumb_func_end ov6_02242034

	thumb_func_start ov6_022420D4
ov6_022420D4: ; 0x022420D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r2, [sp, #8]
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r6, r3, #0
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	add r3, sp, #0xc
	bl ov6_02242634
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r7, #0
	mov r2, #1
	add r3, sp, #0xc
	bl ov6_02241CC0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022420D4

	thumb_func_start ov6_02242110
ov6_02242110: ; 0x02242110
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r4, #0
	bl sub_0205DE6C
	cmp r0, #0
	beq _0224213E
	add r0, r6, #0
	bl sub_0205DB58
	cmp r0, #0
	beq _02242136
	add r0, r5, #0
	bl ov6_02242158
	add r4, r0, #0
	b _0224213E
_02242136:
	add r0, r5, #0
	bl ov6_0224214C
	add r4, r0, #0
_0224213E:
	cmp r4, #0
	beq _02242146
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242146:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02242110

	thumb_func_start ov6_0224214C
ov6_0224214C: ; 0x0224214C
	push {r3, lr}
	bl sub_0203A640
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0224214C

	thumb_func_start ov6_02242158
ov6_02242158: ; 0x02242158
	push {r3, lr}
	bl sub_0203A640
	add r0, #0xcc
	ldr r0, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov6_02242158

	thumb_func_start ov6_02242164
ov6_02242164: ; 0x02242164
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A640
	cmp r4, #0
	beq _0224217A
	cmp r4, #1
	beq _02242182
	cmp r4, #2
	beq _0224218A
	b _02242192
_0224217A:
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
_02242182:
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	pop {r4, pc}
_0224218A:
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
_02242192:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02242164

	thumb_func_start ov6_0224219C
ov6_0224219C: ; 0x0224219C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0
	str r1, [sp]
	add r7, r2, #0
	str r3, [sp, #4]
	add r4, r0, #0
	add r1, sp, #0x10
_022421AE:
	strb r4, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xc
	blo _022421AE
	ldr r0, [sp]
	add r5, r4, #0
	cmp r0, #0
	bls _02242204
_022421C2:
	lsl r0, r5, #3
	str r0, [sp, #0xc]
	ldr r0, [r6, r0]
	mov r1, #6
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #7
	ldr r0, [r6, r0]
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #8]
	cmp r0, r7
	beq _022421EC
	cmp r1, r7
	bne _022421F8
_022421EC:
	add r1, r4, #1
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r4, r1, #0x18
	add r1, sp, #0x10
	strb r5, [r1, r0]
_022421F8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	blo _022421C2
_02242204:
	cmp r4, #0
	beq _0224220E
	ldr r0, [sp]
	cmp r4, r0
	bne _02242214
_0224220E:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02242214:
	bl sub_0201D2E8
	add r1, r4, #0
	bl sub_020E1F6C
	add r0, sp, #0x10
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	strb r1, [r0]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_0224219C

	thumb_func_start ov6_0224222C
ov6_0224222C: ; 0x0224222C
	push {r4, r5, r6, lr}
	ldrb r0, [r1, #0xd]
	add r5, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _02242266
	add r0, sp, #0
	ldrb r1, [r1, #0xe]
	ldrb r0, [r0, #0x14]
	cmp r1, r0
	bne _02242266
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02242252
	bl sub_02022974
_02242252:
	cmp r4, #0
	bne _02242266
	add r2, sp, #0
	ldrb r2, [r2, #0x10]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_0224219C
	pop {r4, r5, r6, pc}
_02242266:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_0224222C

	thumb_func_start ov6_0224226C
ov6_0224226C: ; 0x0224226C
	push {r3, r4}
	ldrb r4, [r2, #0xd]
	cmp r4, #0
	bne _022422C8
	cmp r0, #0
	ldrb r0, [r2, #0xe]
	beq _0224227E
	cmp r0, #0x3c
	b _022422C2
_0224227E:
	cmp r0, #0x47
	beq _0224228A
	cmp r0, #0x63
	beq _0224228A
	cmp r0, #0x23
	bne _0224228E
_0224228A:
	lsl r1, r1, #1
	b _022422C2
_0224228E:
	cmp r0, #8
	bne _0224229E
	cmp r3, #0xa
	bne _022422C2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	b _022422C2
_0224229E:
	cmp r0, #0x51
	bne _022422B0
	sub r0, r3, #5
	cmp r0, #2
	bhi _022422C2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	b _022422C2
_022422B0:
	cmp r0, #0x49
	beq _022422BC
	cmp r0, #0x5f
	beq _022422BC
	cmp r0, #1
	bne _022422C2
_022422BC:
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
_022422C2:
	cmp r1, #0x64
	ble _022422C8
	mov r1, #0x64
_022422C8:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4}
	bx lr
	thumb_func_end ov6_0224226C

	thumb_func_start ov6_022422D0
ov6_022422D0: ; 0x022422D0
	push {r4, lr}
	add r4, r2, #0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _022422DE
	mov r0, #0
	pop {r4, pc}
_022422DE:
	ldrb r2, [r0, #0xd]
	cmp r2, #0
	bne _02242322
	ldrb r0, [r0, #0xe]
	cmp r0, #0x33
	beq _022422EE
	cmp r0, #0x16
	bne _02242322
_022422EE:
	add r0, r1, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #5
	bhi _02242304
	mov r0, #0
	pop {r4, pc}
_02242304:
	sub r0, r0, #5
	cmp r4, r0
	bgt _02242322
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _0224231A
	bl sub_02022974
_0224231A:
	cmp r4, #0
	bne _02242322
	mov r0, #1
	pop {r4, pc}
_02242322:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022422D0

	thumb_func_start ov6_02242328
ov6_02242328: ; 0x02242328
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _0224233C
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	str r0, [r4, #0]
	pop {r4, pc}
_0224233C:
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	add r1, r0, #0
	ldrh r1, [r1]
	mov r0, #0xb
	bl sub_02051F24
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov6_02242328

	thumb_func_start ov6_02242354
ov6_02242354: ; 0x02242354
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r1, #0
	beq _02242382
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #1
	bl sub_0202D814
	add r1, r4, #0
	add r1, #0x38
	str r1, [sp]
	ldr r2, [r5, #0x1c]
	add r4, #0x30
	ldr r2, [r2, #0]
	add r1, r6, #0
	add r3, r4, #0
	bl ov6_02242F74
_02242382:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02242354

	thumb_func_start ov6_02242388
ov6_02242388: ; 0x02242388
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02242398
	ldrb r1, [r1, #0xc]
	cmp r1, r0
	bls _02242398
	mov r0, #1
	bx lr
_02242398:
	mov r0, #0
	bx lr
	thumb_func_end ov6_02242388

	thumb_func_start ov6_0224239C
ov6_0224239C: ; 0x0224239C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r0, #4
	add r6, r2, #0
	bl sub_02073C74
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_0202D93C
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	bl sub_0202D93C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r5, #0
	mov r1, #2
	bl sub_0202D93C
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	bl sub_0202D93C
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #7
	bl sub_0202D93C
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #5
	bl sub_0202D93C
	add r1, sp, #0x10
	strh r0, [r1]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02074158
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x30
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa3
	add r2, sp, #0x10
	bl sub_02074B30
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl sub_0207A048
	cmp r0, #0
	bne _02242430
	bl sub_02022974
_02242430:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov6_0224239C

	thumb_func_start ov6_02242440
ov6_02242440: ; 0x02242440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [r0, #0xc]
	str r1, [sp, #4]
	mov r5, #0
	bl sub_0202D834
	add r6, r0, #0
	add r4, r5, #0
_02242454:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D8C4
	bl sub_0206C3C8
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0224248C
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	cmp r7, r0
	bne _0224248C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D924
	lsl r2, r5, #2
	add r1, sp, #8
	str r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0224248C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02242454
	cmp r5, #0
	bne _022424A0
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022424A0:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _022424B0
	bl sub_02022974
_022424B0:
	cmp r4, #0
	bne _022424BA
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022424BA:
	cmp r5, #1
	bls _02242502
	cmp r5, #0
	bne _022424C6
	bl sub_02022974
_022424C6:
	cmp r5, #1
	bhi _022424CE
	mov r4, #0
	b _022424F6
_022424CE:
	bl sub_0201D2E8
	add r4, r0, #0
	ldr r0, _02242510 ; =0x0000FFFF
	add r1, r5, #0
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _022424F6
	bl sub_02022974
_022424F6:
	lsl r1, r4, #2
	add r0, sp, #8
	ldr r1, [r0, r1]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _02242508
_02242502:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
_02242508:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242510: .word 0x0000FFFF
	thumb_func_end ov6_02242440

	thumb_func_start ov6_02242514
ov6_02242514: ; 0x02242514
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	add r7, r2, #0
	str r3, [sp, #4]
	cmp r0, #0
	bne _02242530
	ldrb r0, [r5, #0xe]
	cmp r0, #0xe
	bne _02242530
	mov r2, #1
	b _02242532
_02242530:
	mov r2, #0
_02242532:
	ldr r1, [sp, #4]
	add r0, r7, #0
	ldr r1, [r1, #0]
	bl sub_02077F0C
	mov r6, #0
	add r0, r7, #0
	mov r1, #5
	add r2, r6, #0
	bl sub_02074470
	ldr r1, _022425C8 ; =0x000001A6
	cmp r0, r1
	bne _02242562
	ldrb r0, [r5, #0xf]
	mov r6, #1
	cmp r0, #0
	add r0, sp, #8
	bne _0224255E
	mov r1, #0
	strb r1, [r0]
	b _022425A6
_0224255E:
	strb r6, [r0]
	b _022425A6
_02242562:
	add r1, r1, #1
	cmp r0, r1
	bne _0224257C
	ldrb r0, [r5, #0x10]
	mov r6, #1
	cmp r0, #0
	add r0, sp, #8
	bne _02242578
	mov r1, #0
	strb r1, [r0]
	b _022425A6
_02242578:
	strb r6, [r0]
	b _022425A6
_0224257C:
	cmp r0, #0xc9
	bne _022425A6
	ldrb r0, [r5, #0x11]
	mov r6, #1
	lsl r1, r0, #3
	ldr r0, _022425CC ; =0x02248FF0
	ldr r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	bl sub_0201D2E8
	add r1, r4, #0
	bl sub_020E1F6C
	ldrb r0, [r5, #0x11]
	lsl r2, r0, #3
	ldr r0, _022425D0 ; =0x02248FF4
	ldr r0, [r0, r2]
	ldrb r1, [r0, r1]
	add r0, sp, #8
	strb r1, [r0]
_022425A6:
	cmp r6, #0
	beq _022425B4
	add r0, r7, #0
	mov r1, #0x70
	add r2, sp, #8
	bl sub_02074B30
_022425B4:
	ldr r0, [sp]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	add r1, r7, #0
	bl sub_0207A048
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022425C8: .word 0x000001A6
_022425CC: .word 0x02248FF0
_022425D0: .word 0x02248FF4
	thumb_func_end ov6_02242514

	thumb_func_start ov6_022425D4
ov6_022425D4: ; 0x022425D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r1, #0xd]
	add r4, r2, #0
	cmp r0, #0
	bne _02242630
	ldrb r0, [r1, #0xe]
	cmp r0, #0x48
	beq _022425EE
	cmp r0, #0x37
	beq _022425EE
	cmp r0, #0x2e
	bne _02242630
_022425EE:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r6, r0, #0x10
	cmp r6, #2
	blo _022425FE
	bl sub_02022974
_022425FE:
	cmp r6, #0
	bne _02242606
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242606:
	mov r1, #0
_02242608:
	lsl r2, r1, #3
	lsl r7, r4, #3
	add r6, r5, r2
	ldr r3, [r5, r2]
	ldr r2, [r5, r7]
	add r0, r5, r7
	cmp r3, r2
	bne _02242622
	ldrh r2, [r6, #4]
	ldrh r0, [r0, #4]
	cmp r2, r0
	bls _02242622
	add r4, r1, #0
_02242622:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0xc
	blo _02242608
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242630:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022425D4

	thumb_func_start ov6_02242634
ov6_02242634: ; 0x02242634
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	add r4, r3, #0
	bl sub_02074470
	cmp r0, #0
	bne _0224265A
	mov r2, #0
	add r0, r7, #0
	mov r1, #0xa
	strb r2, [r4, #0xd]
	bl sub_02074470
	b _02242660
_0224265A:
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #0x7b
_02242660:
	strb r0, [r4, #0xe]
	mov r0, #0
	strb r0, [r4, #0xc]
	str r0, [r4, #4]
	str r0, [r4, #8]
	cmp r5, #0
	beq _0224269C
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	strb r1, [r4, #0xf]
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	strb r1, [r4, #0x10]
	add r1, r5, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224269A
	cmp r1, #8
	ble _02242690
	bl sub_02022974
_02242690:
	add r5, #0xa0
	ldr r0, [r5, #0]
	sub r0, r0, #1
	strb r0, [r4, #0x11]
	b _0224269C
_0224269A:
	strb r0, [r4, #0x11]
_0224269C:
	ldr r0, [r6, #0xc]
	bl sub_02025E38
	bl sub_02025F20
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02242634

	thumb_func_start ov6_022426AC
ov6_022426AC: ; 0x022426AC
	ldr r3, _022426B4 ; =sub_02018184
	mov r1, #0x17
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_022426B4: .word sub_02018184
	thumb_func_end ov6_022426AC

	thumb_func_start ov6_022426B8
ov6_022426B8: ; 0x022426B8
	ldr r3, _022426BC ; =sub_020181C4
	bx r3
	; .align 2, 0
_022426BC: .word sub_020181C4
	thumb_func_end ov6_022426B8

	thumb_func_start ov6_022426C0
ov6_022426C0: ; 0x022426C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0x5a
	add r4, r1, #0
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r0, r4, #0
	mov r1, #0x12
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _022426E8
	cmp r0, #0xfe
	beq _022426EC
	cmp r0, #0xff
	beq _022426F0
	b _022426F4
_022426E8:
	mov r2, #0
	b _0224270C
_022426EC:
	mov r2, #1
	b _0224270C
_022426F0:
	mov r2, #2
	b _0224270C
_022426F4:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0224270A
	mov r2, #0
	b _0224270C
_0224270A:
	mov r2, #1
_0224270C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r7, #0
	lsl r1, r4, #0x10
	lsl r2, r2, #0x18
	add r0, #0x28
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02075FB4
	add r1, r7, #0
	mov r0, #1
	add r1, #0x3c
	mov r2, #4
	bl sub_020095C4
	str r0, [r7, #0x38]
	mov r0, #0x61
	mov r1, #4
	bl sub_02006C24
	ldr r4, _022427F0 ; =0x02249030
	str r0, [sp, #0x10]
	mov r6, #0
	add r5, r7, #0
_02242744:
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #4
	bl sub_02009714
	add r6, r6, #1
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r6, #4
	blt _02242744
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x10]
	mov r2, #5
	bl sub_02009A4C
	str r0, [r7, #0x10]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r7, #4]
	ldr r1, [sp, #0x10]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	str r0, [r7, #0x14]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0x10]
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x18]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r7, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #0xc
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x1c]
	ldrh r0, [r7, #0x28]
	ldrh r1, [r7, #0x2a]
	mov r2, #4
	bl sub_0201363C
	str r0, [r7, #0x20]
	ldrh r0, [r7, #0x28]
	ldrh r1, [r7, #0x2c]
	mov r2, #4
	bl sub_02013660
	str r0, [r7, #0x24]
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0x24]
	bl ov6_02242880
	ldr r0, [sp, #0x10]
	bl sub_02006CA8
	add r0, r7, #0
	bl ov6_022428F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022427F0: .word 0x02249030
	thumb_func_end ov6_022426C0

	thumb_func_start ov6_022427F4
ov6_022427F4: ; 0x022427F4
	add r1, r0, #0
	mov r0, #0x5a
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r3, _0224280C ; =sub_0200D9E8
	mov r2, #0
	add r0, r0, #4
	str r2, [r1, r0]
	ldr r0, _02242810 ; =ov6_02242860
	bx r3
	nop
_0224280C: .word sub_0200D9E8
_02242810: .word ov6_02242860
	thumb_func_end ov6_022427F4

	thumb_func_start ov6_02242814
ov6_02242814: ; 0x02242814
	mov r1, #0x5a
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02242814

	thumb_func_start ov6_02242820
ov6_02242820: ; 0x02242820
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov6_02242820

	thumb_func_start ov6_02242828
ov6_02242828: ; 0x02242828
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0200A4E4
	ldr r0, [r5, #0x14]
	bl sub_0200A6DC
	mov r4, #0
_0224283A:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0224283A
	ldr r0, [r5, #0x38]
	bl sub_02021964
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	ldr r0, [r5, #0x24]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02242828

	thumb_func_start ov6_02242860
ov6_02242860: ; 0x02242860
	push {r3, lr}
	mov r2, #0x5a
	lsl r2, r2, #2
	ldr r3, [r1, r2]
	cmp r3, #0
	beq _02242874
	ldr r0, [r1, #0x38]
	bl sub_020219F8
	pop {r3, pc}
_02242874:
	mov r3, #1
	add r2, r2, #4
	str r3, [r1, r2]
	bl sub_0200DA58
	pop {r3, pc}
	thumb_func_end ov6_02242860

	thumb_func_start ov6_02242880
ov6_02242880: ; 0x02242880
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02009DC8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_02009DC8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0200A3DC
	add r0, r7, #0
	bl sub_0200A640
	add r0, r5, #0
	bl sub_0200A534
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200A72C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020A81B0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_020A81FC
	mov r1, #0x32
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020C2C54
	mov r2, #0x32
	ldr r1, [sp]
	add r0, r4, #0
	lsl r2, r2, #6
	bl sub_020C02BC
	add r0, r6, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C0160
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02242880

	thumb_func_start ov6_022428F8
ov6_022428F8: ; 0x022428F8
	push {r4, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	sub r0, r0, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r2, #1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	mov r3, #2
	str r0, [sp, #0x18]
	ldr r0, [r4, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0x38]
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
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r0, [sp, #0x58]
	lsl r0, r0, #0x11
	str r0, [sp, #0x34]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r1, [sp, #0x50]
	bl sub_02021AA0
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	add sp, #0x80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022428F8

	thumb_func_start ov6_02242984
ov6_02242984: ; 0x02242984
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl sub_0203A640
	add r4, r0, #0
	mov r0, #0
	add r1, sp, #4
_02242994:
	lsl r2, r0, #3
	add r2, r4, r2
	ldr r3, [r2, #8]
	lsl r2, r0, #2
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r3, [r1, r2]
	cmp r0, #0xc
	blo _02242994
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #1
	bl sub_0202D814
	add r1, sp, #0x20
	str r1, [sp]
	ldr r2, [r5, #0x1c]
	add r1, r6, #0
	ldr r2, [r2, #0]
	add r3, sp, #0x1c
	bl ov6_02242F74
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0x10
	bl ov6_02240C9C
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl ov6_022477B8
	bl sub_0201D2E8
	ldr r1, _02242A0C ; =0x00001556
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _02242A00
	bl sub_02022974
_02242A00:
	lsl r1, r4, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_02242A0C: .word 0x00001556
	thumb_func_end ov6_02242984

	thumb_func_start ov6_02242A10
ov6_02242A10: ; 0x02242A10
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	mov r1, #0x34
	bl sub_02018184
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #0xb
	str r0, [r5, #0x2c]
	mov r0, #0x6a
	mov r2, #4
	bl sub_02006ADC
	add r7, r0, #0
	mov r4, #0
_02242A2E:
	bl sub_0201D2E8
	ldr r1, _02242A88 ; =0x0000071D
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x24
	blo _02242A44
	bl sub_02022974
_02242A44:
	lsl r0, r6, #0x18
	lsr r2, r0, #0x16
	add r1, r7, r2
	ldrh r2, [r7, r2]
	lsl r3, r4, #2
	add r0, r5, r3
	strh r2, [r5, r3]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _02242A2E
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	strh r0, [r5, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	strh r0, [r5, #0x16]
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r5, #0x30]
	add r0, r7, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242A88: .word 0x0000071D
	thumb_func_end ov6_02242A10

	thumb_func_start ov6_02242A8C
ov6_02242A8C: ; 0x02242A8C
	ldr r3, _02242A90 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02242A90: .word sub_020181C4
	thumb_func_end ov6_02242A8C

	thumb_func_start ov6_02242A94
ov6_02242A94: ; 0x02242A94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02242AB6
	lsl r2, r5, #2
	ldrh r1, [r4, r2]
	add r2, r4, r2
	ldrh r2, [r2, #2]
	lsl r1, r1, #0xb
	mov r0, #0xf0
	lsl r2, r2, #0xb
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02039F10
	b _02242AD2
_02242AB6:
	cmp r5, #5
	bne _02242ABE
	ldr r0, [r4, #0x30]
	b _02242AD2
_02242ABE:
	lsl r2, r5, #2
	ldrh r1, [r4, r2]
	add r2, r4, r2
	ldr r0, [r4, #0x2c]
	ldrh r2, [r2, #2]
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #5
	lsr r2, r2, #5
	bl sub_02039E30
_02242AD2:
	lsl r3, r5, #2
	add r1, r4, r3
	ldrh r2, [r1, #2]
	ldrh r1, [r4, r3]
	str r0, [r4, #0x18]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r2, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02242A94

	thumb_func_start ov6_02242AEC
ov6_02242AEC: ; 0x02242AEC
	add r0, #0x18
	bx lr
	thumb_func_end ov6_02242AEC

	thumb_func_start ov6_02242AF0
ov6_02242AF0: ; 0x02242AF0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #6
	bl sub_02027F6C
	mov r1, #0x42
	lsl r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	beq _02242B20
	cmp r0, #1
	beq _02242B28
	cmp r0, #2
	beq _02242B30
	b _02242B36
_02242B20:
	mov r0, #0xa
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	b _02242B36
_02242B28:
	mov r0, #0x52
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	b _02242B36
_02242B30:
	mov r0, #0x1b
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
_02242B36:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x50]
	ldr r2, _02242B54 ; =0x000001DB
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x30]
	add r3, sp, #8
	bl FUN_021E19CC
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02242B54: .word 0x000001DB
	thumb_func_end ov6_02242AF0

	thumb_func_start ov6_02242B58
ov6_02242B58: ; 0x02242B58
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	str r2, [sp]
	bl sub_0203D174
	bl sub_02027860
	mov r1, #6
	bl sub_02027F6C
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x14
	mov r0, #0
_02242B80:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02242B80
	mov r0, #0
	strb r0, [r5, #5]
	ldrh r1, [r4]
	cmp r1, #0
	beq _02242B9C
	cmp r1, #1
	beq _02242BC2
	cmp r1, #2
	beq _02242BEA
	b _02242C0E
_02242B9C:
	mov r1, #1
	strb r1, [r5, #4]
	cmp r6, #1
	bne _02242BB2
	mov r0, #0x52
	lsl r0, r0, #0x10
	str r0, [r5, #0xc]
	strh r1, [r4]
	mov r0, #0x4a
	str r0, [r5, #0x10]
	b _02242C12
_02242BB2:
	mov r0, #0x1b
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	mov r0, #2
	strh r0, [r4]
	mov r0, #0x64
	str r0, [r5, #0x10]
	b _02242C12
_02242BC2:
	cmp r6, #0
	bne _02242BD6
	mov r1, #0xa
	strb r0, [r5, #4]
	lsl r1, r1, #0x12
	str r1, [r5, #0xc]
	strh r0, [r4]
	mov r0, #0x2e
	str r0, [r5, #0x10]
	b _02242C12
_02242BD6:
	mov r0, #1
	strb r0, [r5, #4]
	mov r0, #0x1b
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	mov r0, #2
	strh r0, [r4]
	mov r0, #0x64
	str r0, [r5, #0x10]
	b _02242C12
_02242BEA:
	strb r0, [r5, #4]
	cmp r6, #0
	bne _02242BFE
	mov r1, #0xa
	lsl r1, r1, #0x12
	str r1, [r5, #0xc]
	strh r0, [r4]
	mov r0, #0x2e
	str r0, [r5, #0x10]
	b _02242C12
_02242BFE:
	mov r0, #0x52
	lsl r0, r0, #0x10
	str r0, [r5, #0xc]
	mov r0, #1
	strh r0, [r4]
	mov r0, #0x58
	str r0, [r5, #0x10]
	b _02242C12
_02242C0E:
	bl sub_02022974
_02242C12:
	ldr r0, [sp]
	str r0, [r5, #8]
	ldr r0, [sp]
	cmp r0, #3
	bne _02242C20
	ldr r0, _02242C30 ; =ov6_02242D94
	b _02242C22
_02242C20:
	ldr r0, _02242C34 ; =ov6_02242E60
_02242C22:
	str r0, [r5, #0]
	ldr r0, [r7, #0x10]
	ldr r1, _02242C38 ; =ov6_02242C5C
	add r2, r5, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242C30: .word ov6_02242D94
_02242C34: .word ov6_02242E60
_02242C38: .word ov6_02242C5C
	thumb_func_end ov6_02242B58

	thumb_func_start ov6_02242C3C
ov6_02242C3C: ; 0x02242C3C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #6
	bl sub_02027F6C
	ldrh r0, [r0]
	cmp r0, r4
	bne _02242C58
	mov r0, #5
	pop {r4, pc}
_02242C58:
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ov6_02242C3C

	thumb_func_start ov6_02242C5C
ov6_02242C5C: ; 0x02242C5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #5]
	cmp r1, #5
	bls _02242C78
	b _02242D84
_02242C78:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242C84: ; jump table
	.short _02242C90 - _02242C84 - 2 ; case 0
	.short _02242D0C - _02242C84 - 2 ; case 1
	.short _02242D1E - _02242C84 - 2 ; case 2
	.short _02242D30 - _02242C84 - 2 ; case 3
	.short _02242D68 - _02242C84 - 2 ; case 4
	.short _02242D7A - _02242C84 - 2 ; case 5
_02242C90:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _02242D8C ; =0x000001DB
	bl FUN_021E18CC
	bl FUN_021E18BC
	add r7, r0, #0
	ldr r0, _02242D8C ; =0x000001DB
	ldr r1, [r5, #0x30]
	bl FUN_021EF9E8
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _02242CD4
	add r2, r0, #0
	add r2, #8
	beq _02242CC8
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02242CC8
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02242CCA
_02242CC8:
	mov r1, #0
_02242CCA:
	cmp r1, #0
	beq _02242CD4
	ldr r1, [r1, #0]
	add r6, r0, r1
	b _02242CD6
_02242CD4:
	mov r6, #0
_02242CD6:
	ldr r0, [r5, #0x30]
	bl FUN_021EFAA0
	str r7, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r3, #0xff
	str r3, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #0x10
	add r3, #0xdc
	bl FUN_021D41C8
	ldr r0, [r5, #0x54]
	mov r1, #0x10
	mov r2, #0
	bl FUN_021D4250
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02242D84
_02242D0C:
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _02242D18
	ldr r0, _02242D90 ; =0x000006DB
	bl sub_02005748
_02242D18:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02242D1E:
	ldr r0, _02242D90 ; =0x000006DB
	bl sub_020057D4
	cmp r0, #0
	bne _02242D84
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02242D84
_02242D30:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _02242D8C ; =0x000001DB
	bl FUN_021E18CC
	add r6, r0, #0
	add r0, sp, #0x18
	add r1, r6, #0
	bl FUN_021E1894
	add r0, r5, #0
	add r2, r4, #0
	ldr r5, [r4, #0]
	add r1, r4, #0
	add r2, #0xc
	add r3, sp, #0x18
	blx r5
	cmp r0, #0
	beq _02242D5E
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_02242D5E:
	add r0, r6, #0
	add r1, sp, #0x18
	bl FUN_021E18A4
	b _02242D84
_02242D68:
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #0x10
	bl FUN_021D42B0
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _02242D84
_02242D7A:
	bl sub_020181C4
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02242D84:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02242D8C: .word 0x000001DB
_02242D90: .word 0x000006DB
	thumb_func_end ov6_02242C5C

	thumb_func_start ov6_02242D94
ov6_02242D94: ; 0x02242D94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r0, [r5, #4]
	add r4, r3, #0
	add r6, r2, #0
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02242DF4
	ldrb r1, [r5, #6]
	lsl r2, r1, #2
	ldr r1, _02242E54 ; =0x02249074
	ldr r1, [r1, r2]
	sub r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #6]
	cmp r0, #6
	bhs _02242E42
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r1, r0, #0x10
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bgt _02242E42
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	ldrb r2, [r5, #6]
	ldr r0, _02242E58 ; =0x02249034
	ldrb r1, [r5, #7]
	ldrb r0, [r0, r2]
	cmp r1, r0
	blo _02242E42
	cmp r2, #0
	bne _02242DE8
	ldr r0, _02242E5C ; =0x000006DA
	bl sub_02005748
_02242DE8:
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #7]
	b _02242E42
_02242DF4:
	ldrb r1, [r5, #6]
	lsl r2, r1, #2
	ldr r1, _02242E54 ; =0x02249074
	ldr r1, [r1, r2]
	add r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #6]
	cmp r0, #6
	bhs _02242E42
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r1, r0, #0x10
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blt _02242E42
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	ldrb r2, [r5, #6]
	ldr r0, _02242E58 ; =0x02249034
	ldrb r1, [r5, #7]
	ldrb r0, [r0, r2]
	cmp r1, r0
	blo _02242E42
	cmp r2, #0
	bne _02242E38
	ldr r0, _02242E5C ; =0x000006DA
	bl sub_02005748
_02242E38:
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #7]
_02242E42:
	ldr r1, [r4, #8]
	ldr r0, [r6, #0]
	cmp r1, r0
	bne _02242E4E
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242E4E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02242E54: .word 0x02249074
_02242E58: .word 0x02249034
_02242E5C: .word 0x000006DA
	thumb_func_end ov6_02242D94

	thumb_func_start ov6_02242E60
ov6_02242E60: ; 0x02242E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	bl sub_0205EAEC
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r7, #0]
	cmp r1, r0
	bne _02242E94
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02242E94:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02242EFC
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #1
	bne _02242F5C
	ldrb r1, [r4, #6]
	add r0, r6, #0
	lsl r2, r1, #2
	ldr r1, _02242F64 ; =0x02249058
	ldr r1, [r1, r2]
	bl sub_02065638
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhs _02242ED8
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	ble _02242ED8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02242ED0
	ldr r0, _02242F68 ; =0x000006D9
	bl sub_02005748
_02242ED0:
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _02242F5C
_02242ED8:
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bgt _02242F5C
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02242F5C
	cmp r0, #6
	bne _02242EF4
	ldr r0, _02242F6C ; =0x000006DA
	bl sub_02005748
_02242EF4:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	strb r0, [r4, #6]
	b _02242F5C
_02242EFC:
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #1
	bne _02242F5C
	ldrb r1, [r4, #6]
	add r0, r6, #0
	lsl r2, r1, #2
	ldr r1, _02242F70 ; =0x0224903C
	ldr r1, [r1, r2]
	bl sub_02065638
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhs _02242F3A
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bge _02242F3A
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02242F32
	ldr r0, _02242F68 ; =0x000006D9
	bl sub_02005748
_02242F32:
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _02242F5C
_02242F3A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x10]
	cmp r0, r1
	blt _02242F5C
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02242F5C
	cmp r0, #6
	bne _02242F56
	ldr r0, _02242F6C ; =0x000006DA
	bl sub_02005748
_02242F56:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	strb r0, [r4, #6]
_02242F5C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242F64: .word 0x02249058
_02242F68: .word 0x000006D9
_02242F6C: .word 0x000006DA
_02242F70: .word 0x0224903C
	thumb_func_end ov6_02242E60

	thumb_func_start ov6_02242F74
ov6_02242F74: ; 0x02242F74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	add r6, r3, #0
	bl ov6_02242FC0
	add r7, r0, #0
	cmp r4, #0
	beq _02242F8C
	mov r1, #9
	b _02242F8E
_02242F8C:
	mov r1, #0xa
_02242F8E:
	mov r0, #0x6a
	mov r2, #4
	bl sub_02006ADC
	lsl r1, r7, #2
	add r1, r7, r1
	add r3, r5, #0
	asr r3, r1
	mov r2, #0x1f
	add r1, r3, #0
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	and r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, [r0, r2]
	str r1, [r6, #0]
	ldr r2, [r0, r2]
	ldr r1, [sp, #0x18]
	str r2, [r1, #0]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02242F74

	thumb_func_start ov6_02242FC0
ov6_02242FC0: ; 0x02242FC0
	push {r4, lr}
	mov r1, #0x7e
	lsl r1, r1, #2
	sub r0, r0, r1
	mov r4, #0
	cmp r0, #5
	bhi _02242FFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242FDA: ; jump table
	.short _02242FE6 - _02242FDA - 2 ; case 0
	.short _02242FE8 - _02242FDA - 2 ; case 1
	.short _02242FEC - _02242FDA - 2 ; case 2
	.short _02242FF0 - _02242FDA - 2 ; case 3
	.short _02242FF4 - _02242FDA - 2 ; case 4
	.short _02242FF8 - _02242FDA - 2 ; case 5
_02242FE6:
	b _02243000
_02242FE8:
	mov r4, #1
	b _02243000
_02242FEC:
	mov r4, #2
	b _02243000
_02242FF0:
	mov r4, #3
	b _02243000
_02242FF4:
	mov r4, #4
	b _02243000
_02242FF8:
	mov r4, #5
	b _02243000
_02242FFC:
	bl sub_02022974
_02243000:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov6_02242FC0

	thumb_func_start ov6_02243004
ov6_02243004: ; 0x02243004
	push {r3, lr}
	cmp r1, #9
	bhi _022430B8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243016: ; jump table
	.short _0224302A - _02243016 - 2 ; case 0
	.short _02243034 - _02243016 - 2 ; case 1
	.short _02243050 - _02243016 - 2 ; case 2
	.short _0224305A - _02243016 - 2 ; case 3
	.short _02243064 - _02243016 - 2 ; case 4
	.short _0224306E - _02243016 - 2 ; case 5
	.short _02243078 - _02243016 - 2 ; case 6
	.short _02243094 - _02243016 - 2 ; case 7
	.short _022430A0 - _02243016 - 2 ; case 8
	.short _022430AC - _02243016 - 2 ; case 9
_0224302A:
	bl ov6_0223E6EC
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_02243034:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223E708
	cmp r0, #0
	beq _0224304C
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223E700
	mov r0, #1
	pop {r3, pc}
_0224304C:
	mov r0, #0
	pop {r3, pc}
_02243050:
	bl ov6_0223E814
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_0224305A:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223E828
	b _022430BC
_02243064:
	bl ov6_0223FCCC
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_0224306E:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223FCE8
	b _022430BC
_02243078:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223FCF4
	cmp r0, #6
	bne _02243090
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223FCE0
	mov r0, #1
	pop {r3, pc}
_02243090:
	mov r0, #0
	pop {r3, pc}
_02243094:
	mov r1, #0
	bl ov6_0223EA74
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_022430A0:
	mov r1, #1
	bl ov6_0223EA74
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_022430AC:
	mov r1, #2
	bl ov6_0223EA74
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_022430B8:
	bl sub_02022974
_022430BC:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022430C0: .word 0x02249940
	thumb_func_end ov6_02243004

	thumb_func_start ov6_022430C4
ov6_022430C4: ; 0x022430C4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	mov r2, #0
	ldrh r0, [r0, #2]
	add r1, r2, #0
_022430D6:
	cmp r0, #0
	beq _022430DC
	add r2, r2, #1
_022430DC:
	add r1, r1, #1
	cmp r1, #3
	blt _022430D6
	add r0, r2, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_022430C4

	thumb_func_start ov6_022430E8
ov6_022430E8: ; 0x022430E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blo _022430F8
	bl sub_02022974
_022430F8:
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	add r1, sp, #0
	bl ov6_022431A0
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	ldrh r0, [r0]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_022430E8

	thumb_func_start ov6_02243114
ov6_02243114: ; 0x02243114
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blo _02243124
	bl sub_02022974
_02243124:
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	add r1, sp, #0
	bl ov6_022431A0
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	ldrh r0, [r0, #2]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_02243114

	thumb_func_start ov6_02243140
ov6_02243140: ; 0x02243140
	ldr r3, _02243144 ; =sub_02069B90
	bx r3
	; .align 2, 0
_02243144: .word sub_02069B90
	thumb_func_end ov6_02243140

	thumb_func_start ov6_02243148
ov6_02243148: ; 0x02243148
	push {r3, lr}
	sub sp, #8
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0206978C
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02243148

	thumb_func_start ov6_02243160
ov6_02243160: ; 0x02243160
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r1, sp, #0
	add r4, r0, #0
	bl ov6_022431A0
	mov r2, #0
	add r3, sp, #0
	add r5, sp, #0xc
_02243172:
	ldr r1, [r3, #0]
	add r2, r2, #1
	ldrh r0, [r1]
	add r3, r3, #4
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	add r5, r5, #4
	cmp r2, #3
	blt _02243172
	mov r2, #0
	add r1, sp, #0xc
_0224318A:
	ldrh r0, [r1]
	add r2, r2, #1
	strh r0, [r4]
	ldrh r0, [r1, #2]
	add r1, r1, #4
	strh r0, [r4, #2]
	add r4, r4, #4
	cmp r2, #3
	blt _0224318A
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02243160

	thumb_func_start ov6_022431A0
ov6_022431A0: ; 0x022431A0
	push {r3, r4}
	ldrh r4, [r0, #6]
	ldrh r3, [r0, #2]
	cmp r3, r4
	ldrh r2, [r0, #0xa]
	bhs _022431E2
	cmp r4, r2
	bhs _022431C0
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #0]
	add r2, r0, #4
	str r2, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431C0:
	cmp r3, r2
	bhs _022431D4
	add r2, r0, #4
	str r2, [r1, #0]
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431D4:
	add r2, r0, #4
	str r2, [r1, #0]
	str r0, [r1, #4]
	add r0, #8
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431E2:
	cmp r3, r2
	bhs _022431F6
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #0]
	str r0, [r1, #4]
	add r0, r0, #4
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431F6:
	cmp r4, r2
	str r0, [r1, #0]
	bhs _0224320A
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #4]
	add r0, r0, #4
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_0224320A:
	add r2, r0, #4
	str r2, [r1, #4]
	add r0, #8
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov6_022431A0

	thumb_func_start ov6_02243218
ov6_02243218: ; 0x02243218
	push {r3, lr}
	mov r1, #0x16
	bl sub_020E2178
	ldr r0, _02243228 ; =0x02249090
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02243228: .word 0x02249090
	thumb_func_end ov6_02243218

	thumb_func_start ov6_0224322C
ov6_0224322C: ; 0x0224322C
	push {r4, r5, r6, lr}
	sub sp, #0x1a8
	add r5, r1, #0
	mov r1, #0x16
	add r4, r2, #0
	bl sub_020E2178
	ldr r0, _02243254 ; =0x02249090
	lsl r1, r1, #2
	ldr r6, [r0, r1]
	add r0, sp, #0
	add r1, r6, #0
	bl sub_0203A614
	ldr r0, [sp, #0x64]
	strh r0, [r4]
	strh r6, [r5]
	add sp, #0x1a8
	pop {r4, r5, r6, pc}
	nop
_02243254: .word 0x02249090
	thumb_func_end ov6_0224322C

	thumb_func_start ov6_02243258
ov6_02243258: ; 0x02243258
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [sp, #0x1c]
	add r7, r3, #0
	strb r6, [r5]
	ldr r4, [sp, #0x18]
	strb r7, [r5, #1]
	strb r4, [r5, #2]
	str r0, [sp, #0x1c]
	strb r0, [r5, #3]
	ldr r0, [sp, #0x20]
	mov r2, #4
	strb r0, [r5, #4]
	ldr r0, [sp, #0x24]
	strb r0, [r5, #5]
	ldr r0, [sp, #0x28]
	strb r0, [r5, #6]
	ldr r0, [sp, #0x2c]
	strb r0, [r5, #7]
	add r0, r1, #0
	add r1, r5, #0
	add r1, #0xc
	bl sub_020095C4
	str r0, [r5, #8]
	add r0, r5, #0
	mov r2, #2
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	add r0, r6, #0
	mov r1, #0
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r7, #0
	mov r1, #1
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	mov r1, #3
	mov r2, #4
	bl sub_02009714
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #4
	lsl r1, r6, #3
	bl ov6_02245F44
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	lsl r1, r7, #3
	bl ov6_02245F44
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	lsl r1, r4, #3
	bl ov6_02245F44
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x1c]
	mov r0, #4
	lsl r1, r1, #3
	bl ov6_02245F44
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0
	cmp r6, #0
	ble _02243334
	ble _02243334
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_02243324:
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r1, r1, #1
	strh r0, [r3, r2]
	add r2, #8
	cmp r1, r6
	blt _02243324
_02243334:
	mov r3, #0
	cmp r7, #0
	ble _02243354
	ble _02243354
	ldr r0, [sp, #0x24]
	mov r6, #0x52
	lsl r0, r0, #0x10
	add r2, r3, #0
	asr r1, r0, #0x10
	lsl r6, r6, #2
_02243348:
	ldr r0, [r5, r6]
	add r3, r3, #1
	strh r1, [r0, r2]
	add r2, #8
	cmp r3, r7
	blt _02243348
_02243354:
	mov r1, #0
	cmp r4, #0
	ble _02243374
	ble _02243374
	ldr r2, [sp, #0x28]
	add r0, r1, #0
	lsl r2, r2, #0x10
	asr r6, r2, #0x10
	mov r2, #0x53
	lsl r2, r2, #2
_02243368:
	ldr r3, [r5, r2]
	add r1, r1, #1
	strh r6, [r3, r0]
	add r0, #8
	cmp r1, r4
	blt _02243368
_02243374:
	ldr r0, [sp, #0x1c]
	mov r1, #0
	cmp r0, #0
	ble _02243398
	ble _02243398
	ldr r2, [sp, #0x2c]
	mov r3, #0x15
	lsl r2, r2, #0x10
	add r0, r1, #0
	asr r4, r2, #0x10
	lsl r3, r3, #4
_0224338A:
	ldr r2, [r5, r3]
	add r1, r1, #1
	strh r4, [r2, r0]
	ldr r2, [sp, #0x1c]
	add r0, #8
	cmp r1, r2
	blt _0224338A
_02243398:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02243258

	thumb_func_start ov6_0224339C
ov6_0224339C: ; 0x0224339C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0
	ble _022433CC
	add r4, r6, #0
	mov r7, #4
_022433AC:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _022433C2
	ldr r0, [r0, #4]
	bl sub_0200A4E4
_022433C2:
	ldrb r0, [r5]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _022433AC
_022433CC:
	ldrb r0, [r5, #1]
	mov r6, #0
	cmp r0, #0
	ble _022433F8
	add r4, r6, #0
	mov r7, #5
_022433D8:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _022433EE
	ldr r0, [r0, #4]
	bl sub_0200A6DC
_022433EE:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _022433D8
_022433F8:
	ldrb r0, [r5, #2]
	mov r6, #0
	cmp r0, #0
	ble _02243424
	add r4, r6, #0
	mov r7, #6
_02243404:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _0224341A
	ldr r0, [r0, #4]
	bl sub_02009D4C
_0224341A:
	ldrb r0, [r5, #2]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02243404
_02243424:
	ldrb r0, [r5, #3]
	mov r6, #0
	cmp r0, #0
	ble _02243450
	add r4, r6, #0
	mov r7, #7
_02243430:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _02243446
	ldr r0, [r0, #4]
	bl sub_02009D4C
_02243446:
	ldrb r0, [r5, #3]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02243430
_02243450:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, [r5, #8]
	bl sub_020219C0
	ldr r0, [r5, #8]
	bl sub_02021964
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_0224339C

	thumb_func_start ov6_022434B0
ov6_022434B0: ; 0x022434B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _02243516
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r3, [r6, r0]
	mov r0, #4
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_022434D2:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _0224350E
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02009A4C
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add sp, #0x14
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_0224350E:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _022434D2
_02243516:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022434B0

	thumb_func_start ov6_02243520
ov6_02243520: ; 0x02243520
	push {r4, r5, r6, lr}
	ldrb r3, [r0]
	mov r2, #0
	cmp r3, #0
	ble _0224354E
	mov r4, #0x51
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_02243534:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _02243546
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_0200A3DC
	pop {r4, r5, r6, pc}
_02243546:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _02243534
_0224354E:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02243520

	thumb_func_start ov6_02243554
ov6_02243554: ; 0x02243554
	push {r4, r5, r6, lr}
	ldrb r3, [r0]
	mov r2, #0
	cmp r3, #0
	ble _02243582
	mov r4, #0x51
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_02243568:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _0224357A
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_02009D4C
	pop {r4, r5, r6, pc}
_0224357A:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _02243568
_02243582:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02243554

	thumb_func_start ov6_02243588
ov6_02243588: ; 0x02243588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _022435F0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r3, [r6, r0]
	mov r0, #5
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_022435AA:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _022435E8
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #4
	str r1, [sp, #0xc]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02009B04
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add sp, #0x18
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022435E8:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _022435AA
_022435F0:
	bl sub_02022974
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02243588

	thumb_func_start ov6_022435F8
ov6_022435F8: ; 0x022435F8
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0
	ble _02243626
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_0224360C:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _0224361E
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_0200A640
	pop {r4, r5, r6, pc}
_0224361E:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _0224360C
_02243626:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022435F8

	thumb_func_start ov6_0224362C
ov6_0224362C: ; 0x0224362C
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0
	ble _0224365A
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_02243640:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _02243652
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_02009D4C
	pop {r4, r5, r6, pc}
_02243652:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _02243640
_0224365A:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_0224362C

	thumb_func_start ov6_02243660
ov6_02243660: ; 0x02243660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _022436C6
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r3, [r6, r0]
	mov r0, #6
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_02243682:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _022436BE
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02009BC4
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add sp, #0x14
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_022436BE:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _02243682
_022436C6:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02243660

	thumb_func_start ov6_022436D0
ov6_022436D0: ; 0x022436D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _02243736
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r3, [r6, r0]
	mov r0, #7
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_022436F2:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _0224372E
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02009BC4
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	add sp, #0x14
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_0224372E:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _022436F2
_02243736:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022436D0

	thumb_func_start ov6_02243740
ov6_02243740: ; 0x02243740
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	mov r0, #7
	add r2, r3, #0
	ldrsb r3, [r5, r0]
	ldr r6, [sp, #0x84]
	cmp r6, r3
	bne _0224375A
	sub r0, #8
	str r0, [sp, #0x84]
_0224375A:
	ldr r0, [sp, #0x84]
	mov r3, #0
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x88]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r5, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r5, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	bl sub_020093B4
	ldr r0, [r5, #8]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #4
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r4, r0, #0
	bne _022437C2
	bl sub_02022974
_022437C2:
	add r0, r4, #0
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02243740

	thumb_func_start ov6_022437C8
ov6_022437C8: ; 0x022437C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_02021D28
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov6_022437C8

	thumb_func_start ov6_022437DC
ov6_022437DC: ; 0x022437DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r4, r0, #0
	mov r2, #0
	add r0, sp, #0x1c
	str r2, [r0, #0]
	str r2, [r0, #4]
	add r3, sp, #0x28
	str r2, [r3, #0]
	str r2, [r3, #4]
	ldr r6, _02243844 ; =0x0224918C
	str r2, [r0, #8]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x10
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r2, [r3, #8]
	str r0, [r5, #0]
	add r1, r3, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0x84
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r3, r2, #0
	bl ov6_02243740
	add r4, r0, #0
	mov r1, #2
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0x10
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_02243844: .word 0x0224918C
	thumb_func_end ov6_022437DC

	thumb_func_start ov6_02243848
ov6_02243848: ; 0x02243848
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r3, #0
	add r2, sp, #0x10
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	cmp r1, #1
	bne _0224385C
	mov r3, #1
_0224385C:
	mov r2, #2
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x83
	str r1, [sp, #0xc]
	add r1, sp, #0x10
	bl ov6_02243740
	add r4, r0, #0
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #6
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov6_02243848

	thumb_func_start ov6_02243888
ov6_02243888: ; 0x02243888
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, sp, #0x18
	mov r4, #0
	str r4, [r5, #0]
	str r4, [r5, #4]
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r3, [sp, #0x10]
	str r4, [r5, #8]
	str r1, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0x82
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, _022438B8 ; =0x0224925C
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02071330
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_022438B8: .word 0x0224925C
	thumb_func_end ov6_02243888

	thumb_func_start ov6_022438BC
ov6_022438BC: ; 0x022438BC
	push {r3, lr}
	bl sub_02071598
	ldrb r0, [r0, #2]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_022438BC

	thumb_func_start ov6_022438C8
ov6_022438C8: ; 0x022438C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x58
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x64]
	bl ov6_022437DC
	str r0, [r4, #0x68]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022438C8

	thumb_func_start ov6_022438EC
ov6_022438EC: ; 0x022438EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02071598
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _02243900
	bl sub_0207136C
_02243900:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0224390A
	bl FUN_021F0EFC
_0224390A:
	add r0, r5, #0
	bl sub_0207136C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022438EC

	thumb_func_start ov6_02243914
ov6_02243914: ; 0x02243914
	ldr r3, _0224391C ; =sub_02021BD4
	ldr r0, [r1, #0x68]
	bx r3
	nop
_0224391C: .word sub_02021BD4
	thumb_func_end ov6_02243914

	thumb_func_start ov6_02243920
ov6_02243920: ; 0x02243920
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5]
	lsl r1, r0, #2
	ldr r0, _0224393C ; =0x02249110
	ldr r4, [r0, r1]
_0224392C:
	ldrb r1, [r5, #1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0224392C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224393C: .word 0x02249110
	thumb_func_end ov6_02243920

	thumb_func_start ov6_02243940
ov6_02243940: ; 0x02243940
	push {r3, lr}
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r0, #0x68]
	bl sub_02021CAC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_02243940

	thumb_func_start ov6_02243950
ov6_02243950: ; 0x02243950
	push {r4, r5, r6, lr}
	sub sp, #0x30
	ldr r4, _02243AA4 ; =0x02249150
	add r2, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _02243AA8 ; =0x022491A4
	str r0, [r3, #0]
	ldmia r4!, {r0, r1}
	add r3, sp, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	add r0, r2, #0
	bl sub_02071598
	add r4, r0, #0
	mov r3, #1
	add r5, r4, #0
	strb r3, [r4]
	mov r2, #0
	strb r2, [r4, #2]
	strb r2, [r4, #1]
	str r2, [r4, #4]
	add r6, sp, #0x24
	ldmia r6!, {r0, r1}
	add r5, #8
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	ldr r0, _02243AAC ; =0x0015E000
	add r2, r4, #0
	add r5, sp, #0x18
	str r0, [r4, #0x38]
	ldmia r5!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	lsl r0, r3, #0xa
	str r0, [r4, #0x50]
	mov r0, #0x2d
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0x48]
	lsl r0, r3, #0x11
	str r0, [r4, #0x4c]
	mov r0, #0x2d
	bl sub_0201D264
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x68]
	add r1, sp, #0x24
	bl sub_02021C50
	ldr r0, [r4, #0x68]
	add r1, sp, #0x18
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_02021C94
	ldr r0, [r4, #0x68]
	mov r1, #0x84
	bl sub_02021F58
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x60]
	bl ov6_02245B4C
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl FUN_021F0EB0
	ldr r2, _02243AB0 ; =0xFFF88000
	mov r1, #1
	mov r3, #0xc
	str r0, [r4, #0x70]
	bl FUN_021F0F10
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _02243AB4 ; =0x022491C8
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r4, [r4, #0x60]
	add r0, r4, #0
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add r0, r4, #0
	mov r1, #2
	bl sub_02021D6C
	bl ov6_02243F2C
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02243AA4: .word 0x02249150
_02243AA8: .word 0x022491A4
_02243AAC: .word 0x0015E000
_02243AB0: .word 0xFFF88000
_02243AB4: .word 0x022491C8
	thumb_func_end ov6_02243950

	thumb_func_start ov6_02243AB8
ov6_02243AB8: ; 0x02243AB8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r6, [r5, #0x68]
	ldr r4, [r5, #0x60]
	sub r0, r1, r0
	str r0, [r5, #0x48]
	bpl _02243AD0
	mov r0, #0
	str r0, [r5, #0x48]
_02243AD0:
	mov r0, #2
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _02243AE2
	mov r0, #7
	lsl r0, r0, #0xa
	sub r0, r1, r0
	str r0, [r5, #0x4c]
_02243AE2:
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02243AEE
	str r0, [r5, #0x4c]
_02243AEE:
	mov r0, #0x2d
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0x5a
	bge _02243B36
	mov r0, #1
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x40]
_02243B36:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	bge _02243B48
	str r0, [r5, #0x2c]
_02243B48:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	bge _02243B5A
	str r0, [r5, #0x30]
_02243B5A:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x2c
	bl sub_02021C70
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x12
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _02243BAA
	mov r0, #0
	str r0, [r5, #4]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _02243BB0
_02243BAA:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02243BB0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02243AB8

	thumb_func_start ov6_02243BB8
ov6_02243BB8: ; 0x02243BB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	bl ov6_02245BC8
	ldr r0, [r4, #0x70]
	mov r1, #2
	mov r2, #0
	mov r3, #0xc
	bl FUN_021F0F10
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [r4, #0x50]
	lsl r0, r0, #9
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x48]
	mov r0, #6
	lsl r0, r0, #0xa
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02243BB8

	thumb_func_start ov6_02243BEC
ov6_02243BEC: ; 0x02243BEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x68]
	add r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #4
	str r2, [r5, #0x4c]
	cmp r2, r1
	ble _02243C10
	lsl r0, r0, #4
	str r0, [r5, #0x4c]
_02243C10:
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	mov r0, #0x80
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	mov r0, #0xa
	ldr r1, [r5, #0x40]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02243C54
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x40]
_02243C54:
	mov r0, #2
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xc
	add r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	str r1, [r5, #0x38]
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _02243C86
	str r0, [r5, #0x2c]
_02243C86:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _02243C98
	str r0, [r5, #0x30]
_02243C98:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [sp, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	bgt _02243CD2
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02243CD2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_02243BEC

	thumb_func_start ov6_02243CD8
ov6_02243CD8: ; 0x02243CD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0
	str r0, [r4, #4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02243CD8

	thumb_func_start ov6_02243CFC
ov6_02243CFC: ; 0x02243CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x14
	bge _02243D12
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243D12:
	ldr r3, _02243DB4 ; =0x02249174
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02243DB8 ; =0x02249180
	str r0, [r2, #0]
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r7, #0
	str r0, [r2, #0]
	add r2, r4, #0
	str r7, [r4, #4]
	add r3, r6, #0
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r7, [r4, #0x14]
	str r7, [r4, #0x18]
	str r7, [r4, #0x1c]
	str r7, [r4, #0x38]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r2, #0]
	lsl r1, r1, #8
	ldr r0, _02243DBC ; =0x0013B000
	str r1, [r4, #0x50]
	str r0, [r4, #0x40]
	lsl r0, r1, #0xa
	str r0, [r4, #0x48]
	lsl r0, r1, #4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x68]
	add r1, r6, #0
	bl sub_02021C50
	ldr r0, [r4, #0x68]
	add r1, sp, #0
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_02021C94
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x60]
	mov r1, #6
	bl sub_02021D6C
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl sub_02021CC8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243DB4: .word 0x02249174
_02243DB8: .word 0x02249180
_02243DBC: .word 0x0013B000
	thumb_func_end ov6_02243CFC

	thumb_func_start ov6_02243DC0
ov6_02243DC0: ; 0x02243DC0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x68]
	sub r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02243DE0
	lsr r0, r0, #3
	add r0, r1, r0
	str r0, [r5, #0x4c]
_02243DE0:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _02243DEA
	mov r0, #0
	str r0, [r5, #0x48]
_02243DEA:
	ldr r0, _02243EC8 ; =0x0000013B
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0xb4
	bge _02243E32
	mov r0, #1
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [r5, #0x40]
_02243E32:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, #0x2c]
	cmp r1, r0
	bge _02243E44
	str r0, [r5, #0x2c]
_02243E44:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, #0x30]
	cmp r1, r0
	bge _02243E56
	str r0, [r5, #0x30]
_02243E56:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	mov r0, #6
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xc
	add r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r1, [r5, #0x38]
	cmp r0, #0x3c
	ble _02243E7C
	mov r0, #0xf
	lsl r0, r0, #0xe
	str r0, [r5, #0x38]
_02243E7C:
	ldr r1, [r5, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _02243EC0
	add r0, r4, #0
	mov r1, #0
	bl sub_02021CAC
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02243EC0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02243EC8: .word 0x0000013B
	thumb_func_end ov6_02243DC0

	thumb_func_start ov6_02243ECC
ov6_02243ECC: ; 0x02243ECC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	bne _02243EEA
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ov6_02243F74
_02243EEA:
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bne _02243EF8
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl sub_02021CAC
_02243EF8:
	ldr r0, [r4, #4]
	cmp r0, #0xf
	ble _02243F16
	ldr r0, [r4, #0x70]
	bl FUN_021F0EF0
	cmp r0, #1
	bne _02243F16
	mov r0, #0
	str r0, [r4, #4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #2
	strb r0, [r4, #2]
_02243F16:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02243ECC

	thumb_func_start ov6_02243F1C
ov6_02243F1C: ; 0x02243F1C
	mov r0, #0
	bx lr
	thumb_func_end ov6_02243F1C

	thumb_func_start ov6_02243F20
ov6_02243F20: ; 0x02243F20
	ldr r3, _02243F28 ; =sub_02006C24
	mov r0, #0x61
	mov r1, #4
	bx r3
	; .align 2, 0
_02243F28: .word sub_02006C24
	thumb_func_end ov6_02243F20

	thumb_func_start ov6_02243F2C
ov6_02243F2C: ; 0x02243F2C
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _02243F4C ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	nop
_02243F4C: .word 0x00007FFF
	thumb_func_end ov6_02243F2C

	thumb_func_start ov6_02243F50
ov6_02243F50: ; 0x02243F50
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _02243F70 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_02243F70: .word 0x00007FFF
	thumb_func_end ov6_02243F50

	thumb_func_start ov6_02243F74
ov6_02243F74: ; 0x02243F74
	push {r4, lr}
	ldr r0, [r0, #0x3c]
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02062D64
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02243F74

	thumb_func_start ov6_02243F88
ov6_02243F88: ; 0x02243F88
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov6_02243FDC
	add r1, r0, #0
	str r4, [r1, #0x5c]
	str r6, [r1, #0xc]
	str r5, [r1, #0x20]
	cmp r5, #0
	bne _02243FAA
	ldr r0, _02243FB4 ; =ov6_02244004
	mov r2, #0x85
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
_02243FAA:
	ldr r0, _02243FB8 ; =ov6_022443B8
	mov r2, #0x85
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243FB4: .word ov6_02244004
_02243FB8: .word ov6_022443B8
	thumb_func_end ov6_02243F88

	thumb_func_start ov6_02243FBC
ov6_02243FBC: ; 0x02243FBC
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02243FBC

	thumb_func_start ov6_02243FC8
ov6_02243FC8: ; 0x02243FC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl ov6_02243FFC
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov6_02243FC8

	thumb_func_start ov6_02243FDC
ov6_02243FDC: ; 0x02243FDC
	push {r3, r4, r5, lr}
	mov r1, #0x87
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018184
	mov r2, #0x87
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	str r5, [r4, #0x60]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02243FDC

	thumb_func_start ov6_02243FFC
ov6_02243FFC: ; 0x02243FFC
	ldr r3, _02244000 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02244000: .word sub_020181C4
	thumb_func_end ov6_02243FFC

	thumb_func_start ov6_02244004
ov6_02244004: ; 0x02244004
	push {r3, r4, r5, lr}
	ldr r4, _02244034 ; =0x022492D8
	add r5, r1, #0
_0224400A:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0224400A
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _02244032
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224402C
	bl sub_020713D0
_0224402C:
	add r0, r5, #0
	bl ov6_02244C10
_02244032:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244034: .word 0x022492D8
	thumb_func_end ov6_02244004

	thumb_func_start ov6_02244038
ov6_02244038: ; 0x02244038
	push {r4, lr}
	add r4, r0, #0
	bl ov6_0224481C
	add r0, r4, #0
	bl ov6_0224464C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02244038

	thumb_func_start ov6_02244050
ov6_02244050: ; 0x02244050
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02244066
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02244066:
	ldr r5, _022440B8 ; =0x02249120
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r5, _022440BC ; =0x022491E0
	str r0, [r3, #0]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl ov6_02244CFC
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov6_0224529C
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov6_022452BC
	add r0, r4, #0
	bl ov6_0224469C
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022440B8: .word 0x02249120
_022440BC: .word 0x022491E0
	thumb_func_end ov6_02244050

	thumb_func_start ov6_022440C0
ov6_022440C0: ; 0x022440C0
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02245FDC
	mov r0, #0
	ldr r1, _022440F4 ; =0xFFFC0000
	str r0, [r4, #0x2c]
	str r1, [r4, #0x54]
	mov r1, #0xfe
	lsl r1, r1, #0xc
	str r1, [r4, #0x44]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [r4, #0x48]
	mov r1, #0x5f
	lsl r1, r1, #0xc
	str r1, [r4, #0x4c]
	mov r1, #0x61
	lsl r1, r1, #0xc
	str r1, [r4, #0x50]
	mov r1, #1
	str r1, [r4, #0x2c]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_022440F4: .word 0xFFFC0000
	thumb_func_end ov6_022440C0

	thumb_func_start ov6_022440F8
ov6_022440F8: ; 0x022440F8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0
	str r2, [r4, #0x2c]
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x44]
	cmp r0, #0
	bgt _0224411C
	mov r0, #2
	str r2, [r4, #0x44]
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224411C:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022440F8

	thumb_func_start ov6_02244138
ov6_02244138: ; 0x02244138
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x50]
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #4
	str r2, [r4, #0x54]
	cmp r2, r1
	ble _02244166
	lsl r0, r0, #4
	str r0, [r4, #0x54]
_02244166:
	mov r0, #0xe
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _02244172
	str r0, [r4, #0x4c]
_02244172:
	mov r0, #0x22
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	ble _0224417E
	str r0, [r4, #0x50]
_0224417E:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0xe
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _022441B6
	mov r0, #0x22
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _022441B6
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov6_02244D34
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022441B6:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_02244138

	thumb_func_start ov6_022441BC
ov6_022441BC: ; 0x022441BC
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0xf
	blt _022441D4
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, _022441D8 ; =0xFFFC0000
	str r1, [r0, #0x58]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
_022441D4:
	mov r0, #0
	bx lr
	; .align 2, 0
_022441D8: .word 0xFFFC0000
	thumb_func_end ov6_022441BC

	thumb_func_start ov6_022441DC
ov6_022441DC: ; 0x022441DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	ldr r0, [r4, #0x58]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	bgt _02244214
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02244214:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022441DC

	thumb_func_start ov6_02244228
ov6_02244228: ; 0x02244228
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x58]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, _02244280 ; =0xFFFFE000
	str r1, [r4, #0x58]
	cmp r1, r0
	ble _0224424C
	str r0, [r4, #0x58]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #0x5c]
	bl sub_02077E3C
_0224424C:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	ldr r0, [r4, #0x58]
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02244280: .word 0xFFFFE000
	thumb_func_end ov6_02244228

	thumb_func_start ov6_02244284
ov6_02244284: ; 0x02244284
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #8
	blt _0224429C
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, _022442A0 ; =0xFFFFF000
	str r1, [r0, #0x58]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
_0224429C:
	mov r0, #0
	bx lr
	; .align 2, 0
_022442A0: .word 0xFFFFF000
	thumb_func_end ov6_02244284

	thumb_func_start ov6_022442A4
ov6_022442A4: ; 0x022442A4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	lsl r1, r0, #1
	ldr r0, _02244300 ; =0xFFFC0000
	str r1, [r4, #0x58]
	cmp r1, r0
	bge _022442B8
	str r0, [r4, #0x58]
_022442B8:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	ldr r0, [r4, #0x58]
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	ldr r1, [sp]
	ldr r0, _02244304 ; =0xFFFD8000
	cmp r1, r0
	bgt _022442F8
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022442F8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02244300: .word 0xFFFC0000
_02244304: .word 0xFFFD8000
	thumb_func_end ov6_022442A4

	thumb_func_start ov6_02244308
ov6_02244308: ; 0x02244308
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x50]
	mov r0, #1
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xe
	add r2, r1, r0
	lsl r1, r0, #3
	str r2, [r4, #0x54]
	cmp r2, r1
	ble _02244336
	lsl r0, r0, #3
	str r0, [r4, #0x54]
_02244336:
	mov r0, #0x16
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _02244342
	str r0, [r4, #0x4c]
_02244342:
	mov r0, #0x1a
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _0224434E
	str r0, [r4, #0x50]
_0224434E:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0x16
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02244382
	mov r0, #0x1a
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02244382
	add r0, r4, #0
	bl ov6_02246018
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02244382:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_02244308

	thumb_func_start ov6_02244388
ov6_02244388: ; 0x02244388
	push {r4, lr}
	add r4, r0, #0
	bl ov6_022448C8
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov6_02244388

	thumb_func_start ov6_0224439C
ov6_0224439C: ; 0x0224439C
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02244FB4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224439C

	thumb_func_start ov6_022443B0
ov6_022443B0: ; 0x022443B0
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #0
	bx lr
	thumb_func_end ov6_022443B0

	thumb_func_start ov6_022443B8
ov6_022443B8: ; 0x022443B8
	push {r3, r4, r5, lr}
	ldr r4, _022443E8 ; =0x02249310
	add r5, r1, #0
_022443BE:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _022443BE
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _022443E6
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022443E0
	bl sub_020713D0
_022443E0:
	add r0, r5, #0
	bl ov6_02244C10
_022443E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022443E8: .word 0x02249310
	thumb_func_end ov6_022443B8

	thumb_func_start ov6_022443EC
ov6_022443EC: ; 0x022443EC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02244402
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02244402:
	ldr r5, _02244454 ; =0x022491D4
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r5, _02244458 ; =0x0224912C
	str r0, [r3, #0]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl ov6_02244CFC
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov6_0224529C
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov6_022452BC
	add r0, r4, #0
	bl ov6_0224469C
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244454: .word 0x022491D4
_02244458: .word 0x0224912C
	thumb_func_end ov6_022443EC

	thumb_func_start ov6_0224445C
ov6_0224445C: ; 0x0224445C
	push {r4, lr}
	add r4, r0, #0
	bl ov6_022451B8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224445C

	thumb_func_start ov6_02244470
ov6_02244470: ; 0x02244470
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02244DB4
	add r0, r4, #0
	bl ov6_02244674
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02244470

	thumb_func_start ov6_02244488
ov6_02244488: ; 0x02244488
	push {r4, lr}
	mov r1, #0x82
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0224449A
	mov r0, #0
	pop {r4, pc}
_0224449A:
	bl ov6_0224469C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02244488

	thumb_func_start ov6_022444A8
ov6_022444A8: ; 0x022444A8
	push {r4, lr}
	add r4, r0, #0
	bl ov6_0224543C
	add r0, r4, #0
	bl ov6_0224551C
	add r0, r4, #0
	bl ov6_02244F74
	add r0, r4, #0
	mov r1, #1
	bl ov6_02245F64
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022444A8

	thumb_func_start ov6_022444D0
ov6_022444D0: ; 0x022444D0
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02245470
	cmp r0, #2
	beq _022444E0
	mov r0, #0
	pop {r4, pc}
_022444E0:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022444D0

	thumb_func_start ov6_022444F8
ov6_022444F8: ; 0x022444F8
	push {r3, lr}
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0x14
	blt _02244512
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bl ov6_022456D4
_02244512:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_022444F8

	thumb_func_start ov6_02244518
ov6_02244518: ; 0x02244518
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02245470
	cmp r0, #3
	beq _02244528
	mov r0, #0
	pop {r4, pc}
_02244528:
	ldr r0, _02244544 ; =0x00000649
	bl sub_02005748
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [r4, #0x54]
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	nop
_02244544: .word 0x00000649
	thumb_func_end ov6_02244518

	thumb_func_start ov6_02244548
ov6_02244548: ; 0x02244548
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x50]
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xa
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [r4, #0x54]
	cmp r2, r1
	ble _02244576
	lsl r0, r0, #5
	str r0, [r4, #0x54]
_02244576:
	mov r0, #0x5f
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _02244582
	str r0, [r4, #0x4c]
_02244582:
	mov r0, #0x61
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0224458E
	str r0, [r4, #0x50]
_0224458E:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _022445BA
	add r0, r4, #0
	bl ov6_02245470
	cmp r0, #4
	bne _022445BA
	mov r0, #1
	str r0, [r4, #0x18]
	bl ov6_02243F50
_022445BA:
	mov r0, #0x5f
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _022445E6
	mov r0, #0x61
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _022445E6
	ldr r0, [r4, #0x60]
	ldr r0, [r0, #8]
	bl ov6_02244F20
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov6_02244F58
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022445E6:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_02244548

	thumb_func_start ov6_022445EC
ov6_022445EC: ; 0x022445EC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _02244606
	bl ov6_02245470
	cmp r0, #4
	bne _02244606
	mov r0, #1
	str r0, [r4, #0x18]
	bl ov6_02243F50
_02244606:
	add r0, r4, #0
	bl ov6_02245470
	cmp r0, #2
	beq _02244614
	mov r0, #0
	pop {r4, pc}
_02244614:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02244622
	mov r0, #1
	str r0, [r4, #0x18]
	bl ov6_02243F50
_02244622:
	add r0, r4, #0
	bl ov6_02245480
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022445EC

	thumb_func_start ov6_02244634
ov6_02244634: ; 0x02244634
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02244646
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02244646:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02244634

	thumb_func_start ov6_0224464C
ov6_0224464C: ; 0x0224464C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02244670 ; =ov6_022446B8
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA04
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02244670: .word ov6_022446B8
	thumb_func_end ov6_0224464C

	thumb_func_start ov6_02244674
ov6_02244674: ; 0x02244674
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02244698 ; =ov6_022447B4
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA04
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02244698: .word ov6_022447B4
	thumb_func_end ov6_02244674

	thumb_func_start ov6_0224469C
ov6_0224469C: ; 0x0224469C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022446B6
	bl sub_0200DA58
	mov r0, #0x85
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022446B6:
	pop {r4, pc}
	thumb_func_end ov6_0224469C

	thumb_func_start ov6_022446B8
ov6_022446B8: ; 0x022446B8
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x81
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0224472E
	mov r7, #0x6b
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_022446CE:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022446D8
	bl sub_0200A3DC
_022446D8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022446CE
	mov r7, #0x6f
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_022446E8:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _022446F2
	bl sub_0200A640
_022446F2:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _022446E8
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0224470A
	add r0, r6, #0
	bl ov6_02245118
_0224470A:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0224471A
	add r0, r6, #0
	bl ov6_02245170
_0224471A:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r2, #0x80
	add r1, r1, #1
	str r1, [r6, r0]
	ldr r0, _02244730 ; =ov6_02244734
	add r1, r6, #0
	bl sub_0200DA3C
_0224472E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244730: .word ov6_02244734
	thumb_func_end ov6_022446B8

	thumb_func_start ov6_02244734
ov6_02244734: ; 0x02244734
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x81
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _022447B2
	mov r7, #0x6b
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0224474C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02244756
	bl sub_02009D4C
_02244756:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0224474C
	mov r7, #0x6f
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244766:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244770
	bl sub_02009D4C
_02244770:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02244766
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224478E
	bl sub_020181C4
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
_0224478E:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022447A4
	bl sub_020181C4
	mov r0, #0x21
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
_022447A4:
	mov r0, #0x82
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [sp]
	bl sub_0200DA58
_022447B2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02244734

	thumb_func_start ov6_022447B4
ov6_022447B4: ; 0x022447B4
	push {r4, lr}
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02009DC8
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _022447E6
	bl sub_0200A3DC
	ldr r0, _022447E8 ; =ov6_022447EC
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022447E6:
	pop {r4, pc}
	; .align 2, 0
_022447E8: .word ov6_022447EC
	thumb_func_end ov6_022447B4

	thumb_func_start ov6_022447EC
ov6_022447EC: ; 0x022447EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02009DC8
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _0224481A
	bl sub_02009D4C
	mov r0, #0x82
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_0224481A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022447EC

	thumb_func_start ov6_0224481C
ov6_0224481C: ; 0x0224481C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov6_0224491C
	mov r2, #3
	mov r3, #1
	add r4, r0, #0
	lsl r2, r2, #0x12
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0xc
	str r2, [sp]
	bl ov6_02244F80
	add r0, r5, #0
	bl ov6_02244F2C
	ldr r0, [r5, #0x60]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_0201A008
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x60]
	mov r1, #3
	ldr r0, [r0, #8]
	bl sub_0201A008
	strh r0, [r5, #0x26]
	ldr r2, _022448C4 ; =0x0400000A
	mov r1, #3
	ldrh r3, [r2]
	mov r0, #1
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r1
	strh r0, [r2, #4]
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	add r2, r5, #0
	add r0, r4, #0
	mov r1, #2
	add r2, #0x6c
	bl ov6_02244E54
	ldr r0, [r5, #0x60]
	add r3, r5, #0
	ldr r0, [r0, #8]
	add r1, r4, #0
	mov r2, #0
	add r3, #0x68
	bl ov6_02244E7C
	ldr r0, [r5, #0x60]
	add r3, r5, #0
	ldr r0, [r0, #8]
	add r1, r4, #0
	mov r2, #1
	add r3, #0x64
	bl ov6_02244EB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_02244928
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #4
	mov r1, #0x20
	bl sub_020711EC
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022448C4: .word 0x0400000A
	thumb_func_end ov6_0224481C

	thumb_func_start ov6_022448C8
ov6_022448C8: ; 0x022448C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207121C
	ldr r0, [r4, #0x60]
	ldr r0, [r0, #8]
	bl ov6_02244F20
	add r0, r4, #0
	bl ov6_02244B6C
	ldr r2, _02244918 ; =0x04000008
	ldrh r1, [r4, #0x24]
	ldrh r3, [r2]
	mov r0, #3
	bic r3, r0
	orr r1, r3
	strh r1, [r2]
	ldrh r1, [r2, #6]
	bic r1, r0
	ldrh r0, [r4, #0x26]
	orr r0, r1
	strh r0, [r2, #6]
	mov r0, #0
	mov r1, #1
	bl sub_0205D8CC
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	pop {r4, pc}
	nop
_02244918: .word 0x04000008
	thumb_func_end ov6_022448C8

	thumb_func_start ov6_0224491C
ov6_0224491C: ; 0x0224491C
	ldr r3, _02244924 ; =sub_02006C24
	mov r0, #0x61
	mov r1, #4
	bx r3
	; .align 2, 0
_02244924: .word sub_02006C24
	thumb_func_end ov6_0224491C

	thumb_func_start ov6_02244928
ov6_02244928: ; 0x02244928
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x7d
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	bl ov6_0224508C
	add r1, r5, #0
	mov r0, #0x20
	add r1, #0x74
	mov r2, #4
	bl sub_020095C4
	str r0, [r5, #0x70]
	add r0, r5, #0
	mov r2, #2
	add r0, #0x74
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r0, #4
	mov r1, #0
	add r2, r0, #0
	bl sub_02009714
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	mov r1, #1
	mov r2, #4
	bl sub_02009714
	mov r1, #0x1a
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #4
	mov r1, #2
	add r2, r0, #0
	bl sub_02009714
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #3
	mov r2, #4
	bl sub_02009714
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _022449D6
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xd
	mov r3, #0
	bl sub_02009A4C
	b _022449F0
_022449D6:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_02009A4C
_022449F0:
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_022450F4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r6, #0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	sub r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #3
	add r3, r6, #0
	bl sub_02009B04
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	cmp r0, #0
	beq _02244A52
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #4
	str r2, [sp, #0xc]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009B04
	lsl r1, r6, #2
	add r2, r5, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r6, r6, #1
_02244A52:
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_0224514C
	lsl r1, r6, #2
	add r2, r5, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xb
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02244AA4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x24
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xe
	mov r3, #0
	bl sub_02009BC4
	b _02244ABC
_02244AA4:
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x24
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x11
	mov r3, #0
	bl sub_02009BC4
_02244ABC:
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x28
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xc
	bl sub_02009BC4
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02244B24
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x30
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xf
	mov r3, #0
	bl sub_02009BC4
	b _02244B3E
_02244B24:
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x30
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x12
	mov r3, #0
	bl sub_02009BC4
_02244B3E:
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r5, #0x5c]
	add r1, r5, r1
	mov r2, #4
	bl ov6_0224509C
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x18
	add r0, r5, r1
	mov r1, #4
	bl ov6_022450E4
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02244928

	thumb_func_start ov6_02244B6C
ov6_02244B6C: ; 0x02244B6C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x6b
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02244B78:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02244B82
	bl sub_0200A4E4
_02244B82:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02244B78
	mov r7, #0x6f
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244B92:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244B9C
	bl sub_0200A6DC
_02244B9C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02244B92
	mov r7, #0x72
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244BAC:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244BB6
	bl sub_02009D4C
_02244BB6:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _02244BAC
	mov r7, #0x76
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244BC6:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244BD0
	bl sub_02009D4C
_02244BD0:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _02244BC6
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02009754
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_02009754
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02009754
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02009754
	ldr r0, [r6, #0x70]
	bl sub_020219C0
	ldr r0, [r6, #0x70]
	bl sub_02021964
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02244B6C

	thumb_func_start ov6_02244C10
ov6_02244C10: ; 0x02244C10
	push {r3, lr}
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _02244C1C
	bl sub_020219F8
_02244C1C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02244C10

	thumb_func_start ov6_02244C20
ov6_02244C20: ; 0x02244C20
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldr r0, [sp, #0x84]
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	cmp r0, #4
	bne _02244C68
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #0x67
	ldr r3, [sp, #0x88]
	str r0, [sp, #0xc]
	lsl r6, r6, #2
	str r3, [sp, #0x10]
	ldr r3, [r5, r6]
	str r3, [sp, #0x14]
	add r3, r6, #4
	ldr r3, [r5, r3]
	add r6, #8
	str r3, [sp, #0x18]
	ldr r3, [r5, r6]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	bl sub_020093B4
	b _02244CA2
_02244C68:
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0
	ldr r0, [sp, #0x88]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r5, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r5, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	bl sub_020093B4
_02244CA2:
	ldr r0, [r5, #0x70]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #4
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r4, r0, #0
	bne _02244CCE
	bl sub_02022974
_02244CCE:
	add r0, r4, #0
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02244C20

	thumb_func_start ov6_02244CD4
ov6_02244CD4: ; 0x02244CD4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r5, #1
	add r4, r3, #0
	str r5, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	add r2, r5, #0
	bl ov6_02244C20
	add r1, r4, #0
	add r5, r0, #0
	bl sub_02021D6C
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02244CD4

	thumb_func_start ov6_02244CFC
ov6_02244CFC: ; 0x02244CFC
	push {r4, lr}
	sub sp, #0x10
	ldr r2, [r0, #0xc]
	mov r3, #0
	cmp r2, #1
	bne _02244D0A
	mov r3, #1
_02244D0A:
	mov r2, #2
	str r2, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	mov r4, #0x83
	str r4, [sp, #0xc]
	bl ov6_02244C20
	add r4, r0, #0
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #6
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov6_02244CFC

	thumb_func_start ov6_02244D34
ov6_02244D34: ; 0x02244D34
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02244D34

	thumb_func_start ov6_02244D4C
ov6_02244D4C: ; 0x02244D4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0x1c
	mov r7, #0
	str r7, [r0, #0]
	str r7, [r0, #4]
	add r6, r2, #0
	ldr r5, _02244DB0 ; =0x02249168
	add r3, r1, #0
	str r7, [r0, #8]
	ldmia r5!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r2, #0]
	str r7, [sp]
	sub r0, r7, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r7, #0
	str r6, [sp, #0xc]
	bl ov6_02244C20
	add r4, r0, #0
	mov r1, #2
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0x10
	bl sub_02021C70
	add r0, r7, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244DB0: .word 0x02249168
	thumb_func_end ov6_02244D4C

	thumb_func_start ov6_02244DB4
ov6_02244DB4: ; 0x02244DB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov6_0224491C
	add r6, r0, #0
	mov r0, #0x6b
	mov r5, #0
	add r2, r4, #0
	lsl r0, r0, #2
_02244DC8:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02244DF4
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #7
	bl sub_02009A4C
	lsl r1, r5, #2
	add r2, r4, r1
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _02244DFC
_02244DF4:
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #4
	blt _02244DC8
_02244DFC:
	cmp r5, #4
	blt _02244E04
	bl sub_02022974
_02244E04:
	mov r0, #0x72
	mov r5, #0
	add r2, r4, #0
	lsl r0, r0, #2
_02244E0C:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02244E38
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #8
	bl sub_02009BC4
	lsl r1, r5, #2
	add r2, r4, r1
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _02244E40
_02244E38:
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #4
	blt _02244E0C
_02244E40:
	cmp r5, #4
	blt _02244E48
	bl sub_02022974
_02244E48:
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02244DB4

	thumb_func_start ov6_02244E54
ov6_02244E54: ; 0x02244E54
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, r5, #0
	add r4, r0, #0
	bl sub_020A71B0
	ldr r1, [r5, #0]
	mov r0, #3
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	lsl r3, r0, #7
	bl sub_0201972C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02244E54

	thumb_func_start ov6_02244E7C
ov6_02244E7C: ; 0x02244E7C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, r4, #0
	add r6, r0, #0
	bl sub_020A7118
	ldr r3, [r4, #0]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r3, [r3, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl sub_0201958C
	add r0, r6, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02244E7C

	thumb_func_start ov6_02244EB4
ov6_02244EB4: ; 0x02244EB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r6, r1, #0
	mov r2, #0
	add r4, r3, #0
	mov r1, #3
	add r3, r2, #0
	add r5, r0, #0
	bl sub_02019184
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, r4, #0
	add r6, r0, #0
	bl sub_020A7248
	ldr r3, [r4, #0]
	add r0, r5, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #3
	add r2, #0xc
	bl sub_02019574
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xc
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r5, #0
	mov r1, #3
	bl sub_02019448
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02244EB4

	thumb_func_start ov6_02244F20
ov6_02244F20: ; 0x02244F20
	ldr r3, _02244F28 ; =sub_02019EBC
	mov r1, #3
	bx r3
	nop
_02244F28: .word sub_02019EBC
	thumb_func_end ov6_02244F20

	thumb_func_start ov6_02244F2C
ov6_02244F2C: ; 0x02244F2C
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02244F8C
	mov r0, #0
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov6_02244F58
	add r0, r4, #0
	bl ov6_02244F60
	add r0, r4, #0
	bl ov6_02244F50
	mov r0, #1
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov6_02244F2C

	thumb_func_start ov6_02244F50
ov6_02244F50: ; 0x02244F50
	mov r1, #1
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F50

	thumb_func_start ov6_02244F58
ov6_02244F58: ; 0x02244F58
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F58

	thumb_func_start ov6_02244F60
ov6_02244F60: ; 0x02244F60
	mov r1, #0x18
	str r1, [r0, #0x34]
	mov r1, #0
	str r1, [r0, #0x38]
	mov r1, #0x17
	str r1, [r0, #0x3c]
	mov r1, #1
	str r1, [r0, #0x40]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F60

	thumb_func_start ov6_02244F74
ov6_02244F74: ; 0x02244F74
	mov r1, #0x17
	str r1, [r0, #0x3c]
	mov r1, #1
	str r1, [r0, #0x40]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F74

	thumb_func_start ov6_02244F80
ov6_02244F80: ; 0x02244F80
	str r1, [r0, #0x44]
	str r3, [r0, #0x48]
	ldr r1, [sp]
	str r2, [r0, #0x4c]
	str r1, [r0, #0x50]
	bx lr
	thumb_func_end ov6_02244F80

	thumb_func_start ov6_02244F8C
ov6_02244F8C: ; 0x02244F8C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244F9E
	bl sub_02022974
_02244F9E:
	ldr r0, _02244FB0 ; =ov6_02244FE4
	add r1, r4, #0
	mov r2, #0x81
	bl sub_0200DA04
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_02244FB0: .word ov6_02244FE4
	thumb_func_end ov6_02244F8C

	thumb_func_start ov6_02244FB4
ov6_02244FB4: ; 0x02244FB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02244FC6
	bl sub_02022974
_02244FC6:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02244FE0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	pop {r4, pc}
	nop
_02244FE0: .word 0xFFFF1FFF
	thumb_func_end ov6_02244FB4

	thumb_func_start ov6_02244FE4
ov6_02244FE4: ; 0x02244FE4
	push {r3, r4, r5, r6}
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0224507A
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	ldr r0, _02245080 ; =0xFFFF1FFF
	and r2, r0
	ldr r0, [r1, #0x30]
	lsl r0, r0, #0xd
	orr r0, r2
	str r0, [r3, #0]
	add r3, #0x48
	ldrh r2, [r3]
	mov r0, #0x3f
	bic r2, r0
	ldr r0, [r1, #0x34]
	orr r2, r0
	ldr r0, [r1, #0x38]
	cmp r0, #0
	beq _02245014
	mov r0, #0x20
	orr r2, r0
_02245014:
	ldr r0, _02245084 ; =0x04000048
	strh r2, [r0]
	ldrh r2, [r0, #2]
	mov r0, #0x3f
	bic r2, r0
	ldr r0, [r1, #0x3c]
	orr r2, r0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0224502C
	mov r0, #0x20
	orr r2, r0
_0224502C:
	ldr r5, _02245088 ; =0x0400004A
	strh r2, [r5]
	ldr r2, [r1, #0x50]
	ldr r6, [r1, #0x48]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	ldr r2, [r1, #0x4c]
	asr r4, r0, #0xc
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	ldr r2, [r1, #0x44]
	asr r3, r0, #0xc
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	asr r1, r6, #0xb
	add r0, r2, r0
	lsr r1, r1, #0x14
	asr r0, r0, #0xc
	add r1, r6, r1
	lsl r2, r0, #8
	mov r0, #0xff
	asr r1, r1, #0xc
	lsl r0, r0, #8
	lsl r1, r1, #0x18
	and r2, r0
	lsr r1, r1, #0x18
	orr r2, r1
	add r1, r5, #0
	sub r1, #0xa
	strh r2, [r1]
	lsl r1, r3, #8
	and r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	orr r1, r0
	sub r0, r5, #6
	strh r1, [r0]
_0224507A:
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02245080: .word 0xFFFF1FFF
_02245084: .word 0x04000048
_02245088: .word 0x0400004A
	thumb_func_end ov6_02244FE4

	thumb_func_start ov6_0224508C
ov6_0224508C: ; 0x0224508C
	ldr r3, _02245098 ; =sub_02075EF4
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0x5c]
	mov r2, #2
	bx r3
	; .align 2, 0
_02245098: .word sub_02075EF4
	thumb_func_end ov6_0224508C

	thumb_func_start ov6_0224509C
ov6_0224509C: ; 0x0224509C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0x32
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #6
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _022450B8
	bl sub_02022974
_022450B8:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r5, #6]
	add r2, r7, #0
	add r3, r4, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl sub_02013750
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_0224509C

	thumb_func_start ov6_022450E4
ov6_022450E4: ; 0x022450E4
	add r3, r0, #0
	add r2, r1, #0
	ldrh r0, [r3]
	ldrh r1, [r3, #4]
	ldr r3, _022450F0 ; =sub_02013660
	bx r3
	; .align 2, 0
_022450F0: .word sub_02013660
	thumb_func_end ov6_022450E4

	thumb_func_start ov6_022450F4
ov6_022450F4: ; 0x022450F4
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0x67
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	mov r2, #5
	mov r3, #0
	bl sub_02009A4C
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov6_022450F4

	thumb_func_start ov6_02245118
ov6_02245118: ; 0x02245118
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #3
	bl sub_02009DC8
	bl sub_0200A534
	mov r1, #1
	bl sub_020A81B0
	mov r1, #0x32
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020C2C54
	mov r2, #0x32
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #6
	bl sub_020C02BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245118

	thumb_func_start ov6_0224514C
ov6_0224514C: ; 0x0224514C
	push {r3, lr}
	sub sp, #0x10
	mov r2, #2
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #4
	str r2, [sp, #0xc]
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov6_0224514C

	thumb_func_start ov6_02245170
ov6_02245170: ; 0x02245170
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	bl sub_0200A534
	add r6, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02009DC8
	add r1, r6, #0
	bl sub_0200A72C
	mov r1, #1
	bl sub_020A81FC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C0160
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02245170

	thumb_func_start ov6_022451B8
ov6_022451B8: ; 0x022451B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	add r4, r0, #0
	bl sub_0200A4E4
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009D68
	mov r1, #0x6b
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_022451E2:
	ldr r2, [r3, r1]
	cmp r2, r4
	bne _022451F6
	lsl r1, r0, #2
	add r2, r5, r1
	mov r1, #0x6b
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r2, r1]
	b _022451FE
_022451F6:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #4
	blt _022451E2
_022451FE:
	cmp r0, #4
	blt _02245206
	bl sub_02022974
_02245206:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02009DC8
	add r4, r0, #0
	bl sub_0200A6DC
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009D68
	mov r1, #0x6f
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_0224522C:
	ldr r2, [r3, r1]
	cmp r2, r4
	bne _02245240
	lsl r1, r0, #2
	add r2, r5, r1
	mov r1, #0x6f
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r2, r1]
	b _02245248
_02245240:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #3
	blt _0224522C
_02245248:
	cmp r0, #3
	blt _02245250
	bl sub_02022974
_02245250:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	add r4, r0, #0
	bl sub_02009D4C
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009D68
	mov r1, #0x72
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_02245276:
	ldr r2, [r3, r1]
	cmp r2, r4
	bne _0224528A
	lsl r1, r0, #2
	add r2, r5, r1
	mov r1, #0x72
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r2, r1]
	b _02245292
_0224528A:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #4
	blt _02245276
_02245292:
	cmp r0, #4
	blt _0224529A
	bl sub_02022974
_0224529A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022451B8

	thumb_func_start ov6_0224529C
ov6_0224529C: ; 0x0224529C
	push {r3, lr}
	sub sp, #0x10
	mov r2, #3
	str r2, [sp]
	sub r3, r2, #4
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r3, #0x81
	str r3, [sp, #0xc]
	mov r3, #2
	bl ov6_02244C20
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0224529C

	thumb_func_start ov6_022452BC
ov6_022452BC: ; 0x022452BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #2
	ldr r4, _02245324 ; =0x0224936C
	add r6, r1, #0
	str r0, [r5, #0x14]
	mov r7, #0
_022452CC:
	ldr r0, [r4, #0]
	add r1, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r2, sp, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r3, [sp, #8]
	str r0, [sp]
	str r0, [sp, #0xc]
	str r6, [sp, #4]
	add r0, r5, #0
	bl ov6_02245328
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #8]
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x10
	str r6, [sp, #4]
	bl ov6_02245328
	add r7, r7, #1
	add r4, #0x14
	cmp r7, #0xd
	blt _022452CC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245324: .word 0x0224936C
	thumb_func_end ov6_022452BC

	thumb_func_start ov6_02245328
ov6_02245328: ; 0x02245328
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	str r3, [sp, #8]
	str r5, [sp, #0x10]
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldmia r2!, {r0, r1}
	add r3, sp, #0x14
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	ldr r1, _02245360 ; =0x02249220
	str r0, [r3, #0]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0x84
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x30]
	add r2, r4, #0
	bl sub_02071330
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_02245360: .word 0x02249220
	thumb_func_end ov6_02245328

	thumb_func_start ov6_02245364
ov6_02245364: ; 0x02245364
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #4]
	add r1, sp, #0
	bl ov6_02244CD4
	mov r1, #0
	str r0, [r4, #8]
	bl sub_02021CAC
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_02245364

	thumb_func_start ov6_022453AC
ov6_022453AC: ; 0x022453AC
	ldr r3, _022453B4 ; =sub_02021BD4
	ldr r0, [r1, #8]
	bx r3
	nop
_022453B4: .word sub_02021BD4
	thumb_func_end ov6_022453AC

	thumb_func_start ov6_022453B8
ov6_022453B8: ; 0x022453B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_020715E4
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0xb
	str r0, [sp]
	sub r1, r1, r2
	mov r0, #0xb
	ror r1, r0
	add r0, r2, r1
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _02245432
	ldr r3, [r4, #0x14]
	ldr r0, [r3, #0x14]
	cmp r0, #2
	bne _02245426
	ldr r2, [r3, #0x4c]
	ldr r0, [r3, #0x50]
	mov r3, #2
	ldr r6, [sp, #4]
	lsl r3, r3, #0xc
	sub r5, r6, r3
	mov r1, #0
	cmp r5, r2
	blt _0224541C
	cmp r5, r0
	bgt _0224541C
	add r3, r6, r3
	cmp r3, r2
	blt _0224541C
	cmp r3, r0
	bgt _0224541C
	mov r1, #1
_0224541C:
	ldr r0, [r4, #8]
	bl sub_02021CAC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02245426:
	cmp r0, #1
	bne _02245432
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
_02245432:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_022453B8

	thumb_func_start ov6_02245438
ov6_02245438: ; 0x02245438
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02245438

	thumb_func_start ov6_0224543C
ov6_0224543C: ; 0x0224543C
	push {r4, lr}
	sub sp, #0x18
	add r2, sp, #0xc
	mov r3, #0
	add r4, r0, #0
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r4, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0x82
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, _0224546C ; =0x02249248
	bl sub_02071330
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_0224546C: .word 0x02249248
	thumb_func_end ov6_0224543C

	thumb_func_start ov6_02245470
ov6_02245470: ; 0x02245470
	push {r3, lr}
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02071598
	ldrb r0, [r0, #2]
	pop {r3, pc}
	thumb_func_end ov6_02245470

	thumb_func_start ov6_02245480
ov6_02245480: ; 0x02245480
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02071598
	add r5, r0, #0
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0224549A
	bl sub_0207136C
_0224549A:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _022454A4
	bl FUN_021F0EFC
_022454A4:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207136C
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245480

	thumb_func_start ov6_022454B0
ov6_022454B0: ; 0x022454B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl sub_020715E4
	mov r2, #0
	ldr r0, [r4, #0x5c]
	add r1, sp, #0
	add r3, r2, #0
	bl ov6_02244D4C
	str r0, [r4, #0x58]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_022454B0

	thumb_func_start ov6_022454DC
ov6_022454DC: ; 0x022454DC
	ldr r3, _022454E4 ; =sub_02021BD4
	ldr r0, [r1, #0x58]
	bx r3
	nop
_022454E4: .word sub_02021BD4
	thumb_func_end ov6_022454DC

	thumb_func_start ov6_022454E8
ov6_022454E8: ; 0x022454E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5]
	lsl r1, r0, #2
	ldr r0, _02245504 ; =0x02249198
	ldr r4, [r0, r1]
_022454F4:
	ldrb r1, [r5, #1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _022454F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245504: .word 0x02249198
	thumb_func_end ov6_022454E8

	thumb_func_start ov6_02245508
ov6_02245508: ; 0x02245508
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02245508

	thumb_func_start ov6_0224550C
ov6_0224550C: ; 0x0224550C
	push {r3, lr}
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r0, #0x58]
	bl sub_02021CAC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_0224550C

	thumb_func_start ov6_0224551C
ov6_0224551C: ; 0x0224551C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r4, _022455BC ; =0x022491B0
	add r2, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0xc
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _022455C0 ; =0x0224915C
	str r0, [r3, #0]
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_02071598
	add r4, r0, #0
	mov r3, #1
	add r5, r4, #0
	strb r3, [r4]
	mov r2, #0
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	add r6, sp, #0xc
	ldmia r6!, {r0, r1}
	add r5, #8
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, sp, #0
	str r0, [r5, #0]
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	mov r0, #0xf
	add r5, r4, #0
	str r2, [r4, #0x1c]
	lsl r0, r0, #0xe
	str r0, [r4, #0x38]
	ldmia r6!, {r0, r1}
	add r5, #0x2c
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, sp, #0xc
	str r0, [r5, #0]
	lsl r0, r3, #9
	str r0, [r4, #0x50]
	mov r0, #0x2d
	lsl r0, r0, #0xe
	str r0, [r4, #0x40]
	str r2, [r4, #0x48]
	lsl r0, r3, #0xd
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x58]
	bl sub_02021C50
	ldr r0, [r4, #0x58]
	add r1, sp, #0
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_02021C94
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022455BC: .word 0x022491B0
_022455C0: .word 0x0224915C
	thumb_func_end ov6_0224551C

	thumb_func_start ov6_022455C4
ov6_022455C4: ; 0x022455C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x58]
	add r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _022455E4
	lsr r0, r0, #2
	add r0, r1, r0
	str r0, [r5, #0x4c]
_022455E4:
	ldr r0, _022456C4 ; =0x0000013B
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r2, r0, #0xc
	ldr r0, _022456C8 ; =0x0000010E
	cmp r2, r0
	bge _0224562E
	mov r0, #1
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x40]
_0224562E:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _02245640
	str r0, [r5, #0x2c]
_02245640:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _02245652
	str r0, [r5, #0x30]
_02245652:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	mov r0, #6
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r5, #0x38]
	asr r0, r0, #0xc
	bpl _02245674
	mov r0, #0
	str r0, [r5, #0x38]
_02245674:
	ldr r1, [r5, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [sp, #4]
	ldr r0, _022456CC ; =0xFFFC0000
	cmp r1, r0
	bge _022456BE
	add r0, r4, #0
	mov r1, #0
	bl sub_02021CAC
	mov r0, #2
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_022456BE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022456C4: .word 0x0000013B
_022456C8: .word 0x0000010E
_022456CC: .word 0xFFFC0000
	thumb_func_end ov6_022455C4

	thumb_func_start ov6_022456D0
ov6_022456D0: ; 0x022456D0
	mov r0, #0
	bx lr
	thumb_func_end ov6_022456D0

	thumb_func_start ov6_022456D4
ov6_022456D4: ; 0x022456D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _0224582C ; =0x02249144
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02245830 ; =0x02249138
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02071598
	add r4, r0, #0
	mov r0, #2
	add r2, r4, #0
	strb r0, [r4]
	mov r6, #0
	strb r6, [r4, #1]
	mov r7, #1
	strb r7, [r4, #2]
	str r6, [r4, #4]
	add r3, sp, #0x24
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #0x18
	str r0, [r2, #0]
	str r6, [r4, #0x14]
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r6, _02245834 ; =0x0013B000
	add r2, r4, #0
	str r6, [r4, #0x38]
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r7, #0
	add r0, #0xff
	str r0, [r4, #0x50]
	mov r0, #0xe1
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0x48]
	lsl r0, r7, #0x11
	str r0, [r4, #0x4c]
	lsr r0, r6, #0xc
	bl sub_0201D264
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x58]
	add r1, sp, #0x24
	bl sub_02021C50
	ldr r0, [r4, #0x58]
	add r1, sp, #0x18
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_02021C94
	ldr r0, [r4, #0x58]
	add r1, r7, #0
	bl sub_02021CAC
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl ov6_02245B4C
	str r0, [r4, #0x60]
	add r0, r7, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x60]
	mov r1, #4
	bl FUN_021F0EB0
	ldr r2, _02245838 ; =0xFFF88000
	add r1, r7, #0
	mov r3, #0xc
	str r0, [r4, #0x64]
	bl FUN_021F0F10
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _0224583C ; =0x022491BC
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x79
	ldr r1, [r4, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	mov r1, #2
	add r0, r4, #0
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224582C: .word 0x02249144
_02245830: .word 0x02249138
_02245834: .word 0x0013B000
_02245838: .word 0xFFF88000
_0224583C: .word 0x022491BC
	thumb_func_end ov6_022456D4

	thumb_func_start ov6_02245840
ov6_02245840: ; 0x02245840
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x58]
	sub r0, r1, r0
	str r0, [r5, #0x48]
	bpl _02245856
	mov r0, #0
	str r0, [r5, #0x48]
_02245856:
	mov r0, #2
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _02245868
	mov r0, #6
	lsl r0, r0, #0xa
	sub r0, r1, r0
	str r0, [r5, #0x4c]
_02245868:
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02245874
	str r0, [r5, #0x4c]
_02245874:
	ldr r0, _022459A8 ; =0x0000013B
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r2, r0, #0xc
	ldr r0, _022459AC ; =0x0000010E
	cmp r2, r0
	bge _022458BE
	mov r0, #1
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x40]
_022458BE:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #0xa
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _022458D0
	str r0, [r5, #0x2c]
_022458D0:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #0xa
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _022458E2
	str r0, [r5, #0x30]
_022458E2:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	mov r0, #2
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xe
	add r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r5, #0x38]
	asr r1, r0, #0xc
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r1, r0
	ble _0224590A
	lsl r0, r0, #0xc
	str r0, [r5, #0x38]
_0224590A:
	ldr r1, [r5, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _0224594C
	mov r0, #0
	str r0, [r5, #4]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _02245952
_0224594C:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02245952:
	ldr r0, [r5, #4]
	cmp r0, #0xc
	bne _0224595E
	ldr r0, [r5, #0x60]
	bl ov6_02245B80
_0224595E:
	mov r0, #0x79
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	add r0, r4, #0
	bl sub_02021D2C
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	mov r0, #5
	add r1, #0x80
	lsl r0, r0, #0xa
	str r1, [sp]
	cmp r1, r0
	ble _02245988
	str r0, [sp]
_02245988:
	ldr r1, [sp, #4]
	mov r0, #5
	add r1, #0x80
	lsl r0, r0, #0xa
	str r1, [sp, #4]
	cmp r1, r0
	ble _02245998
	str r0, [sp, #4]
_02245998:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022459A8: .word 0x0000013B
_022459AC: .word 0x0000010E
	thumb_func_end ov6_02245840

	thumb_func_start ov6_022459B0
ov6_022459B0: ; 0x022459B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x79
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	mov r1, #3
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	bl sub_02021D28
	ldr r4, [r0, #4]
	ldr r0, [r5, #0x58]
	bl sub_02021D28
	ldr r0, [r0, #4]
	sub r0, r4, r0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x60]
	bl ov6_02245B74
	ldr r0, [r5, #0x64]
	mov r1, #2
	mov r2, #0
	mov r3, #0xc
	bl FUN_021F0F10
	mov r1, #1
	lsl r1, r1, #8
	str r1, [r5, #0x50]
	lsl r0, r1, #0xb
	str r0, [r5, #0x40]
	mov r0, #0
	str r0, [r5, #0x48]
	lsl r0, r1, #3
	str r0, [r5, #0x4c]
	mov r0, #3
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022459B0

	thumb_func_start ov6_02245A0C
ov6_02245A0C: ; 0x02245A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x58]
	add r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #4
	str r2, [r5, #0x4c]
	cmp r2, r1
	ble _02245A30
	lsl r0, r0, #4
	str r0, [r5, #0x4c]
_02245A30:
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	mov r0, #0x80
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	mov r0, #0x87
	ldr r1, [r5, #0x40]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02245A74
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x40]
_02245A74:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _02245A86
	str r0, [r5, #0x2c]
_02245A86:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _02245A98
	str r0, [r5, #0x30]
_02245A98:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, sp, #0x18
	bl sub_02021C50
	mov r0, #0x79
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	add r0, r4, #0
	bl sub_02021D2C
	add r2, sp, #0xc
	add r3, sp, #0x18
	add r6, r0, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldmia r6!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #1
	ldr r1, [r5, #0x54]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	str r1, [r5, #0x54]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #8
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [sp]
	cmp r2, r1
	ble _02245B0E
	lsl r0, r0, #5
	str r0, [sp]
_02245B0E:
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [sp, #4]
	cmp r2, r1
	ble _02245B22
	lsl r0, r0, #5
	str r0, [sp, #4]
_02245B22:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	ldr r1, [sp, #0x1c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0xf0
	blt _02245B42
	mov r0, #2
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02245B42:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02245A0C

	thumb_func_start ov6_02245B48
ov6_02245B48: ; 0x02245B48
	mov r0, #0
	bx lr
	thumb_func_end ov6_02245B48

	thumb_func_start ov6_02245B4C
ov6_02245B4C: ; 0x02245B4C
	push {lr}
	sub sp, #0x1c
	add r2, sp, #0x10
	mov r3, #0
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r1, [sp, #0xc]
	str r3, [r2, #8]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #0x81
	str r1, [sp, #4]
	ldr r1, _02245B70 ; =0x0224920C
	bl sub_02071330
	add sp, #0x1c
	pop {pc}
	nop
_02245B70: .word 0x0224920C
	thumb_func_end ov6_02245B4C

	thumb_func_start ov6_02245B74
ov6_02245B74: ; 0x02245B74
	push {r3, lr}
	bl sub_02071598
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov6_02245B74

	thumb_func_start ov6_02245B80
ov6_02245B80: ; 0x02245B80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02071598
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r5, #0
	bl sub_020715D4
	ldr r0, [r4, #0x20]
	mov r1, #5
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02245B80

	thumb_func_start ov6_02245BC8
ov6_02245BC8: ; 0x02245BC8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02071598
	add r4, r0, #0
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl ov6_022437C8
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02021D6C
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02245BC8

	thumb_func_start ov6_02245C04
ov6_02245C04: ; 0x02245C04
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	ldr r1, [r0, #0]
	str r1, [r4, #0x1c]
	ldr r0, [r0, #4]
	str r0, [r4, #0x20]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02245C04

	thumb_func_start ov6_02245C18
ov6_02245C18: ; 0x02245C18
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02245C5C
	ldr r1, [r4, #0xc]
	lsl r2, r1, #2
	ldr r1, _02245C60 ; =0x022492A8
	ldr r1, [r1, r2]
	str r1, [r4, #0x14]
	add r1, sp, #0
	bl sub_020715E4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xc
	blt _02245C5C
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02245C5C:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02245C60: .word 0x022492A8
	thumb_func_end ov6_02245C18

	thumb_func_start ov6_02245C64
ov6_02245C64: ; 0x02245C64
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02245CA8
	ldr r1, [r4, #0xc]
	lsl r2, r1, #2
	ldr r1, _02245CAC ; =0x022491FC
	ldr r1, [r1, r2]
	str r1, [r4, #0x14]
	add r1, sp, #0
	bl sub_020715E4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #4
	blt _02245CA8
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02245CA8:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02245CAC: .word 0x022491FC
	thumb_func_end ov6_02245C64

	thumb_func_start ov6_02245CB0
ov6_02245CB0: ; 0x02245CB0
	push {r3, lr}
	ldr r2, [r1, #0]
	cmp r2, #1
	beq _02245CBE
	cmp r2, #2
	beq _02245CC4
	pop {r3, pc}
_02245CBE:
	bl ov6_02245C18
	pop {r3, pc}
_02245CC4:
	bl ov6_02245C64
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02245CB0

	thumb_func_start ov6_02245CCC
ov6_02245CCC: ; 0x02245CCC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x5f
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl ov6_02245F44
	add r1, r0, #0
	str r4, [r1, #0xc]
	ldr r0, _02245CEC ; =ov6_02245D10
	mov r2, #0x85
	str r5, [r1, #0x14]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245CEC: .word ov6_02245D10
	thumb_func_end ov6_02245CCC

	thumb_func_start ov6_02245CF0
ov6_02245CF0: ; 0x02245CF0
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02245CF0

	thumb_func_start ov6_02245CFC
ov6_02245CFC: ; 0x02245CFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov6_02245CFC

	thumb_func_start ov6_02245D10
ov6_02245D10: ; 0x02245D10
	push {r3, r4, r5, lr}
	ldr r4, _02245D44 ; =0x02249270
	add r5, r1, #0
_02245D16:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _02245D16
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02245D42
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02245D38
	bl sub_020713D0
_02245D38:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02245D42
	bl sub_020219F8
_02245D42:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245D44: .word 0x02249270
	thumb_func_end ov6_02245D10

	thumb_func_start ov6_02245D48
ov6_02245D48: ; 0x02245D48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov6_02243F74
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02245D48

	thumb_func_start ov6_02245D60
ov6_02245D60: ; 0x02245D60
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x20
	bl sub_020711EC
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r2, #2
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0x20
	add r3, r2, #0
	str r2, [sp, #0x14]
	bl ov6_02243258
	bl ov6_02243F20
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #7
	mov r3, #0
	bl ov6_022434B0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov6_02243588
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov6_02243660
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_02243520
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_022435F8
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_02243554
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_0224362C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02245E32
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0xd
	mov r3, #2
	bl ov6_022434B0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0xe
	mov r3, #2
	bl ov6_02243660
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0xf
	mov r3, #1
	bl ov6_022436D0
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243520
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243554
	b _02245E92
_02245E32:
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #2
	bl ov6_022434B0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #4
	mov r3, #1
	bl ov6_02243588
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0x11
	mov r3, #2
	bl ov6_02243660
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0x12
	mov r3, #1
	bl ov6_022436D0
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243520
	add r0, r5, #0
	add r0, #0x18
	mov r1, #1
	bl ov6_022435F8
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243554
	add r0, r5, #0
	add r0, #0x18
	mov r1, #1
	bl ov6_0224362C
_02245E92:
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245D60

	thumb_func_start ov6_02245EA4
ov6_02245EA4: ; 0x02245EA4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	add r0, #0x18
	bl ov6_02243848
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CAC
	mov r3, #0x17
	lsl r3, r3, #4
	ldr r1, [r4, r3]
	sub r3, r3, #4
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	ldr r3, [r4, r3]
	add r2, #0x18
	bl ov6_02243888
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl ov6_02243950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02245EA4

	thumb_func_start ov6_02245EEC
ov6_02245EEC: ; 0x02245EEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov6_022438BC
	cmp r0, #2
	beq _02245F02
	mov r0, #0
	pop {r4, pc}
_02245F02:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov6_022438EC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02245EEC

	thumb_func_start ov6_02245F18
ov6_02245F18: ; 0x02245F18
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207121C
	add r0, r4, #0
	add r0, #0x18
	bl ov6_0224339C
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02245F18

	thumb_func_start ov6_02245F40
ov6_02245F40: ; 0x02245F40
	mov r0, #0
	bx lr
	thumb_func_end ov6_02245F40

	thumb_func_start ov6_02245F44
ov6_02245F44: ; 0x02245F44
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02018184
	add r4, r0, #0
	bne _02245F54
	bl sub_02022974
_02245F54:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02245F44

	thumb_func_start ov6_02245F64
ov6_02245F64: ; 0x02245F64
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x60]
	add r4, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02062DDC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062D64
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245F64

	thumb_func_start ov6_02245F80
ov6_02245F80: ; 0x02245F80
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r4, #0]
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02245F80

	thumb_func_start ov6_02245F94
ov6_02245F94: ; 0x02245F94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl sub_02021D28
	ldr r1, [r4, #4]
	ldr r0, [r0, #4]
	ldr r5, [r1, #0x4c]
	ldr r3, [r1, #0x50]
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	bne _02245FD0
	mov r1, #2
	lsl r1, r1, #0xe
	sub r2, r0, r1
	cmp r2, r5
	blt _02245FC6
	add r0, r0, r1
	cmp r0, r3
	bgt _02245FC6
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_02245FC6:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_02245FD0:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02245F94

	thumb_func_start ov6_02245FDC
ov6_02245FDC: ; 0x02245FDC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r2, sp, #0x10
	mov r3, #0
	str r3, [r2, #0]
	add r4, r0, #0
	str r3, [r2, #4]
	mov r0, #0x79
	str r3, [r2, #8]
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, r0, #4
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #0x86
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	ldr r1, _02246014 ; =0x02249234
	bl sub_02071330
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_02246014: .word 0x02249234
	thumb_func_end ov6_02245FDC

	thumb_func_start ov6_02246018
ov6_02246018: ; 0x02246018
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02246032
	bl sub_0207136C
	mov r0, #0x1f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02246032:
	pop {r4, pc}
	thumb_func_end ov6_02246018

	thumb_func_start ov6_02246034
ov6_02246034: ; 0x02246034
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r1, #8]
	str r1, [sp]
	mov r1, #0
	bl sub_0207A0FC
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov6_02246148
	str r0, [sp, #8]
	cmp r0, #0
	beq _022460E6
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _022460A8
	cmp r4, #0
	bne _022460A8
	add r0, sp, #8
	bl sub_0202D914
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0206B688
	b _022460D8
_022460A8:
	cmp r0, #4
	bne _022460C4
	add r0, sp, #8
	bl sub_0202D914
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0206B688
	b _022460D8
_022460C4:
	ldr r0, [sp, #8]
	mov r1, #5
	add r2, r4, #0
	bl sub_0202D980
	ldr r0, [sp, #8]
	mov r1, #7
	add r2, r7, #0
	bl sub_0202D980
_022460D8:
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl ov6_02246110
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022460E6:
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _022460FE
	bl sub_02022974
_022460FE:
	cmp r4, #0x1e
	bhs _0224610C
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl ov6_02246110
_0224610C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02246034

	thumb_func_start ov6_02246110
ov6_02246110: ; 0x02246110
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02246118:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0224613C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8C4
	bl sub_0206C3C8
	cmp r6, r0
	bne _0224613C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C33C
_0224613C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02246118
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02246110

	thumb_func_start ov6_02246148
ov6_02246148: ; 0x02246148
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02246150:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _02246174
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D924
	mov r1, #4
	add r7, r0, #0
	bl sub_0202D93C
	cmp r6, r0
	bne _02246174
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246174:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02246150
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02246148

	thumb_func_start ov6_02246184
ov6_02246184: ; 0x02246184
	push {r3, r4, r5, r6, lr}
	sub sp, #0x104
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #4
	blo _02246194
	bl sub_02022974
_02246194:
	add r0, r5, #0
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_022461A4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022461A4
	mov r2, #0
	str r2, [sp]
	mov r0, #0x73
	add r1, r6, #0
	add r3, r5, #0
	bl sub_02006FE8
	str r0, [r4, #0]
	str r5, [r4, #0x10]
	str r6, [r4, #0xc]
	add r0, r5, #0
	bl sub_02073C74
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02025E6C
	str r0, [r4, #8]
	bl sub_02025E8C
	add r0, r5, #0
	add r1, r6, #4
	bl ov6_022462E4
	add r5, r0, #0
	add r1, sp, #4
	mov r2, #0x80
	bl sub_02023DF0
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #8]
	add r1, sp, #4
	bl sub_02025EC0
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	ldr r1, [r1, #0x40]
	bl sub_02025F2C
	add r0, r4, #0
	add sp, #0x104
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov6_02246184

	thumb_func_start ov6_02246204
ov6_02246204: ; 0x02246204
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02246204

	thumb_func_start ov6_02246224
ov6_02246224: ; 0x02246224
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02246224

	thumb_func_start ov6_0224622C
ov6_0224622C: ; 0x0224622C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x4c]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_0224622C

	thumb_func_start ov6_02246234
ov6_02246234: ; 0x02246234
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207A268
	ldr r2, [r6, #4]
	add r1, r4, #0
	bl sub_0207A128
	ldr r0, [r5, #0xc]
	ldr r1, [r6, #4]
	bl sub_0202F180
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02246234

	thumb_func_start ov6_02246254
ov6_02246254: ; 0x02246254
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r7, r2, #0
	add r5, r1, #0
	add r4, r3, #0
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	ldr r3, [r5, #0xc]
	bl ov6_0224630C
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl sub_020775EC
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl sub_020775EC
	ldr r0, [sp, #0x20]
	bl sub_02076B10
	str r0, [r4, #0]
	ldr r0, [sp, #0x24]
	bl sub_02076B10
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02055BA8
	cmp r0, #1
	bhi _022462CE
	mov r0, #0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022462CE:
	cmp r0, #2
	bne _022462DA
	mov r0, #1
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022462DA:
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02246254

	thumb_func_start ov6_022462E4
ov6_022462E4: ; 0x022462E4
	push {r3, r4, r5, lr}
	ldr r2, _02246308 ; =0x00000172
	add r3, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246308: .word 0x00000172
	thumb_func_end ov6_022462E4

	thumb_func_start ov6_0224630C
ov6_0224630C: ; 0x0224630C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r3, #0
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	ldr r1, [r4, #0x38]
	add r5, r0, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r1, [r4, #0x20]
	mov r3, #0x20
	str r1, [sp, #0xc]
	ldr r1, [r4, #0]
	bl sub_02073D80
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl ov6_022462E4
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r7, #0
	bl sub_02074B30
	add r0, r7, #0
	bl sub_020237BC
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x4d
	add r2, sp, #0x10
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x46
	add r2, r4, #4
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x47
	add r2, #8
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x48
	add r2, #0xc
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x49
	add r2, #0x10
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x4a
	add r2, #0x14
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x4b
	add r2, #0x18
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x13
	add r2, #0x24
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x14
	add r2, #0x28
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x15
	add r2, #0x2c
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x16
	add r2, #0x30
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x17
	add r2, #0x34
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #6
	add r2, #0x3c
	bl sub_02074B30
	ldr r0, [sp, #0x28]
	add r1, r6, #4
	bl ov6_022462E4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020237BC
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x9d
	add r2, #0x40
	bl sub_02074B30
	add r4, #0x48
	add r0, r5, #0
	mov r1, #0xc
	add r2, r4, #0
	bl sub_02074B30
	ldr r0, [sp, #0x2c]
	bl sub_0203A138
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0209304C
	add r0, r5, #0
	bl sub_0207418C
	add r0, r5, #0
	bl sub_02075E0C
	cmp r0, #0
	beq _02246440
	bl sub_02022974
_02246440:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_0224630C

	thumb_func_start ov6_02246444
ov6_02246444: ; 0x02246444
	ldr r3, _0224644C ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x18
	bx r3
	; .align 2, 0
_0224644C: .word sub_020C4CF4
	thumb_func_end ov6_02246444

	thumb_func_start ov6_02246450
ov6_02246450: ; 0x02246450
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov6_02246450

	thumb_func_start ov6_02246454
ov6_02246454: ; 0x02246454
	strb r1, [r0, #2]
	bx lr
	thumb_func_end ov6_02246454

	thumb_func_start ov6_02246458
ov6_02246458: ; 0x02246458
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov6_02246458

	thumb_func_start ov6_0224645C
ov6_0224645C: ; 0x0224645C
	ldr r3, _02246464 ; =sub_020021D0
	add r0, r0, #4
	mov r2, #8
	bx r3
	; .align 2, 0
_02246464: .word sub_020021D0
	thumb_func_end ov6_0224645C

	thumb_func_start ov6_02246468
ov6_02246468: ; 0x02246468
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202E55C
	strb r0, [r5]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02246468

	thumb_func_start ov6_0224647C
ov6_0224647C: ; 0x0224647C
	push {r3, lr}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02246488
	bl sub_0202E560
_02246488:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0224647C

	thumb_func_start ov6_0224648C
ov6_0224648C: ; 0x0224648C
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov6_0224648C

	thumb_func_start ov6_02246490
ov6_02246490: ; 0x02246490
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov6_02246490

	thumb_func_start ov6_02246494
ov6_02246494: ; 0x02246494
	add r0, r0, #4
	bx lr
	thumb_func_end ov6_02246494

	thumb_func_start ov6_02246498
ov6_02246498: ; 0x02246498
	ldr r3, _022464A0 ; =sub_0202E574
	ldr r0, [r0, #0x14]
	bx r3
	nop
_022464A0: .word sub_0202E574
	thumb_func_end ov6_02246498

	thumb_func_start ov6_022464A4
ov6_022464A4: ; 0x022464A4
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov6_022464A4

	thumb_func_start ov6_022464A8
ov6_022464A8: ; 0x022464A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bl ov6_02246444
	add r0, r5, #0
	bl sub_0202E4C8
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_0224645C
	add r0, r5, #0
	bl sub_0202E4CC
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246454
	add r0, r5, #0
	bl sub_0202E4D0
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246458
	add r0, r5, #0
	bl sub_0202E4D4
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246468
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022464A8

	thumb_func_start ov6_022464F8
ov6_022464F8: ; 0x022464F8
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r6, r1, #0
	bl sub_02025E38
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bl ov6_02246444
	add r0, r5, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_0224645C
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246450
	add r0, r4, #0
	mov r1, #2
	bl ov6_02246454
	add r0, r4, #0
	mov r1, #0xc
	bl ov6_02246458
	add r0, r6, #0
	bl sub_0202E4D8
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246468
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022464F8

	thumb_func_start ov6_02246550
ov6_02246550: ; 0x02246550
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02025E38
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bl ov6_02246444
	add r0, r6, #0
	strb r5, [r4]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_0224645C
	add r0, r6, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246450
	add r0, r4, #0
	mov r1, #2
	bl ov6_02246454
	add r0, r4, #0
	mov r1, #0xc
	bl ov6_02246458
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02246550

	thumb_func_start ov6_022465A0
ov6_022465A0: ; 0x022465A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0202440C
	add r7, r0, #0
	sub r0, r4, #4
	cmp r0, #1
	bhi _022465C0
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_02246550
	pop {r3, r4, r5, r6, r7, pc}
_022465C0:
	add r0, r6, #0
	bl sub_0202E7C0
	cmp r0, #0
	bne _022465DE
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202E794
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_022464A8
	pop {r3, r4, r5, r6, r7, pc}
_022465DE:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202E768
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_022464F8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022465A0

	thumb_func_start ov6_022465F4
ov6_022465F4: ; 0x022465F4
	ldr r3, _022465F8 ; =sub_020181C4
	bx r3
	; .align 2, 0
_022465F8: .word sub_020181C4
	thumb_func_end ov6_022465F4

	thumb_func_start ov6_022465FC
ov6_022465FC: ; 0x022465FC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	mov r1, #1
	bl sub_0202E374
	pop {r3, pc}
	thumb_func_end ov6_022465FC

	thumb_func_start ov6_0224660C
ov6_0224660C: ; 0x0224660C
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	add r4, r0, #0
	bl sub_0202E380
	cmp r0, #1
	bne _02246622
	mov r0, #0
	pop {r4, pc}
_02246622:
	add r0, r4, #0
	bl sub_0202E3DC
	cmp r0, #0
	bne _02246630
	mov r0, #2
	pop {r4, pc}
_02246630:
	cmp r0, #4
	bne _02246638
	mov r0, #1
	pop {r4, pc}
_02246638:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov6_0224660C

	thumb_func_start ov6_0224663C
ov6_0224663C: ; 0x0224663C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02055BD0
	add r0, r0, #6
	mov r1, #7
	bl sub_020E1F6C
	add r0, r4, #0
	add r5, r1, #0
	bl sub_02055BDC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02055BE8
	mov r1, #0xf
	bl sub_020E1F6C
	add r6, #0x13
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x18
	bl sub_020E1F6C
	add r6, r1, #0
	lsl r6, r6, #2
	mov r3, #7
	add r4, r4, r6
	str r3, [sp]
	add r0, sp, #4
	mov r1, #0x7e
	mov r2, #0
	mul r3, r4
	bl sub_02006AFC
	add r0, sp, #4
	ldrb r4, [r0, r5]
	cmp r4, #0
	beq _02246692
	cmp r4, #0xa
	blo _02246696
_02246692:
	bl sub_02022974
_02246696:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov6_0224663C

	thumb_func_start ov6_0224669C
ov6_0224669C: ; 0x0224669C
	push {r4, lr}
	sub sp, #8
	add r3, r0, #0
	sub r4, r3, #1
	mov r3, #0xc
	mov r2, #1
	add r0, sp, #4
	mov r1, #0x7e
	mul r3, r4
	str r2, [sp]
	bl sub_02006AFC
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r0, #6
	blo _022466C0
	bl sub_02022974
_022466C0:
	add r0, sp, #4
	ldrb r0, [r0]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov6_0224669C

	thumb_func_start ov6_022466C8
ov6_022466C8: ; 0x022466C8
	push {r3, r4, lr}
	sub sp, #4
	add r3, r0, #0
	sub r4, r3, #1
	mov r3, #0xc
	mov r0, #0xb
	mul r3, r4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x7e
	mov r2, #1
	add r3, r3, #1
	bl sub_02006AFC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_022466C8

	thumb_func_start ov6_022466E8
ov6_022466E8: ; 0x022466E8
	mov r0, #1
	bx lr
	thumb_func_end ov6_022466E8

	thumb_func_start ov6_022466EC
ov6_022466EC: ; 0x022466EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #0xc]
	str r2, [sp, #4]
	bl sub_0202440C
	ldr r0, [sp]
	add r1, sp, #8
	bl ov6_022466C8
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0xb
	bl sub_020C4CF4
	mov r6, #0
	add r4, r6, #0
	add r5, sp, #8
_02246714:
	ldrb r2, [r5]
	cmp r2, #0
	beq _02246736
	ldr r1, [sp]
	add r0, r7, #0
	bl ov6_022466E8
	cmp r0, #1
	bne _0224672E
	ldrb r1, [r5]
	ldr r0, [sp, #4]
	strb r1, [r0, r4]
	add r4, r4, #1
_0224672E:
	add r6, r6, #1
	add r5, r5, #1
	cmp r6, #0xb
	blt _02246714
_02246736:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022466EC

	thumb_func_start ov6_0224673C
ov6_0224673C: ; 0x0224673C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xb
	bl sub_020C4CF4
	mov r1, #0
	add r4, r1, #0
	add r2, sp, #0
_02246752:
	ldrb r0, [r5, r1]
	cmp r0, #0
	beq _0224675E
	strb r0, [r2]
	add r2, r2, #1
	add r4, r4, #1
_0224675E:
	add r1, r1, #1
	cmp r1, #0xb
	blt _02246752
	cmp r4, #0
	bne _0224676E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0224676E:
	cmp r4, #1
	bne _0224677A
	add r0, sp, #0
	add sp, #0xc
	ldrb r0, [r0]
	pop {r4, r5, pc}
_0224677A:
	bl sub_0201D35C
	add r1, r4, #0
	bl sub_020E2178
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_0224673C

	thumb_func_start ov6_0224678C
ov6_0224678C: ; 0x0224678C
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	cmp r1, #4
	beq _022467AA
	cmp r1, #5
	beq _022467AA
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_0202E614
	add sp, #8
	pop {r4, pc}
_022467AA:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022467B6
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022467B6:
	cmp r3, #0
	bne _022467C0
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022467C0:
	add r1, r4, #0
	bl sub_0202E3C4
	cmp r0, #0
	bne _022467D4
	ldr r0, [sp, #0x14]
	add sp, #8
	strb r4, [r0]
	mov r0, #1
	pop {r4, pc}
_022467D4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224678C

	thumb_func_start ov6_022467DC
ov6_022467DC: ; 0x022467DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	ldr r6, [sp, #0x40]
	ldr r0, [r1, #0xc]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r5, [sp, #0x44]
	bl sub_0202440C
	str r0, [sp, #0x14]
	ldrb r0, [r6]
	mov r4, #0
	cmp r0, #0
	beq _0224683C
	add r7, sp, #0x18
_022467FC:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	str r0, [sp]
	str r7, [sp, #4]
	ldrb r2, [r6]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0xc]
	bl ov6_0224678C
	cmp r0, #0
	beq _02246834
	mov r0, #0
	add r1, r7, #0
	b _0224682A
_02246822:
	strb r2, [r5, r4]
	add r4, r4, #1
	add r1, r1, #1
	add r0, r0, #1
_0224682A:
	ldrb r2, [r1]
	cmp r2, #0
	beq _02246834
	cmp r0, #0x10
	blt _02246822
_02246834:
	add r6, r6, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _022467FC
_0224683C:
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022467DC

	thumb_func_start ov6_02246844
ov6_02246844: ; 0x02246844
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
	b _02246876
_02246850:
	add r0, r6, #0
	add r1, r7, #0
	bl ov6_022465A0
	str r0, [sp]
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0206CD2C
	cmp r0, #0
	bne _0224686C
	mov r0, #0
	strb r0, [r5]
_0224686C:
	ldr r0, [sp]
	bl ov6_022465F4
	add r5, r5, #1
	add r4, r4, #1
_02246876:
	ldrb r2, [r5]
	cmp r2, #0
	beq _02246880
	cmp r4, #0x10
	blt _02246850
_02246880:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02246844

	thumb_func_start ov6_02246884
ov6_02246884: ; 0x02246884
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_0202440C
	ldrb r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _022468AC
	mov r6, #0
_02246898:
	add r0, r4, #0
	bl sub_0202E3C4
	cmp r0, #0
	beq _022468A4
	strb r6, [r5]
_022468A4:
	add r5, r5, #1
	ldrb r1, [r5]
	cmp r1, #0
	bne _02246898
_022468AC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02246884

	thumb_func_start ov6_022468B0
ov6_022468B0: ; 0x022468B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov6_0224663C
	str r0, [sp, #8]
	bl ov6_0224669C
	add r4, r0, #0
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0xb
	bl sub_020C4CF4
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r2, sp, #0x1c
	bl ov6_022466EC
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov6_022467DC
	cmp r0, #0
	bne _02246902
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246902:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl ov6_02246844
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov6_02246884
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov6_0224673C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022468B0

	thumb_func_start ov6_02246920
ov6_02246920: ; 0x02246920
	push {r4, lr}
	mov r1, #0
	add r2, r1, #0
	add r4, r0, #0
	bl ov6_022468B0
	cmp r0, #0
	bne _02246956
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov6_022468B0
	cmp r0, #0
	bne _02246956
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov6_022468B0
	cmp r0, #0
	bne _02246956
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov6_022468B0
_02246956:
	pop {r4, pc}
	thumb_func_end ov6_02246920

	thumb_func_start ov6_02246958
ov6_02246958: ; 0x02246958
	push {r4, lr}
	bl ov6_0224663C
	add r4, r0, #0
	cmp r4, #9
	bls _02246968
	bl sub_02022974
_02246968:
	ldr r2, _02246974 ; =0x02249470
	sub r1, r4, #1
	mov r0, #7
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
	; .align 2, 0
_02246974: .word 0x02249470
	thumb_func_end ov6_02246958

	thumb_func_start ov6_02246978
ov6_02246978: ; 0x02246978
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r4, #0
	bl ov6_02246958
	add r4, r0, #0
	cmp r5, #3
	bhi _022469A6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224699E: ; jump table
	.short _022469AA - _0224699E - 2 ; case 0
	.short _022469C4 - _0224699E - 2 ; case 1
	.short _022469D6 - _0224699E - 2 ; case 2
	.short _022469DA - _0224699E - 2 ; case 3
_022469A6:
	bl sub_02022974
_022469AA:
	bl sub_02013960
	cmp r0, #0
	beq _022469B8
	cmp r0, #1
	beq _022469BC
	b _022469C0
_022469B8:
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_022469BC:
	ldrb r0, [r4, #1]
	pop {r4, r5, r6, pc}
_022469C0:
	ldrb r0, [r4, #2]
	pop {r4, r5, r6, pc}
_022469C4:
	add r0, r6, #0
	bl sub_0202E3DC
	cmp r0, #0
	bne _022469D2
	ldrb r0, [r4, #3]
	pop {r4, r5, r6, pc}
_022469D2:
	ldrb r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022469D6:
	ldrb r0, [r4, #5]
	pop {r4, r5, r6, pc}
_022469DA:
	ldrb r0, [r4, #6]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02246978

	thumb_func_start ov6_022469E0
ov6_022469E0: ; 0x022469E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r3, #0
	bl ov6_0224663C
	bl ov6_0224669C
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202440C
	add r1, r5, #0
	bl sub_0202E384
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov6_022465A0
	add r5, r0, #0
	bl ov6_0224647C
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	add r3, r5, #0
	str r6, [sp]
	bl sub_0206CD00
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	add r0, r5, #0
	bl ov6_022465F4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022469E0

	thumb_func_start ov6_02246A30
ov6_02246A30: ; 0x02246A30
	mov r0, #1
	bx lr
	thumb_func_end ov6_02246A30

	thumb_func_start ov6_02246A34
ov6_02246A34: ; 0x02246A34
	mov r0, #0
	bx lr
	thumb_func_end ov6_02246A34

	thumb_func_start ov6_02246A38
ov6_02246A38: ; 0x02246A38
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #7
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A38

	thumb_func_start ov6_02246A4C
ov6_02246A4C: ; 0x02246A4C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	add r2, r1, #0
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A4C

	thumb_func_start ov6_02246A60
ov6_02246A60: ; 0x02246A60
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #9
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A60

	thumb_func_start ov6_02246A74
ov6_02246A74: ; 0x02246A74
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xa
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A74

	thumb_func_start ov6_02246A88
ov6_02246A88: ; 0x02246A88
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xb
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A88

	thumb_func_start ov6_02246A9C
ov6_02246A9C: ; 0x02246A9C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A9C

	thumb_func_start ov6_02246AB0
ov6_02246AB0: ; 0x02246AB0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025F58
	cmp r0, #5
	blt _02246AC4
	mov r0, #1
	pop {r3, pc}
_02246AC4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_02246AB0

	thumb_func_start ov6_02246AC8
ov6_02246AC8: ; 0x02246AC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02026F0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246AC8

	thumb_func_start ov6_02246AD8
ov6_02246AD8: ; 0x02246AD8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027520
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246AD8

	thumb_func_start ov6_02246AE8
ov6_02246AE8: ; 0x02246AE8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A954
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246AE8

	thumb_func_start ov6_02246AF8
ov6_02246AF8: ; 0x02246AF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _02246B38 ; =0x022494B0
	str r0, [sp]
	add r7, r1, #0
	mov r6, #0
	add r5, sp, #4
_02246B06:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	add r6, r6, #1
	add r4, r4, #4
	stmia r5!, {r0}
	cmp r6, #0xc
	blo _02246B06
	mov r4, #0
	ldr r3, _02246B3C ; =0x02249878
	add r0, r4, #0
	add r2, sp, #4
_02246B1E:
	ldrb r1, [r3]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02246B2C
	strb r4, [r7, r0]
	add r0, r0, #1
_02246B2C:
	add r4, r4, #1
	add r3, r3, #1
	cmp r4, #0x23
	blo _02246B1E
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246B38: .word 0x022494B0
_02246B3C: .word 0x02249878
	thumb_func_end ov6_02246AF8

	thumb_func_start ov6_02246B40
ov6_02246B40: ; 0x02246B40
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020C4CF4
	add r0, r4, #0
	add r1, sp, #0
	bl ov6_02246AF8
	add r4, r0, #0
	bne _02246B62
	add sp, #0x24
	mov r0, #0
	pop {r3, r4, pc}
_02246B62:
	bl sub_0201D35C
	add r1, r4, #0
	bl sub_020E2178
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0x24
	pop {r3, r4, pc}
	thumb_func_end ov6_02246B40

	thumb_func_start ov6_02246B74
ov6_02246B74: ; 0x02246B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #0
	bne _02246BE8
	cmp r4, #0
	bne _02246B88
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246B88:
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02246B98
	bl sub_02022974
_02246B98:
	ldr r0, [sp, #4]
	cmp r0, #0xc
	bls _02246BA2
	bl sub_02022974
_02246BA2:
	ldr r0, [sp, #4]
	ldr r3, _02246BEC ; =0x0224954C
	sub r0, r0, #1
	lsl r0, r0, #3
	ldr r6, [r3, r0]
	add r2, r3, r0
	mov r1, #0
	cmp r6, #0
	ble _02246BE6
	ldr r3, [r2, #4]
	ldr r5, [sp, #8]
_02246BB8:
	lsl r0, r1, #1
	ldrh r7, [r3, r0]
	asr r7, r7, #8
	lsl r7, r7, #0x18
	lsr r7, r7, #0x18
	cmp r5, r7
	bne _02246BDC
	ldr r1, [r2, #4]
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x16
	ldr r0, _02246BF0 ; =0x02249538
	ldr r0, [r0, r1]
	add r0, r4, r0
	bpl _02246BE8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02246BDC:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r6
	blt _02246BB8
_02246BE6:
	add r0, r4, #0
_02246BE8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246BEC: .word 0x0224954C
_02246BF0: .word 0x02249538
	thumb_func_end ov6_02246B74

	thumb_func_start ov6_02246BF4
ov6_02246BF4: ; 0x02246BF4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202D834
	bl sub_0202D9CC
	ldrb r1, [r0]
	cmp r1, #0
	beq _02246C20
	sub r1, r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _02246C20
	mov r1, #0x7f
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r4, pc}
_02246C20:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02246BF4

	thumb_func_start ov6_02246C24
ov6_02246C24: ; 0x02246C24
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	mov r1, #0x7b
	add r2, sp, #4
	add r3, sp, #0
	add r5, r0, #0
	bl sub_020552B4
	cmp r0, #0
	beq _02246C90
	mov r0, #4
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	strb r6, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #0x14
	bl sub_020553A4
	ldr r1, [sp, #4]
	add r0, sp, #8
	bl FUN_021E1894
	add r3, sp, #8
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r5, #0x10]
	ldr r1, _02246C98 ; =ov6_02246C9C
	bl sub_02050944
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02246C90:
	bl sub_02022974
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246C98: .word ov6_02246C9C
	thumb_func_end ov6_02246C24

	thumb_func_start ov6_02246C9C
ov6_02246C9C: ; 0x02246C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	cmp r1, #5
	bls _02246CB8
	b _02246EE2
_02246CB8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246CC4: ; jump table
	.short _02246CD0 - _02246CC4 - 2 ; case 0
	.short _02246DA4 - _02246CC4 - 2 ; case 1
	.short _02246E2C - _02246CC4 - 2 ; case 2
	.short _02246E58 - _02246CC4 - 2 ; case 3
	.short _02246E7A - _02246CC4 - 2 ; case 4
	.short _02246ED8 - _02246CC4 - 2 ; case 5
_02246CD0:
	ldr r0, _02246EE8 ; =0x00000205
	ldr r1, [r6, #0x30]
	bl FUN_021EF9E8
	add r5, r0, #0
	ldr r1, [r6, #0x30]
	mov r0, #0x7c
	bl FUN_021EF9E8
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _02246D0E
	add r2, r0, #0
	add r2, #8
	beq _02246D02
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02246D02
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02246D04
_02246D02:
	mov r1, #0
_02246D04:
	cmp r1, #0
	beq _02246D0E
	ldr r1, [r1, #0]
	add r5, r0, r1
	b _02246D10
_02246D0E:
	mov r5, #0
_02246D10:
	ldr r0, [r7, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _02246D3A
	add r2, r0, #0
	add r2, #8
	beq _02246D2E
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02246D2E
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02246D30
_02246D2E:
	mov r1, #0
_02246D30:
	cmp r1, #0
	beq _02246D3A
	ldr r1, [r1, #0]
	add r7, r0, r1
	b _02246D3C
_02246D3A:
	mov r7, #0
_02246D3C:
	ldr r0, [r6, #0x30]
	bl FUN_021EFAA0
	mov r1, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, _02246EE8 ; =0x00000205
	mov r2, #0x10
	bl FUN_021D41C8
	add r0, r6, #0
	mov r1, #0x7c
	add r2, sp, #0x18
	mov r3, #0
	bl sub_020552B4
	cmp r0, #0
	bne _02246D72
	bl sub_02022974
_02246D72:
	ldr r0, [sp, #0x18]
	bl FUN_021E18BC
	add r5, r0, #0
	ldr r0, [r6, #0x30]
	bl FUN_021EFAA0
	str r5, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x20
	mov r3, #0x7c
	bl FUN_021D41C8
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246DA4:
	add r1, sp, #0x1c
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldrb r2, [r4, #0xd]
	mov r1, #0xc
	ldr r0, [r4, #0]
	add r3, r2, #0
	ldr r2, _02246EEC ; =0x0224989C
	mul r3, r1
	ldr r2, [r2, r3]
	add r0, r0, r2
	str r0, [sp, #0x28]
	ldrb r2, [r4, #0xd]
	ldr r0, [r4, #4]
	add r3, r2, #0
	ldr r2, _02246EF0 ; =0x022498A0
	mul r3, r1
	ldr r2, [r2, r3]
	add r0, r0, r2
	str r0, [sp, #0x2c]
	ldrb r2, [r4, #0xd]
	ldr r0, [r4, #8]
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02246EF4 ; =0x022498A4
	ldr r1, [r1, r3]
	add r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, _02246EF8 ; =0x000005FE
	bl sub_02005748
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [r6, #0x50]
	ldr r2, _02246EE8 ; =0x00000205
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	add r3, sp, #0x28
	bl FUN_021E19CC
	ldrb r1, [r4, #0xd]
	add r1, r4, r1
	strb r0, [r1, #0x10]
	ldrb r1, [r4, #0xd]
	add r0, r6, #0
	add r0, #0xa4
	add r1, r4, r1
	ldrb r1, [r1, #0x10]
	ldr r0, [r0, #0]
	bl FUN_021E18E0
	bl FUN_021E18BC
	add r3, r0, #0
	ldrb r2, [r4, #0xd]
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl FUN_021D4220
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E2C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0xf
	bhs _02246E38
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02246EE2
_02246E38:
	mov r0, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r1, r0
	bhs _02246E50
	mov r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E50:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E58:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	mov r2, #0
	bl FUN_021D4250
	ldr r0, [r6, #0x54]
	mov r1, #0x20
	mov r2, #0
	bl FUN_021D4250
	ldr r0, _02246EFC ; =0x0000048E
	bl sub_02006150
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246E7A:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl FUN_021D42F0
	cmp r0, #0
	beq _02246EE2
	ldr r0, [r6, #0x54]
	mov r1, #0x20
	bl FUN_021D42F0
	cmp r0, #0
	beq _02246EE2
	bl sub_020061E4
	cmp r0, #0
	bne _02246EE2
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x20
	bl FUN_021D42B0
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x10
	bl FUN_021D42B0
	ldrb r0, [r4, #0xc]
	mov r5, #0
	cmp r0, #0
	bls _02246ED0
_02246EB6:
	add r0, r4, r5
	add r1, r6, #0
	add r1, #0xa4
	ldrb r0, [r0, #0x10]
	ldr r1, [r1, #0]
	bl FUN_021E1674
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	blo _02246EB6
_02246ED0:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02246EE2
_02246ED8:
	bl sub_020181C4
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02246EE2:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246EE8: .word 0x00000205
_02246EEC: .word 0x0224989C
_02246EF0: .word 0x022498A0
_02246EF4: .word 0x022498A4
_02246EF8: .word 0x000005FE
_02246EFC: .word 0x0000048E
	thumb_func_end ov6_02246C9C

	thumb_func_start ov6_02246F00
ov6_02246F00: ; 0x02246F00
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r2, #0
	ldr r1, _02246F38 ; =0x000001F2
	add r3, r2, #0
	add r5, r0, #0
	bl sub_020552B4
	cmp r0, #0
	beq _02246F32
	mov r0, #4
	add r1, r0, #0
	bl sub_02018184
	add r2, r0, #0
	strb r6, [r2]
	strb r4, [r2, #1]
	mov r0, #0
	strb r0, [r2, #2]
	ldr r0, [r5, #0x10]
	ldr r1, _02246F3C ; =ov6_02246F40
	bl sub_02050944
	pop {r4, r5, r6, pc}
_02246F32:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246F38: .word 0x000001F2
_02246F3C: .word ov6_02246F40
	thumb_func_end ov6_02246F00

	thumb_func_start ov6_02246F40
ov6_02246F40: ; 0x02246F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #4
	bls _02246F5C
	b _02247064
_02246F5C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246F68: ; jump table
	.short _02246F72 - _02246F68 - 2 ; case 0
	.short _02246FEE - _02246F68 - 2 ; case 1
	.short _0224701C - _02246F68 - 2 ; case 2
	.short _02247048 - _02246F68 - 2 ; case 3
	.short _0224705A - _02246F68 - 2 ; case 4
_02246F72:
	ldr r0, _0224706C ; =0x000001F2
	ldr r1, [r6, #0x30]
	bl FUN_021EF9E8
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _02246FA4
	add r2, r0, #0
	add r2, #8
	beq _02246F98
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02246F98
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02246F9A
_02246F98:
	mov r1, #0
_02246F9A:
	cmp r1, #0
	beq _02246FA4
	ldr r1, [r1, #0]
	add r7, r0, r1
	b _02246FA6
_02246FA4:
	mov r7, #0
_02246FA6:
	ldr r1, _0224706C ; =0x000001F2
	add r0, r6, #0
	add r2, sp, #0x18
	mov r3, #0
	bl sub_020552B4
	cmp r0, #0
	bne _02246FBA
	bl sub_02022974
_02246FBA:
	ldr r0, [sp, #0x18]
	bl FUN_021E18BC
	add r5, r0, #0
	ldr r0, [r6, #0x30]
	bl FUN_021EFAA0
	str r5, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	ldr r3, _0224706C ; =0x000001F2
	mov r2, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	bl FUN_021D41C8
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_02246FEE:
	ldrb r0, [r4, #1]
	mov r1, #1
	cmp r0, #0
	beq _02246FFC
	cmp r0, #1
	beq _02246FFC
	mov r1, #0
_02246FFC:
	cmp r1, #0
	bne _02247004
	bl sub_02022974
_02247004:
	ldrb r2, [r4, #1]
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl FUN_021D4250
	ldr r0, _02247070 ; =0x00000612
	bl sub_02005748
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_0224701C:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl FUN_021D42F0
	cmp r0, #0
	beq _02247064
	ldr r0, _02247070 ; =0x00000612
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02247074 ; =0x000005F1
	bl sub_02005748
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #1
	bl FUN_021D42B0
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_02247048:
	ldr r0, _02247074 ; =0x000005F1
	bl sub_020057D4
	cmp r0, #0
	bne _02247064
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _02247064
_0224705A:
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02247064:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224706C: .word 0x000001F2
_02247070: .word 0x00000612
_02247074: .word 0x000005F1
	thumb_func_end ov6_02246F40

	thumb_func_start ov6_02247078
ov6_02247078: ; 0x02247078
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r4, _022470E4 ; =0x022495AC
	add r3, sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, sp, #0x18
	str r0, [sp]
	add r1, r2, #0
	add r0, r5, #0
	mov r2, #4
	add r3, sp, #0x1c
	bl sub_02055324
	cmp r0, #0
	beq _022470DA
	ldr r0, [r5, #0x30]
	bl FUN_021EFAA0
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl FUN_021E18BC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl FUN_021E18C0
	str r4, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	ldr r3, [sp, #0x18]
	add r2, r7, #0
	bl FUN_021D41C8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_022470DA:
	bl sub_02022974
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022470E4: .word 0x022495AC
	thumb_func_end ov6_02247078

	thumb_func_start ov6_022470E8
ov6_022470E8: ; 0x022470E8
	ldr r3, _022470F0 ; =FUN_021D4250
	ldr r0, [r0, #0x54]
	mov r2, #0
	bx r3
	; .align 2, 0
_022470F0: .word FUN_021D4250
	thumb_func_end ov6_022470E8

	thumb_func_start ov6_022470F4
ov6_022470F4: ; 0x022470F4
	ldr r3, _022470FC ; =FUN_021D4250
	ldr r0, [r0, #0x54]
	mov r2, #1
	bx r3
	; .align 2, 0
_022470FC: .word FUN_021D4250
	thumb_func_end ov6_022470F4

	thumb_func_start ov6_02247100
ov6_02247100: ; 0x02247100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x24
	bl ov6_02247590
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02247100

	thumb_func_start ov6_02247120
ov6_02247120: ; 0x02247120
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
_02247132:
	ldr r3, [r5, #0]
	add r0, r6, #0
	lsl r4, r3, #2
	ldr r3, _02247158 ; =0x022495CC
	add r1, r7, #0
	ldr r3, [r3, r4]
	add r2, r5, #0
	blx r3
	add r4, r0, #0
	cmp r4, #2
	bne _0224714E
	add r0, r5, #0
	bl sub_020181C4
_0224714E:
	cmp r4, #1
	beq _02247132
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247158: .word 0x022495CC
	thumb_func_end ov6_02247120

	thumb_func_start ov6_0224715C
ov6_0224715C: ; 0x0224715C
	push {r4, lr}
	add r0, r1, #0
	mov r1, #4
	add r4, r2, #0
	bl FUN_021F0EB0
	ldr r2, _022471B0 ; =0xFFF6A000
	str r0, [r4, #0x14]
	mov r1, #1
	mov r3, #0xf
	bl FUN_021F0F10
	ldr r0, [r4, #0x18]
	ldr r1, _022471B4 ; =0x02249608
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02247194
	cmp r0, #1
	beq _0224719C
	cmp r0, #2
	beq _022471A4
	b _022471AA
_02247194:
	ldr r0, _022471B8 ; =0x00000603
	bl sub_02005748
	b _022471AA
_0224719C:
	ldr r0, _022471B8 ; =0x00000603
	bl sub_02005748
	b _022471AA
_022471A4:
	ldr r0, _022471BC ; =0x0000064E
	bl sub_02005748
_022471AA:
	mov r0, #0
	pop {r4, pc}
	nop
_022471B0: .word 0xFFF6A000
_022471B4: .word 0x02249608
_022471B8: .word 0x00000603
_022471BC: .word 0x0000064E
	thumb_func_end ov6_0224715C

	thumb_func_start ov6_022471C0
ov6_022471C0: ; 0x022471C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	bne _022471D6
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_022471D6:
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x18]
	ldr r1, _0224723C ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	bge _022471F6
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_022471F6:
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _02247216
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0224722E
_02247216:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _02247240 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
_0224722E:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224723C: .word 0x022495DC
_02247240: .word 0x00007FFF
	thumb_func_end ov6_022471C0

	thumb_func_start ov6_02247244
ov6_02247244: ; 0x02247244
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #1
	bne _02247262
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x18]
	ldr r1, _02247284 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
_02247262:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0224726E
	mov r0, #0
	pop {r4, pc}
_0224726E:
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x14]
	bl FUN_021F0EFC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02247284: .word 0x022495DC
	thumb_func_end ov6_02247244

	thumb_func_start ov6_02247288
ov6_02247288: ; 0x02247288
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	add r4, r2, #0
	bl sub_0203A790
	ldr r1, [r4, #8]
	cmp r1, #2
	bne _022472B2
	bl sub_0203A75C
	add r1, sp, #0
	bl sub_0203A7F0
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02053CD4
	b _022472C0
_022472B2:
	bl sub_0203A72C
	add r1, r0, #0
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_02053CD4
_022472C0:
	mov r0, #2
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02247288

	thumb_func_start ov6_022472C8
ov6_022472C8: ; 0x022472C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x24
	add r6, r2, #0
	bl ov6_02247590
	add r4, r0, #0
	str r6, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022472C8

	thumb_func_start ov6_022472E8
ov6_022472E8: ; 0x022472E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	ldr r7, _02247328 ; =0x022495BC
	add r4, r0, #0
_022472FC:
	ldr r3, [r4, #0]
	add r0, r5, #0
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	add r1, r6, #0
	add r2, r4, #0
	blx r3
	cmp r0, #2
	bne _02247320
	add r0, r6, #0
	add r1, r4, #0
	bl ov6_0224732C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02247320:
	cmp r0, #1
	beq _022472FC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247328: .word 0x022495BC
	thumb_func_end ov6_022472E8

	thumb_func_start ov6_0224732C
ov6_0224732C: ; 0x0224732C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #2
	bne _02247352
	ldr r1, [r4, #0x1c]
	mov r0, #9
	ldr r1, [r1, #0]
	mov r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0202BE00
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	bl sub_0202B758
_02247352:
	pop {r4, pc}
	thumb_func_end ov6_0224732C

	thumb_func_start ov6_02247354
ov6_02247354: ; 0x02247354
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r0, [r4, #8]
	add r5, r1, #0
	cmp r0, #2
	bne _0224737A
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _02247390
_0224737A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _022473BC ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
_02247390:
	add r0, r5, #0
	mov r1, #4
	bl FUN_021F0EB0
	mov r1, #1
	ldr r2, _022473C0 ; =0xFFF6A000
	str r0, [r4, #0x14]
	add r3, r1, #0
	bl FUN_021F0F10
	ldr r0, [r4, #0x18]
	ldr r1, _022473C4 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022473BC: .word 0x00007FFF
_022473C0: .word 0xFFF6A000
_022473C4: .word 0x022495DC
	thumb_func_end ov6_02247354

	thumb_func_start ov6_022473C8
ov6_022473C8: ; 0x022473C8
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #1
	bne _022473E6
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #0x18]
	ldr r1, _02247408 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
_022473E6:
	bl sub_0200F2AC
	cmp r0, #0
	bne _022473F2
	mov r0, #0
	pop {r4, pc}
_022473F2:
	ldr r0, [r4, #0x14]
	mov r1, #2
	mov r2, #0
	mov r3, #0x3c
	bl FUN_021F0F10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02247408: .word 0x022495DC
	thumb_func_end ov6_022473C8

	thumb_func_start ov6_0224740C
ov6_0224740C: ; 0x0224740C
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	bne _0224741E
	mov r0, #0
	pop {r4, pc}
_0224741E:
	ldr r0, [r4, #0xc]
	bl sub_02065758
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	ldr r0, [r4, #0x18]
	bge _0224743C
	ldr r1, _02247450 ; =0x022495DC
	bl sub_02065700
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0224743C:
	ldr r1, _02247454 ; =0x0224966C
	bl sub_02065700
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	nop
_02247450: .word 0x022495DC
_02247454: .word 0x0224966C
	thumb_func_end ov6_0224740C

	thumb_func_start ov6_02247458
ov6_02247458: ; 0x02247458
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0xc]
	bl sub_0206574C
	cmp r0, #0
	bne _0224746A
	mov r0, #0
	pop {r4, pc}
_0224746A:
	ldr r0, [r4, #0x14]
	bl FUN_021F0EF0
	cmp r0, #0
	bne _02247478
	mov r0, #0
	pop {r4, pc}
_02247478:
	ldr r0, [r4, #0x14]
	bl FUN_021F0EFC
	ldr r0, [r4, #0xc]
	bl sub_02065758
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov6_02247458

	thumb_func_start ov6_02247488
ov6_02247488: ; 0x02247488
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x24
	bl ov6_02247590
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	str r6, [r4, #0x20]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02247488

	thumb_func_start ov6_022474AC
ov6_022474AC: ; 0x022474AC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
_022474BE:
	ldr r3, [r5, #0]
	add r0, r6, #0
	lsl r4, r3, #2
	ldr r3, _022474E4 ; =0x022495F0
	add r1, r7, #0
	ldr r3, [r3, r4]
	add r2, r5, #0
	blx r3
	add r4, r0, #0
	cmp r4, #2
	bne _022474DA
	add r0, r5, #0
	bl sub_020181C4
_022474DA:
	cmp r4, #1
	beq _022474BE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022474E4: .word 0x022495F0
	thumb_func_end ov6_022474AC

	thumb_func_start ov6_022474E8
ov6_022474E8: ; 0x022474E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x3c]
	add r4, r2, #0
	bl sub_0205EB98
	add r3, r0, #0
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl ov6_02243F88
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022474E8

	thumb_func_start ov6_0224750C
ov6_0224750C: ; 0x0224750C
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x10]
	bl ov6_02243FBC
	cmp r0, #0
	bne _0224751E
	mov r0, #0
	pop {r4, pc}
_0224751E:
	ldr r0, [r4, #0x10]
	bl ov6_02243FC8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224750C

	thumb_func_start ov6_02247530
ov6_02247530: ; 0x02247530
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x24
	bl ov6_02247590
	add r4, r0, #0
	mov r0, #2
	str r0, [r4, #8]
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x18]
	str r6, [r4, #0x20]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02247530

	thumb_func_start ov6_02247554
ov6_02247554: ; 0x02247554
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
_02247566:
	ldr r3, [r5, #0]
	add r0, r6, #0
	lsl r4, r3, #2
	ldr r3, _0224758C ; =0x022495F0
	add r1, r7, #0
	ldr r3, [r3, r4]
	add r2, r5, #0
	blx r3
	add r4, r0, #0
	cmp r4, #2
	bne _02247582
	add r0, r5, #0
	bl sub_020181C4
_02247582:
	cmp r4, #1
	beq _02247566
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224758C: .word 0x022495F0
	thumb_func_end ov6_02247554

	thumb_func_start ov6_02247590
ov6_02247590: ; 0x02247590
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02018184
	add r4, r0, #0
	bne _022475A0
	bl sub_02022974
_022475A0:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02247590

	thumb_func_start ov6_022475B0
ov6_022475B0: ; 0x022475B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0x6a
	mov r1, #8
	mov r2, #4
	bl sub_02006ADC
	add r4, r0, #0
	add r1, sp, #4
	ldr r0, [sp]
	add r1, #2
	add r2, sp, #4
	bl sub_0202DA10
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldr r0, _02247620 ; =0x0000FFFF
	cmp r1, r0
	beq _022475DE
	lsl r0, r1, #2
	ldr r6, [r4, r0]
	b _022475E0
_022475DE:
	mov r6, #0
_022475E0:
	add r0, sp, #4
	ldrh r1, [r0]
	ldr r0, _02247620 ; =0x0000FFFF
	cmp r1, r0
	beq _022475F0
	lsl r0, r1, #2
	ldr r7, [r4, r0]
	b _022475F2
_022475F0:
	mov r7, #0
_022475F2:
	bl sub_0201D2E8
	lsl r0, r0, #4
	lsr r5, r0, #0x10
	cmp r5, #0x10
	blo _02247602
	bl sub_02022974
_02247602:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	cmp r6, r0
	beq _022475F2
	cmp r7, r0
	beq _022475F2
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0202DA24
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247620: .word 0x0000FFFF
	thumb_func_end ov6_022475B0

	thumb_func_start ov6_02247624
ov6_02247624: ; 0x02247624
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0202DA10
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldr r0, _0224765C ; =0x0000FFFF
	cmp r1, r0
	bne _02247640
	bl sub_02022974
_02247640:
	mov r0, #0x6a
	mov r1, #8
	mov r2, #4
	bl sub_02006ADC
	add r1, sp, #0
	ldrh r1, [r1, #2]
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	bl sub_020181C4
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0224765C: .word 0x0000FFFF
	thumb_func_end ov6_02247624

	thumb_func_start ov6_02247660
ov6_02247660: ; 0x02247660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02247676
	bl sub_02022974
_02247676:
	cmp r4, #0
	bne _02247680
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02247680:
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	bl sub_0202B428
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl sub_020615AC
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsr r0, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x44]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x48]
	mov r0, #0x6a
	mov r1, #1
	mov r2, #4
	bl sub_02006ADC
	str r0, [sp, #0xc]
	mov r4, #0
	ldr r0, [r0, #0]
	add r3, r4, #0
	cmp r0, #0
	ble _022476EA
_022476D6:
	ldr r1, [sp, #0xc]
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r1, [r1, #4]
	add r4, r4, r1
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, r0
	blt _022476D6
_022476EA:
	lsl r0, r0, #1
	add r0, r0, #2
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	str r0, [sp, #8]
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	mov r1, #1
	asr r0, r0, #2
	lsl r1, r1, #8
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0224770C
	bl sub_02022974
_0224770C:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	mov r7, #0
	lsr r6, r0, #0x18
	add r5, r7, #0
_02247720:
	lsl r4, r5, #2
	add r0, sp, #0x3c
	ldr r0, [r0, r4]
	ldr r1, [sp, #0x10]
	bl sub_020E1F6C
	ldr r0, [sp, #0x10]
	add r2, r0, #0
	mul r2, r5
	add r0, r1, r2
	add r1, r7, r0
	add r0, sp, #0x2c
	str r1, [r0, r4]
	ldr r0, [r0, r4]
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	cmp r6, #0
	ldrh r1, [r0, r1]
	add r0, sp, #0x1c
	str r1, [r0, r4]
	beq _02247756
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	sub r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02247756:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _02247720
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #5
	mul r0, r1
	ldr r2, [sp, #0x18]
	mov r3, #0
	add r2, r2, r0
	add r1, sp, #0x1c
_02247770:
	lsl r0, r3, #2
	ldr r0, [r1, r0]
	cmp r2, r0
	bne _0224777E
	mov r0, #1
	str r0, [sp, #4]
	b _02247788
_0224777E:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #4
	blo _02247770
_02247788:
	ldr r0, [sp, #0xc]
	bl sub_020181C4
	ldr r0, [sp, #4]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02247660

	thumb_func_start ov6_02247794
ov6_02247794: ; 0x02247794
	mov r2, #0x14
	strb r2, [r0]
	mov r0, #0xa
	strb r0, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02247794

	thumb_func_start ov6_022477A0
ov6_022477A0: ; 0x022477A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6a
	mov r1, #0
	mov r2, #4
	bl sub_02006ADC
	ldr r1, [r0, #0]
	str r1, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov6_022477A0

	thumb_func_start ov6_022477B8
ov6_022477B8: ; 0x022477B8
	cmp r1, #0
	beq _0224782A
	ldr r1, _0224782C ; =0x021BF6DC
	ldrb r1, [r1, #6]
	cmp r1, #5
	bhi _0224782A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022477D0: ; jump table
	.short _0224782A - _022477D0 - 2 ; case 0
	.short _022477DC - _022477D0 - 2 ; case 1
	.short _022477EC - _022477D0 - 2 ; case 2
	.short _022477FC - _022477D0 - 2 ; case 3
	.short _0224780C - _022477D0 - 2 ; case 4
	.short _0224781C - _022477D0 - 2 ; case 5
_022477DC:
	add r1, r0, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	add r0, #0xb0
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_022477EC:
	add r1, r0, #0
	add r1, #0xa4
	ldr r1, [r1, #0]
	add r0, #0xa8
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_022477FC:
	add r1, r0, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, #0xb8
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_0224780C:
	add r1, r0, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	add r0, #0xc0
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_0224781C:
	add r1, r0, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, #0xc8
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
_0224782A:
	bx lr
	; .align 2, 0
_0224782C: .word 0x021BF6DC
	thumb_func_end ov6_022477B8

	thumb_func_start ov6_02247830
ov6_02247830: ; 0x02247830
	push {r4, r5, r6, r7}
	add r3, r0, #0
	add r0, r2, #0
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r2, #0
	beq _0224788C
	add r6, r3, r1
	sub r7, r1, #1
_02247844:
	sub r1, r6, #1
	ldrb r2, [r1]
	mov r1, #1
	add r5, r7, #0
	and r1, r2
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r7, #0
	ble _02247872
_02247856:
	ldrb r1, [r3, r5]
	add r2, r3, r5
	sub r2, r2, #1
	asr r1, r1, #1
	strb r1, [r3, r5]
	ldrb r2, [r2]
	ldrb r1, [r3, r5]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r3, r5]
	sub r5, r5, #1
	cmp r5, #0
	bgt _02247856
_02247872:
	ldrb r1, [r3, r5]
	asr r1, r1, #1
	strb r1, [r3, r5]
	ldrb r2, [r3, r5]
	lsl r1, r4, #7
	orr r1, r2
	strb r1, [r3, r5]
	add r1, r0, #0
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r1, #0
	bne _02247844
_0224788C:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov6_02247830

	thumb_func_start ov6_02247890
ov6_02247890: ; 0x02247890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r2, #0
	str r1, [sp]
	add r7, r3, #0
	bl sub_02015004
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02015030
	add r1, sp, #4
	strh r0, [r1, #4]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02015030
	add r1, sp, #4
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_02015030
	add r1, sp, #4
	strh r0, [r1, #8]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x14]
	add r0, r5, #0
	bl sub_02015030
	add r1, sp, #4
	mov r2, #0
	strh r0, [r1, #0xa]
	add r3, sp, #8
	add r5, sp, #4
	add r7, r2, #0
_022478DE:
	ldrsh r0, [r3, r7]
	cmp r0, #0
	bge _022478EC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022478EC:
	cmp r2, #0
	ble _02247920
	mov r6, #1
	mvn r6, r6
	ldrsh r6, [r3, r6]
	cmp r0, r6
	blt _0224790C
	sub r0, r0, r6
	cmp r0, #0xff
	ble _02247908
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02247908:
	strb r0, [r5]
	b _02247932
_0224790C:
	sub r0, r6, r0
	sub r0, r4, r0
	cmp r0, #0xff
	ble _0224791C
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0224791C:
	strb r0, [r5]
	b _02247932
_02247920:
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0xff
	ble _02247930
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02247930:
	strb r0, [r1]
_02247932:
	add r2, r2, #1
	add r3, r3, #2
	add r5, r5, #1
	cmp r2, #4
	blt _022478DE
	add r0, sp, #4
	mov r1, #4
	mov r2, #5
	bl ov6_02247830
	mov r2, #0
	add r1, sp, #4
	add r4, sp, #4
	mov r3, #0xf0
_0224794E:
	ldrb r5, [r4, #3]
	ldrb r0, [r1]
	add r2, r2, #1
	asr r6, r5, #4
	and r5, r3
	orr r5, r6
	eor r0, r5
	strb r0, [r1]
	add r1, r1, #1
	cmp r2, #3
	blt _0224794E
	add r2, sp, #4
	ldrb r3, [r2, #3]
	mov r2, #0xf
	add r0, sp, #4
	and r2, r3
	lsl r2, r2, #0x18
	mov r1, #3
	lsr r2, r2, #0x18
	bl ov6_02247830
	add r1, sp, #4
	ldrb r5, [r1]
	mov r0, #0xf
	add r4, r5, #0
	and r4, r0
	cmp r4, #8
	blt _0224798C
	add sp, #0x10
	sub r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224798C:
	ldrb r0, [r1, #1]
	eor r0, r5
	strb r0, [r1, #1]
	ldrb r0, [r1, #2]
	eor r0, r5
	strb r0, [r1, #2]
	ldrb r2, [r1, #1]
	ldrb r3, [r1, #2]
	lsl r0, r2, #8
	add r6, r0, #0
	ldr r0, [sp]
	orr r6, r3
	cmp r0, r6
	bne _022479C6
	mov r0, #0xf0
	and r0, r5
	asr r0, r0, #4
	cmp r0, #6
	bne _022479C6
	ldrb r0, [r1, #3]
	add r1, r5, r2
	mul r1, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r0, r1
	bne _022479C6
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_022479C6:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02247890

	thumb_func_start ov6_022479D0
ov6_022479D0: ; 0x022479D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x24]
	add r7, r1, #0
	str r2, [sp, #8]
	add r5, r3, #0
	bl sub_02014FB0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025F24
	add r1, r0, #0
	str r5, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov6_02247890
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02014FF0
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_022479D0

	thumb_func_start ov6_02247A0C
ov6_02247A0C: ; 0x02247A0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	mov r1, #0
	mov r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r1, _02247A30 ; =ov6_02247A34
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_02247A30: .word ov6_02247A34
	thumb_func_end ov6_02247A0C

	thumb_func_start ov6_02247A34
ov6_02247A34: ; 0x02247A34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02247A56
	cmp r1, #1
	beq _02247A66
	cmp r1, #2
	beq _02247A7E
	b _02247A86
_02247A56:
	add r0, r5, #0
	bl ov6_02247A90
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02247A86
_02247A66:
	ldr r0, _02247A8C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02247A86
	ldr r0, [r4, #0]
	bl ov6_02247CC8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02247A86
_02247A7E:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02247A86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02247A8C: .word 0x021BF67C
	thumb_func_end ov6_02247A34

	thumb_func_start ov6_02247A90
ov6_02247A90: ; 0x02247A90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_0203D170
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203D174
	str r0, [sp, #0x1c]
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd0
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0xb
	bl sub_0200B358
	str r0, [r4, #0x14]
	mov r2, #3
	str r2, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r3, #0xb
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	str r3, [sp, #4]
	bl sub_0200DAA4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x64
	mov r1, #0xb
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r4, #0x14]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r6, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0x78
	bl ov6_02247CF4
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200B1EC
	mov r1, #0
	mov r2, #1
	mov r3, #0x78
	add r5, r0, #0
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r4, #0
	add r2, r5, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0
	ldr r5, _02247CBC ; =0x022496F4
	str r0, [sp, #0x24]
_02247B9A:
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0]
	bl sub_0200B1EC
	mov r3, #4
	mov r1, #0
	ldrsh r3, [r5, r3]
	add r2, r1, #0
	add r7, r0, #0
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _02247B9A
	mov r0, #0
	ldr r5, _02247CC0 ; =0x022496D4
	str r0, [sp, #0x14]
_02247BE2:
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0]
	bl sub_0200B1EC
	mov r3, #4
	ldrsh r3, [r5, r3]
	mov r1, #0
	mov r2, #2
	add r7, r0, #0
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02247BE2
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, _02247CC4 ; =0x0224971C
	str r0, [sp, #0x18]
_02247C2C:
	ldr r5, [sp, #0x18]
	mov r7, #0
_02247C30:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r2, r7, #0
	bl sub_0202F160
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0]
	bl sub_0200B1EC
	str r0, [sp, #0x2c]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x28]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x2c]
	add r1, r6, #0
	bl sub_0200C388
	mov r3, #4
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0201D738
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r7, r7, #1
	add r5, #8
	cmp r7, #4
	blt _02247C30
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _02247C2C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A954
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247CBC: .word 0x022496F4
_02247CC0: .word 0x022496D4
_02247CC4: .word 0x0224971C
	thumb_func_end ov6_02247A90

	thumb_func_start ov6_02247CC8
ov6_02247CC8: ; 0x02247CC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201ACF4
	add r0, r4, #0
	bl sub_0201A8FC
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02247CC8

	thumb_func_start ov6_02247CF4
ov6_02247CF4: ; 0x02247CF4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r4, r3, #0
	cmp r5, #0
	bne _02247D04
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02247D04:
	add r0, r1, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02002D7C
	cmp r5, #1
	beq _02247D18
	cmp r5, #2
	beq _02247D22
	b _02247D26
_02247D18:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	sub r0, r4, r0
	pop {r4, r5, r6, pc}
_02247D22:
	sub r0, r4, r0
	pop {r4, r5, r6, pc}
_02247D26:
	bl sub_02022974
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02247CF4

	thumb_func_start ov6_02247D30
ov6_02247D30: ; 0x02247D30
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	ldr r1, _02247DA4 ; =0x000001FB
	add r2, sp, #4
	add r3, sp, #0
	add r5, r0, #0
	bl sub_020552B4
	cmp r0, #0
	beq _02247D9C
	mov r0, #4
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	strb r6, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #0x14
	bl sub_020553A4
	ldr r1, [sp, #4]
	add r0, sp, #8
	bl FUN_021E1894
	add r3, sp, #8
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r5, #0x10]
	ldr r1, _02247DA8 ; =ov6_02247DAC
	bl sub_02050944
	add sp, #0x20
	pop {r4, r5, r6, pc}
_02247D9C:
	bl sub_02022974
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247DA4: .word 0x000001FB
_02247DA8: .word ov6_02247DAC
	thumb_func_end ov6_02247D30

	thumb_func_start ov6_02247DAC
ov6_02247DAC: ; 0x02247DAC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	cmp r1, #5
	bls _02247DC8
	b _02247F46
_02247DC8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247DD4: ; jump table
	.short _02247DE0 - _02247DD4 - 2 ; case 0
	.short _02247E3E - _02247DD4 - 2 ; case 1
	.short _02247EBE - _02247DD4 - 2 ; case 2
	.short _02247EEA - _02247DD4 - 2 ; case 3
	.short _02247EFC - _02247DD4 - 2 ; case 4
	.short _02247F3C - _02247DD4 - 2 ; case 5
_02247DE0:
	ldr r0, _02247F4C ; =0x00000205
	ldr r1, [r6, #0x30]
	bl FUN_021EF9E8
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _02247E12
	add r2, r0, #0
	add r2, #8
	beq _02247E06
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02247E06
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02247E08
_02247E06:
	mov r1, #0
_02247E08:
	cmp r1, #0
	beq _02247E12
	ldr r1, [r1, #0]
	add r5, r0, r1
	b _02247E14
_02247E12:
	mov r5, #0
_02247E14:
	ldr r0, [r6, #0x30]
	bl FUN_021EFAA0
	mov r1, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, _02247F4C ; =0x00000205
	mov r2, #0x10
	bl FUN_021D41C8
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247E3E:
	add r0, sp, #0x18
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldrb r5, [r4, #0xd]
	mov r1, #0xc
	ldr r3, [r4, #0]
	add r2, r5, #0
	ldr r5, _02247F50 ; =0x022498E4
	mul r2, r1
	ldr r2, [r5, r2]
	add r2, r3, r2
	str r2, [sp, #0x24]
	ldrb r5, [r4, #0xd]
	ldr r3, [r4, #4]
	add r2, r5, #0
	ldr r5, _02247F54 ; =0x022498E8
	mul r2, r1
	ldr r2, [r5, r2]
	add r2, r3, r2
	str r2, [sp, #0x28]
	ldrb r3, [r4, #0xd]
	ldr r2, [r4, #8]
	add r5, r3, #0
	mul r5, r1
	ldr r1, _02247F58 ; =0x022498EC
	add r3, sp, #0x24
	ldr r1, [r1, r5]
	add r1, r2, r1
	str r1, [sp, #0x2c]
	str r0, [sp]
	ldr r0, [r6, #0x50]
	ldr r2, _02247F4C ; =0x00000205
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl FUN_021E19CC
	ldrb r1, [r4, #0xd]
	add r1, r4, r1
	strb r0, [r1, #0x10]
	ldrb r1, [r4, #0xd]
	add r0, r6, #0
	add r0, #0xa4
	add r1, r4, r1
	ldrb r1, [r1, #0x10]
	ldr r0, [r0, #0]
	bl FUN_021E18E0
	bl FUN_021E18BC
	add r3, r0, #0
	ldrb r2, [r4, #0xd]
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl FUN_021D4220
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EBE:
	ldrb r0, [r4, #0xe]
	cmp r0, #0xf
	bhs _02247ECA
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02247F46
_02247ECA:
	mov r0, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r1, r0
	bhs _02247EE2
	mov r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EE2:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EEA:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	mov r2, #0
	bl FUN_021D4250
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247EFC:
	ldr r0, [r6, #0x54]
	mov r1, #0x10
	bl FUN_021D42F0
	cmp r0, #0
	beq _02247F46
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #0x10
	bl FUN_021D42B0
	ldrb r0, [r4, #0xc]
	mov r5, #0
	cmp r0, #0
	bls _02247F34
_02247F1A:
	add r0, r4, r5
	add r1, r6, #0
	add r1, #0xa4
	ldrb r0, [r0, #0x10]
	ldr r1, [r1, #0]
	bl FUN_021E1674
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	blo _02247F1A
_02247F34:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	b _02247F46
_02247F3C:
	bl sub_020181C4
	add sp, #0x30
	mov r0, #1
	pop {r4, r5, r6, pc}
_02247F46:
	mov r0, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247F4C: .word 0x00000205
_02247F50: .word 0x022498E4
_02247F54: .word 0x022498E8
_02247F58: .word 0x022498EC
	thumb_func_end ov6_02247DAC

	thumb_func_start ov6_02247F5C
ov6_02247F5C: ; 0x02247F5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206ADEC
	cmp r0, #0
	bne _02247F8C
	mov r0, #0x1f
	ldr r2, [r4, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl FUN_021D3DE4
	add r4, r0, #0
	mov r1, #1
	bl FUN_021D3F08
	add r0, r4, #0
	mov r1, #1
	bl FUN_021D3E40
	pop {r4, pc}
_02247F8C:
	mov r0, #0x1f
	ldr r2, [r4, #0x50]
	lsl r0, r0, #4
	mov r1, #0
	bl FUN_021D3DE4
	mov r1, #1
	bl FUN_021D3E40
	mov r0, #0x1f
	ldr r2, [r4, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl FUN_021D3DE4
	add r4, r0, #0
	bl FUN_021D3E9C
	add r0, r4, #0
	mov r1, #1
	bl FUN_021D3E40
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02247F5C

	thumb_func_start ov6_02247FBC
ov6_02247FBC: ; 0x02247FBC
	ldr r3, _02247FC8 ; =sub_02050944
	ldr r0, [r0, #0x10]
	ldr r1, _02247FCC ; =ov6_02247FD0
	mov r2, #0
	bx r3
	nop
_02247FC8: .word sub_02050944
_02247FCC: .word ov6_02247FD0
	thumb_func_end ov6_02247FBC

	thumb_func_start ov6_02247FD0
ov6_02247FD0: ; 0x02247FD0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02247FF2
	cmp r0, #1
	beq _02248018
	cmp r0, #2
	beq _02248032
	b _0224804A
_02247FF2:
	mov r0, #0x1f
	ldr r2, [r5, #0x50]
	lsl r0, r0, #4
	mov r1, #0
	bl FUN_021D3DE4
	add r5, r0, #0
	bl FUN_021D3E4C
	cmp r0, #0
	beq _0224804A
	add r0, r5, #0
	mov r1, #1
	bl FUN_021D3E40
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224804A
_02248018:
	mov r0, #0x1f
	ldr r2, [r5, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl FUN_021D3DE4
	mov r1, #0
	bl FUN_021D3E40
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224804A
_02248032:
	mov r0, #0x1f
	ldr r2, [r5, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl FUN_021D3DE4
	bl FUN_021D3F70
	cmp r0, #0
	beq _0224804A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224804A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02247FD0

	thumb_func_start ov6_02248050
ov6_02248050: ; 0x02248050
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	bl sub_0206251C
	add r6, r0, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r6, #0
	bl sub_02063020
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02063040
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206298C
	cmp r0, #3
	bhi _022480A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248088: ; jump table
	.short _02248090 - _02248088 - 2 ; case 0
	.short _02248094 - _02248088 - 2 ; case 1
	.short _02248098 - _02248088 - 2 ; case 2
	.short _0224809C - _02248088 - 2 ; case 3
_02248090:
	sub r4, r4, #1
	b _022480A4
_02248094:
	add r4, r4, #1
	b _022480A4
_02248098:
	sub r5, r5, #1
	b _022480A4
_0224809C:
	add r5, r5, #1
	b _022480A4
_022480A0:
	bl sub_02022974
_022480A4:
	mov r3, #2
	lsl r1, r5, #0x10
	lsl r3, r3, #0xe
	ldr r2, [sp, #4]
	lsl r4, r4, #0x10
	add r1, r1, r3
	add r0, r7, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248050

	thumb_func_start ov6_022480BC
ov6_022480BC: ; 0x022480BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r6, r0, #0
	add r1, sp, #0
	bl sub_0205EAEC
	add r0, r6, #0
	bl sub_0205EABC
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205EAC8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EA78
	cmp r0, #3
	bhi _02248108
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022480F0: ; jump table
	.short _022480F8 - _022480F0 - 2 ; case 0
	.short _022480FC - _022480F0 - 2 ; case 1
	.short _02248100 - _022480F0 - 2 ; case 2
	.short _02248104 - _022480F0 - 2 ; case 3
_022480F8:
	sub r4, r4, #1
	b _0224810C
_022480FC:
	add r4, r4, #1
	b _0224810C
_02248100:
	sub r5, r5, #1
	b _0224810C
_02248104:
	add r5, r5, #1
	b _0224810C
_02248108:
	bl sub_02022974
_0224810C:
	mov r3, #2
	lsl r1, r5, #0x10
	lsl r3, r3, #0xe
	ldr r2, [sp, #4]
	lsl r4, r4, #0x10
	add r1, r1, r3
	add r0, r7, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_022480BC

	thumb_func_start ov6_02248124
ov6_02248124: ; 0x02248124
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_0205EAEC
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov6_02248124

	thumb_func_start ov6_02248140
ov6_02248140: ; 0x02248140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r4, r2, #0
	add r6, r0, #0
	mov r1, #0
	mov r2, #0xdc
	str r3, [sp, #0xc]
	ldr r7, [sp, #0x2c]
	bl sub_020D5124
	add r0, r6, #0
	ldr r1, [sp, #8]
	add r0, #0x78
	add r2, r4, #0
	mov r3, #4
	bl sub_020170D8
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x78
	bl sub_02017258
	add r0, r6, #0
	ldr r1, [sp, #0x28]
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	bls _022481B8
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x78
	add r5, #0x88
	str r0, [sp, #0x10]
_0224818E:
	ldr r3, [sp, #0xc]
	mov r0, #4
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, r3, r4
	str r7, [sp, #4]
	bl sub_02017164
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201727C
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _0224818E
_022481B8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248140

	thumb_func_start ov6_022481BC
ov6_022481BC: ; 0x022481BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x78
	add r7, r1, #0
	bl sub_02017110
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	bls _022481EE
	add r5, r6, #0
	add r5, #0x88
_022481D8:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020171A0
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _022481D8
_022481EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022481BC

	thumb_func_start ov6_022481F0
ov6_022481F0: ; 0x022481F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	bls _0224821E
	add r5, r7, #0
	add r5, #0x88
_02248204:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02017204
	and r6, r0
	add r0, r7, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _02248204
_0224821E:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022481F0

	thumb_func_start ov6_02248224
ov6_02248224: ; 0x02248224
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	bls _02248250
	add r5, r6, #0
	mov r7, #1
	add r5, #0x88
	lsl r7, r7, #0xc
_0224823A:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020171CC
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blo _0224823A
_02248250:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02248224

	thumb_func_start ov6_02248254
ov6_02248254: ; 0x02248254
	ldr r3, _02248258 ; =sub_02017294
	bx r3
	; .align 2, 0
_02248258: .word sub_02017294
	thumb_func_end ov6_02248254

	thumb_func_start ov6_0224825C
ov6_0224825C: ; 0x0224825C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r2, #3
	add r0, r4, #0
	str r2, [sp]
	add r0, #0xdc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl ov6_02248140
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_022480BC
	ldr r0, _022482B8 ; =0x0000064B
	bl sub_02005748
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022482B8: .word 0x0000064B
	thumb_func_end ov6_0224825C

	thumb_func_start ov6_022482BC
ov6_022482BC: ; 0x022482BC
	ldr r3, _022482C8 ; =ov6_022481BC
	add r0, r2, #0
	add r2, #0xdc
	add r1, r2, #0
	bx r3
	nop
_022482C8: .word ov6_022481BC
	thumb_func_end ov6_022482BC

	thumb_func_start ov6_022482CC
ov6_022482CC: ; 0x022482CC
	push {r4, lr}
	add r4, r2, #0
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022482DE
	cmp r0, #1
	pop {r4, pc}
_022482DE:
	add r0, r4, #0
	bl ov6_022481F0
	cmp r0, #1
	bne _022482FC
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r4, #0xec
	add r0, r0, #1
	str r0, [r4, #0]
_022482FC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022482CC

	thumb_func_start ov6_02248300
ov6_02248300: ; 0x02248300
	ldr r3, _02248308 ; =ov6_02248254
	add r0, r2, #0
	bx r3
	nop
_02248308: .word ov6_02248254
	thumb_func_end ov6_02248300

	thumb_func_start ov6_0224830C
ov6_0224830C: ; 0x0224830C
	ldr r0, [r0, #4]
	ldr r3, _02248318 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0224831C ; =0x02249804
	bx r3
	nop
_02248318: .word FUN_021D1B6C
_0224831C: .word 0x02249804
	thumb_func_end ov6_0224830C

	thumb_func_start ov6_02248320
ov6_02248320: ; 0x02248320
	ldr r3, _02248324 ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_02248324: .word FUN_021D1BEC
	thumb_func_end ov6_02248320

	thumb_func_start ov6_02248328
ov6_02248328: ; 0x02248328
	push {r3, lr}
	bl FUN_021D1C2C
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0224833A
	mov r0, #1
	pop {r3, pc}
_0224833A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02248328

	thumb_func_start ov6_02248340
ov6_02248340: ; 0x02248340
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r3, #4
	add r0, r4, #0
	str r3, [sp]
	add r0, #0xdc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl ov6_02248140
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_022480BC
	ldr r0, _0224839C ; =0x0000064A
	bl sub_02005748
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0224839C: .word 0x0000064A
	thumb_func_end ov6_02248340

	thumb_func_start ov6_022483A0
ov6_022483A0: ; 0x022483A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r3, #4
	add r0, r4, #0
	str r3, [sp]
	add r0, #0xdc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl ov6_02248140
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, r4, #0
	bl ov6_02248050
	ldr r0, _022483FC ; =0x0000064A
	bl sub_02005748
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022483FC: .word 0x0000064A
	thumb_func_end ov6_022483A0

	thumb_func_start ov6_02248400
ov6_02248400: ; 0x02248400
	ldr r3, _0224840C ; =ov6_022481BC
	add r0, r2, #0
	add r2, #0xdc
	add r1, r2, #0
	bx r3
	nop
_0224840C: .word ov6_022481BC
	thumb_func_end ov6_02248400

	thumb_func_start ov6_02248410
ov6_02248410: ; 0x02248410
	push {r4, lr}
	add r4, r2, #0
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02248422
	cmp r0, #1
	pop {r4, pc}
_02248422:
	add r0, r4, #0
	bl ov6_022481F0
	cmp r0, #1
	bne _02248440
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r4, #0xec
	add r0, r0, #1
	str r0, [r4, #0]
_02248440:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02248410

	thumb_func_start ov6_02248444
ov6_02248444: ; 0x02248444
	ldr r3, _0224844C ; =ov6_02248254
	add r0, r2, #0
	bx r3
	nop
_0224844C: .word ov6_02248254
	thumb_func_end ov6_02248444

	thumb_func_start ov6_02248450
ov6_02248450: ; 0x02248450
	ldr r0, [r0, #4]
	ldr r3, _0224845C ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _02248460 ; =0x022497EC
	bx r3
	nop
_0224845C: .word FUN_021D1B6C
_02248460: .word 0x022497EC
	thumb_func_end ov6_02248450

	thumb_func_start ov6_02248464
ov6_02248464: ; 0x02248464
	ldr r0, [r0, #4]
	ldr r3, _02248470 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _02248474 ; =0x022497D4
	bx r3
	nop
_02248470: .word FUN_021D1B6C
_02248474: .word 0x022497D4
	thumb_func_end ov6_02248464

	thumb_func_start ov6_02248478
ov6_02248478: ; 0x02248478
	ldr r3, _0224847C ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_0224847C: .word FUN_021D1BEC
	thumb_func_end ov6_02248478

	thumb_func_start ov6_02248480
ov6_02248480: ; 0x02248480
	push {r3, lr}
	bl FUN_021D1C2C
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02248492
	mov r0, #1
	pop {r3, pc}
_02248492:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02248480

	thumb_func_start ov6_02248498
ov6_02248498: ; 0x02248498
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	mov r2, #0x73
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #4
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xe
	mov r3, #0xc
	bl ov6_02248140
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_02248124
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, _022484FC ; =0x0000064D
	bl sub_02005748
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022484FC: .word 0x0000064D
	thumb_func_end ov6_02248498

	thumb_func_start ov6_02248500
ov6_02248500: ; 0x02248500
	push {r4, r5, r6, lr}
	mov r0, #0x6e
	add r5, r2, #0
	lsl r0, r0, #2
	mov r4, #0
	add r6, r5, r0
_0224850C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_022481BC
	add r4, r4, #1
	add r5, #0xdc
	cmp r4, #2
	blt _0224850C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248500

	thumb_func_start ov6_02248520
ov6_02248520: ; 0x02248520
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r0, #0x72
	add r4, r2, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r5, r1, #0
	cmp r0, #0
	beq _0224853E
	cmp r0, #1
	beq _02248586
	cmp r0, #2
	beq _022485C4
	add sp, #8
	pop {r4, r5, r6, pc}
_0224853E:
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xdc
	add r1, r6, #0
	mov r2, #0xb
	mov r3, #9
	bl ov6_02248140
	add r0, r6, #0
	bl sub_02006CA8
	add r1, r4, #0
	ldr r0, [r5, #0x3c]
	add r1, #0xdc
	bl ov6_02248124
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #0
	bl sub_02017348
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02248586:
	add r0, r4, #0
	bl ov6_022481F0
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_02248124
	cmp r6, #1
	bne _022485D6
	add r0, r4, #0
	add r0, #0xdc
	mov r1, #1
	bl sub_02017348
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add r1, r4, #0
	ldr r0, [r5, #0x3c]
	add r1, #0xdc
	bl ov6_02248124
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022485C4:
	add r0, r4, #0
	add r0, #0xdc
	bl ov6_02248224
	add r4, #0xdc
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ov6_02248124
_022485D6:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248520

	thumb_func_start ov6_022485DC
ov6_022485DC: ; 0x022485DC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r4, #0
_022485E2:
	add r0, r5, #0
	bl ov6_02248254
	add r4, r4, #1
	add r5, #0xdc
	cmp r4, #2
	blt _022485E2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022485DC

	thumb_func_start ov6_022485F4
ov6_022485F4: ; 0x022485F4
	ldr r0, [r0, #4]
	ldr r3, _02248600 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _02248604 ; =0x022497BC
	bx r3
	nop
_02248600: .word FUN_021D1B6C
_02248604: .word 0x022497BC
	thumb_func_end ov6_022485F4

	thumb_func_start ov6_02248608
ov6_02248608: ; 0x02248608
	ldr r3, _0224860C ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_0224860C: .word FUN_021D1BEC
	thumb_func_end ov6_02248608

	thumb_func_start ov6_02248610
ov6_02248610: ; 0x02248610
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	cmp r0, #0
	beq _02248628
	bl sub_02022974
_02248628:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0205EAEC
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r2, r4
	add r3, r3, r5
	bl sub_02017350
	add r0, r7, #0
	mov r4, #0
	add r5, r7, #0
	mov r1, #1
	add r0, #0xc8
	str r1, [r0, #0]
	add r5, #0x78
	add r6, r4, #0
_02248650:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02017240
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _02248650
	add r0, r7, #0
	mov r1, #1
	bl sub_02017348
	ldr r0, _02248674 ; =0x00000627
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02248674: .word 0x00000627
	thumb_func_end ov6_02248610

	thumb_func_start ov6_02248678
ov6_02248678: ; 0x02248678
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022486B2
	ldr r5, [sp]
	mov r4, #1
	mov r6, #0
	add r5, #0x78
	lsl r7, r4, #0xc
_0224868E:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017204
	add r6, r6, #1
	and r4, r0
	add r5, #0x14
	cmp r6, #4
	blt _0224868E
	cmp r4, #1
	bne _022486B2
	ldr r0, [sp]
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, [sp]
	bl sub_02017348
_022486B2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248678

	thumb_func_start ov6_022486B4
ov6_022486B4: ; 0x022486B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	mov r2, #0xcc
	add r7, r0, #0
	add r5, r3, #0
	bl sub_020D5124
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02017258
	add r4, r7, #0
	mov r6, #0
	add r4, #0x78
_022486D6:
	ldr r1, [sp]
	ldr r2, [r5, #0]
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl sub_02017190
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0201727C
	add r6, r6, #1
	add r5, r5, #4
	add r4, #0x14
	cmp r6, #4
	blt _022486D6
	add r0, r7, #0
	mov r1, #0
	bl sub_02017348
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022486B4

	thumb_func_start ov6_02248700
ov6_02248700: ; 0x02248700
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	add r6, r1, #0
	mov r4, #0
	add r5, #0x78
_0224870C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _0224870C
	add r0, r7, #0
	mov r1, #0
	mov r2, #0xcc
	bl sub_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248700

	thumb_func_start ov6_02248728
ov6_02248728: ; 0x02248728
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xce
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EAEC
	mov r1, #0xcf
	lsl r1, r1, #4
	ldr r2, [sp]
	ldr r0, [r4, r1]
	sub r0, r2, r0
	bne _02248770
	add r0, r1, #4
	ldr r2, [sp, #4]
	ldr r0, [r4, r0]
	cmp r2, r0
	bge _02248770
	add r0, r1, #0
	add r0, #8
	ldr r2, [sp, #8]
	ldr r0, [r4, r0]
	cmp r2, r0
	ble _02248770
	add r0, r1, #0
	mov r2, #0
	sub r0, #8
	str r2, [r4, r0]
	mov r2, #2
	lsl r2, r2, #0x10
	sub r0, r1, #4
	str r2, [r4, r0]
	b _0224877E
_02248770:
	mov r1, #2
	ldr r0, _02248794 ; =0x00000CE8
	lsl r1, r1, #0x10
	str r1, [r4, r0]
	lsr r1, r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_0224877E:
	mov r0, #0xcf
	lsl r0, r0, #4
	add r3, sp, #0
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02248794: .word 0x00000CE8
	thumb_func_end ov6_02248728

	thumb_func_start ov6_02248798
ov6_02248798: ; 0x02248798
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02248728
	mov r2, #0
	add r1, r4, #0
_022487A4:
	add r0, r1, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022487D0
	add r1, r4, #0
	mov r0, #0xcc
	mov r3, #0xce
	add r1, #0x10
	mul r0, r2
	lsl r3, r3, #4
	add r0, r1, r0
	ldr r1, [r4, r3]
	add r2, r3, #0
	add r2, #8
	add r3, #0xc
	ldr r1, [r1, #0x3c]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov6_02248610
	pop {r4, pc}
_022487D0:
	add r2, r2, #1
	add r1, #0xcc
	cmp r2, #0x10
	blt _022487A4
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02248798

	thumb_func_start ov6_022487E0
ov6_022487E0: ; 0x022487E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x10
_022487E8:
	add r0, r5, #0
	bl ov6_02248678
	add r4, r4, #1
	add r5, #0xcc
	cmp r4, #0x10
	blt _022487E8
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022487E0

	thumb_func_start ov6_022487F8
ov6_022487F8: ; 0x022487F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #0xd1
	str r1, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	ldr r0, _02248894 ; =0x00000CFC
	mov r1, #4
	add r0, r5, r0
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x8d
	mov r1, #4
	bl sub_02006C24
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #8
	mov r3, #4
	bl sub_020170D8
	mov r4, #0
	add r6, r5, #0
_02248832:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #4
	bl sub_0200723C
	mov r1, #0xcd
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _02248832
	add r4, r5, #0
	mov r6, #0
	add r4, #0x10
_02248856:
	ldr r2, _02248894 ; =0x00000CFC
	mov r3, #0xcd
	lsl r3, r3, #4
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, r2
	add r3, r5, r3
	bl ov6_022486B4
	add r6, r6, #1
	add r4, #0xcc
	cmp r6, #0x10
	blt _02248856
	mov r1, #0xce
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r1, #0x10
	ldr r0, [r0, #0x3c]
	add r1, r5, r1
	bl sub_0205EAEC
	ldr r0, _02248898 ; =0x00000D0C
	mov r1, #0
	str r1, [r5, r0]
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248894: .word 0x00000CFC
_02248898: .word 0x00000D0C
	thumb_func_end ov6_022487F8

	thumb_func_start ov6_0224889C
ov6_0224889C: ; 0x0224889C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r5, #0
	ldr r7, _022488D4 ; =0x00000CFC
	mov r6, #0
	add r4, #0x10
_022488A8:
	add r0, r4, #0
	add r1, r5, r7
	bl ov6_02248700
	add r6, r6, #1
	add r4, #0xcc
	cmp r6, #0x10
	blt _022488A8
	add r0, r5, #0
	bl sub_02017110
	mov r6, #0xcd
	mov r4, #0
	lsl r6, r6, #4
_022488C4:
	ldr r0, [r5, r6]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022488C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022488D4: .word 0x00000CFC
	thumb_func_end ov6_0224889C

	thumb_func_start ov6_022488D8
ov6_022488D8: ; 0x022488D8
	push {r4, lr}
	ldr r1, _02248910 ; =0x00000D0C
	add r4, r2, #0
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0224890E
	add r0, r1, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #0
	sub r0, #0x28
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #0
	bge _02248908
	mov r0, #4
	sub r1, #0x28
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov6_02248798
_02248908:
	add r0, r4, #0
	bl ov6_022487E0
_0224890E:
	pop {r4, pc}
	; .align 2, 0
_02248910: .word 0x00000D0C
	thumb_func_end ov6_022488D8

	thumb_func_start ov6_02248914
ov6_02248914: ; 0x02248914
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r4, #0
	add r5, #0x10
_0224891C:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0xcc
	cmp r4, #0x10
	blt _0224891C
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02248914

	thumb_func_start ov6_0224892C
ov6_0224892C: ; 0x0224892C
	ldr r0, [r0, #4]
	ldr r3, _02248938 ; =FUN_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0224893C ; =0x0224981C
	bx r3
	nop
_02248938: .word FUN_021D1B6C
_0224893C: .word 0x0224981C
	thumb_func_end ov6_0224892C

	thumb_func_start ov6_02248940
ov6_02248940: ; 0x02248940
	ldr r3, _02248944 ; =FUN_021D1BEC
	bx r3
	; .align 2, 0
_02248944: .word FUN_021D1BEC
	thumb_func_end ov6_02248940

	thumb_func_start ov6_02248948
ov6_02248948: ; 0x02248948
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224895A
	cmp r0, #1
	beq _02248972
	pop {r3, r4, r5, pc}
_0224895A:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _02248994 ; =0x0224984C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _02248990
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248972:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _02248998 ; =0x02249834
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #1
	strh r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02248990:
	pop {r3, r4, r5, pc}
	nop
_02248994: .word 0x0224984C
_02248998: .word 0x02249834
	thumb_func_end ov6_02248948

	thumb_func_start ov6_0224899C
ov6_0224899C: ; 0x0224899C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018144
	add r6, r0, #0
	add r2, r6, #0
	mov r1, #0x10
	mov r0, #0
_022489B4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022489B4
	ldr r1, _022489DC ; =0x02249840
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r7, #0
	blx r1
	str r0, [r6, #0]
	str r5, [r6, #4]
	ldr r0, _022489E0 ; =ov6_02248948
	str r4, [r6, #0xc]
	mov r2, #0
	add r1, r6, #0
	strh r2, [r5]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022489DC: .word 0x02249840
_022489E0: .word ov6_02248948
	thumb_func_end ov6_0224899C

	thumb_func_start ov6_022489E4
ov6_022489E4: ; 0x022489E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x61
	add r6, r0, #0
	add r4, r3, #0
	lsl r1, r1, #2
	add r0, r2, #0
	add r2, r4, r1
	lsl r1, r6, #8
	add r1, r2, r1
	add r2, r5, #0
	bl sub_020C4DB0
	ldr r2, _02248A5C ; =0x00000584
	ldrb r0, [r4, r2]
	add r0, r0, #1
	strb r0, [r4, r2]
	ldr r0, _02248A60 ; =0x00000127
	ldrb r2, [r4, r2]
	ldrb r1, [r4, r0]
	cmp r2, r1
	blo _02248A56
	mov r3, #0
	cmp r1, #0
	ble _02248A32
	add r0, #0x5d
	add r5, r4, r0
	mov r0, #1
	lsl r0, r0, #8
	add r2, r0, #0
	add r6, sp, #4
	add r2, #0x27
_02248A26:
	stmia r6!, {r5}
	ldrb r1, [r4, r2]
	add r3, r3, #1
	add r5, r5, r0
	cmp r3, r1
	blt _02248A26
_02248A32:
	add r0, sp, #4
	add r2, sp, #0
	bl ov6_02248A94
	mov r1, #0x47
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, sp, #0
	ldrb r2, [r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	lsl r2, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r2]
	ldrb r2, [r0, #2]
	add r0, r1, #6
	strb r2, [r4, r0]
_02248A56:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02248A5C: .word 0x00000584
_02248A60: .word 0x00000127
	thumb_func_end ov6_022489E4

	thumb_func_start ov6_02248A64
ov6_02248A64: ; 0x02248A64
	push {r3, lr}
	ldr r1, _02248A90 ; =0x00000125
	add r3, sp, #0
	ldrb r2, [r0, r1]
	strb r2, [r3]
	sub r2, r1, #2
	ldrb r2, [r0, r2]
	sub r1, r1, #3
	strb r2, [r3, #1]
	ldrb r0, [r0, r1]
	add r1, sp, #0
	mov r2, #4
	strb r0, [r3, #2]
	mov r0, #0x1a
	bl sub_020359DC
	cmp r0, #1
	bne _02248A8C
	mov r0, #1
	pop {r3, pc}
_02248A8C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02248A90: .word 0x00000125
	thumb_func_end ov6_02248A64

	thumb_func_start ov6_02248A94
ov6_02248A94: ; 0x02248A94
	push {r4, r5, r6, r7}
	mov r5, #0
	add r4, r5, #0
	cmp r1, #0
	ble _02248AB8
	add r6, r0, #0
_02248AA0:
	lsl r3, r5, #2
	ldr r3, [r0, r3]
	ldr r7, [r6, #0]
	ldrb r3, [r3]
	ldrb r7, [r7]
	cmp r3, r7
	bhs _02248AB0
	add r5, r4, #0
_02248AB0:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r1
	blt _02248AA0
_02248AB8:
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02248A94

	thumb_func_start ov6_02248AC8
ov6_02248AC8: ; 0x02248AC8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02073C70
	add r2, r0, #0
	ldrb r1, [r5, r2]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_020C4DB0
	ldr r0, _02248AEC ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_02248AEC: .word 0x00000584
	thumb_func_end ov6_02248AC8

	thumb_func_start ov6_02248AF0
ov6_02248AF0: ; 0x02248AF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02073C70
	add r4, r0, #0
	mov r0, #0x14
	add r1, r4, #1
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C4DB0
	mov r0, #0x1b
	add r1, r5, #0
	add r2, r4, #1
	strb r6, [r5, r4]
	bl sub_020359DC
	cmp r0, #1
	bne _02248B24
	mov r4, #1
	b _02248B26
_02248B24:
	mov r4, #0
_02248B26:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248AF0

	thumb_func_start ov6_02248B30
ov6_02248B30: ; 0x02248B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02073C70
	mov r7, #0
	ldr r4, [sp, #4]
	add r6, r0, #0
	add r5, r7, #0
_02248B44:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	add r0, r0, r5
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, r6
	cmp r7, #4
	blt _02248B44
	ldr r1, _02248B6C ; =0x00000584
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #4]
	strb r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248B6C: .word 0x00000584
	thumb_func_end ov6_02248B30

	thumb_func_start ov6_02248B70
ov6_02248B70: ; 0x02248B70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02073C70
	add r6, r0, #0
	lsl r0, r6, #2
	str r0, [sp]
	ldr r0, _02248BBC ; =0x00000585
	mov r7, #0
	add r0, r4, r0
	str r0, [sp, #4]
	add r4, r7, #0
_02248B8C:
	ldr r1, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r1, r4
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, r6
	add r5, r5, #4
	cmp r7, #4
	blt _02248B8C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	mov r0, #0x1c
	bl sub_0203597C
	cmp r0, #1
	bne _02248BB6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248BB6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248BBC: .word 0x00000585
	thumb_func_end ov6_02248B70

	thumb_func_start ov6_02248BC0
ov6_02248BC0: ; 0x02248BC0
	push {r3, r4, r5, lr}
	add r0, r2, #0
	add r2, #0x30
	ldrb r1, [r2]
	add r4, r3, #0
	add r5, r4, #0
	mov r2, #0x30
	add r3, r1, #0
	add r5, #0x10
	mul r3, r2
	add r1, r5, r3
	bl sub_020C4DB0
	ldr r0, _02248BE4 ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248BE4: .word 0x00000584
	thumb_func_end ov6_02248BC0

	thumb_func_start ov6_02248BE8
ov6_02248BE8: ; 0x02248BE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0x14
	mov r1, #0x31
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x30
	bl sub_020C4DB0
	add r0, r4, #0
	add r0, #0x30
	strb r5, [r0]
	mov r0, #0x1d
	add r1, r4, #0
	mov r2, #0x31
	bl sub_020359DC
	cmp r0, #1
	bne _02248C1A
	mov r5, #1
	b _02248C1C
_02248C1A:
	mov r5, #0
_02248C1C:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248BE8

	thumb_func_start ov6_02248C28
ov6_02248C28: ; 0x02248C28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r2, #0
	str r3, [sp]
	mov r4, #0
	add r5, #0xd0
	mov r7, #8
_02248C36:
	lsl r0, r4, #3
	add r0, r6, r0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _02248C36
	ldrb r2, [r6, #0x18]
	ldr r1, _02248C60 ; =0x0000011E
	ldr r0, [sp]
	strb r2, [r0, r1]
	ldr r1, _02248C64 ; =0x00000584
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248C60: .word 0x0000011E
_02248C64: .word 0x00000584
	thumb_func_end ov6_02248C28

	thumb_func_start ov6_02248C68
ov6_02248C68: ; 0x02248C68
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x14
	mov r1, #0x19
	add r5, r2, #0
	bl sub_02018144
	add r6, r0, #0
	mov r4, #0
	mov r7, #8
_02248C7C:
	lsl r1, r4, #3
	add r0, r5, #0
	add r1, r6, r1
	add r2, r7, #0
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _02248C7C
	ldr r1, _02248CB8 ; =0x0000011E
	ldr r0, [sp]
	mov r2, #0x19
	ldrb r0, [r0, r1]
	add r1, r6, #0
	strb r0, [r6, #0x18]
	mov r0, #0x1e
	bl sub_020359DC
	cmp r0, #1
	bne _02248CAA
	mov r4, #1
	b _02248CAC
_02248CAA:
	mov r4, #0
_02248CAC:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248CB8: .word 0x0000011E
	thumb_func_end ov6_02248C68

	thumb_func_start ov6_02248CBC
ov6_02248CBC: ; 0x02248CBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	ldrb r0, [r5]
	add r6, r3, #0
	add r4, r6, #0
	add r4, #0xe8
	lsl r7, r0, #2
	ldr r0, [r4, r7]
	bl sub_020237E8
	ldr r0, [r4, r7]
	add r1, r5, #4
	bl sub_02023D28
	ldr r0, _02248CE4 ; =0x00000584
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248CE4: .word 0x00000584
	thumb_func_end ov6_02248CBC

	thumb_func_start ov6_02248CE8
ov6_02248CE8: ; 0x02248CE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r0, r2, #0
	add r1, sp, #0
	mov r2, #8
	bl sub_02023DF0
	mov r0, #0x14
	add r1, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #4
	mov r2, #0x10
	bl sub_020C4DB0
	strb r5, [r4]
	mov r0, #0x10
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	mov r0, #0x1f
	add r1, r4, #0
	mov r2, #0x14
	bl sub_020359DC
	cmp r0, #1
	bne _02248D2A
	mov r5, #1
	b _02248D2C
_02248D2A:
	mov r5, #0
_02248D2C:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02248CE8

	thumb_func_start ov6_02248D38
ov6_02248D38: ; 0x02248D38
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0202CC64
	add r2, r0, #0
	ldrb r1, [r5, r2]
	add r0, r5, #0
	lsl r1, r1, #2
	add r3, r4, r1
	mov r1, #0x57
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl sub_020C4DB0
	ldr r0, _02248D60 ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248D60: .word 0x00000584
	thumb_func_end ov6_02248D38

	thumb_func_start ov6_02248D64
ov6_02248D64: ; 0x02248D64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bl sub_0202CC64
	add r5, r0, #0
	ldr r0, _02248D9C ; =0x00000585
	add r4, r4, r0
	cmp r6, #0
	beq _02248D84
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020C4DB0
_02248D84:
	mov r0, #0x24
	add r1, r4, #0
	add r2, r5, #1
	strb r7, [r4, r5]
	bl sub_0203597C
	cmp r0, #1
	bne _02248D98
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248D98:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248D9C: .word 0x00000585
	thumb_func_end ov6_02248D64

	thumb_func_start ov6_02248DA0
ov6_02248DA0: ; 0x02248DA0
	push {r3, r4, r5, r6}
	ldrb r1, [r2, #6]
	ldrb r4, [r2]
	mov r5, #0x42
	add r0, r3, r1
	lsl r5, r5, #2
	strb r4, [r0, r5]
	ldrb r6, [r2, #1]
	add r4, r5, #4
	strb r6, [r0, r4]
	add r4, r5, #0
	ldrb r6, [r2, #2]
	add r4, #8
	add r5, #0xc
	strb r6, [r0, r4]
	lsl r0, r1, #1
	ldrh r2, [r2, #4]
	add r0, r3, r0
	strh r2, [r0, r5]
	ldr r0, _02248DD4 ; =0x00000584
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02248DD4: .word 0x00000584
	thumb_func_end ov6_02248DA0

	thumb_func_start ov6_02248DD8
ov6_02248DD8: ; 0x02248DD8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0x14
	mov r1, #7
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #6
	bl sub_020C4DB0
	mov r0, #0x25
	add r1, r4, #0
	mov r2, #7
	strb r5, [r4, #6]
	bl sub_020359DC
	cmp r0, #1
	bne _02248E06
	mov r5, #1
	b _02248E08
_02248E06:
	mov r5, #0
_02248E08:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248DD8
	; 0x02248E14

	.incbin "data/overlay6.bin"
