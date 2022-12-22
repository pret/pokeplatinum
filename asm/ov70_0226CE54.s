	.include "macros/function.inc"
	.include "include/ov70_0226CE54.inc"

	

	.text


	thumb_func_start ov70_0226CE54
ov70_0226CE54: ; 0x0226CE54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0xc4
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc4
	bl memset
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov70_0225DEF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov70_0225DF00
	str r0, [r4, #0xc]
	bl ov70_0225C8A8
	add r1, r0, #6
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	mov r0, #7
	mvn r0, r0
	sub r1, r0, r1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	ldr r6, _0226CF34 ; =0x0226E760
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r7, #0
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r5, r4, #0
_0226CEC6:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r6]
	add r2, sp, #4
	ldr r0, [r4, #0xc]
	add r2, #2
	add r3, sp, #4
	bl ov70_0225C8D8
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r7, r7, #1
	add r6, r6, #1
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xaa
	strh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xac
	add r5, r5, #4
	strh r1, [r0]
	cmp r7, #3
	blt _0226CEC6
	mov r5, #0
_0226CEFC:
	add r2, r4, #0
	add r2, #0xbc
	ldr r0, [r4, #8]
	ldr r2, [r2, #0]
	add r1, r5, #0
	bl ov70_022622B0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov66_0222EB7C
	cmp r0, #1
	bne _0226CF26
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_0226D020
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_0226D46C
_0226CF26:
	add r5, r5, #1
	cmp r5, #9
	blt _0226CEFC
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226CF34: .word 0x0226E760
	thumb_func_end ov70_0226CE54

	thumb_func_start ov70_0226CF38
ov70_0226CF38: ; 0x0226CF38
	ldr r3, _0226CF3C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0226CF3C: .word sub_020181C4
	thumb_func_end ov70_0226CF38

	thumb_func_start ov70_0226CF40
ov70_0226CF40: ; 0x0226CF40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ov66_0222E338
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl ov66_0222EBA4
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #8]
	cmp r0, r1
	bne _0226CF62
	mov r6, #0
	b _0226CF6C
_0226CF62:
	add r1, sp, #8
	add r2, sp, #4
	bl ov66_0222EC04
	mov r6, #1
_0226CF6C:
	mov r4, #0
_0226CF6E:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov66_0222EB7C
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _0226CFB6
	add r1, r4, #0
	mov r2, #1
	bl ov70_022623C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226D020
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226D46C
	cmp r6, #0
	beq _0226CFA4
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _0226CFA2
	mov r7, #1
	b _0226CFA4
_0226CFA2:
	mov r7, #0
_0226CFA4:
	ldr r0, [sp, #4]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_0226D0E8
	b _0226CFBE
_0226CFB6:
	add r1, r4, #0
	mov r2, #0
	bl ov70_022623C4
_0226CFBE:
	add r4, r4, #1
	cmp r4, #9
	blt _0226CF6E
	add r7, r5, #0
	mov r6, #0
	add r4, r5, #0
	add r7, #0x2c
_0226CFCC:
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov70_0226241C
	strb r0, [r4, #0x10]
	ldr r1, [r5, #8]
	add r0, r7, #0
	add r2, r6, #0
	bl ov70_0226D2D8
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov70_02262444
	strb r0, [r4, #0x12]
	add r6, r6, #1
	add r4, r4, #3
	add r7, #0xe
	cmp r6, #9
	blt _0226CFCC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226CF40

	thumb_func_start ov70_0226CFFC
ov70_0226CFFC: ; 0x0226CFFC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #9
	blo _0226D00C
	bl sub_02022974
_0226D00C:
	cmp r4, #3
	blt _0226D014
	bl sub_02022974
_0226D014:
	lsl r0, r5, #1
	add r0, r5, r0
	add r0, r6, r0
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0226CFFC

	thumb_func_start ov70_0226D020
ov70_0226D020: ; 0x0226D020
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp]
	bl ov66_0222EB8C
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov66_0222EB9C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl FX_Div
	add r7, r0, #0
	cmp r6, #0
	ble _0226D05C
	lsl r0, r6, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226D06A
_0226D05C:
	lsl r0, r6, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226D06A:
	add r6, r0, #0
	cmp r4, #0
	ble _0226D082
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226D090
_0226D082:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226D090:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	add r0, r6, #0
	bl _f_ftoi
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Div
	asr r2, r0, #0x1f
	lsl r3, r2, #0xd
	lsr r1, r0, #0x13
	lsl r2, r0, #0xd
	mov r0, #2
	orr r3, r1
	mov r1, #0
	lsl r0, r0, #0xa
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
	add r0, r5, #0
	add r0, #0xbc
	ldr r2, [r0, #0]
	ldr r0, [r5, #8]
	ldr r1, [sp]
	add r2, r3, r2
	bl ov70_022622B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226D020

	thumb_func_start ov70_0226D0E8
ov70_0226D0E8: ; 0x0226D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #0x30]
	ldr r0, [r7, #4]
	str r2, [sp, #4]
	add r5, r3, #0
	bl ov66_0222EB38
	add r6, r0, #0
	ldr r0, [r7, #4]
	bl ov66_0222EB28
	ldr r0, [sp]
	mov r4, #0
	lsl r1, r0, #1
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r1, #3
	bl _u32_div_f
	str r1, [sp, #8]
	mov r0, #0xc
	ldr r1, _0226D240 ; =0x0226E774
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x2c
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0xe
	mul r1, r0
	str r1, [sp, #0x18]
_0226D134:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov66_0222EBE4
	mov r6, #0
	cmp r5, #1
	bne _0226D14C
	ldr r1, [sp, #0x30]
	cmp r4, r1
	bne _0226D14C
	mov r6, #1
_0226D14C:
	cmp r0, #1
	bne _0226D232
	cmp r4, #0
	beq _0226D15E
	cmp r4, #1
	beq _0226D1C2
	cmp r4, #2
	beq _0226D1F8
	b _0226D232
_0226D15E:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov70_02262374
	cmp r0, #1
	bne _0226D232
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D194
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #2]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D27C
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #8]
	ldr r0, _0226D244 ; =0x0000FFFE
	cmp r3, r0
	beq _0226D1B6
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
	b _0226D1B6
_0226D194:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D27C
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #4]
	ldr r0, _0226D244 ; =0x0000FFFE
	cmp r3, r0
	beq _0226D1B6
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
_0226D1B6:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov66_0222EBF4
	b _0226D232
_0226D1C2:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D1CC
	mov r1, #1
	b _0226D1CE
_0226D1CC:
	mov r1, #0
_0226D1CE:
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r3, [sp]
	add r0, r2, r0
	ldr r2, [r7, #8]
	bl ov70_0226D2A0
	cmp r0, #1
	bne _0226D232
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov66_0222EBF4
	ldr r0, [sp, #4]
	ldr r3, _0226D248 ; =0x000005AF
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
	b _0226D232
_0226D1F8:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov70_0226239C
	cmp r0, #1
	bne _0226D232
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov66_0222EBF4
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D224
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #0xa]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
	b _0226D232
_0226D224:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #6]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
_0226D232:
	add r4, r4, #1
	cmp r4, #3
	bge _0226D23A
	b _0226D134
_0226D23A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226D240: .word 0x0226E774
_0226D244: .word 0x0000FFFE
_0226D248: .word 0x000005AF
	thumb_func_end ov70_0226D0E8

	thumb_func_start ov70_0226D24C
ov70_0226D24C: ; 0x0226D24C
	push {r3, lr}
	cmp r0, #0
	beq _0226D270
	cmp r1, #0
	beq _0226D278
	cmp r2, #0
	beq _0226D266
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_02005770
	pop {r3, pc}
_0226D266:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
	pop {r3, pc}
_0226D270:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0226D278:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D24C

	thumb_func_start ov70_0226D27C
ov70_0226D27C: ; 0x0226D27C
	push {r3, lr}
	cmp r0, #0
	beq _0226D292
	cmp r1, #0
	beq _0226D29C
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02005844
	pop {r3, pc}
_0226D292:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02005844
_0226D29C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D27C

	thumb_func_start ov70_0226D2A0
ov70_0226D2A0: ; 0x0226D2A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #2
	blo _0226D2B2
	bl sub_02022974
_0226D2B2:
	ldrh r0, [r5]
	cmp r0, #1
	bne _0226D2BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226D2BC:
	ldr r3, _0226D2D4 ; =0x0226E76C
	strh r4, [r5, #2]
	lsl r4, r4, #2
	mov r0, #1
	strh r0, [r5]
	ldr r3, [r3, r4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r3
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226D2D4: .word 0x0226E76C
	thumb_func_end ov70_0226D2A0

	thumb_func_start ov70_0226D2D8
ov70_0226D2D8: ; 0x0226D2D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r3, [r4]
	cmp r3, #0
	beq _0226D312
	ldrh r3, [r4, #2]
	lsl r5, r3, #2
	ldr r3, _0226D318 ; =0x0226E764
	ldr r3, [r3, r5]
	blx r3
	cmp r0, #1
	bne _0226D30E
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_0226D30E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226D312:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0226D318: .word 0x0226E764
	thumb_func_end ov70_0226D2D8

	thumb_func_start ov70_0226D31C
ov70_0226D31C: ; 0x0226D31C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #8
	strh r0, [r4, #6]
	mov r0, #5
	bl sub_0201D2A4
	strh r0, [r4, #8]
	mov r0, #2
	strh r0, [r4, #0xa]
	mov r0, #4
	strh r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D31C

	thumb_func_start ov70_0226D33C
ov70_0226D33C: ; 0x0226D33C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #0x10
	strh r0, [r4, #6]
	mov r0, #0xa
	bl sub_0201D2A4
	strh r0, [r4, #8]
	mov r0, #4
	strh r0, [r4, #0xa]
	mov r0, #2
	strh r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D33C

	thumb_func_start ov70_0226D35C
ov70_0226D35C: ; 0x0226D35C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, sp, #0x10
	mov r4, #0
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, r0, #1
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	bge _0226D382
	strh r1, [r5, #4]
	b _0226D394
_0226D382:
	strh r4, [r5, #4]
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	cmp r0, #0
	ble _0226D392
	strh r0, [r5, #0xc]
	b _0226D394
_0226D392:
	mov r4, #1
_0226D394:
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, _0226D464 ; =0x0000FFFF
	mul r0, r1
	mov r1, #6
	ldrsh r1, [r5, r1]
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0226D3C0
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226D3CE
_0226D3C0:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226D3CE:
	bl _f_ftoi
	add r2, r0, #0
	asr r0, r6, #4
	lsl r1, r0, #2
	ldr r0, _0226D468 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r6, r0, #0x10
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0226D41A
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226D428
_0226D41A:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226D428:
	bl _f_ftoi
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl ov70_022623F0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl ov70_022622EC
	add r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0226D464: .word 0x0000FFFF
_0226D468: .word 0x020F983C
	thumb_func_end ov70_0226D35C

	thumb_func_start ov70_0226D46C
ov70_0226D46C: ; 0x0226D46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	lsl r1, r0, #1
	ldr r0, [sp]
	mov r6, #0
	add r0, r0, r1
	str r0, [sp, #4]
_0226D480:
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	add r1, r6, r1
	bl ov66_0222EC30
	add r4, r0, #0
	ldr r0, [r7, #8]
	ldr r1, [sp]
	add r2, r6, #0
	add r3, sp, #8
	bl ov70_02262318
	cmp r4, #3
	bge _0226D4C2
	lsl r0, r4, #2
	add r5, r7, r0
_0226D4A0:
	mov r0, #0xaa
	ldrsh r0, [r5, r0]
	add r0, #0x10
	lsl r1, r0, #0xc
	ldr r0, [sp, #8]
	cmp r1, r0
	ble _0226D4BA
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	add r1, r6, r1
	add r2, r4, #0
	bl ov66_0222EC20
_0226D4BA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0226D4A0
_0226D4C2:
	add r6, r6, #1
	cmp r6, #3
	blt _0226D480
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226D46C

	.rodata


	.global Unk_ov70_0226E760
Unk_ov70_0226E760: ; 0x0226E760
	.incbin "incbin/overlay70_rodata.bin", 0x1294, 0x1298 - 0x1294

	.global Unk_ov70_0226E764
Unk_ov70_0226E764: ; 0x0226E764
	.incbin "incbin/overlay70_rodata.bin", 0x1298, 0x12A0 - 0x1298

	.global Unk_ov70_0226E76C
Unk_ov70_0226E76C: ; 0x0226E76C
	.incbin "incbin/overlay70_rodata.bin", 0x12A0, 0x12A8 - 0x12A0

	.global Unk_ov70_0226E774
Unk_ov70_0226E774: ; 0x0226E774
	.incbin "incbin/overlay70_rodata.bin", 0x12A8, 0x3C

