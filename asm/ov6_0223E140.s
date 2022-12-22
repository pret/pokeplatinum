	.include "macros/function.inc"
	.include "include/ov6_0223E140.inc"

	

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
	bl GF_AssertFail
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
	ldr r3, _0223E2A8 ; =ov5_021D143C
	bx r3
	; .align 2, 0
_0223E2A8: .word ov5_021D143C
	thumb_func_end ov6_0223E2A4

	thumb_func_start ov6_0223E2AC
ov6_0223E2AC: ; 0x0223E2AC
	push {r3, lr}
	bl ov5_021D1434
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
	bl ov5_021E2098
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
	bl ov5_021E20E8
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
	bl FX_Div
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
	bl memset
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
	ldr r3, _0223E6F8 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0223E6FC ; =0x02248E90
	bx r3
	nop
_0223E6F8: .word ov5_021D1B6C
_0223E6FC: .word 0x02248E90
	thumb_func_end ov6_0223E6EC

	thumb_func_start ov6_0223E700
ov6_0223E700: ; 0x0223E700
	ldr r3, _0223E704 ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_0223E704: .word ov5_021D1BEC
	thumb_func_end ov6_0223E700

	thumb_func_start ov6_0223E708
ov6_0223E708: ; 0x0223E708
	push {r3, lr}
	bl ov5_021D1C2C
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
	bl GF_AssertFail
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
	ldr r3, _0223E820 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0223E824 ; =0x02248E78
	bx r3
	nop
_0223E820: .word ov5_021D1B6C
_0223E824: .word 0x02248E78
	thumb_func_end ov6_0223E814

	thumb_func_start ov6_0223E828
ov6_0223E828: ; 0x0223E828
	ldr r3, _0223E82C ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_0223E82C: .word ov5_021D1BEC
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
	bl ov5_021D5278
	ldr r0, [r5, #0x44]
	mov r1, #3
	bl ov5_021D521C
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
	bl ov5_021D5278
	ldr r0, [r5, #0x44]
	mov r1, #3
	bl ov5_021D521C
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
	ldr r3, _0223EA8C ; =ov5_021D1B6C
	ldr r2, [r1, r2]
	ldr r1, _0223EA90 ; =0x02249860
	str r2, [r1, #8]
	ldr r0, [r0, #4]
	ldr r1, _0223EA94 ; =0x02249860
	ldr r0, [r0, #4]
	bx r3
	; .align 2, 0
_0223EA88: .word 0x02248E2C
_0223EA8C: .word ov5_021D1B6C
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223F5EE
_0223F5E0:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223F5EE:
	bl _f_ftoi
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223F624
_0223F616:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223F624:
	bl _f_ftoi
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
	bl GXx_SetMasterBrightness_
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223FB8C
_0223FB7E:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223FB8C:
	bl _f_ftoi
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl GXx_SetMasterBrightness_
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
	bl NNS_G3dGeBufferOP_N
	add r4, #0x24
	add r0, r4, #0
	bl sub_02017294
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
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
	ldr r3, _0223FCD8 ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _0223FCDC ; =0x02248E60
	bx r3
	nop
_0223FCD8: .word ov5_021D1B6C
_0223FCDC: .word 0x02248E60
	thumb_func_end ov6_0223FCCC

	thumb_func_start ov6_0223FCE0
ov6_0223FCE0: ; 0x0223FCE0
	ldr r3, _0223FCE4 ; =ov5_021D1BEC
	bx r3
	; .align 2, 0
_0223FCE4: .word ov5_021D1BEC
	thumb_func_end ov6_0223FCE0

	thumb_func_start ov6_0223FCE8
ov6_0223FCE8: ; 0x0223FCE8
	push {r3, lr}
	bl ov5_021D1C2C
	mov r1, #3
	str r1, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov6_0223FCE8

	thumb_func_start ov6_0223FCF4
ov6_0223FCF4: ; 0x0223FCF4
	push {r3, lr}
	bl ov5_021D1C2C
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
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r4, #0xc
	bl FX_Div
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
	bl memset
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
	bl GXx_SetMasterBrightness_
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
	ldr r3, _0224006C ; =GXx_SetMasterBrightness_
	ldr r0, _02240070 ; =0x0400006C
	ldr r1, [r1, #0]
	bx r3
	; .align 2, 0
_0224006C: .word GXx_SetMasterBrightness_
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
	bl memset
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
	bl GF_AssertFail
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
	bl NNS_G3dGeBufferOP_N
	add r4, #0x40
	add r0, r4, #0
	bl ov6_0223FDBC
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
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
	bl memset
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
	bl G2x_SetBlendAlpha_
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
	bl GF_AssertFail
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
	bl memset
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl memset
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
	ldr r3, _022407E4 ; =memset
	mov r1, #0
	mov r2, #0x90
	bx r3
	; .align 2, 0
_022407E4: .word memset
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
	bl GF_AssertFail
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
	bl memset
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
	bl memset
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

	.rodata


	.global Unk_ov6_02248E14
Unk_ov6_02248E14: ; 0x02248E14
	.incbin "incbin/overlay6_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov6_02248E20
Unk_ov6_02248E20: ; 0x02248E20
	.incbin "incbin/overlay6_rodata.bin", 0xC, 0x18 - 0xC

	.global Unk_ov6_02248E2C
Unk_ov6_02248E2C: ; 0x02248E2C
	.incbin "incbin/overlay6_rodata.bin", 0x18, 0x24 - 0x18

	.global Unk_ov6_02248E38
Unk_ov6_02248E38: ; 0x02248E38
	.incbin "incbin/overlay6_rodata.bin", 0x24, 0x34 - 0x24

	.global Unk_ov6_02248E48
Unk_ov6_02248E48: ; 0x02248E48
	.incbin "incbin/overlay6_rodata.bin", 0x34, 0x4C - 0x34

	.global Unk_ov6_02248E60
Unk_ov6_02248E60: ; 0x02248E60
	.incbin "incbin/overlay6_rodata.bin", 0x4C, 0x64 - 0x4C

	.global Unk_ov6_02248E78
Unk_ov6_02248E78: ; 0x02248E78
	.incbin "incbin/overlay6_rodata.bin", 0x64, 0x7C - 0x64

	.global Unk_ov6_02248E90
Unk_ov6_02248E90: ; 0x02248E90
	.incbin "incbin/overlay6_rodata.bin", 0x7C, 0x94 - 0x7C

	.global Unk_ov6_02248EA8
Unk_ov6_02248EA8: ; 0x02248EA8
	.incbin "incbin/overlay6_rodata.bin", 0x94, 0xAC - 0x94

	.global Unk_ov6_02248EC0
Unk_ov6_02248EC0: ; 0x02248EC0
	.incbin "incbin/overlay6_rodata.bin", 0xAC, 0xC8 - 0xAC

	.global Unk_ov6_02248EDC
Unk_ov6_02248EDC: ; 0x02248EDC
	.incbin "incbin/overlay6_rodata.bin", 0xC8, 0xF0 - 0xC8

	.global Unk_ov6_02248F04
Unk_ov6_02248F04: ; 0x02248F04
	.incbin "incbin/overlay6_rodata.bin", 0xF0, 0x11C - 0xF0

	.global Unk_ov6_02248F30
Unk_ov6_02248F30: ; 0x02248F30
	.incbin "incbin/overlay6_rodata.bin", 0x11C, 0x90


	.data


	.global Unk_ov6_02249860
Unk_ov6_02249860: ; 0x02249860
	.incbin "incbin/overlay6_data.bin", 0x0, 0x18

