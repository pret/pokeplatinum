	.include "macros/function.inc"
	.include "include/ov70_022630A4.inc"

	

	.text


	thumb_func_start ov70_022630A4
ov70_022630A4: ; 0x022630A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov70_0225DEEC
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF10
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DF2C
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl ov66_0222E3E4
	ldrh r0, [r4, #6]
	cmp r0, #4
	blo _022630D4
	bl GF_AssertFail
_022630D4:
	ldrh r2, [r4, #6]
	ldr r3, _022630E8 ; =0x0226DA78
	add r0, r7, #0
	lsl r2, r2, #3
	add r2, r3, r2
	add r1, r6, #0
	mov r3, #0
	bl ov70_02262E94
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022630E8: .word 0x0226DA78
	thumb_func_end ov70_022630A4

	thumb_func_start ov70_022630EC
ov70_022630EC: ; 0x022630EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov70_0225DF2C
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r7, _0226311C ; =0x0226DA10
	add r6, r0, #0
	mov r4, #0
_02263102:
	cmp r5, r4
	beq _02263112
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl ov70_02262E94
_02263112:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02263102
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226311C: .word 0x0226DA10
	thumb_func_end ov70_022630EC

	thumb_func_start ov70_02263120
ov70_02263120: ; 0x02263120
	cmp r0, #3
	bhi _02263146
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263130: ; jump table
	.short _02263138 - _02263130 - 2 ; case 0
	.short _0226313C - _02263130 - 2 ; case 1
	.short _02263140 - _02263130 - 2 ; case 2
	.short _02263144 - _02263130 - 2 ; case 3
_02263138:
	mov r1, #0x40
	b _02263146
_0226313C:
	mov r1, #0x80
	b _02263146
_02263140:
	mov r1, #0x20
	b _02263146
_02263144:
	mov r1, #0x10
_02263146:
	ldr r0, _02263158 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	tst r0, r1
	beq _02263152
	mov r0, #1
	bx lr
_02263152:
	mov r0, #0
	bx lr
	nop
_02263158: .word 0x021BF67C
	thumb_func_end ov70_02263120

	thumb_func_start ov70_0226315C
ov70_0226315C: ; 0x0226315C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	add r4, r3, #0
	ldr r5, [sp, #0x28]
	bl ov70_02262E80
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov70_0225DF10
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #0
	cmp r0, #3
	beq _022631F0
	add r6, r4, #0
	add r1, r2, #0
_02263184:
	add r3, r1, #0
_02263186:
	ldrb r0, [r6, r3]
	cmp r0, #0xff
	beq _022631E6
	cmp r5, r0
	bne _022631E0
	mov r0, #0x18
	add r5, r2, #0
	mul r5, r0
	add r6, r4, r5
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _022631A6
	cmp r0, #1
	beq _022631BE
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631A6:
	add r0, r7, #0
	bl ov70_02262E64
	add r2, r6, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0xc
	mov r3, #0
	bl ov70_02262E94
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631BE:
	ldr r7, [r6, #0x14]
	cmp r7, #0
	beq _022631CE
	ldrb r3, [r3, r6]
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	blx r7
_022631CE:
	add r2, r4, r5
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0xc
	mov r3, #0
	bl ov70_02262EC0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631E0:
	add r3, r3, #1
	cmp r3, #8
	blt _02263186
_022631E6:
	add r6, #0x18
	ldr r0, [r6, #8]
	add r2, r2, #1
	cmp r0, #3
	bne _02263184
_022631F0:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226315C

	thumb_func_start ov70_022631F8
ov70_022631F8: ; 0x022631F8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov70_0225DEF0
	add r1, r4, #0
	bl ov70_0225CB28
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF08
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	bl ov70_0225D054
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ov70_02260B20
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_022631F8

	thumb_func_start ov70_02263230
ov70_02263230: ; 0x02263230
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov70_0225DEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF08
	str r0, [sp, #4]
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0225CB5C
	add r5, r0, #0
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_0225CD7C
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov70_02260B38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02263230

	thumb_func_start ov70_02263270
ov70_02263270: ; 0x02263270
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	strb r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	bl sub_0201D35C
	mov r1, #3
	and r0, r1
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02263270

	thumb_func_start ov70_02263290
ov70_02263290: ; 0x02263290
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _022632A4
	cmp r0, #1
	beq _022632AA
	cmp r0, #2
	beq _022632BC
	b _0226331E
_022632A4:
	mov r0, #0
	str r0, [r4, #0]
	b _0226331E
_022632AA:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	cmp r0, #0
	ble _022632B6
	strb r0, [r4, #6]
	b _0226331E
_022632B6:
	mov r0, #2
	strb r0, [r4, #5]
	b _0226331E
_022632BC:
	mov r0, #4
	ldrsb r1, [r4, r0]
	mov r3, #0
	add r1, r1, #1
	strb r1, [r4, #4]
	ldrsb r1, [r4, r0]
	ldr r0, _02263324 ; =0x00007FFF
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0xe
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02263328 ; =0x020F983C
	mov r2, #6
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0]
	mov r0, #4
	ldrsb r0, [r4, r0]
	cmp r0, #4
	blt _0226331E
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0226331C
	strb r3, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	bl sub_0201D35C
	mov r1, #3
	and r0, r1
	strb r0, [r4, #6]
	b _0226331E
_0226331C:
	strb r3, [r4, #5]
_0226331E:
	ldr r0, [r4, #0]
	pop {r4, pc}
	nop
_02263324: .word 0x00007FFF
_02263328: .word 0x020F983C
	thumb_func_end ov70_02263290

	thumb_func_start ov70_0226332C
ov70_0226332C: ; 0x0226332C
	mov r1, #0
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226332C

	thumb_func_start ov70_02263334
ov70_02263334: ; 0x02263334
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0226333E
	mov r0, #1
	bx lr
_0226333E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02263334

	thumb_func_start ov70_02263344
ov70_02263344: ; 0x02263344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	bl ov70_0225DEF0
	add r1, r4, #0
	add r7, r0, #0
	bl ov70_0225CC70
	str r0, [sp]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _0226337A
	cmp r0, #1
	beq _0226339E
	cmp r0, #2
	beq _022633B4
	b _0226340C
_0226337A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225E46C
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	ldr r0, [sp, #4]
	bl ov66_0222E338
	cmp r4, r0
	bne _0226340C
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	b _0226340C
_0226339E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225E4AC
	cmp r0, #1
	bne _0226340C
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	b _0226340C
_022633B4:
	ldr r0, [sp, #4]
	bl ov66_0222E338
	cmp r4, r0
	bne _022633CA
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	b _02263400
_022633CA:
	add r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #1
	bne _022633EA
	add r0, r5, #0
	bl ov70_0225E3E0
	cmp r4, r0
	beq _022633F4
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #2
	bl ov70_0225CDEC
	b _022633F4
_022633EA:
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #2
	bl ov70_0225CDEC
_022633F4:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
_02263400:
	add r0, r5, #0
	bl ov70_0225E44C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226340C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02263344

	thumb_func_start ov70_02263414
ov70_02263414: ; 0x02263414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov70_0225DEE8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #8]
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x16
	bhi _022634FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263452: ; jump table
	.short _02263480 - _02263452 - 2 ; case 0
	.short _022634C0 - _02263452 - 2 ; case 1
	.short _022634F6 - _02263452 - 2 ; case 2
	.short _02263510 - _02263452 - 2 ; case 3
	.short _0226352A - _02263452 - 2 ; case 4
	.short _02263544 - _02263452 - 2 ; case 5
	.short _0226355E - _02263452 - 2 ; case 6
	.short _02263578 - _02263452 - 2 ; case 7
	.short _0226358E - _02263452 - 2 ; case 8
	.short _022635AE - _02263452 - 2 ; case 9
	.short _022635E0 - _02263452 - 2 ; case 10
	.short _02263654 - _02263452 - 2 ; case 11
	.short _0226369A - _02263452 - 2 ; case 12
	.short _022636CC - _02263452 - 2 ; case 13
	.short _022638F6 - _02263452 - 2 ; case 14
	.short _02263740 - _02263452 - 2 ; case 15
	.short _02263786 - _02263452 - 2 ; case 16
	.short _022637DE - _02263452 - 2 ; case 17
	.short _022637FE - _02263452 - 2 ; case 18
	.short _0226384C - _02263452 - 2 ; case 19
	.short _02263876 - _02263452 - 2 ; case 20
	.short _022638AA - _02263452 - 2 ; case 21
	.short _022638BE - _02263452 - 2 ; case 22
_02263480:
	add r0, r6, #0
	mov r1, #0x2c
	bl ov70_02262E3C
	add r1, r5, #0
	add r4, r0, #0
	bl ov70_022653DC
	ldr r0, [sp, #4]
	bl ov66_0222E2CC
	ldr r0, [sp, #4]
	bl ov66_0222F0DC
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	bl ov66_0222E528
	ldr r1, [sp]
	add r0, r5, #0
	bl ov70_022631F8
	add r1, r0, #0
	ldr r0, [sp, #8]
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_022634C0:
	add r0, r5, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _022634FE
	add r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _022634FE
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_0225DF08
	add r1, r7, #0
	bl ov70_02260B38
	mov r0, #0x10
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_022634F6:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	beq _02263500
_022634FE:
	b _022638F6
_02263500:
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225DF18
	add r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_02263510:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0225CD7C
	mov r0, #4
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_0226352A:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0225CD7C
	mov r0, #5
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_02263544:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	mov r3, #3
	bl ov70_0225CD7C
	mov r0, #6
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_0226355E:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #3
	bl ov70_0225CD7C
	mov r0, #8
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_02263578:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263662
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022638F6
_0226358E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x10
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022635AE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E0F4
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	b _022638F6
_022635E0:
	add r0, r5, #0
	mov r7, #0
	bl ov70_0225E0D4
	add r2, r0, #0
	beq _02263600
	sub r0, r7, #2
	cmp r2, r0
	beq _022635FA
	add r0, r0, #1
	cmp r2, r0
	beq _02263614
	b _02263608
_022635FA:
	ldr r0, _022638FC ; =0x000005DC
	bl sub_02005748
_02263600:
	mov r0, #0
	strh r0, [r4, #0x28]
	mov r7, #1
	b _02263614
_02263608:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x28]
	mov r7, #1
	bl ov70_0225E30C
_02263614:
	cmp r7, #1
	bne _02263662
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0226364A
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225E164
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022638F6
_0226364A:
	add r0, r6, #0
	mov r1, #0x11
	bl ov70_02262E88
	b _022638F6
_02263654:
	add r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02263664
	cmp r0, #1
	beq _0226368A
_02263662:
	b _022638F6
_02263664:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov66_0222E56C
	add r0, r5, #0
	bl ov70_0225E390
	ldr r0, _02263900 ; =0x000005E5
	bl sub_02005748
	b _022638F6
_0226368A:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #9
	bl ov70_02262E88
	b _022638F6
_0226369A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E0F4
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	b _022638F6
_022636CC:
	add r0, r5, #0
	mov r7, #0
	bl ov70_0225E0D4
	add r2, r0, #0
	beq _022636EC
	sub r0, r7, #2
	cmp r2, r0
	beq _022636E6
	add r0, r0, #1
	cmp r2, r0
	beq _02263700
	b _022636F4
_022636E6:
	ldr r0, _022638FC ; =0x000005DC
	bl sub_02005748
_022636EC:
	mov r0, #0
	strh r0, [r4, #0x2a]
	mov r7, #1
	b _02263700
_022636F4:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x2a]
	mov r7, #1
	bl ov70_0225E30C
_02263700:
	cmp r7, #1
	bne _0226374E
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _02263736
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225E164
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _022638F6
_02263736:
	add r0, r6, #0
	mov r1, #0x13
	bl ov70_02262E88
	b _022638F6
_02263740:
	add r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02263750
	cmp r0, #1
	beq _02263776
_0226374E:
	b _022638F6
_02263750:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov66_0222E56C
	add r0, r5, #0
	bl ov70_0225E390
	ldr r0, _02263900 ; =0x000005E5
	bl sub_02005748
	b _022638F6
_02263776:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _022638F6
_02263786:
	ldr r0, _02263904 ; =0x000005A8
	bl sub_02005748
	add r0, r5, #0
	bl ov70_0225E430
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #2]
	add r0, r5, #0
	mov r2, #1
	bl ov70_0225E29C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov66_0222E924
	cmp r0, #0
	bne _022637BE
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E20C
	b _022637C8
_022637BE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x7c
	bl ov70_0225E20C
_022637C8:
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x12
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022637DE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x16
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022637FE:
	ldr r0, _02263904 ; =0x000005A8
	bl sub_020057D4
	cmp r0, #0
	bne _022638F6
	ldr r0, _02263908 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _022638F6
	ldr r0, _022638FC ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #9
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov66_0222E56C
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	b _022638F6
_0226384C:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E30C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_02263876:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E30C
	ldrh r2, [r4, #0x2a]
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E30C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022638AA:
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022638F6
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022638F6
_022638BE:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02265450
	add r0, r6, #0
	bl ov70_02262E64
	add r0, r5, #0
	bl ov70_0225DF10
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _0226390C ; =0x0226D9D0
	add r0, r4, #0
	mov r3, #0
	bl ov70_02262E94
_022638F6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022638FC: .word 0x000005DC
_02263900: .word 0x000005E5
_02263904: .word 0x000005A8
_02263908: .word 0x021BF67C
_0226390C: .word 0x0226D9D0
	thumb_func_end ov70_02263414

	thumb_func_start ov70_02263910
ov70_02263910: ; 0x02263910
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DEE8
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _02263944
	b _02263A4E
_02263944:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263950: ; jump table
	.short _0226395C - _02263950 - 2 ; case 0
	.short _02263988 - _02263950 - 2 ; case 1
	.short _022639BE - _02263950 - 2 ; case 2
	.short _022639EE - _02263950 - 2 ; case 3
	.short _02263A12 - _02263950 - 2 ; case 4
	.short _02263A2A - _02263950 - 2 ; case 5
_0226395C:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_02263230
	bl ov66_02231760
	cmp r0, #0
	bne _02263978
	bl ov66_02232AA4
_02263978:
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov66_0222E31C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263988:
	bl ov66_02231760
	cmp r0, #0
	bne _02263998
	bl ov66_02232AD4
	cmp r0, #0
	beq _02263A4E
_02263998:
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263A4E
	add r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDAC
	b _02263A4E
_022639BE:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263A4E
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF18
	ldr r0, [sp, #8]
	bl ov66_0222E2B4
	cmp r0, #1
	bne _022639E4
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_022639E4:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _02263A4E
_022639EE:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x15
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263A12:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263A4E
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263A2A:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _02263A54 ; =0x0226D9D0
	add r0, r5, #0
	mov r3, #0
	bl ov70_02262E94
_02263A4E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263A54: .word 0x0226D9D0
	thumb_func_end ov70_02263910

	thumb_func_start ov70_02263A58
ov70_02263A58: ; 0x02263A58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DF10
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _02263A94
	b _02263B96
_02263A94:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263AA0: ; jump table
	.short _02263AAC - _02263AA0 - 2 ; case 0
	.short _02263ADE - _02263AA0 - 2 ; case 1
	.short _02263B04 - _02263AA0 - 2 ; case 2
	.short _02263B36 - _02263AA0 - 2 ; case 3
	.short _02263B5A - _02263AA0 - 2 ; case 4
	.short _02263B72 - _02263AA0 - 2 ; case 5
_02263AAC:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_02263230
	add r0, r5, #0
	bl ov70_02262E8C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, _02263B9C ; =0x0226DA00
	mov r3, #0
	bl ov70_02262EC0
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl ov66_0222E2C4
	ldr r0, [sp, #0x10]
	bl ov66_0222E2CC
	b _02263B96
_02263ADE:
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263B96
	add r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDAC
	b _02263B96
_02263B04:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263B96
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF18
	ldr r0, [sp, #0x10]
	bl ov66_0222E220
	cmp r0, #1
	bne _02263B2C
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _02263B96
_02263B2C:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _02263B96
_02263B36:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263B96
_02263B5A:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263B96
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263B96
_02263B72:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _02263BA0 ; =0x0226D9D0
	add r0, r5, #0
	mov r3, #0
	bl ov70_02262E94
_02263B96:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02263B9C: .word 0x0226DA00
_02263BA0: .word 0x0226D9D0
	thumb_func_end ov70_02263A58

	thumb_func_start ov70_02263BA4
ov70_02263BA4: ; 0x02263BA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DEEC
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bhi _02263CBE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263BE2: ; jump table
	.short _02263BEE - _02263BE2 - 2 ; case 0
	.short _02263C12 - _02263BE2 - 2 ; case 1
	.short _02263C38 - _02263BE2 - 2 ; case 2
	.short _02263C68 - _02263BE2 - 2 ; case 3
	.short _02263C82 - _02263BE2 - 2 ; case 4
	.short _02263C9A - _02263BE2 - 2 ; case 5
_02263BEE:
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	ldrh r2, [r2]
	ldrh r3, [r3, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_02263230
	add r0, r7, #0
	mov r1, #0
	bl ov66_0222E31C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C12:
	add r0, r4, #0
	bl ov70_0225DEEC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263CBE
	add r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r7, #4]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov70_0225CDAC
	b _02263CBE
_02263C38:
	add r0, r6, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263CBE
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF18
	add r0, r7, #0
	bl ov66_0222E2B4
	cmp r0, #1
	bne _02263C5E
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C5E:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _02263CBE
_02263C68:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5b
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C82:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263CBE
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C9A:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _02263CC4 ; =0x0226D9D0
	add r0, r5, #0
	mov r3, #0
	bl ov70_02262E94
_02263CBE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263CC4: .word 0x0226D9D0
	thumb_func_end ov70_02263BA4

	thumb_func_start ov70_02263CC8
ov70_02263CC8: ; 0x02263CC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp, #4]
	add r5, r1, #0
	add r7, r2, #0
	bl ov70_02262E80
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov70_02262E84
	cmp r0, #0
	beq _02263CE8
	cmp r0, #1
	beq _02263CF8
	b _02264106
_02263CE8:
	ldr r0, [sp, #4]
	mov r1, #4
	bl ov70_02262E3C
	ldr r0, [sp, #4]
	bl ov70_02262E8C
	b _02264106
_02263CF8:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	add r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF00
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov70_0225DEF8
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl ov70_0225CCB0
	add r6, r0, #0
	beq _02263D7A
	ldr r0, [sp, #0x18]
	bl ov66_0222E12C
	cmp r0, #0
	bne _02263D66
	ldr r0, [sp, #0x18]
	bl ov66_0222E19C
	cmp r0, #1
	bne _02263D66
	ldr r0, [sp, #0x18]
	bl ov66_0222E0F4
	cmp r0, #0
	bne _02263D66
	add r0, r6, #0
	bl ov70_0225CE3C
	cmp r0, #9
	beq _02263D7A
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #9
	bl ov70_0225CDEC
	b _02263D7A
_02263D66:
	add r0, r6, #0
	bl ov70_0225CE3C
	cmp r0, #0
	beq _02263D7A
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ov70_0225CDEC
_02263D7A:
	add r0, r4, #0
	bl ov70_0225CCAC
	str r0, [sp, #0x28]
	mov r1, #5
	bl ov70_0225CD60
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov70_0225CD60
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov70_0225CD34
	add r1, sp, #0x40
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	ldr r1, [sp, #8]
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C078
	add r2, sp, #0x40
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #0xe
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	str r0, [sp, #0x24]
	add r0, sp, #0x40
	mov r1, #0xa
	ldrsh r2, [r0, r1]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #0x10]
	mov r1, #8
	ldrsh r1, [r0, r1]
	ldr r2, [sp, #0x10]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225E3E0
	add r1, r0, #0
	cmp r1, r7
	beq _02263E44
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF84
	cmp r0, #0
	beq _02263E44
	add r0, r5, #0
	bl ov70_0225E3D0
_02263E44:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02263E90
	add r0, r5, #0
	bl ov70_0225E400
	cmp r0, #1
	bne _02263E5C
	ldr r0, [sp, #0x2c]
	sub r0, r0, #1
	cmp r0, #2
	bls _02263E5E
_02263E5C:
	b _02264106
_02263E5E:
	add r0, r5, #0
	bl ov70_0225E3E0
	add r1, r0, #0
	cmp r1, r7
	beq _02263E88
	add r0, r4, #0
	bl ov70_0225CC70
	add r6, r0, #0
	beq _02263E88
	bl ov70_0225CE3C
	cmp r0, #0
	bne _02263E88
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl ov70_0225CDEC
_02263E88:
	add r0, r5, #0
	bl ov70_0225E3D0
	b _02264106
_02263E90:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	ldr r0, [sp, #0x24]
	bl ov70_0225C930
	cmp r0, #1
	bne _02263ED6
	ldr r0, [sp, #0x24]
	ldr r3, _0226410C ; =0x0226DBB8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263ED6:
	add r0, r5, #0
	bl ov70_0225E45C
	cmp r0, #1
	bne _02263F04
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldr r0, [sp, #0x14]
	ldr r2, _02264110 ; =0x0226DA18
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262EC0
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263F04:
	ldr r0, [sp, #0x18]
	bl ov66_0222EE08
	cmp r0, #0
	beq _02263F32
	ldr r0, [sp, #0x14]
	ldr r2, _02264114 ; =0x0226DA08
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262EC0
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263F32:
	ldr r0, _02264118 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0226401C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov70_0225CE40
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02263FA2
	mov r1, #5
	bl ov70_0225CD60
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	mov r1, #4
	bl ov70_0225CD60
	add r1, r0, #0
	cmp r1, #0xfe
	beq _02263FA2
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF64
	ldr r1, [sp, #0x38]
	cmp r1, #0
	bne _02263FA2
	cmp r0, #0
	bne _02263FA2
	ldr r0, [sp, #0x14]
	ldr r2, _0226411C ; =0x0226D9F8
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262EC0
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263FA2:
	add r0, r6, #0
	bl ov70_0225C990
	cmp r0, #1
	bne _02263FE2
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263FE2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #0x20]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov70_02262484
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263FE2:
	add r0, r6, #0
	bl ov70_0225C970
	cmp r0, #1
	bne _0226401C
	ldr r0, [sp, #4]
	ldr r3, _02264120 ; =0x0226DB28
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226401C:
	ldr r0, [sp, #8]
	bl ov70_02263120
	cmp r0, #1
	bne _022640BC
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02264066
	add r0, r6, #0
	bl ov70_0225C950
	cmp r0, #1
	bne _02264066
	ldr r0, [sp, #4]
	ldr r3, _02264124 ; =0x0226DAF8
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264066:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov70_0225CE40
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _022640BC
	mov r1, #4
	bl ov70_0225CD60
	add r6, r0, #0
	cmp r6, #0xfe
	beq _022640BC
	add r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #0
	bne _022640BC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF84
	cmp r0, #0
	bne _022640BC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225E328
	ldr r0, [sp, #0x3c]
	bl ov70_0225CE3C
	ldr r1, [sp, #0x30]
	mov r2, #0
	str r0, [r1, #0]
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	bl ov70_0225CDEC
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022640BC:
	ldr r0, _02264118 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _02264106
	add r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #0
	bne _022640EA
	ldr r0, [sp, #0x18]
	bl ov66_0222E338
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	ldr r0, _02264128 ; =0x000005DC
	bl sub_02005748
	b _02264100
_022640EA:
	add r0, r5, #0
	bl ov70_0225E3E0
	cmp r0, r7
	bne _02264100
	add r0, r5, #0
	bl ov70_0225E3D0
	ldr r0, _02264128 ; =0x000005DC
	bl sub_02005748
_02264100:
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264106:
	mov r0, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226410C: .word 0x0226DBB8
_02264110: .word 0x0226DA18
_02264114: .word 0x0226DA08
_02264118: .word 0x021BF67C
_0226411C: .word 0x0226D9F8
_02264120: .word 0x0226DB28
_02264124: .word 0x0226DAF8
_02264128: .word 0x000005DC
	thumb_func_end ov70_02263CC8

	thumb_func_start ov70_0226412C
ov70_0226412C: ; 0x0226412C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov70_0225DEF0
	bl ov70_0225CCAC
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	beq _0226414C
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225E43C
_0226414C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov70_0226412C

	thumb_func_start ov70_02264150
ov70_02264150: ; 0x02264150
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov70_02262E84
	cmp r0, #9
	bhi _022641F8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226416C: ; jump table
	.short _02264180 - _0226416C - 2 ; case 0
	.short _022641C2 - _0226416C - 2 ; case 1
	.short _022641D4 - _0226416C - 2 ; case 2
	.short _022641EE - _0226416C - 2 ; case 3
	.short _02264202 - _0226416C - 2 ; case 4
	.short _02264210 - _0226416C - 2 ; case 5
	.short _0226424C - _0226416C - 2 ; case 6
	.short _02264280 - _0226416C - 2 ; case 7
	.short _022642B2 - _0226416C - 2 ; case 8
	.short _022642D2 - _0226416C - 2 ; case 9
_02264180:
	add r0, r4, #0
	bl ov70_0225DEF0
	add r6, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xb
	bl ov66_0222E3E4
	ldr r0, _0226431C ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x41
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641C2:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022641F8
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641D4:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x19
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641EE:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	beq _022641FA
_022641F8:
	b _02264316
_022641FA:
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_02264202:
	add r0, r4, #0
	bl ov70_0225E194
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_02264210:
	add r0, r4, #0
	mov r6, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02264224
	cmp r0, #1
	beq _02264230
	cmp r0, #2
	b _0226423A
_02264224:
	add r0, r5, #0
	mov r1, #6
	bl ov70_02262E88
	mov r6, #1
	b _0226423A
_02264230:
	add r0, r5, #0
	mov r1, #8
	bl ov70_02262E88
	mov r6, #1
_0226423A:
	cmp r6, #1
	bne _02264316
	add r0, r4, #0
	bl ov70_0225E1F8
	add r0, r4, #0
	bl ov70_0225DFEC
	b _02264316
_0226424C:
	add r0, r4, #0
	mov r1, #0
	bl ov70_0225DF18
	add r0, r4, #0
	bl ov70_0225DEF0
	add r6, r0, #0
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DF08
	bl ov70_02260B3C
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #7
	bl ov70_02262E88
	b _02264316
_02264280:
	add r0, r4, #0
	bl ov70_0225DEF0
	bl ov70_0225CCAC
	bl ov70_0225CE38
	cmp r0, #1
	bne _02264316
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	add r0, r4, #0
	mov r1, #0
	bl ov70_0225DF38
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xb
	bl ov66_0222E3E4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022642B2:
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0225CDAC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022642D2:
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl ov66_0222E3E4
	add r0, r4, #0
	bl ov70_0225DEF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF10
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225CCAC
	mov r1, #5
	add r6, r0, #0
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264316
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225CDEC
	ldr r2, _02264320 ; =0x0226D9D0
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262E94
_02264316:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226431C: .word 0x000005DD
_02264320: .word 0x0226D9D0
	thumb_func_end ov70_02264150

	thumb_func_start ov70_02264324
ov70_02264324: ; 0x02264324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp, #0x10]
	add r0, r4, #0
	bl ov70_0225DEF0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x28]
	bl ov70_0225CC70
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DF40
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl ov70_02262E80
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #8
	bls _02264362
	b _022646BC
_02264362:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226436E: ; jump table
	.short _02264380 - _0226436E - 2 ; case 0
	.short _02264440 - _0226436E - 2 ; case 1
	.short _022644DE - _0226436E - 2 ; case 2
	.short _022645B4 - _0226436E - 2 ; case 3
	.short _02264606 - _0226436E - 2 ; case 4
	.short _0226461E - _0226436E - 2 ; case 5
	.short _02264644 - _0226436E - 2 ; case 6
	.short _0226465E - _0226436E - 2 ; case 7
	.short _0226468C - _0226436E - 2 ; case 8
_02264380:
	add r0, r5, #0
	mov r1, #0xc
	bl ov70_02262E3C
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl ov70_02264B64
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022643C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022643A4: ; jump table
	.short _022643AC - _022643A4 - 2 ; case 0
	.short _022643B2 - _022643A4 - 2 ; case 1
	.short _022643B8 - _022643A4 - 2 ; case 2
	.short _022643BE - _022643A4 - 2 ; case 3
_022643AC:
	mov r0, #3
	str r0, [r4, #8]
	b _022643CC
_022643B2:
	mov r0, #4
	str r0, [r4, #8]
	b _022643CC
_022643B8:
	mov r0, #5
	str r0, [r4, #8]
	b _022643CC
_022643BE:
	mov r0, #6
	str r0, [r4, #8]
	b _022643CC
_022643C4:
	bl GF_AssertFail
	mov r0, #5
	str r0, [r4, #8]
_022643CC:
	ldr r0, [sp, #0x24]
	bl ov66_0222E12C
	cmp r0, #1
	bne _022643E8
	mov r0, #0x16
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _022646BC
_022643E8:
	ldr r0, [sp, #0x24]
	bl ov66_0222E004
	cmp r0, #1
	bne _02264404
	mov r0, #0x48
	strh r0, [r4, #4]
	mov r0, #1
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _022646BC
_02264404:
	ldr r0, [sp, #0x20]
	bl ov70_02264B64
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl ov66_02232B00
	cmp r0, #0
	bne _0226442A
	mov r0, #0x14
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _022646BC
_0226442A:
	add r0, r6, #0
	bl ov66_02232A48
	cmp r0, #0
	bne _02264438
	bl GF_AssertFail
_02264438:
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264440:
	bl ov66_02232A84
	cmp r0, #1
	bne _022644C6
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	add r1, sp, #0x40
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	add r0, r4, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	bl ov66_0222E964
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [r6, #8]
	sub r0, r0, #5
	cmp r0, #1
	bhi _022644A0
	mov r5, #0
	add r4, r5, #0
_0226447A:
	add r0, r7, #0
	add r1, r4, #0
	bl ov66_0222E974
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02264498
	cmp r5, #4
	bhs _02264492
	add r1, sp, #0x40
	strb r0, [r1, r5]
_02264492:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02264498:
	add r4, r4, #1
	cmp r4, #4
	blt _0226447A
	b _022644A6
_022644A0:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x38
	strb r0, [r1, #8]
_022644A6:
	add r3, sp, #0x38
	ldrb r0, [r3, #9]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xb]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #8]
	ldr r1, [r6, #8]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	bl ov66_0222EA10
	b _022646BC
_022644C6:
	cmp r0, #2
	beq _022644CC
	b _022646BC
_022644CC:
	mov r0, #0x14
	strh r0, [r6, #4]
	mov r0, #0
	strh r0, [r6, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _022646BC
_022644DE:
	ldr r0, [sp, #0x20]
	bl ov70_02264BCC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	bl ov70_02264C34
	str r0, [sp, #0x30]
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov70_0225DF38
	add r0, r4, #0
	bl ov70_0225DEE8
	ldr r1, [sp, #0x30]
	bl ov66_0222E3E4
	ldr r0, [sp, #0x24]
	ldr r1, [r6, #8]
	bl ov66_0222EF94
	ldr r0, [r6, #8]
	cmp r0, #6
	bhi _02264548
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264528: ; jump table
	.short _02264548 - _02264528 - 2 ; case 0
	.short _02264548 - _02264528 - 2 ; case 1
	.short _02264548 - _02264528 - 2 ; case 2
	.short _02264536 - _02264528 - 2 ; case 3
	.short _02264536 - _02264528 - 2 ; case 4
	.short _0226453C - _02264528 - 2 ; case 5
	.short _02264542 - _02264528 - 2 ; case 6
_02264536:
	mov r0, #5
	str r0, [sp, #0x18]
	b _0226454C
_0226453C:
	mov r0, #3
	str r0, [sp, #0x18]
	b _0226454C
_02264542:
	mov r0, #4
	str r0, [sp, #0x18]
	b _0226454C
_02264548:
	bl GF_AssertFail
_0226454C:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl ov66_0222F040
	add r0, r7, #0
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r4, r0, #0
	add r0, r7, #0
	bl ov70_0225CD34
	add r1, sp, #0x38
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	ldr r0, [sp, #0x34]
	strh r0, [r4, #4]
	ldr r0, [r6, #8]
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov70_02262E64
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022645B4:
	add r0, r7, #0
	mov r1, #6
	bl ov70_0225CD60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022645F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022645D0: ; jump table
	.short _022645D8 - _022645D0 - 2 ; case 0
	.short _022645DE - _022645D0 - 2 ; case 1
	.short _022645E4 - _022645D0 - 2 ; case 2
	.short _022645EA - _022645D0 - 2 ; case 3
_022645D8:
	mov r0, #6
	str r0, [sp, #0x14]
	b _022645F4
_022645DE:
	mov r0, #5
	str r0, [sp, #0x14]
	b _022645F4
_022645E4:
	mov r0, #8
	str r0, [sp, #0x14]
	b _022645F4
_022645EA:
	mov r0, #7
	str r0, [sp, #0x14]
	b _022645F4
_022645F0:
	bl GF_AssertFail
_022645F4:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264606:
	add r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _022646BC
	mov r0, #8
	str r0, [r6, #0]
	add r0, r5, #0
	mov r1, #7
	bl ov70_02262E88
	b _022646BC
_0226461E:
	add r0, r7, #0
	mov r1, #6
	bl ov70_0225CD60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov63_0222C0AC
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDAC
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264644:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _022646BC
	mov r0, #8
	str r0, [r6, #0]
	add r0, r5, #0
	mov r1, #7
	bl ov70_02262E88
	b _022646BC
_0226465E:
	ldr r0, [r6, #0]
	sub r0, r0, #1
	str r0, [r6, #0]
	cmp r0, #0
	bgt _022646BC
	ldr r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	ldrh r1, [r6, #6]
	ldrh r2, [r6, #4]
	add r0, r4, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_0226468C:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _022646BC
	add r0, r5, #0
	bl ov70_02262E64
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp, #0x10]
	ldr r2, _022646C4 ; =0x0226D9D0
	mov r3, #0
	bl ov70_02262E94
_022646BC:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022646C4: .word 0x0226D9D0
	thumb_func_end ov70_02264324

	thumb_func_start ov70_022646C8
ov70_022646C8: ; 0x022646C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl ov70_02262E80
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x18]
	bl ov70_0225CCAC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #7
	bls _02264702
	b _02264966
_02264702:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226470E: ; jump table
	.short _0226471E - _0226470E - 2 ; case 0
	.short _02264792 - _0226470E - 2 ; case 1
	.short _022647AC - _0226470E - 2 ; case 2
	.short _0226486A - _0226470E - 2 ; case 3
	.short _0226488A - _0226470E - 2 ; case 4
	.short _0226489E - _0226470E - 2 ; case 5
	.short _02264922 - _0226470E - 2 ; case 6
	.short _0226493A - _0226470E - 2 ; case 7
_0226471E:
	add r0, r7, #0
	mov r1, #4
	bl ov70_02262E3C
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	mov r0, #0
	strb r0, [r5]
	add r0, r4, #0
	bl ov70_0225DF40
	cmp r0, #0x1e
	beq _02264750
	cmp r0, #0x1f
	beq _0226475C
	cmp r0, #0x20
	beq _02264768
	b _02264774
_02264750:
	mov r0, #0
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #2
	strb r0, [r5, #3]
	b _02264778
_0226475C:
	mov r0, #1
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #3
	strb r0, [r5, #3]
	b _02264778
_02264768:
	mov r0, #2
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #4
	strb r0, [r5, #3]
	b _02264778
_02264774:
	bl GF_AssertFail
_02264778:
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xc
	bl ov66_0222E3E4
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	ldr r2, _0226496C ; =0x0226DA20
	add r3, r5, #0
	bl ov70_02262EC0
	b _02264966
_02264792:
	ldrb r0, [r5]
	cmp r0, #8
	bne _022647A2
	add r0, r7, #0
	mov r1, #2
	bl ov70_02262E88
	b _02264966
_022647A2:
	add r0, r7, #0
	mov r1, #3
	bl ov70_02262E88
	b _02264966
_022647AC:
	add r0, r4, #0
	bl ov70_0225DF40
	cmp r0, #0x1e
	beq _022647C0
	cmp r0, #0x1f
	beq _022647C8
	cmp r0, #0x20
	beq _022647D0
	b _022647D6
_022647C0:
	mov r0, #0
	mov r6, #3
	str r0, [sp, #8]
	b _022647D6
_022647C8:
	mov r0, #1
	mov r6, #4
	str r0, [sp, #8]
	b _022647D6
_022647D0:
	mov r0, #2
	mov r6, #5
	str r0, [sp, #8]
_022647D6:
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	lsl r1, r6, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF38
	ldrb r1, [r5, #2]
	ldr r0, [sp, #0xc]
	bl ov66_0222EF94
	ldr r0, [sp, #0xc]
	bl ov66_0222F030
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl ov66_0222F040
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl ov70_0225CD34
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #2
	strh r0, [r6, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	asr r2, r0, #3
	lsr r2, r2, #0x1c
	add r2, r0, r2
	asr r0, r2, #4
	strh r0, [r6]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r6, #2]
	ldr r0, [sp, #0x1c]
	strh r0, [r6, #4]
	ldrb r0, [r5, #2]
	strh r0, [r6, #8]
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl ov66_0222E2C4
	add r0, r7, #0
	bl ov70_02262E64
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226486A:
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	add r3, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #2
	bl ov70_0225CDAC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226488A:
	ldr r0, [sp, #0x10]
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264966
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226489E:
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5]
	cmp r0, #7
	bhi _022648F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022648B4: ; jump table
	.short _022648C4 - _022648B4 - 2 ; case 0
	.short _022648D2 - _022648B4 - 2 ; case 1
	.short _022648D6 - _022648B4 - 2 ; case 2
	.short _022648E4 - _022648B4 - 2 ; case 3
	.short _022648E8 - _022648B4 - 2 ; case 4
	.short _022648F4 - _022648B4 - 2 ; case 5
	.short _022648EC - _022648B4 - 2 ; case 6
	.short _022648F0 - _022648B4 - 2 ; case 7
_022648C4:
	ldrb r1, [r5, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r6, #4
	b _022648F8
_022648D2:
	mov r6, #5
	b _022648F8
_022648D6:
	ldrb r1, [r5, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r6, #6
	b _022648F8
_022648E4:
	mov r6, #0x13
	b _022648F8
_022648E8:
	mov r6, #0x11
	b _022648F8
_022648EC:
	mov r6, #0x1d
	b _022648F8
_022648F0:
	mov r6, #7
	b _022648F8
_022648F4:
	mov r0, #0
	str r0, [sp, #4]
_022648F8:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02264918
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_02264918:
	add r0, r7, #0
	mov r1, #7
	bl ov70_02262E88
	b _02264966
_02264922:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02264966
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226493A:
	add r0, r7, #0
	bl ov70_02262E64
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl ov66_0222E3E4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _02264970 ; =0x0226D9D0
	mov r3, #0
	bl ov70_02262E94
_02264966:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226496C: .word 0x0226DA20
_02264970: .word 0x0226D9D0
	thumb_func_end ov70_022646C8

	thumb_func_start ov70_02264974
ov70_02264974: ; 0x02264974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp]
	bl ov70_02262E80
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DF10
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #6
	bls _022649AC
	b _02264B56
_022649AC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022649B8: ; jump table
	.short _022649C6 - _022649B8 - 2 ; case 0
	.short _02264A2A - _022649B8 - 2 ; case 1
	.short _02264AC0 - _022649B8 - 2 ; case 2
	.short _02264AE0 - _022649B8 - 2 ; case 3
	.short _02264AF4 - _022649B8 - 2 ; case 4
	.short _02264B10 - _022649B8 - 2 ; case 5
	.short _02264B28 - _022649B8 - 2 ; case 6
_022649C6:
	add r0, r5, #0
	mov r1, #0xc
	bl ov70_02262E3C
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xd
	bl ov66_0222E3E4
	add r0, r7, #0
	bl ov66_0222E12C
	cmp r0, #1
	bne _022649F4
	mov r0, #0x7a
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02264B5A
_022649F4:
	add r0, r7, #0
	bl ov66_0222E19C
	cmp r0, #1
	bne _02264A04
	mov r0, #0xa
	strh r0, [r6, #2]
	b _02264A20
_02264A04:
	add r0, r7, #0
	bl ov66_0222E0DC
	cmp r0, #1
	bne _02264A1C
	mov r0, #0x62
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02264B5A
_02264A1C:
	mov r0, #9
	strh r0, [r6, #2]
_02264A20:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02264B5A
_02264A2A:
	ldr r0, [sp, #8]
	ldrh r0, [r0, #2]
	cmp r0, #9
	bne _02264A38
	mov r0, #9
	str r0, [sp, #4]
	b _02264A42
_02264A38:
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r7, #0
	bl ov66_0222E10C
_02264A42:
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	ldr r1, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov70_0225DF38
	mov r1, #0x17
	add r2, r1, #0
	add r0, r7, #0
	sub r2, #0x18
	bl ov66_0222E500
	add r0, r6, #0
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DEEC
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_0225CD34
	add r1, sp, #0x10
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #3
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	strh r7, [r4, #4]
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov70_02262E64
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02264AC0:
	add r0, r6, #0
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov70_0225CDAC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264AE0:
	add r0, r6, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264B5A
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264AF4:
	ldr r2, [sp, #8]
	add r0, r4, #0
	ldrh r2, [r2]
	mov r1, #1
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264B10:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02264B5A
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264B28:
	add r0, r5, #0
	bl ov70_02262E64
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl ov66_0222E3E4
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _02264B60 ; =0x0226D9D0
	mov r3, #0
	bl ov70_02262E94
	b _02264B5A
_02264B56:
	bl GF_AssertFail
_02264B5A:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264B60: .word 0x0226D9D0
	thumb_func_end ov70_02264974

	thumb_func_start ov70_02264B64
ov70_02264B64: ; 0x02264B64
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264BC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264B76: ; jump table
	.short _02264BC2 - _02264B76 - 2 ; case 0
	.short _02264BC2 - _02264B76 - 2 ; case 1
	.short _02264BC2 - _02264B76 - 2 ; case 2
	.short _02264BC2 - _02264B76 - 2 ; case 3
	.short _02264BC2 - _02264B76 - 2 ; case 4
	.short _02264BC2 - _02264B76 - 2 ; case 5
	.short _02264BBA - _02264B76 - 2 ; case 6
	.short _02264BBA - _02264B76 - 2 ; case 7
	.short _02264BBA - _02264B76 - 2 ; case 8
	.short _02264BBA - _02264B76 - 2 ; case 9
	.short _02264BBA - _02264B76 - 2 ; case 10
	.short _02264BBA - _02264B76 - 2 ; case 11
	.short _02264BBA - _02264B76 - 2 ; case 12
	.short _02264BBA - _02264B76 - 2 ; case 13
	.short _02264BBE - _02264B76 - 2 ; case 14
	.short _02264BBE - _02264B76 - 2 ; case 15
	.short _02264BBE - _02264B76 - 2 ; case 16
	.short _02264BBE - _02264B76 - 2 ; case 17
	.short _02264BBE - _02264B76 - 2 ; case 18
	.short _02264BBE - _02264B76 - 2 ; case 19
	.short _02264BBE - _02264B76 - 2 ; case 20
	.short _02264BBE - _02264B76 - 2 ; case 21
	.short _02264BB2 - _02264B76 - 2 ; case 22
	.short _02264BB2 - _02264B76 - 2 ; case 23
	.short _02264BB2 - _02264B76 - 2 ; case 24
	.short _02264BB2 - _02264B76 - 2 ; case 25
	.short _02264BB6 - _02264B76 - 2 ; case 26
	.short _02264BB6 - _02264B76 - 2 ; case 27
	.short _02264BB6 - _02264B76 - 2 ; case 28
	.short _02264BB6 - _02264B76 - 2 ; case 29
_02264BB2:
	mov r0, #2
	pop {r3, pc}
_02264BB6:
	mov r0, #3
	pop {r3, pc}
_02264BBA:
	mov r0, #0
	pop {r3, pc}
_02264BBE:
	mov r0, #1
	pop {r3, pc}
_02264BC2:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02264B64

	thumb_func_start ov70_02264BCC
ov70_02264BCC: ; 0x02264BCC
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264C2A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264BDE: ; jump table
	.short _02264C2A - _02264BDE - 2 ; case 0
	.short _02264C2A - _02264BDE - 2 ; case 1
	.short _02264C2A - _02264BDE - 2 ; case 2
	.short _02264C2A - _02264BDE - 2 ; case 3
	.short _02264C2A - _02264BDE - 2 ; case 4
	.short _02264C2A - _02264BDE - 2 ; case 5
	.short _02264C22 - _02264BDE - 2 ; case 6
	.short _02264C22 - _02264BDE - 2 ; case 7
	.short _02264C22 - _02264BDE - 2 ; case 8
	.short _02264C22 - _02264BDE - 2 ; case 9
	.short _02264C22 - _02264BDE - 2 ; case 10
	.short _02264C22 - _02264BDE - 2 ; case 11
	.short _02264C22 - _02264BDE - 2 ; case 12
	.short _02264C22 - _02264BDE - 2 ; case 13
	.short _02264C26 - _02264BDE - 2 ; case 14
	.short _02264C26 - _02264BDE - 2 ; case 15
	.short _02264C26 - _02264BDE - 2 ; case 16
	.short _02264C26 - _02264BDE - 2 ; case 17
	.short _02264C26 - _02264BDE - 2 ; case 18
	.short _02264C26 - _02264BDE - 2 ; case 19
	.short _02264C26 - _02264BDE - 2 ; case 20
	.short _02264C26 - _02264BDE - 2 ; case 21
	.short _02264C1A - _02264BDE - 2 ; case 22
	.short _02264C1A - _02264BDE - 2 ; case 23
	.short _02264C1A - _02264BDE - 2 ; case 24
	.short _02264C1A - _02264BDE - 2 ; case 25
	.short _02264C1E - _02264BDE - 2 ; case 26
	.short _02264C1E - _02264BDE - 2 ; case 27
	.short _02264C1E - _02264BDE - 2 ; case 28
	.short _02264C1E - _02264BDE - 2 ; case 29
_02264C1A:
	mov r0, #1
	pop {r3, pc}
_02264C1E:
	mov r0, #2
	pop {r3, pc}
_02264C22:
	mov r0, #6
	pop {r3, pc}
_02264C26:
	mov r0, #7
	pop {r3, pc}
_02264C2A:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02264BCC

	thumb_func_start ov70_02264C34
ov70_02264C34: ; 0x02264C34
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264C92
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264C46: ; jump table
	.short _02264C92 - _02264C46 - 2 ; case 0
	.short _02264C92 - _02264C46 - 2 ; case 1
	.short _02264C92 - _02264C46 - 2 ; case 2
	.short _02264C92 - _02264C46 - 2 ; case 3
	.short _02264C92 - _02264C46 - 2 ; case 4
	.short _02264C92 - _02264C46 - 2 ; case 5
	.short _02264C8A - _02264C46 - 2 ; case 6
	.short _02264C8A - _02264C46 - 2 ; case 7
	.short _02264C8A - _02264C46 - 2 ; case 8
	.short _02264C8A - _02264C46 - 2 ; case 9
	.short _02264C8A - _02264C46 - 2 ; case 10
	.short _02264C8A - _02264C46 - 2 ; case 11
	.short _02264C8A - _02264C46 - 2 ; case 12
	.short _02264C8A - _02264C46 - 2 ; case 13
	.short _02264C8E - _02264C46 - 2 ; case 14
	.short _02264C8E - _02264C46 - 2 ; case 15
	.short _02264C8E - _02264C46 - 2 ; case 16
	.short _02264C8E - _02264C46 - 2 ; case 17
	.short _02264C8E - _02264C46 - 2 ; case 18
	.short _02264C8E - _02264C46 - 2 ; case 19
	.short _02264C8E - _02264C46 - 2 ; case 20
	.short _02264C8E - _02264C46 - 2 ; case 21
	.short _02264C82 - _02264C46 - 2 ; case 22
	.short _02264C82 - _02264C46 - 2 ; case 23
	.short _02264C82 - _02264C46 - 2 ; case 24
	.short _02264C82 - _02264C46 - 2 ; case 25
	.short _02264C86 - _02264C46 - 2 ; case 26
	.short _02264C86 - _02264C46 - 2 ; case 27
	.short _02264C86 - _02264C46 - 2 ; case 28
	.short _02264C86 - _02264C46 - 2 ; case 29
_02264C82:
	mov r0, #7
	pop {r3, pc}
_02264C86:
	mov r0, #8
	pop {r3, pc}
_02264C8A:
	mov r0, #5
	pop {r3, pc}
_02264C8E:
	mov r0, #6
	pop {r3, pc}
_02264C92:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02264C34

	thumb_func_start ov70_02264C9C
ov70_02264C9C: ; 0x02264C9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02264CB0
	cmp r0, #1
	beq _02264D06
	b _02264D30
_02264CB0:
	add r0, r4, #0
	bl ov70_0225DEE8
	add r6, r0, #0
	bl ov66_0222E12C
	cmp r0, #1
	bne _02264CCE
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	b _02264CF2
_02264CCE:
	add r0, r6, #0
	bl ov66_0222E170
	cmp r0, #1
	bne _02264CE6
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov70_0225E20C
	add r1, r0, #0
	b _02264CF2
_02264CE6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov70_0225E20C
	add r1, r0, #0
_02264CF2:
	add r0, r4, #0
	bl ov70_0225DF8C
	ldr r0, _02264D34 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264D30
_02264D06:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02264D30
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02264D30:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02264D34: .word 0x000005DC
	thumb_func_end ov70_02264C9C

	thumb_func_start ov70_02264D38
ov70_02264D38: ; 0x02264D38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov70_0225DEF0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov70_0225DEF8
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DF08
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0xf
	bls _02264D76
	b _022650D2
_02264D76:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264D82: ; jump table
	.short _02264DA2 - _02264D82 - 2 ; case 0
	.short _02264DEA - _02264D82 - 2 ; case 1
	.short _02264E5E - _02264D82 - 2 ; case 2
	.short _02264EF4 - _02264D82 - 2 ; case 3
	.short _02264F28 - _02264D82 - 2 ; case 4
	.short _02264F58 - _02264D82 - 2 ; case 5
	.short _02264F94 - _02264D82 - 2 ; case 6
	.short _02264FAA - _02264D82 - 2 ; case 7
	.short _02264FC2 - _02264D82 - 2 ; case 8
	.short _02264FE2 - _02264D82 - 2 ; case 9
	.short _02265002 - _02264D82 - 2 ; case 10
	.short _02265022 - _02264D82 - 2 ; case 11
	.short _02265036 - _02264D82 - 2 ; case 12
	.short _02265046 - _02264D82 - 2 ; case 13
	.short _02265092 - _02264D82 - 2 ; case 14
	.short _022650A8 - _02264D82 - 2 ; case 15
_02264DA2:
	add r0, r6, #0
	mov r1, #0x18
	bl ov70_02262E3C
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl ov70_0225CC70
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov70_0225DF40
	cmp r0, #0x21
	beq _02264DCA
	cmp r0, #0x22
	beq _02264DD0
	cmp r0, #0x23
	beq _02264DD6
	b _02264DDC
_02264DCA:
	mov r0, #2
	strh r0, [r4, #6]
	b _02264DE0
_02264DD0:
	mov r0, #1
	strh r0, [r4, #6]
	b _02264DE0
_02264DD6:
	mov r0, #0
	strh r0, [r4, #6]
	b _02264DE0
_02264DDC:
	bl GF_AssertFail
_02264DE0:
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	b _022650D2
_02264DEA:
	ldr r0, [sp, #4]
	bl ov66_0222E170
	cmp r0, #0
	bne _02264E02
	mov r0, #8
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E02:
	ldr r0, [sp, #4]
	bl ov66_0222E12C
	cmp r0, #1
	bne _02264E1A
	mov r0, #0xa
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E1A:
	ldrh r2, [r4, #6]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov66_0222EBB4
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0]
	cmp r0, r1
	beq _02264E50
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1f
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	b _022650D2
_02264E50:
	mov r0, #9
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E5E:
	ldr r0, _022650D8 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02264E6E
	mov r1, #0x80
	tst r0, r1
	beq _02264E8E
_02264E6E:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov66_0222EBC4
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #6
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _022650D2
_02264E8E:
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02265104
	cmp r0, #1
	beq _02264E9C
	b _022650D2
_02264E9C:
	add r0, r5, #0
	bl ov70_0225DFCC
	ldr r0, [sp, #4]
	bl ov66_0222EC40
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov70_0225DEE8
	mov r1, #0xa
	bl ov66_0222E3E4
	add r0, r5, #0
	bl ov70_0225DF44
	ldr r0, [sp, #0xc]
	bl ov70_02260B3C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov70_0225D06C
	ldr r0, _022650DC ; =0x000005AA
	bl sub_02005748
	add r0, r5, #0
	bl ov70_0225E410
	mov r0, #3
	strb r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	ldr r0, [sp, #4]
	bl ov66_0222F000
	b _022650D2
_02264EF4:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02265144
	cmp r0, #1
	bne _02264FB6
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov70_0225D06C
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov70_0225D060
	ldr r0, [r4, #0xc]
	mov r1, #8
	bl ov70_0225D0B4
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	mov r0, #0
	strh r0, [r4, #8]
	b _022650D2
_02264F28:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov70_022650E4
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_022652BC
	cmp r0, #1
	bne _02264FB6
	add r0, r6, #0
	mov r1, #5
	bl ov70_02262E88
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	b _022650D2
_02264F58:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov70_022650E4
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	bl ov70_0225D054
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265370
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02264FB6
	mov r0, #0
	strb r0, [r4, #0xb]
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	b _022650D2
_02264F94:
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #2
	mov r3, #1
	bl ov70_0225CDAC
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022650D2
_02264FAA:
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	beq _02264FB8
_02264FB6:
	b _022650D2
_02264FB8:
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02264FC2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02264FE2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02265002:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x21
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02265022:
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022650D2
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02265036:
	add r0, r5, #0
	bl ov70_0225DFEC
	ldrb r1, [r4, #0xa]
	add r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02265046:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265370
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0x78
	bls _022650D2
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225DF34
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225DF38
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_0225DEE8
	mov r1, #0xb
	bl ov66_0222E3E4
	add r0, r6, #0
	mov r1, #0xe
	bl ov70_02262E88
	b _022650D2
_02265092:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265370
	b _022650D2
_022650A8:
	add r0, r5, #0
	bl ov70_0225DF10
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DFEC
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r6, #0
	bl ov70_02262E64
	ldr r1, [sp]
	ldr r2, _022650E0 ; =0x0226D9D0
	add r0, r7, #0
	mov r3, #0
	bl ov70_02262E94
_022650D2:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022650D8: .word 0x021BF67C
_022650DC: .word 0x000005AA
_022650E0: .word 0x0226D9D0
	thumb_func_end ov70_02264D38

	thumb_func_start ov70_022650E4
ov70_022650E4: ; 0x022650E4
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	add r1, sp, #0
	bl ov70_0225D054
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov70_02260B18
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022650E4

	thumb_func_start ov70_02265104
ov70_02265104: ; 0x02265104
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov66_0222EC04
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	add r1, sp, #0x14
	bl ov70_0225D054
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	add r1, r1, r0
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0226513E
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226513E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02265104

	thumb_func_start ov70_02265144
ov70_02265144: ; 0x02265144
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #8
	add r6, r1, #0
	ldrsh r1, [r5, r0]
	add r7, r2, #0
	add r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x18
	bge _02265160
	mov r4, #0
	b _02265166
_02265160:
	mov r0, #0x18
	strh r0, [r5, #8]
	mov r4, #1
_02265166:
	ldr r0, [r5, #0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov66_0222EC04
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r3, sp, #0x1c
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	bl ov70_0225CD34
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #4
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x28
	bl ov70_0225C700
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	sub r6, r1, r0
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _022651BE
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022651CC
_022651BE:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022651CC:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x14]
	mov r0, #8
	ldrsh r2, [r5, r0]
	cmp r2, #4
	blt _02265252
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x30]
	sub r6, r1, r0
	sub r0, r2, #4
	cmp r0, #0
	ble _0226521A
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02265228
_0226521A:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02265228:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #5
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x18]
	b _02265256
_02265252:
	mov r0, #0
	str r0, [sp, #0x18]
_02265256:
	add r0, sp, #0x10
	add r1, sp, #0x28
	add r2, r0, #0
	bl VEC_Add
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov70_02260B18
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, _022652B4 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x18
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _022652B8 ; =0x020F983C
	ldr r1, [sp, #0x14]
	ldrsh r3, [r0, r2]
	asr r0, r3, #0x1f
	lsr r2, r3, #0x10
	lsl r0, r0, #0x10
	orr r0, r2
	mov r2, #2
	lsl r6, r3, #0x10
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x10
	bl ov70_0225D048
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022652B4: .word 0x00007FFF
_022652B8: .word 0x020F983C
	thumb_func_end ov70_02265144

	thumb_func_start ov70_022652BC
ov70_022652BC: ; 0x022652BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #8
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	bge _022652D4
	mov r6, #0
	b _022652DA
_022652D4:
	mov r0, #0x10
	strh r0, [r5, #8]
	mov r6, #1
_022652DA:
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r3, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r1, r2, r1
	ldr r0, _0226533C ; =0x00007FFF
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02265340 ; =0x020F983C
	mov r2, #3
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, [sp, #4]
	add r1, sp, #0
	add r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl ov70_0225D048
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226533C: .word 0x00007FFF
_02265340: .word 0x020F983C
	thumb_func_end ov70_022652BC

	thumb_func_start ov70_02265344
ov70_02265344: ; 0x02265344
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r1, sp, #0
	add r2, sp, #4
	bl ov66_0222EC04
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r3, sp, #8
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov70_0225D048
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02265344

	thumb_func_start ov70_02265370
ov70_02265370: ; 0x02265370
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov66_0222EC04
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_0225E420
	cmp r0, #1
	bne _022653A4
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263334
	cmp r0, #0
	bne _022653B8
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263270
	b _022653B8
_022653A4:
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263334
	cmp r0, #1
	bne _022653B8
	add r0, r5, #0
	add r0, #0x10
	bl ov70_0226332C
_022653B8:
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263290
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov70_0225D054
	ldr r0, [sp, #0xc]
	add r1, sp, #8
	add r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl ov70_0225D048
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov70_02265370

	thumb_func_start ov70_022653DC
ov70_022653DC: ; 0x022653DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	bl ov70_0225E00C
	mov r4, #1
	mov r6, #0
	add r7, r4, #0
_022653F0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_0225E30C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, #0x12
	blt _022653F0
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E044
	ldr r2, [sp]
	ldr r3, _0226544C ; =0x0226DA98
	add r2, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226544C: .word 0x0226DA98
	thumb_func_end ov70_022653DC

	thumb_func_start ov70_02265450
ov70_02265450: ; 0x02265450
	ldr r3, _02265458 ; =ov70_0225E034
	add r0, r1, #0
	bx r3
	nop
_02265458: .word ov70_0225E034
	thumb_func_end ov70_02265450

	thumb_func_start ov70_0226545C
ov70_0226545C: ; 0x0226545C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov70_0225DEE8
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov70_0225DEF0
	add r1, r4, #0
	str r0, [sp, #0xc]
	bl ov70_0225CC70
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_02262E80
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bhi _02265516
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022654A4: ; jump table
	.short _022654B0 - _022654A4 - 2 ; case 0
	.short _022654C0 - _022654A4 - 2 ; case 1
	.short _022654E4 - _022654A4 - 2 ; case 2
	.short _02265528 - _022654A4 - 2 ; case 3
	.short _022655DA - _022654A4 - 2 ; case 4
	.short _022655EC - _022654A4 - 2 ; case 5
_022654B0:
	add r0, r5, #0
	mov r1, #8
	bl ov70_02262E3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
_022654C0:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov66_0222E02C
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov66_0222E34C
	cmp r6, #1
	beq _022654DA
	cmp r0, #1
	bne _02265516
_022654DA:
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02265620
_022654E4:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov66_0222E374
	add r6, r0, #0
	bne _022654FA
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02265620
_022654FA:
	bl ov66_0222E8D8
	cmp r0, #1
	bne _02265516
	add r0, r6, #0
	bl ov66_0222E858
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ov70_0225CBB8
	cmp r0, #0
	bne _02265518
_02265516:
	b _02265620
_02265518:
	mov r1, #0
	bl ov70_0225D0C0
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _02265620
_02265528:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov66_0222E374
	cmp r0, #0
	bne _02265548
	cmp r7, #0
	beq _0226553E
	add r0, r7, #0
	bl ov70_0225CC54
_0226553E:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02265620
_02265548:
	bl ov66_0222E71C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02265CCC
	cmp r0, #0
	beq _022655A6
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #0x14]
	ldr r2, _02265628 ; =0x0226D9F0
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl ov70_02262EC0
	b _02265620
_022655A6:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E88
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	add r0, r7, #0
	mov r1, #1
	bl ov70_0225D0C0
	b _02265620
_022655DA:
	add r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _02265620
	add r0, r5, #0
	bl ov70_02262E8C
	b _02265620
_022655EC:
	add r0, r5, #0
	bl ov70_02262E64
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDEC
	ldr r0, [sp, #0x14]
	ldr r2, _0226562C ; =0x0226D9D8
	add r1, r4, #0
	mov r3, #0
	bl ov70_02262E94
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF6C
_02265620:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265628: .word 0x0226D9F0
_0226562C: .word 0x0226D9D8
	thumb_func_end ov70_0226545C

	thumb_func_start ov70_02265630
ov70_02265630: ; 0x02265630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r4, r2, #0
	bl ov70_0225DEE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl ov70_0225CC70
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl ov70_0225CCAC
	ldr r0, [sp, #8]
	bl ov70_02262E80
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl ov70_02262E84
	cmp r0, #0
	beq _0226567A
	cmp r0, #1
	beq _0226568C
	b _022657BA
_0226567A:
	ldr r0, [sp, #8]
	mov r1, #8
	bl ov70_02262E3C
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r1, #1
	bl ov70_02262E88
_0226568C:
	add r0, r6, #0
	add r1, r4, #0
	bl ov66_0222E058
	cmp r0, #0
	beq _022656CE
	ldr r0, [sp, #8]
	bl ov70_02262E64
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	ldr r0, [sp, #0xc]
	ldr r2, _022657C0 ; =0x0226D9E0
	add r1, r4, #0
	mov r3, #0
	bl ov70_02262E94
	b _022657BA
_022656CE:
	add r0, r6, #0
	add r1, r4, #0
	bl ov66_0222E09C
	add r0, r6, #0
	bl ov66_0222E170
	cmp r0, #1
	bne _0226572E
	add r0, r6, #0
	add r1, r4, #0
	bl ov66_0222EBA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226572E
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #8]
	bl ov70_02262E64
	ldr r0, [sp, #0xc]
	ldr r2, _022657C4 ; =0x0226D9E8
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	bl ov70_02262E94
	b _022657BA
_0226572E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov66_0222E374
	bl ov66_0222E71C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r7, #0
	bl ov70_02265CCC
	cmp r0, #0
	beq _0226578C
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #0xc]
	ldr r2, _022657C8 ; =0x0226D9F0
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	bl ov70_02262EC0
	b _022657BA
_0226578C:
	add r0, r6, #0
	add r1, r4, #0
	bl ov66_0222EB54
	cmp r0, #1
	bne _022657BA
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	ldr r0, [sp, #0xc]
	ldr r2, _022657CC ; =0x0226DA18
	add r1, r4, #0
	mov r3, #0
	bl ov70_02262EC0
_022657BA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022657C0: .word 0x0226D9E0
_022657C4: .word 0x0226D9E8
_022657C8: .word 0x0226D9F0
_022657CC: .word 0x0226DA18
	thumb_func_end ov70_02265630

	thumb_func_start ov70_022657D0
ov70_022657D0: ; 0x022657D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	add r0, r6, #0
	bl ov70_0225DEF0
	ldr r1, [sp]
	add r7, r0, #0
	bl ov70_0225CC70
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022657FC
	cmp r0, #1
	beq _0226580E
	cmp r0, #2
	beq _02265820
	b _02265836
_022657FC:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02265836
_0226580E:
	add r0, r4, #0
	bl ov70_0225CE38
	cmp r0, #0
	beq _02265836
	add r0, r5, #0
	bl ov70_02262E8C
	b _02265836
_02265820:
	add r0, r4, #0
	bl ov70_0225CC54
	add r0, r6, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _0226583C ; =0x0226DA10
	mov r3, #0
	bl ov70_02262E94
_02265836:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226583C: .word 0x0226DA10
	thumb_func_end ov70_022657D0

	thumb_func_start ov70_02265840
ov70_02265840: ; 0x02265840
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov70_0225DEE8
	str r0, [sp]
	add r0, r6, #0
	bl ov70_0225DEF0
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov70_0225DEF8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #4
	bhi _022658DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265880: ; jump table
	.short _0226588A - _02265880 - 2 ; case 0
	.short _022658D4 - _02265880 - 2 ; case 1
	.short _0226593A - _02265880 - 2 ; case 2
	.short _022659E8 - _02265880 - 2 ; case 3
	.short _02265A58 - _02265880 - 2 ; case 4
_0226588A:
	add r0, r5, #0
	mov r1, #0x20
	bl ov70_02262E3C
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0225CC70
	str r0, [r4, #0]
	ldr r0, [sp]
	add r1, r7, #0
	bl ov66_0222EBA4
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #4]
	cmp r0, r1
	bne _022658B4
	bl GF_AssertFail
_022658B4:
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r1, r4, #4
	add r2, #8
	bl ov66_0222EC04
	ldr r0, [sp, #8]
	ldr r1, [r4, #0]
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02265A74
_022658D4:
	ldr r0, [r4, #0]
	bl ov70_0225CE38
	cmp r0, #0
	bne _022658E0
_022658DE:
	b _02265A74
_022658E0:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x34
	bl ov70_02262318
	mov r0, #1
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	add r1, sp, #0x34
	bl ov70_0225D054
	ldr r0, [sp, #0x38]
	mov r3, sp
	str r0, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r1, sp, #0xc
	ldrh r2, [r1]
	ldr r0, [r4, #0]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CCB4
	ldr r0, _02265A7C ; =0x0000064F
	bl sub_02005748
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov70_0225D084
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02265A74
_0226593A:
	ldr r0, [r4, #0x14]
	mov r6, #0
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x18
	blt _0226594C
	mov r0, #0x18
	str r0, [r4, #0x14]
	mov r6, #1
_0226594C:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x28
	bl ov70_02262318
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	sub r7, r1, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _0226597E
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226598C
_0226597E:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226598C:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x20]
	ldr r1, [r4, #0xc]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	add r1, sp, #0x1c
	bl ov70_0225D048
	cmp r6, #1
	bne _02265A74
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov70_0225D084
	ldr r0, [r4, #0]
	mov r1, #8
	bl ov70_0225D0B4
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov70_0225D060
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _02265A74
_022659E8:
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl ov70_0225E420
	cmp r0, #1
	bne _02265A0A
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263334
	cmp r0, #0
	bne _02265A1E
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263270
	b _02265A1E
_02265A0A:
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263334
	cmp r0, #1
	bne _02265A1E
	add r0, r4, #0
	add r0, #0x18
	bl ov70_0226332C
_02265A1E:
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263290
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x10
	bl ov70_02262318
	ldr r0, [sp, #0x14]
	add r1, sp, #0x10
	add r0, r0, r6
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov70_0225D048
	ldr r0, [sp]
	ldr r1, [r4, #4]
	bl ov66_0222EB7C
	cmp r0, #2
	bne _02265A74
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E88
	b _02265A74
_02265A58:
	ldr r0, [r4, #0]
	bl ov70_0225CC54
	add r0, r5, #0
	bl ov70_02262E64
	add r0, r6, #0
	bl ov70_0225DF10
	ldr r2, _02265A80 ; =0x0226DA10
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262E94
_02265A74:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265A7C: .word 0x0000064F
_02265A80: .word 0x0226DA10
	thumb_func_end ov70_02265840

	thumb_func_start ov70_02265A84
ov70_02265A84: ; 0x02265A84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp]
	add r7, r0, #0
	add r4, r2, #0
	bl ov70_02262E38
	add r6, r0, #0
	ldr r0, [sp]
	bl ov70_0225DEE8
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	add r1, r4, #0
	bl ov70_0225CC70
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl ov70_0225CCAC
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0xa
	bhi _02265B68
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265ACA: ; jump table
	.short _02265AE0 - _02265ACA - 2 ; case 0
	.short _02265AF8 - _02265ACA - 2 ; case 1
	.short _02265B0A - _02265ACA - 2 ; case 2
	.short _02265B1C - _02265ACA - 2 ; case 3
	.short _02265B5E - _02265ACA - 2 ; case 4
	.short _02265B94 - _02265ACA - 2 ; case 5
	.short _02265C3E - _02265ACA - 2 ; case 6
	.short _02265B0A - _02265ACA - 2 ; case 7
	.short _02265C50 - _02265ACA - 2 ; case 8
	.short _02265B0A - _02265ACA - 2 ; case 9
	.short _02265C9E - _02265ACA - 2 ; case 10
_02265AE0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _02265AEE
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265AEE:
	add r0, r7, #0
	mov r1, #3
	bl ov70_02262E88
	b _02265CC6
_02265AF8:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B0A:
	add r0, r5, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _02265B68
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B1C:
	add r0, r5, #0
	bl ov70_0225CD34
	add r2, sp, #0x14
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #0x1c
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	add r0, r5, #0
	bl ov70_0225D03C
	add r0, r5, #0
	bl ov70_0225D0CC
	cmp r0, #0
	bne _02265B4C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225D0C0
_02265B4C:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B5E:
	add r0, r5, #0
	bl ov70_0225CE38
	cmp r0, #1
	beq _02265B6A
_02265B68:
	b _02265CC6
_02265B6A:
	add r0, r7, #0
	bl ov70_02262E8C
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF6C
	b _02265CC6
_02265B94:
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02265BD4
	ldr r0, [sp, #8]
	bl ov66_0222EEAC
	cmp r0, #0
	bne _02265BD4
	ldr r0, [sp, #8]
	bl ov66_0222E3BC
	bl ov66_0222E71C
	cmp r0, #9
	bne _02265BD4
	ldr r0, [sp, #8]
	bl ov66_0222EEA0
	add r0, r5, #0
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov70_0225CDAC
_02265BD4:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov66_0222E374
	add r5, r0, #0
	bne _02265BE6
	mov r0, #1
	str r0, [sp, #4]
	b _02265C18
_02265BE6:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02265BFC
	ldr r0, [sp, #8]
	bl ov66_0222EDF4
	cmp r0, #0
	bne _02265BFC
	mov r0, #1
	str r0, [sp, #4]
	b _02265C18
_02265BFC:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov66_0222E09C
	cmp r0, #0
	beq _02265C18
	add r0, r5, #0
	bl ov66_0222E71C
	ldrb r1, [r6, #2]
	cmp r0, r1
	beq _02265C18
	mov r0, #1
	str r0, [sp, #4]
_02265C18:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02265CC6
	add r0, r7, #0
	bl ov70_02262E8C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	b _02265CC6
_02265C3E:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265C50:
	ldr r0, [sp, #0xc]
	bl ov70_0225CCAC
	ldrb r1, [r6]
	ldrb r2, [r6, #1]
	bl ov70_0225CEDC
	cmp r0, #0
	bne _02265CC6
	ldrb r0, [r6]
	mov r3, sp
	add r1, sp, #0x14
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r6, #1]
	sub r3, r3, #4
	lsl r0, r0, #4
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CCB4
	add r0, r5, #0
	add r1, sp, #0x18
	bl ov70_0225D03C
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265C9E:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #2
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF6C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265CC6:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02265A84

	thumb_func_start ov70_02265CCC
ov70_02265CCC: ; 0x02265CCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r2, #0
	add r4, r0, #0
	add r0, r6, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r7, #0
	bl ov70_0225DEF0
	add r5, r0, #0
	bl ov70_0225CCAC
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov70_0225DF00
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #4
	bl ov70_0225CD60
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x20]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	cmp r0, #0xe
	bhi _02265D44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265D12: ; jump table
	.short _02265E50 - _02265D12 - 2 ; case 0
	.short _02265E50 - _02265D12 - 2 ; case 1
	.short _02265D30 - _02265D12 - 2 ; case 2
	.short _02265D4C - _02265D12 - 2 ; case 3
	.short _02265D66 - _02265D12 - 2 ; case 4
	.short _02265D80 - _02265D12 - 2 ; case 5
	.short _02265D9E - _02265D12 - 2 ; case 6
	.short _02265DBC - _02265D12 - 2 ; case 7
	.short _02265DDA - _02265D12 - 2 ; case 8
	.short _02265DFE - _02265D12 - 2 ; case 9
	.short _02265DF8 - _02265D12 - 2 ; case 10
	.short _02265E50 - _02265D12 - 2 ; case 11
	.short _02265E50 - _02265D12 - 2 ; case 12
	.short _02265E50 - _02265D12 - 2 ; case 13
	.short _02265E50 - _02265D12 - 2 ; case 14
_02265D30:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EB4 ; =0x0226DA28
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	beq _02265D46
_02265D44:
	b _02265E56
_02265D46:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D4C:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EB8 ; =0x0226DA58
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D66:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EBC ; =0x0226DA38
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D80:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC0 ; =0x0226DAB8
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D9E:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC4 ; =0x0226DAD8
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DBC:
	mov r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC8 ; =0x0226DA48
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DDA:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265ECC ; =0x0226DA68
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DF8:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DFE:
	ldr r0, [sp, #4]
	bl ov66_0222EDF4
	cmp r0, #0
	bne _02265E0E
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E0E:
	ldr r0, [sp, #4]
	bl ov66_0222EE08
	cmp r0, #0
	bne _02265E1E
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E1E:
	ldr r0, [sp, #4]
	bl ov66_0222EE1C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02265E30
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E30:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov70_0225CF4C
	cmp r0, #1
	beq _02265E44
	bl GF_AssertFail
_02265E44:
	ldr r0, [sp, #0x20]
	bl ov63_0222C0AC
	str r0, [sp, #0x20]
	mov r7, #1
	b _02265E56
_02265E50:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E56:
	ldr r0, [sp, #8]
	bl ov70_0225CD34
	add r1, sp, #0x14
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	ldr r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0xa]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	ldr r2, [sp, #0x20]
	bl ov70_0225CD04
	add r1, sp, #0x14
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strb r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strb r0, [r4, #1]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #2]
	ldr r0, [sp, #0x3c]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02265EB4: .word 0x0226DA28
_02265EB8: .word 0x0226DA58
_02265EBC: .word 0x0226DA38
_02265EC0: .word 0x0226DAB8
_02265EC4: .word 0x0226DAD8
_02265EC8: .word 0x0226DA48
_02265ECC: .word 0x0226DA68
	thumb_func_end ov70_02265CCC

	thumb_func_start ov70_02265ED0
ov70_02265ED0: ; 0x02265ED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	str r1, [sp, #4]
	add r6, r3, #0
	str r0, [sp, #0x20]
	ldr r4, _02265F34 ; =0x00000000
	beq _02265F2C
_02265EE4:
	mov r0, #0
	str r0, [sp]
	add r2, sp, #8
	ldr r1, [r5, #0]
	add r0, r7, #0
	add r2, #2
	add r3, sp, #8
	bl ov70_0225C8D8
	cmp r0, #1
	bne _02265F24
	add r1, sp, #8
	add r2, sp, #8
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [sp, #4]
	bl ov70_0225CE7C
	cmp r0, #0
	bne _02265F24
	add r1, sp, #8
	ldrh r0, [r1, #2]
	lsl r2, r0, #4
	ldr r0, [sp, #0x20]
	strh r2, [r0]
	ldrh r0, [r1]
	lsl r1, r0, #4
	ldr r0, [sp, #0x20]
	add sp, #0xc
	strh r1, [r0, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02265F24:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02265EE4
_02265F2C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02265F34: .word 0x00000000
	thumb_func_end ov70_02265ED0

	.rodata


	.global Unk_ov70_0226D9D0
Unk_ov70_0226D9D0: ; 0x0226D9D0
	.incbin "incbin/overlay70_rodata.bin", 0x504, 0x50C - 0x504

	.global Unk_ov70_0226D9D8
Unk_ov70_0226D9D8: ; 0x0226D9D8
	.incbin "incbin/overlay70_rodata.bin", 0x50C, 0x514 - 0x50C

	.global Unk_ov70_0226D9E0
Unk_ov70_0226D9E0: ; 0x0226D9E0
	.incbin "incbin/overlay70_rodata.bin", 0x514, 0x51C - 0x514

	.global Unk_ov70_0226D9E8
Unk_ov70_0226D9E8: ; 0x0226D9E8
	.incbin "incbin/overlay70_rodata.bin", 0x51C, 0x524 - 0x51C

	.global Unk_ov70_0226D9F0
Unk_ov70_0226D9F0: ; 0x0226D9F0
	.incbin "incbin/overlay70_rodata.bin", 0x524, 0x52C - 0x524

	.global Unk_ov70_0226D9F8
Unk_ov70_0226D9F8: ; 0x0226D9F8
	.incbin "incbin/overlay70_rodata.bin", 0x52C, 0x534 - 0x52C

	.global Unk_ov70_0226DA00
Unk_ov70_0226DA00: ; 0x0226DA00
	.incbin "incbin/overlay70_rodata.bin", 0x534, 0x53C - 0x534

	.global Unk_ov70_0226DA08
Unk_ov70_0226DA08: ; 0x0226DA08
	.incbin "incbin/overlay70_rodata.bin", 0x53C, 0x544 - 0x53C

	.global Unk_ov70_0226DA10
Unk_ov70_0226DA10: ; 0x0226DA10
	.incbin "incbin/overlay70_rodata.bin", 0x544, 0x54C - 0x544

	.global Unk_ov70_0226DA18
Unk_ov70_0226DA18: ; 0x0226DA18
	.incbin "incbin/overlay70_rodata.bin", 0x54C, 0x554 - 0x54C

	.global Unk_ov70_0226DA20
Unk_ov70_0226DA20: ; 0x0226DA20
	.incbin "incbin/overlay70_rodata.bin", 0x554, 0x55C - 0x554

	.global Unk_ov70_0226DA28
Unk_ov70_0226DA28: ; 0x0226DA28
	.incbin "incbin/overlay70_rodata.bin", 0x55C, 0x56C - 0x55C

	.global Unk_ov70_0226DA38
Unk_ov70_0226DA38: ; 0x0226DA38
	.incbin "incbin/overlay70_rodata.bin", 0x56C, 0x57C - 0x56C

	.global Unk_ov70_0226DA48
Unk_ov70_0226DA48: ; 0x0226DA48
	.incbin "incbin/overlay70_rodata.bin", 0x57C, 0x58C - 0x57C

	.global Unk_ov70_0226DA58
Unk_ov70_0226DA58: ; 0x0226DA58
	.incbin "incbin/overlay70_rodata.bin", 0x58C, 0x59C - 0x58C

	.global Unk_ov70_0226DA68
Unk_ov70_0226DA68: ; 0x0226DA68
	.incbin "incbin/overlay70_rodata.bin", 0x59C, 0x5AC - 0x59C

	.global Unk_ov70_0226DA78
Unk_ov70_0226DA78: ; 0x0226DA78
	.incbin "incbin/overlay70_rodata.bin", 0x5AC, 0x5CC - 0x5AC

	.global Unk_ov70_0226DA98
Unk_ov70_0226DA98: ; 0x0226DA98
	.incbin "incbin/overlay70_rodata.bin", 0x5CC, 0x5EC - 0x5CC

	.global Unk_ov70_0226DAB8
Unk_ov70_0226DAB8: ; 0x0226DAB8
	.incbin "incbin/overlay70_rodata.bin", 0x5EC, 0x60C - 0x5EC

	.global Unk_ov70_0226DAD8
Unk_ov70_0226DAD8: ; 0x0226DAD8
	.incbin "incbin/overlay70_rodata.bin", 0x60C, 0x62C - 0x60C

	.global Unk_ov70_0226DAF8
Unk_ov70_0226DAF8: ; 0x0226DAF8
	.incbin "incbin/overlay70_rodata.bin", 0x62C, 0x65C - 0x62C

	.global Unk_ov70_0226DB28
Unk_ov70_0226DB28: ; 0x0226DB28
	.incbin "incbin/overlay70_rodata.bin", 0x65C, 0x6EC - 0x65C

	.global Unk_ov70_0226DBB8
Unk_ov70_0226DBB8: ; 0x0226DBB8
	.incbin "incbin/overlay70_rodata.bin", 0x6EC, 0xD8

