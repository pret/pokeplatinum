	.include "macros/function.inc"
	.include "include/ov88_0223B140.inc"

	

	.text


	thumb_func_start ov88_0223B140
ov88_0223B140: ; 0x0223B140
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223B2CC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223B2D0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r2, _0223B2D4 ; =0x000707D0
	mov r0, #3
	mov r1, #0x1a
	bl sub_02017FC8
	mov r0, #0x36
	mov r1, #0x1a
	bl sub_02006C24
	add r5, r0, #0
	ldr r1, _0223B2D8 ; =0x000036B4
	add r0, r6, #0
	mov r2, #0x1a
	bl sub_0200681C
	add r4, r0, #0
	ldr r2, _0223B2D8 ; =0x000036B4
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #0x1a
	bl sub_02018340
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc
	mov r1, #0x16
	mov r2, #0x1a
	bl sub_0200B368
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x1a
	bl sub_0200B358
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x1a
	bl sub_0200B358
	mov r2, #6
	lsl r2, r2, #6
	str r0, [r4, r2]
	mov r1, #0x1a
	mov r0, #0
	sub r2, #0x1e
	add r3, r1, #0
	bl sub_0200B144
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r1, r6, #0
	bl ov88_0223C370
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov88_0223C15C
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov88_0223C17C
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r4, #0
	add r1, r5, #0
	bl ov88_0223C504
	ldr r0, _0223B2DC ; =ov88_0223C0E0
	add r1, r4, #0
	bl sub_02017798
	bl ov88_0223C63C
	add r0, r4, #0
	add r1, r5, #0
	bl ov88_0223C66C
	add r0, r4, #0
	bl ov88_0223CBA0
	mov r0, #0x5d
	ldr r2, [r4, #8]
	lsl r0, r0, #2
	ldr r1, _0223B2E0 ; =0x00000438
	ldr r0, [r4, r0]
	ldr r2, [r2, #0x18]
	add r1, r4, r1
	bl ov88_0223E9C4
	ldr r0, [r4, #8]
	add r1, r4, #0
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	bl sub_02095E60
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223B2E4 ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov88_0223ECBC
	ldr r0, [r4, #0]
	bl sub_02095CD4
	mov r0, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r1, #0x5d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x1a
	bl sub_02038A1C
	bl sub_02039734
	bl sub_02013948
	cmp r0, #0
	bne _0223B2AE
	ldr r1, _0223B2E8 ; =0x0000043D
	mov r0, #4
	mov r2, #1
	bl sub_02004550
	ldr r0, _0223B2E8 ; =0x0000043D
	bl sub_02004A84
	b _0223B2BE
_0223B2AE:
	ldr r1, _0223B2EC ; =0x0000043E
	mov r0, #4
	mov r2, #1
	bl sub_02004550
	ldr r0, _0223B2EC ; =0x0000043E
	bl sub_02004A84
_0223B2BE:
	add r0, r5, #0
	bl sub_02006CA8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223B2CC: .word 0xFFFFE0FF
_0223B2D0: .word 0x04001000
_0223B2D4: .word 0x000707D0
_0223B2D8: .word 0x000036B4
_0223B2DC: .word ov88_0223C0E0
_0223B2E0: .word 0x00000438
_0223B2E4: .word 0x000005A8
_0223B2E8: .word 0x0000043D
_0223B2EC: .word 0x0000043E
	thumb_func_end ov88_0223B140

	thumb_func_start ov88_0223B2F0
ov88_0223B2F0: ; 0x0223B2F0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [sp, #0x10]
	add r4, r2, #0
	lsl r1, r1, #4
	add r1, #0x92
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r6, r3, #0
	lsl r1, r1, #5
	lsl r2, r2, #8
	bl GX_LoadOBJ
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r1, #0xa
	bl sub_02021EF0
	pop {r4, r5, r6, pc}
	thumb_func_end ov88_0223B2F0

	thumb_func_start ov88_0223B320
ov88_0223B320: ; 0x0223B320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203608C
	bl sub_02032EE8
	add r4, r0, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_02025F04
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x1a
	bl sub_02025F04
	add r6, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x32
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B3B4 ; =0x00000438
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0
	bl ov88_0223EC78
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B3B8 ; =0x00000448
	add r1, r6, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0
	bl ov88_0223EC78
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B3BC ; =0x00000498
	add r1, r7, #0
	add r0, r5, r0
	mov r2, #5
	mov r3, #0
	bl ov88_0223EC78
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B3B4: .word 0x00000438
_0223B3B8: .word 0x00000448
_0223B3BC: .word 0x00000498
	thumb_func_end ov88_0223B320

	thumb_func_start ov88_0223B3C0
ov88_0223B3C0: ; 0x0223B3C0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x36
	mov r1, #0x1a
	bl sub_02006C24
	add r4, r0, #0
	bl ov88_0223C15C
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov88_0223C17C
	add r0, r5, #0
	add r1, r4, #0
	bl ov88_0223C504
	add r0, r5, #0
	bl ov88_0223B4F0
	add r0, r5, #0
	bl ov88_0223B320
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x18]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0x5d
	str r0, [sp]
	mov r0, #0x1a
	lsl r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	mov r1, #0
	add r2, #0x65
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	mov r2, #0x5d
	str r1, [sp]
	mov r0, #0x1a
	lsl r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r2, #0x83
	mov r3, #0xb
	bl sub_0200DAA4
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223B4E0 ; =0x00000588
	ldr r3, [r5, r3]
	add r0, r5, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #4
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	bl ov88_0223C63C
	add r0, r5, #0
	add r1, r4, #0
	bl ov88_0223C66C
	add r0, r5, #0
	bl ov88_0223CBA0
	ldr r0, _0223B4E4 ; =0x00002218
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r5, #0
	bl ov88_0223B7A0
	ldr r0, _0223B4E8 ; =0x0000221C
	mov r1, #6
	ldr r0, [r5, r0]
	add r2, r5, #0
	bl ov88_0223B7A0
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0223B4EC ; =ov88_0223C0E0
	add r1, r5, #0
	bl sub_02017798
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223B4E0: .word 0x00000588
_0223B4E4: .word 0x00002218
_0223B4E8: .word 0x0000221C
_0223B4EC: .word ov88_0223C0E0
	thumb_func_end ov88_0223B3C0

	thumb_func_start ov88_0223B4F0
ov88_0223B4F0: ; 0x0223B4F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5e
	ldr r1, _0223B56C ; =0x00002218
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0
	bl ov88_0223B710
	mov r0, #0x5e
	ldr r1, _0223B570 ; =0x0000221C
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #6
	bl ov88_0223B710
	mov r0, #0
	mov r2, #0x5e
	str r0, [sp]
	lsl r2, r2, #2
	ldr r3, _0223B56C ; =0x00002218
	ldr r0, _0223B574 ; =0x000004A8
	ldr r1, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov88_0223B748
	mov r0, #6
	mov r2, #0x5e
	str r0, [sp]
	lsl r2, r2, #2
	ldr r3, _0223B570 ; =0x0000221C
	ldr r0, _0223B578 ; =0x00000508
	ldr r1, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov88_0223B748
	ldr r0, _0223B56C ; =0x00002218
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r4, r0, #0
	ldr r0, _0223B570 ; =0x0000221C
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r2, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov88_0223C4E0
	pop {r3, r4, r5, pc}
	nop
_0223B56C: .word 0x00002218
_0223B570: .word 0x0000221C
_0223B574: .word 0x000004A8
_0223B578: .word 0x00000508
	thumb_func_end ov88_0223B4F0

	thumb_func_start ov88_0223B57C
ov88_0223B57C: ; 0x0223B57C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #0
	beq _0223B59C
	cmp r1, #1
	beq _0223B5B0
	cmp r1, #2
	bne _0223B59A
	b _0223B6DC
_0223B59A:
	b _0223B6E6
_0223B59C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B5B6
	mov r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	bl ov88_0223B320
	b _0223B6E6
_0223B5B0:
	ldr r1, [r4, #0x48]
	cmp r1, #7
	bls _0223B5B8
_0223B5B6:
	b _0223B6E6
_0223B5B8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B5C4: ; jump table
	.short _0223B5D4 - _0223B5C4 - 2 ; case 0
	.short _0223B5DC - _0223B5C4 - 2 ; case 1
	.short _0223B5EA - _0223B5C4 - 2 ; case 2
	.short _0223B608 - _0223B5C4 - 2 ; case 3
	.short _0223B626 - _0223B5C4 - 2 ; case 4
	.short _0223B662 - _0223B5C4 - 2 ; case 5
	.short _0223B6B2 - _0223B5C4 - 2 ; case 6
	.short _0223B6CE - _0223B5C4 - 2 ; case 7
_0223B5D4:
	bl ov88_0223B914
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B5DC:
	bl ov88_0223BED8
	str r0, [r4, #0x48]
	add r0, r4, #0
	bl ov88_0223CE74
	b _0223B6E6
_0223B5EA:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #2
	str r0, [r5, #0]
	b _0223B6E6
_0223B608:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #4
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B626:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B6E6
	add r0, r4, #0
	bl ov88_0223BFD8
	add r0, r4, #0
	bl ov88_0223BF7C
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov88_0223C44C
	mov r0, #1
	str r0, [r4, #0x44]
	mov r0, #5
	str r0, [r4, #0x48]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl _s32_div_f
	add r1, r0, #0
	add r0, r4, #0
	bl ov88_0223D1EC
	b _0223B6E6
_0223B662:
	ldr r0, [r4, #0x40]
	bl sub_02006844
	cmp r0, #0
	beq _0223B6E6
	ldr r0, [r4, #0x40]
	bl sub_02006814
	add r0, r4, #0
	bl ov88_0223B3C0
	add r0, r6, #0
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0x20
	ldrb r2, [r0]
	ldr r1, [r4, #0x3c]
	mov r0, #6
	mul r0, r1
	add r1, r2, r0
	add r0, r4, #0
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov88_0223BE28
	add r0, r4, #0
	mov r1, #0xce
	add r0, #0x88
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl ov88_0223CF68
	bl sub_02039734
	mov r0, #6
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B6B2:
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #7
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B6CE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B6E6
	mov r0, #1
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B6DC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B6E6
	mov r6, #1
_0223B6E6:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _0223B6FC
	add r0, r4, #0
	bl ov88_0223E848
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
_0223B6FC:
	mov r1, #0x5d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x1a
	bl sub_02038A1C
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov88_0223B57C

	thumb_func_start ov88_0223B710
ov88_0223B710: ; 0x0223B710
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r6, r2, #0
	mov r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223B746
_0223B724:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, r6
	bl sub_0200B5CC
	add r0, r5, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _0223B724
_0223B746:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223B710

	thumb_func_start ov88_0223B748
ov88_0223B748: ; 0x0223B748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r3, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r6, [sp, #0x28]
	mov r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223B79A
	add r7, r6, #1
_0223B764:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r7, r4
	mov r3, #0x1a
	bl sub_0200B29C
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	mov r3, #0
	bl ov88_0223EC78
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	add r5, #0x10
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _0223B764
_0223B79A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov88_0223B748

	thumb_func_start ov88_0223B7A0
ov88_0223B7A0: ; 0x0223B7A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x20]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	bgt _0223B7B6
	b _0223B8C4
_0223B7B6:
	mov r1, #0x1f
	ldr r0, [sp, #0x20]
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [sp, #0x1c]
_0223B7C0:
	ldr r0, [sp, #0xc]
	ldr r2, _0223B904 ; =0x00000696
	add r0, r7, r0
	str r0, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r1, r0, #4
	ldr r0, [sp, #0x20]
	add r4, r0, r1
	ldr r1, [sp, #0x18]
	ldrb r2, [r4, r2]
	add r5, r0, r1
	mov r0, #0x69
	ldr r1, _0223B908 ; =0x00000695
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldrb r1, [r4, r1]
	bl sub_02079D8C
	add r1, r0, #0
	mov r0, #0x1a
	str r0, [sp]
	ldr r6, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, #0x13
	mov r2, #0
	add r3, r6, r3
	bl sub_02006F50
	mov r1, #0x79
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	mov r1, #0x69
	str r0, [sp]
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, _0223B904 ; =0x00000696
	str r0, [sp, #4]
	ldr r3, _0223B908 ; =0x00000695
	mov r0, #0x1f
	lsl r1, r1, #4
	lsl r0, r0, #6
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	bl ov88_0223B2F0
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0223B90C ; =0x00000692
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0223B858
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0223B880
_0223B858:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	str r1, [sp, #0x14]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x3a
	ldr r1, [sp, #0x14]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, _0223B90C ; =0x00000692
	ldrh r1, [r4, r1]
	add r1, r1, #2
	bl sub_02021D6C
_0223B880:
	ldr r0, _0223B910 ; =0x0000069C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B896
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0223B8B6
_0223B896:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	add r4, r0, r1
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl sub_02021D6C
_0223B8B6:
	ldr r0, [sp, #8]
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	bge _0223B8C4
	b _0223B7C0
_0223B8C4:
	cmp r7, #6
	bge _0223B900
	ldr r0, [sp, #0xc]
	mov r6, #0x3a
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	lsl r6, r6, #4
	add r1, r0, r1
	lsl r0, r7, #2
	add r5, r6, #0
	add r4, r1, r0
	add r5, #0x30
_0223B8DC:
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_02021CAC
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #6
	blt _0223B8DC
_0223B900:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B904: .word 0x00000696
_0223B908: .word 0x00000695
_0223B90C: .word 0x00000692
_0223B910: .word 0x0000069C
	thumb_func_end ov88_0223B7A0

	thumb_func_start ov88_0223B914
ov88_0223B914: ; 0x0223B914
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov88_0223E998
	ldr r0, [r4, #0x4c]
	cmp r0, #0x13
	bls _0223B926
	b _0223BCEA
_0223B926:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B932: ; jump table
	.short _0223B95A - _0223B932 - 2 ; case 0
	.short _0223B9C2 - _0223B932 - 2 ; case 1
	.short _0223BA14 - _0223B932 - 2 ; case 2
	.short _0223BA24 - _0223B932 - 2 ; case 3
	.short _0223BA3A - _0223B932 - 2 ; case 4
	.short _0223BA4A - _0223B932 - 2 ; case 5
	.short _0223BA62 - _0223B932 - 2 ; case 6
	.short _0223BA76 - _0223B932 - 2 ; case 7
	.short _0223BA88 - _0223B932 - 2 ; case 8
	.short _0223BAB4 - _0223B932 - 2 ; case 9
	.short _0223BAC2 - _0223B932 - 2 ; case 10
	.short _0223BACE - _0223B932 - 2 ; case 11
	.short _0223BB5A - _0223B932 - 2 ; case 12
	.short _0223BB76 - _0223B932 - 2 ; case 13
	.short _0223BB82 - _0223B932 - 2 ; case 14
	.short _0223BB94 - _0223B932 - 2 ; case 15
	.short _0223BBD8 - _0223B932 - 2 ; case 16
	.short _0223BC12 - _0223B932 - 2 ; case 17
	.short _0223BC56 - _0223B932 - 2 ; case 18
	.short _0223BC96 - _0223B932 - 2 ; case 19
_0223B95A:
	mov r0, #0x50
	bl sub_020364F0
	mov r0, #2
	bl sub_02017DE0
	add r0, r4, #0
	bl ov88_0223E894
	ldr r0, [r4, #8]
	mov r5, #0
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223B9BA
	mov r7, #0x7b
	lsl r7, r7, #2
_0223B97E:
	ldr r0, [r4, #8]
	add r1, r5, #0
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, r7
	bne _0223B9AC
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223B9AC
	add r0, r6, #0
	mov r1, #0
	bl sub_02077ACC
_0223B9AC:
	ldr r0, [r4, #8]
	add r5, r5, #1
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223B97E
_0223B9BA:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223B9C2:
	mov r0, #0x50
	bl sub_02036540
	cmp r0, #0
	beq _0223BABA
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _0223B9D8
	mov r0, #6
	b _0223B9DA
_0223B9D8:
	mov r0, #2
_0223B9DA:
	str r0, [r4, #0x4c]
	bl sub_0203608C
	cmp r0, #0
	bne _0223BA06
	bl sub_0201D2E8
	ldr r1, _0223BCF0 ; =0x00000445
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x3c
	blo _0223B9FA
	bl GF_AssertFail
_0223B9FA:
	bl sub_0203608C
	mov r1, #0x1f
	add r2, r5, #3
	bl ov88_0223D044
_0223BA06:
	ldr r0, [r4, #4]
	bl ov88_0223D0C0
	add r0, r4, #0
	bl ov88_0223E984
	b _0223BCEA
_0223BA14:
	mov r1, #0x8b
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0223BABA
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA24:
	mov r0, #0x8b
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223BABA
	mov r0, #4
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA3A:
	ldr r0, _0223BCF4 ; =0x0000369C
	add r0, r4, r0
	bl sub_02038ED4
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA4A:
	ldr r2, _0223BCF4 ; =0x0000369C
	ldr r0, [r4, #4]
	mov r1, #2
	add r2, r4, r2
	bl sub_02038EDC
	cmp r0, #0
	beq _0223BABA
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA62:
	mov r0, #1
	bl sub_0203632C
	mov r0, #0x51
	bl sub_020364F0
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA76:
	mov r0, #0x51
	bl sub_02036540
	cmp r0, #0
	beq _0223BABA
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA88:
	mov r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	bl sub_0203608C
	cmp r0, #1
	bne _0223BAAC
	bl sub_0203608C
	ldr r1, _0223BCF8 ; =0x00002218
	ldr r2, [r4, #0x50]
	ldr r1, [r4, r1]
	bl ov88_0223D098
	ldr r0, [r4, #0x50]
	add r0, r0, #1
	str r0, [r4, #0x50]
_0223BAAC:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BAB4:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0223BABC
_0223BABA:
	b _0223BCEA
_0223BABC:
	mov r0, #0xa
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BAC2:
	add r0, r0, #1
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov88_0223B4F0
	b _0223BCEA
_0223BACE:
	mov r1, #0
	mov r0, #0x69
	add r2, r4, #0
	add r5, r1, #0
	lsl r0, r0, #4
_0223BAD8:
	add r1, r1, #1
	strh r5, [r2, r0]
	add r2, #0x10
	cmp r1, #0xd
	blt _0223BAD8
	ldr r0, _0223BCF8 ; =0x00002218
	ldr r0, [r4, r0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223BB14
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r7, _0223BCF8 ; =0x00002218
	add r6, r4, r0
_0223BAF6:
	ldr r0, _0223BCF8 ; =0x00002218
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r1, r6, #0
	bl ov88_0223BD18
	ldr r0, [r4, r7]
	add r6, #0x10
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223BAF6
_0223BB14:
	ldr r0, _0223BCFC ; =0x0000221C
	mov r5, #0
	ldr r0, [r4, r0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223BB4A
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r7, _0223BCFC ; =0x0000221C
	add r6, r4, r0
_0223BB2A:
	ldr r0, _0223BCFC ; =0x0000221C
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r1, r5, #6
	lsl r1, r1, #4
	add r1, r6, r1
	bl ov88_0223BD18
	ldr r0, [r4, r7]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223BB2A
_0223BB4A:
	mov r0, #0x75
	mov r1, #1
	lsl r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB5A:
	bl sub_0203608C
	bl sub_02032EE8
	ldr r2, _0223BD00 ; =0x00002224
	ldr r1, [r4, r2]
	add r2, r2, #4
	add r2, r4, r2
	bl ov88_0223D0D4
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB76:
	ldr r1, [r4, #0x54]
	cmp r1, #3
	bne _0223BBD6
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB82:
	ldr r0, [r4, #4]
	bl sub_0202CC98
	bl ov88_0223D140
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB94:
	ldr r1, [r4, #0x54]
	cmp r1, #4
	bne _0223BBD6
	add r0, r0, #1
	str r0, [r4, #0x4c]
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _0223BCF8 ; =0x00002218
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r4, #0
	bl ov88_0223B7A0
	ldr r0, _0223BCFC ; =0x0000221C
	mov r1, #6
	ldr r0, [r4, r0]
	add r2, r4, #0
	bl ov88_0223B7A0
	mov r6, #0xce
	mov r5, #0
	mov r7, #1
	lsl r6, r6, #2
_0223BBC6:
	ldr r0, [r4, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _0223BBC6
_0223BBD6:
	b _0223BCEA
_0223BBD8:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0x1e
	bl sub_0200AAE0
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BC12:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223BCEA
	ldr r0, _0223BCF8 ; =0x00002218
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	mov r2, #0x7f
	ldr r3, _0223BD04 ; =0x000020F0
	lsl r2, r2, #4
	add r1, r0, #0
	mov r0, #0
	add r2, r4, r2
	add r3, r4, r3
	bl ov88_0223C800
	ldr r1, _0223BD08 ; =0x00002110
	ldr r2, _0223BCF8 ; =0x00002218
	str r0, [r4, r1]
	str r4, [sp]
	ldr r0, _0223BD0C ; =0x00000438
	mov r1, #0
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r3, r1, #0
	bl ov88_0223C8D8
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BC56:
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0x17
	bl sub_0200AAE0
	mov r0, #4
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov88_0223E8B4
	b _0223BCEA
_0223BC96:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223BCEA
	ldr r0, _0223BD10 ; =0x000005A8
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223BD14 ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #2
	bl sub_02017DF0
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BCEA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BCF0: .word 0x00000445
_0223BCF4: .word 0x0000369C
_0223BCF8: .word 0x00002218
_0223BCFC: .word 0x0000221C
_0223BD00: .word 0x00002224
_0223BD04: .word 0x000020F0
_0223BD08: .word 0x00002110
_0223BD0C: .word 0x00000438
_0223BD10: .word 0x000005A8
_0223BD14: .word 0x00000588
	thumb_func_end ov88_0223B914

	thumb_func_start ov88_0223BD18
ov88_0223BD18: ; 0x0223BD18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02073C88
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #6]
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #5]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073CD4
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223BD90
	ldrb r1, [r4, #6]
	mov r2, #0x1c
	bl sub_020759CC
	strh r0, [r4, #0xa]
_0223BD90:
	cmp r6, #0
	beq _0223BDA0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	add r0, r0, #1
	strh r0, [r4, #2]
_0223BDA0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov88_0223BD18

	thumb_func_start ov88_0223BDA4
ov88_0223BDA4: ; 0x0223BDA4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	ldr r0, _0223BE10 ; =0x0000221C
	add r7, r1, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	add r1, r6, #0
	mov r2, #0x7f
	mov r6, #0x32
	add r3, r0, #0
	lsl r2, r2, #4
	lsl r6, r6, #6
	mul r6, r3
	add r2, r5, r2
	add r2, r2, r6
	ldr r6, _0223BE14 ; =0x000020F0
	lsl r3, r3, #4
	add r6, r5, r6
	mov r0, #1
	add r3, r6, r3
	bl ov88_0223C800
	ldr r1, _0223BE18 ; =0x00002110
	ldr r2, _0223BE10 ; =0x0000221C
	str r0, [r5, r1]
	str r5, [sp]
	ldr r0, _0223BE1C ; =0x00000438
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	add r3, r7, #0
	bl ov88_0223C8D8
	lsl r1, r4, #4
	add r2, r5, r1
	ldr r1, _0223BE20 ; =0x00000694
	ldr r0, _0223BE24 ; =0x0000040C
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	add r1, r1, #5
	bl sub_02021D6C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BE10: .word 0x0000221C
_0223BE14: .word 0x000020F0
_0223BE18: .word 0x00002110
_0223BE1C: .word 0x00000438
_0223BE20: .word 0x00000694
_0223BE24: .word 0x0000040C
	thumb_func_end ov88_0223BDA4

	thumb_func_start ov88_0223BE28
ov88_0223BE28: ; 0x0223BE28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0xc
	beq _0223BEBC
	cmp r1, #6
	bge _0223BEA2
	ldr r0, _0223BEC0 ; =0x00002218
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl _s32_div_f
	mov r2, #0x7f
	add r3, r0, #0
	lsl r2, r2, #4
	add r1, r4, #0
	add r4, r5, r2
	mov r2, #0x32
	lsl r2, r2, #6
	mul r2, r3
	add r2, r4, r2
	ldr r4, _0223BEC4 ; =0x000020F0
	lsl r3, r3, #4
	add r4, r5, r4
	mov r0, #0
	add r3, r4, r3
	bl ov88_0223C800
	ldr r1, _0223BEC8 ; =0x00002110
	add r3, r5, #0
	str r0, [r5, r1]
	ldr r0, _0223BECC ; =0x00000438
	ldr r2, _0223BEC0 ; =0x00002218
	str r5, [sp]
	add r3, #0x88
	ldr r2, [r5, r2]
	ldr r3, [r3, #0]
	add r0, r5, r0
	mov r1, #0
	bl ov88_0223C8D8
	ldr r0, _0223BECC ; =0x00000438
	mov r1, #1
	add r0, r5, r0
	add r2, r5, #0
	bl ov88_0223CB34
	ldr r0, _0223BED0 ; =0x0000040C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_0223BEA2:
	bl ov88_0223BDA4
	ldr r0, _0223BECC ; =0x00000438
	mov r1, #0
	add r0, r5, r0
	add r2, r5, #0
	bl ov88_0223CB34
	ldr r0, _0223BED4 ; =0x00000408
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
_0223BEBC:
	pop {r3, r4, r5, pc}
	nop
_0223BEC0: .word 0x00002218
_0223BEC4: .word 0x000020F0
_0223BEC8: .word 0x00002110
_0223BECC: .word 0x00000438
_0223BED0: .word 0x0000040C
_0223BED4: .word 0x00000408
	thumb_func_end ov88_0223BE28

	thumb_func_start ov88_0223BED8
ov88_0223BED8: ; 0x0223BED8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223BF78 ; =0x00002214
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0223BEEE
	blx r1
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
_0223BEEE:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _0223BF18
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BF04: ; jump table
	.short _0223BF18 - _0223BF04 - 2 ; case 0
	.short _0223BF18 - _0223BF04 - 2 ; case 1
	.short _0223BF0C - _0223BF04 - 2 ; case 2
	.short _0223BF12 - _0223BF04 - 2 ; case 3
_0223BF0C:
	add sp, #4
	mov r0, #2
	pop {r3, r4, pc}
_0223BF12:
	add sp, #4
	mov r0, #3
	pop {r3, r4, pc}
_0223BF18:
	mov r0, #0
	mov r2, #0xce
	str r0, [sp]
	mov r0, #0x53
	lsl r2, r2, #2
	mov r3, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	lsl r3, r3, #4
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, #0x88
	add r3, r4, r3
	bl ov88_0223CFF4
	cmp r0, #0
	beq _0223BF40
	add r0, r4, #0
	bl ov88_0223BE28
_0223BF40:
	mov r0, #1
	mov r2, #0xcf
	str r0, [sp]
	mov r0, #0x15
	lsl r2, r2, #2
	mov r3, #0x69
	lsl r0, r0, #4
	add r1, r4, #0
	lsl r3, r3, #4
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, #0x8c
	add r3, r4, r3
	bl ov88_0223CFF4
	add r0, r4, #0
	add r0, #0x90
	bl ov88_0223CEF0
	add r0, r4, #0
	add r4, #0x88
	ldr r2, [r4, #0]
	mov r1, #0x17
	bl ov88_0223D058
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223BF78: .word 0x00002214
	thumb_func_end ov88_0223BED8

	thumb_func_start ov88_0223BF7C
ov88_0223BF7C: ; 0x0223BF7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0xb
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #6
_0223BFB0:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223BFB0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov88_0223BF7C

	thumb_func_start ov88_0223BFD8
ov88_0223BFD8: ; 0x0223BFD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223C030 ; =0x00002218
	mov r6, #0
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C006
	ldr r7, _0223C030 ; =0x00002218
	add r4, r5, #0
_0223BFEE:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [r5, r7]
	add r4, r4, #4
	add r6, r6, #1
	bl sub_0207A0F8
	cmp r6, r0
	blt _0223BFEE
_0223C006:
	ldr r0, _0223C034 ; =0x0000221C
	mov r6, #0
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C02E
	ldr r7, _0223C034 ; =0x0000221C
	add r4, r5, #0
_0223C018:
	ldr r0, _0223C038 ; =0x000007A8
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [r5, r7]
	add r4, r4, #4
	add r6, r6, #1
	bl sub_0207A0F8
	cmp r6, r0
	blt _0223C018
_0223C02E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C030: .word 0x00002218
_0223C034: .word 0x0000221C
_0223C038: .word 0x000007A8
	thumb_func_end ov88_0223BFD8

	thumb_func_start ov88_0223C03C
ov88_0223C03C: ; 0x0223C03C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldr r1, [r4, #0x5c]
	str r1, [r0, #0x28]
	add r0, r4, #0
	bl ov88_0223BFD8
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223C0D8 ; =0x0000221C
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov88_0223BF7C
	ldr r0, _0223C0DC ; =0x00000438
	add r0, r4, r0
	bl ov88_0223EC04
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov88_0223C44C
	mov r1, #0x5d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x1a
	bl sub_02018238
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x1a
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223C0D8: .word 0x0000221C
_0223C0DC: .word 0x00000438
	thumb_func_end ov88_0223C03C

	thumb_func_start ov88_0223C0E0
ov88_0223C0E0: ; 0x0223C0E0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0201C2B8
	ldr r0, _0223C14C ; =0x00002110
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223C132
	sub r4, r0, #1
	mov r0, #0x7f
	mov r2, #0x32
	lsl r0, r0, #4
	lsl r2, r2, #6
	add r1, r4, #0
	add r0, r5, r0
	mul r1, r2
	add r0, r0, r1
	bl GXS_LoadOBJ
	lsl r1, r4, #4
	mov r0, #0x20
	add r2, r5, r1
	str r0, [sp]
	mov r0, #0x1a
	add r3, r4, #2
	ldr r1, _0223C150 ; =0x000020F0
	str r0, [sp, #4]
	ldrh r0, [r2, r1]
	add r1, r1, #4
	ldrh r1, [r2, r1]
	mov r2, #5
	lsl r3, r3, #5
	bl sub_02006E84
	ldr r0, _0223C14C ; =0x00002110
	mov r1, #0
	str r1, [r5, r0]
_0223C132:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0223C154 ; =0x027E0000
	ldr r1, _0223C158 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223C14C: .word 0x00002110
_0223C150: .word 0x000020F0
_0223C154: .word 0x027E0000
_0223C158: .word 0x00003FF8
	thumb_func_end ov88_0223C0E0

	thumb_func_start ov88_0223C15C
ov88_0223C15C: ; 0x0223C15C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223C178 ; =0x0223EF2C
	add r3, sp, #0
	mov r2, #5
_0223C166:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C166
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223C178: .word 0x0223EF2C
	thumb_func_end ov88_0223C15C

	thumb_func_start ov88_0223C17C
ov88_0223C17C: ; 0x0223C17C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	ldr r4, _0223C34C ; =0x0223EE30
	add r3, sp, #0xc4
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _0223C350 ; =0x0223EED8
	add r3, sp, #0xa8
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r4, _0223C354 ; =0x0223EEA0
	add r3, sp, #0x8c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r4, _0223C358 ; =0x0223EEF4
	add r3, sp, #0x70
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r4, _0223C35C ; =0x0223EF10
	add r3, sp, #0x54
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	ldr r4, _0223C360 ; =0x0223EE68
	add r3, sp, #0x38
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	add r0, r5, #0
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r4, _0223C364 ; =0x0223EE84
	add r3, sp, #0x1c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	ldr r4, _0223C368 ; =0x0223EEBC
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x1a
	bl sub_02019690
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1a
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1a
	bl sub_02019690
	mov r4, #0
	mov r6, #3
	add r7, r4, #0
_0223C2C0:
	lsl r1, r4, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	cmp r4, #4
	blt _0223C2C0
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
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223C36C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	nop
_0223C34C: .word 0x0223EE30
_0223C350: .word 0x0223EED8
_0223C354: .word 0x0223EEA0
_0223C358: .word 0x0223EEF4
_0223C35C: .word 0x0223EF10
_0223C360: .word 0x0223EE68
_0223C364: .word 0x0223EE84
_0223C368: .word 0x0223EEBC
_0223C36C: .word 0xFFFF1FFF
	thumb_func_end ov88_0223C17C

	thumb_func_start ov88_0223C370
ov88_0223C370: ; 0x0223C370
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_02006840
	add r4, r0, #0
	mov r2, #6
	ldr r0, _0223C434 ; =0x00000668
	str r4, [r5, #8]
	mov r1, #4
	str r1, [r5, r0]
	mov r3, #0
	str r3, [r5, #0x44]
	sub r0, r0, #4
	str r3, [r5, r0]
	mov r0, #0x5b
	lsl r0, r0, #2
	str r2, [r5, r0]
	add r1, r0, #4
	str r2, [r5, r1]
	add r1, r5, #0
	add r1, #0x88
	str r3, [r1, #0]
	add r1, r5, #0
	add r1, #0x8c
	str r2, [r1, #0]
	sub r0, #0x2c
	str r3, [r5, r0]
	str r3, [r5, #0x48]
	ldr r0, _0223C438 ; =ov88_0223D150
	ldr r1, _0223C43C ; =0x00002214
	str r3, [r5, #0x4c]
	str r0, [r5, r1]
	str r3, [r5, #0x60]
	str r3, [r5, #0x64]
	ldr r0, _0223C440 ; =0x00002110
	str r3, [r5, #0x5c]
	str r3, [r5, r0]
	ldr r0, _0223C444 ; =0x000036A0
	sub r6, r2, #7
	str r6, [r5, r0]
	add r2, r0, #4
	str r6, [r5, r2]
	add r2, r1, #0
	add r2, #0xac
	str r3, [r5, r2]
	add r2, r0, #0
	add r2, #0xc
	str r3, [r5, r2]
	add r0, #0x10
	str r3, [r5, r0]
	add r0, r1, #4
	ldr r2, [r4, #8]
	add r1, #0x10
	str r2, [r5, r0]
	ldr r0, [r4, #0xc]
	str r0, [r5, r1]
	ldr r0, [r4, #0x10]
	str r0, [r5, #4]
	bl sub_02079FEC
	add r1, r0, #0
	mov r0, #0x1a
	bl sub_02018144
	ldr r1, _0223C448 ; =0x0000221C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #6
	bl sub_0207A014
	bl sub_02079FEC
	add r2, r0, #0
	ldr r0, _0223C448 ; =0x0000221C
	mov r1, #0xff
	ldr r0, [r5, r0]
	bl memset
	ldr r0, [r4, #4]
	mov r1, #0x1a
	bl sub_02025F04
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #8
	ldr r0, [r5, r1]
	mov r1, #0x2a
	bl sub_0200B1EC
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #0x14]
	bl sub_02038F8C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C434: .word 0x00000668
_0223C438: .word ov88_0223D150
_0223C43C: .word 0x00002214
_0223C440: .word 0x00002110
_0223C444: .word 0x000036A0
_0223C448: .word 0x0000221C
	thumb_func_end ov88_0223C370

	thumb_func_start ov88_0223C44C
ov88_0223C44C: ; 0x0223C44C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
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
	pop {r4, pc}
	thumb_func_end ov88_0223C44C

	thumb_func_start ov88_0223C488
ov88_0223C488: ; 0x0223C488
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200723C
	add r6, r0, #0
	beq _0223C4DA
	add r1, sp, #4
	bl NNS_G2dGetUnpackedScreenData
	cmp r0, #0
	beq _0223C4D4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0223C4B6
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x1c]
_0223C4B6:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019FE4
	cmp r0, #0
	beq _0223C4D4
	ldr r2, [sp, #4]
	lsl r1, r4, #0x18
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	bl sub_02019574
_0223C4D4:
	add r0, r6, #0
	bl sub_020181C4
_0223C4DA:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov88_0223C488

	thumb_func_start ov88_0223C4E0
ov88_0223C4E0: ; 0x0223C4E0
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #2
	add r4, r0, #0
	bl sub_02019FE4
	add r2, r0, #0
	mov r0, #0
	mov r3, #6
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	lsl r3, r3, #8
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov88_0223C4E0

	thumb_func_start ov88_0223C504
ov88_0223C504: ; 0x0223C504
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0x5d
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	sub r1, #0x54
	str r1, [sp]
	mov r0, #0x1a
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #4
	add r3, r1, #0
	bl sub_02007130
	mov r1, #0
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x1a
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	mov r0, #9
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	mov r3, #2
	bl ov88_0223C488
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	mov r1, #0x40
	mov r2, #0x1a
	bl sub_02002E98
	mov r0, #0
	mov r1, #0x60
	mov r2, #0x1a
	bl sub_02002E7C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	mov r1, #5
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	mov r1, #6
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r0, #4
	mov r1, #0x40
	mov r2, #0x1a
	bl sub_02002E98
	mov r0, #4
	mov r1, #0x60
	mov r2, #0x1a
	bl sub_02002E7C
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov88_0223C504

	thumb_func_start ov88_0223C63C
ov88_0223C63C: ; 0x0223C63C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223C668 ; =0x0223EE40
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x1a
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223C668: .word 0x0223EE40
	thumb_func_end ov88_0223C63C

	thumb_func_start ov88_0223C66C
ov88_0223C66C: ; 0x0223C66C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x1a
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r1, #0x66
	lsl r1, r1, #2
	mov r0, #0x2d
	add r1, r5, r1
	mov r2, #0x1a
	bl sub_020095C4
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r6, #0
	add r4, r5, #0
_0223C6A8:
	mov r0, #2
	add r1, r6, #0
	mov r2, #0x1a
	bl sub_02009714
	mov r1, #0xb
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0223C6A8
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #7
	bl sub_02009A4C
	mov r1, #0x2d
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x1a
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02009B04
	mov r1, #0xb5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x1a
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #8
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xb6
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x1a
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #9
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xb7
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x1a
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xa
	bl sub_02009A4C
	mov r1, #0x2e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0x1a
	mov r2, #0
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02009B04
	mov r1, #0xb9
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x1a
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xb
	bl sub_02009BC4
	mov r1, #0xba
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x1a
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xc
	bl sub_02009BC4
	mov r1, #0xbb
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A328
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	bl sub_02079FD0
	mov r3, #0x80
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0x13
	mov r2, #1
	add r3, #0xc0
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223C66C

	thumb_func_start ov88_0223C800
ov88_0223C800: ; 0x0223C800
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r2, #0
	add r0, r3, #0
	mov r2, #2
	add r6, r1, #0
	str r3, [sp, #0x20]
	bl sub_02075EF4
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r1, #2
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	mov r2, #0x1a
	bl sub_020136A4
	mov r1, #0x32
	add r0, r4, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	add r0, r5, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov88_0223C800

	thumb_func_start ov88_0223C860
ov88_0223C860: ; 0x0223C860
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x14
	mov r1, #0x1a
	str r3, [sp, #8]
	bl sub_02023790
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0x77
	add r2, r4, #0
	bl sub_02074470
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #8]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov88_0223EC78
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223C860

	thumb_func_start ov88_0223C8AC
ov88_0223C8AC: ; 0x0223C8AC
	push {r4, lr}
	ldrh r0, [r0]
	add r4, r3, #0
	cmp r0, #0x1d
	beq _0223C8BA
	cmp r0, #0x20
	bne _0223C8D2
_0223C8BA:
	add r0, r1, #0
	add r1, r2, #0
	bl sub_0207A0FC
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C8D2
	mov r0, #2
	pop {r4, pc}
_0223C8D2:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov88_0223C8AC

	thumb_func_start ov88_0223C8D8
ov88_0223C8D8: ; 0x0223C8D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x50]
	bl sub_0207A0FC
	mov r1, #2
	bl sub_020765AC
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xa
	add r6, r4, r0
	lsl r0, r5, #2
	str r0, [sp, #0x14]
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xc
	add r3, r5, #0
	mul r3, r0
	ldr r1, _0223CB20 ; =0x0223EF54
	ldr r0, [sp, #0x14]
	ldr r2, _0223CB24 ; =0x0223EF58
	ldr r1, [r1, r3]
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x10]
	ldr r0, [r6, r0]
	add r2, r2, r3
	add r2, #0xc0
	bl ov88_0223E87C
	cmp r5, #0
	bne _0223C93A
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _0223CB28 ; =0x0000069A
	ldr r0, [r6, r0]
	ldrh r1, [r2, r1]
	bl sub_02021D0C
_0223C93A:
	ldr r1, [sp, #0xc]
	mov r0, #1
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _0223CB2C ; =0x00000694
	lsl r0, r0, #0xa
	add r6, r4, r0
	add r0, r5, #2
	ldrb r1, [r2, r1]
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [r6, r0]
	add r1, r1, #5
	bl sub_02021D6C
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_02021CAC
	mov r0, #6
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x1a
	lsl r0, r0, #4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r7, r0
	mov r3, #9
	bl ov88_0223C860
	mov r0, #6
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	lsl r0, r0, #4
	str r0, [sp, #0x38]
	ldr r3, [sp, #0x38]
	mov r0, #0x69
	lsl r0, r0, #4
	add r3, r4, r3
	str r3, [sp, #0x34]
	mov ip, r0
	mov r3, ip
	add r1, r4, r0
	ldr r0, [sp, #0x38]
	ldr r6, [sp, #0x34]
	add r3, #8
	add r0, r1, r0
	ldrh r3, [r6, r3]
	ldr r1, [sp, #8]
	bl ov88_0223C8AC
	ldr r1, _0223CB30 ; =0x00000695
	add r2, r4, r1
	ldr r1, [sp, #0x38]
	str r2, [sp, #0x1c]
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0223C9B8
	mov r0, #2
_0223C9B8:
	cmp r0, #0
	beq _0223C9D8
	cmp r0, #1
	beq _0223C9FE
	cmp r0, #2
	bne _0223CA22
	add r0, r5, #4
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0223CA22
_0223C9D8:
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r4, r0
	str r0, [sp, #0x20]
	add r0, r5, #4
	lsl r0, r0, #2
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r0, [r1, r0]
	mov r1, #0x17
	bl sub_02021D6C
	b _0223CA22
_0223C9FE:
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r4, r0
	str r0, [sp, #0x28]
	add r0, r5, #4
	lsl r0, r0, #2
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	mov r1, #0x16
	bl sub_02021D6C
_0223CA22:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x38]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0223CAA8
	mov r0, #0xa
	mov r1, #0x1a
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x1c
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	add r0, r7, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x29
	add r2, r6, #0
	bl sub_0200B1B8
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	add r0, r7, r0
	mov r2, #9
	mov r3, #0xff
	bl ov88_0223EC78
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r2, #3
	mov r3, #0
	bl sub_020238A0
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, [sp, #0x30]
	mov r3, #0
	add r0, r7, r0
	add r1, r6, #0
	mov r2, #9
	str r3, [sp, #4]
	bl ov88_0223EC78
	add r0, r6, #0
	bl sub_020237BC
	b _0223CAB4
_0223CAA8:
	add r0, r5, #0
	add r0, #0x1c
	lsl r0, r0, #4
	add r0, r7, r0
	bl sub_0201ACF4
_0223CAB4:
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	mov r1, #0x19
	add r0, #0x1e
	lsl r0, r0, #4
	str r3, [sp, #4]
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r7, r0
	mov r2, #7
	bl ov88_0223EC78
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r5, #0x20
	lsl r0, r0, #0x10
	lsl r4, r5, #4
	lsr r6, r0, #0x10
	add r0, r7, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x14
	mov r1, #0x1a
	bl sub_02023790
	add r1, r6, #0
	mov r2, #0x1a
	add r5, r0, #0
	bl sub_0207CFA0
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	add r0, r7, r4
	add r1, r5, #0
	mov r2, #9
	str r3, [sp, #4]
	bl ov88_0223EC78
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0223CB20: .word 0x0223EF54
_0223CB24: .word 0x0223EF58
_0223CB28: .word 0x0000069A
_0223CB2C: .word 0x00000694
_0223CB30: .word 0x00000695
	thumb_func_end ov88_0223C8D8

	thumb_func_start ov88_0223CB34
ov88_0223CB34: ; 0x0223CB34
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	lsl r0, r4, #2
	add r1, r6, r0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #2
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #4
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	add r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x1c
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_0201ACF4
	add r4, #0x20
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201ACF4
	pop {r4, r5, r6, pc}
	thumb_func_end ov88_0223CB34

	thumb_func_start ov88_0223CBA0
ov88_0223CBA0: ; 0x0223CBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xb
	str r1, [sp, #0xc]
	mov r0, #2
	lsl r2, r2, #6
	str r0, [sp, #0x10]
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r5, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	mov r3, #0xb
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #6
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	str r0, [sp, #0x2c]
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x30]
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	mov r7, #0
	str r1, [sp, #0x34]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r7, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #0x1a
	ldr r6, _0223CE28 ; =0x0223EF9C
	str r7, [sp, #0x50]
	str r0, [sp, #0x58]
	add r4, r5, #0
_0223CC5C:
	ldr r0, [r6, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	mov r1, #0xce
	add r0, #0x88
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r7, #0
	bl ov88_0223CF68
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x64
	bl sub_02021F58
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #2
	blt _0223CC5C
	ldr r6, _0223CE28 ; =0x0223EF9C
	mov r7, #0
	add r4, r5, #0
_0223CCB8:
	ldr r0, [r6, #0]
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	sub r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r7, #5
	bl sub_02021D6C
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_02021F58
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #0xc
	blt _0223CCB8
	ldr r6, _0223CE28 ; =0x0223EF9C
	mov r7, #0
	add r4, r5, #0
_0223CD12:
	ldr r0, [r6, #0]
	add r0, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x3a
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02021F58
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #0xc
	blt _0223CD12
	ldr r6, _0223CE28 ; =0x0223EF9C
	mov r7, #0
	add r4, r5, #0
_0223CD58:
	ldr r0, [r6, #0]
	add r0, #0x2d
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x3d
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02021F58
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #0xc
	blt _0223CD58
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #0x42
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	ldr r1, _0223CE2C ; =0x00000418
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _0223CE2C ; =0x00000418
	mov r1, #0x14
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0223CE2C ; =0x00000418
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r4, _0223CE30 ; =0x0223EF54
	mov r6, #0
	add r7, r5, r0
_0223CDD4:
	ldr r0, [r4, #0]
	str r7, [sp, #0x30]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r4, #4]
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #2
	str r0, [sp, #0x54]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #1
	lsl r1, r1, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl sub_02021D6C
	add r6, r6, #1
	add r4, #0xc
	add r5, r5, #4
	cmp r6, #6
	blt _0223CDD4
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CE28: .word 0x0223EF9C
_0223CE2C: .word 0x00000418
_0223CE30: .word 0x0223EF54
	thumb_func_end ov88_0223CBA0

	thumb_func_start ov88_0223CE34
ov88_0223CE34: ; 0x0223CE34
	push {r3, r4}
	ldr r3, _0223CE70 ; =0x021BF67C
	mov r1, #0
	ldr r3, [r3, #0x4c]
	mov r4, #0x40
	add r2, r1, #0
	tst r4, r3
	beq _0223CE48
	mov r2, #1
	add r1, r1, #1
_0223CE48:
	mov r4, #0x80
	tst r4, r3
	beq _0223CE52
	mov r2, #2
	add r1, r1, #1
_0223CE52:
	mov r4, #0x20
	tst r4, r3
	beq _0223CE5C
	mov r2, #3
	add r1, r1, #1
_0223CE5C:
	mov r4, #0x10
	tst r3, r4
	beq _0223CE66
	mov r2, #4
	add r1, r1, #1
_0223CE66:
	cmp r1, #0
	beq _0223CE6C
	str r2, [r0, #0]
_0223CE6C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0223CE70: .word 0x021BF67C
	thumb_func_end ov88_0223CE34

	thumb_func_start ov88_0223CE74
ov88_0223CE74: ; 0x0223CE74
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #6
	bge _0223CEE2
	ldr r0, _0223CEE4 ; =0x0223EE28
	bl sub_02022664
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0223CEE2
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	ldr r2, _0223CEE8 ; =0x00000695
	lsl r0, r0, #4
	add r1, r4, r0
	ldrb r0, [r1, r2]
	cmp r0, #0
	bne _0223CEE2
	sub r0, r2, #5
	add r2, r2, #1
	ldrh r0, [r1, r0]
	ldrb r2, [r1, r2]
	ldr r1, _0223CEEC ; =0x000001B9
	cmp r0, r1
	bne _0223CEC2
	ldr r0, [r4, #4]
	bl sub_0202CC98
	mov r1, #0
	mov r2, #0x64
	add r3, r1, #0
	bl sub_020063E4
	b _0223CECA
_0223CEC2:
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl sub_02005844
_0223CECA:
	mov r0, #1
	lsl r0, r0, #0xa
	add r4, r4, r0
	lsl r6, r5, #2
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, r6]
	add r1, r5, #4
	bl sub_02021D6C
_0223CEE2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223CEE4: .word 0x0223EE28
_0223CEE8: .word 0x00000695
_0223CEEC: .word 0x000001B9
	thumb_func_end ov88_0223CE74

	thumb_func_start ov88_0223CEF0
ov88_0223CEF0: ; 0x0223CEF0
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _0223CF06
	mov r1, #0
	strh r1, [r0]
_0223CF06:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r1, r0, #5
	mov r0, #0x1d
	orr r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	mov r1, #0x3a
	mov r2, #2
	bl GX_LoadOBJPltt
	pop {r3, pc}
	thumb_func_end ov88_0223CEF0

	thumb_func_start ov88_0223CF30
ov88_0223CF30: ; 0x0223CF30
	push {r3, r4, r5, r6}
	mov r5, #0x18
	mul r5, r0
	ldr r6, _0223CF64 ; =0x0223F004
	mov r0, #6
	mov r4, #0
	add r5, r6, r5
	mul r0, r1
	add r5, r5, r0
	add r3, r4, #0
	add r1, r5, #0
_0223CF46:
	ldrb r0, [r1]
	lsl r0, r0, #4
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _0223CF54
	ldrb r4, [r5, r3]
	b _0223CF5C
_0223CF54:
	add r3, r3, #1
	add r1, r1, #1
	cmp r3, #6
	blt _0223CF46
_0223CF5C:
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0223CF64: .word 0x0223F004
	thumb_func_end ov88_0223CF30

	thumb_func_start ov88_0223CF68
ov88_0223CF68: ; 0x0223CF68
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0xd
	blt _0223CF7A
	bl GF_AssertFail
_0223CF7A:
	ldr r1, _0223CFE0 ; =0x0223EF9C
	lsl r0, r5, #3
	ldr r1, [r1, r0]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, _0223CFE4 ; =0x0223EFA0
	ldr r0, [r1, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	cmp r5, #0xc
	bne _0223CFAC
	add r0, r6, #0
	bl sub_02021C50
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0223CFE8 ; =0x0223EE58
	add r0, r6, #0
	ldr r1, [r1, r2]
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CFAC:
	add r0, r6, #0
	bl sub_02021C50
	cmp r5, #6
	bge _0223CFCA
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0223CFEC ; =0x0223EE50
	add r0, r6, #0
	ldr r1, [r1, r2]
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CFCA:
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0223CFF0 ; =0x0223EE54
	add r0, r6, #0
	ldr r1, [r1, r2]
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223CFE0: .word 0x0223EF9C
_0223CFE4: .word 0x0223EFA0
_0223CFE8: .word 0x0223EE58
_0223CFEC: .word 0x0223EE50
_0223CFF0: .word 0x0223EE54
	thumb_func_end ov88_0223CF68

	thumb_func_start ov88_0223CFF4
ov88_0223CFF4: ; 0x0223CFF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r2, [sp, #0x18]
	sub r1, r0, #1
	mov r7, #0
	cmp r2, #0
	bne _0223D034
	cmp r0, #0
	beq _0223D02E
	ldr r0, [r4, #0]
	add r2, r3, #0
	bl ov88_0223CF30
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	add r6, r0, #0
	bl ov88_0223CF68
	ldr r0, [r4, #0]
	cmp r0, r6
	beq _0223D02E
	ldr r0, _0223D040 ; =0x000005DC
	bl sub_02005748
	str r6, [r4, #0]
	mov r7, #1
_0223D02E:
	mov r0, #0
	str r0, [r5, #0]
	b _0223D03C
_0223D034:
	ldr r0, [r4, #0]
	ldr r1, [sp]
	bl ov88_0223CF68
_0223D03C:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D040: .word 0x000005DC
	thumb_func_end ov88_0223CFF4

	thumb_func_start ov88_0223D044
ov88_0223D044: ; 0x0223D044
	push {r3, lr}
	add r0, sp, #0
	strb r2, [r0]
	add r0, r1, #0
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov88_0223D044

	thumb_func_start ov88_0223D058
ov88_0223D058: ; 0x0223D058
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223D088 ; =0x000036A0
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r6, r2, #0
	cmp r6, r1
	bne _0223D070
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r4, r0
	beq _0223D084
_0223D070:
	bl sub_0203608C
	add r1, r4, #0
	add r2, r6, #0
	bl ov88_0223D044
	ldr r0, _0223D088 ; =0x000036A0
	str r6, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
_0223D084:
	pop {r4, r5, r6, pc}
	nop
_0223D088: .word 0x000036A0
	thumb_func_end ov88_0223D058

	thumb_func_start ov88_0223D08C
ov88_0223D08C: ; 0x0223D08C
	mov r2, #0x59
	lsl r2, r2, #4
	mul r2, r1
	add r0, r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end ov88_0223D08C

	thumb_func_start ov88_0223D098
ov88_0223D098: ; 0x0223D098
	push {r3, r4, r5, lr}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02035D78
	cmp r0, #0
	beq _0223D0BE
	add r0, r5, #0
	add r1, r4, #0
	bl ov88_0223D08C
	mov r2, #0x59
	add r1, r0, #0
	mov r0, #0x16
	lsl r2, r2, #4
	bl sub_0203597C
_0223D0BE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov88_0223D098

	thumb_func_start ov88_0223D0C0
ov88_0223D0C0: ; 0x0223D0C0
	push {r3, lr}
	bl sub_0202D79C
	add r1, r0, #0
	mov r0, #0x20
	mov r2, #0xe
	bl sub_020359DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov88_0223D0C0

	thumb_func_start ov88_0223D0D4
ov88_0223D0D4: ; 0x0223D0D4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020021B0
	add r0, r6, #0
	bl sub_02025F20
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_02025FD8
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02025FCC
	strb r0, [r4, #0x15]
	add r0, r6, #0
	bl sub_02025F30
	strb r0, [r4, #0x16]
	mov r0, #0
	add r1, r4, #0
_0223D10C:
	ldr r2, [r5, #0x10]
	str r2, [r1, #0x18]
	ldrb r3, [r5, #0x15]
	add r2, r4, r0
	add r2, #0x58
	strb r3, [r2]
	add r2, r4, r0
	ldrb r3, [r5, #0x14]
	add r2, #0x68
	add r1, r1, #4
	strb r3, [r2]
	add r2, r4, r0
	ldrb r3, [r5, #0x16]
	add r2, #0x78
	add r0, r0, #1
	add r5, #0x88
	strb r3, [r2]
	cmp r0, #0x10
	blt _0223D10C
	mov r0, #0x1c
	add r1, r4, #0
	mov r2, #0x88
	bl sub_0203597C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov88_0223D0D4

	thumb_func_start ov88_0223D140
ov88_0223D140: ; 0x0223D140
	ldr r3, _0223D14C ; =sub_0203597C
	mov r2, #0xfa
	add r1, r0, #0
	mov r0, #0x1d
	lsl r2, r2, #2
	bx r3
	; .align 2, 0
_0223D14C: .word sub_0203597C
	thumb_func_end ov88_0223D140

	thumb_func_start ov88_0223D150
ov88_0223D150: ; 0x0223D150
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D1D4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0223D186
	ldr r0, _0223D1D8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov88_0223BE28
	add r0, r4, #0
	mov r1, #0xce
	add r0, #0x88
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	mov r2, #0
	bl ov88_0223CF68
	b _0223D1CE
_0223D186:
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov88_0223CE34
	ldr r0, _0223D1D4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223D1CE
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223D1CE
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0xc
	bne _0223D1B6
	ldr r1, _0223D1DC ; =ov88_0223D2C4
	ldr r0, _0223D1E0 ; =0x00002214
	str r1, [r4, r0]
	b _0223D1CE
_0223D1B6:
	cmp r0, #6
	bge _0223D1C2
	ldr r1, _0223D1E4 ; =ov88_0223DA3C
	ldr r0, _0223D1E0 ; =0x00002214
	str r1, [r4, r0]
	b _0223D1CE
_0223D1C2:
	blt _0223D1CE
	cmp r0, #0xc
	bge _0223D1CE
	ldr r1, _0223D1E8 ; =ov88_0223E4BC
	ldr r0, _0223D1E0 ; =0x00002214
	str r1, [r4, r0]
_0223D1CE:
	mov r0, #0
	pop {r4, pc}
	nop
_0223D1D4: .word 0x021BF67C
_0223D1D8: .word 0x000005DC
_0223D1DC: .word ov88_0223D2C4
_0223D1E0: .word 0x00002214
_0223D1E4: .word ov88_0223DA3C
_0223D1E8: .word ov88_0223E4BC
	thumb_func_end ov88_0223D150

	thumb_func_start ov88_0223D1EC
ov88_0223D1EC: ; 0x0223D1EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0223D21C
	ldr r0, _0223D2B0 ; =0x00002218
	ldr r0, [r5, r0]
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	strb r0, [r5, #0x1f]
	mov r0, #0
	str r0, [r5, #0x34]
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc
	bl sub_0208E9C0
	b _0223D256
_0223D21C:
	ldr r0, _0223D2B4 ; =0x0000221C
	ldr r1, [r5, r0]
	str r1, [r5, #0xc]
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	strb r0, [r5, #0x1f]
	bl sub_0203608C
	mov r2, #1
	ldr r1, _0223D2B8 ; =0x00002E14
	eor r2, r0
	mov r0, #0xfb
	lsl r0, r0, #2
	add r1, r5, r1
	mul r0, r2
	add r0, r1, r0
	str r0, [r5, #0x34]
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc
	bl sub_0208E9C0
_0223D256:
	mov r0, #1
	strb r0, [r5, #0x1d]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	mov r0, #1
	strb r0, [r5, #0x1e]
	mov r0, #0
	strh r0, [r5, #0x24]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x10]
	bl sub_0208C324
	str r0, [r5, #0x38]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x30]
	str r0, [r5, #0x28]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x18]
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x10]
	bl sub_0202D79C
	str r0, [r5, #0x2c]
	add r0, r5, #0
	ldr r1, _0223D2BC ; =0x0223F13C
	add r0, #0xc
	bl sub_0208D720
	add r1, r5, #0
	ldr r0, _0223D2C0 ; =0x020F410C
	add r1, #0xc
	mov r2, #0x1a
	bl sub_020067E8
	str r0, [r5, #0x40]
	str r4, [r5, #0x3c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D2B0: .word 0x00002218
_0223D2B4: .word 0x0000221C
_0223D2B8: .word 0x00002E14
_0223D2BC: .word 0x0223F13C
_0223D2C0: .word 0x020F410C
	thumb_func_end ov88_0223D1EC

	thumb_func_start ov88_0223D2C4
ov88_0223D2C4: ; 0x0223D2C4
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D30C ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x19
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D310 ; =ov88_0223D318
	ldr r0, _0223D314 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223D30C: .word 0x000005A8
_0223D310: .word ov88_0223D318
_0223D314: .word 0x00002214
	thumb_func_end ov88_0223D2C4

	thumb_func_start ov88_0223D318
ov88_0223D318: ; 0x0223D318
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x5d
	ldr r2, _0223D3C8 ; =0x00000658
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0xc
	ldr r0, [r4, r0]
	add r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D33E
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D388
	b _0223D3C2
_0223D33E:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D3CC ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x1c
	mov r2, #1
	bl ov88_0223ECBC
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #1
	bl ov88_0223D058
	ldr r1, _0223D3D0 ; =ov88_0223DA00
	ldr r0, _0223D3D4 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x5c]
	b _0223D3C2
_0223D388:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D3D8 ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D3DC ; =ov88_0223D150
	ldr r0, _0223D3D4 ; =0x00002214
	str r1, [r4, r0]
_0223D3C2:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223D3C8: .word 0x00000658
_0223D3CC: .word 0x000005A8
_0223D3D0: .word ov88_0223DA00
_0223D3D4: .word 0x00002214
_0223D3D8: .word 0x00000588
_0223D3DC: .word ov88_0223D150
	thumb_func_end ov88_0223D318

	thumb_func_start ov88_0223D3E0
ov88_0223D3E0: ; 0x0223D3E0
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D428 ; =0x000005A8
	ldr r1, [r4, #0x68]
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D42C ; =ov88_0223D434
	ldr r0, _0223D430 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223D428: .word 0x000005A8
_0223D42C: .word ov88_0223D434
_0223D430: .word 0x00002214
	thumb_func_end ov88_0223D3E0

	thumb_func_start ov88_0223D434
ov88_0223D434: ; 0x0223D434
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0223D48C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223D484
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D490 ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D494 ; =ov88_0223D150
	ldr r0, _0223D498 ; =0x00002214
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov88_0223DFF4
_0223D484:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223D48C: .word 0x021BF67C
_0223D490: .word 0x00000588
_0223D494: .word ov88_0223D150
_0223D498: .word 0x00002214
	thumb_func_end ov88_0223D434

	thumb_func_start ov88_0223D49C
ov88_0223D49C: ; 0x0223D49C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _0223D4BC ; =0x00003674
	add r3, r0, #0
	ldr r0, [r3, r4]
	add r4, r4, #4
	str r0, [sp]
	ldr r0, _0223D4C0 ; =0x000005A8
	mov r2, #1
	add r0, r3, r0
	ldr r3, [r3, r4]
	bl ov88_0223ECBC
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D4BC: .word 0x00003674
_0223D4C0: .word 0x000005A8
	thumb_func_end ov88_0223D49C

	thumb_func_start ov88_0223D4C4
ov88_0223D4C4: ; 0x0223D4C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5d
	ldr r2, _0223D504 ; =0x00000658
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0xc
	ldr r0, [r4, r0]
	add r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D4E8
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D4F0
	b _0223D4FE
_0223D4E8:
	ldr r1, _0223D508 ; =ov88_0223D854
	ldr r0, _0223D50C ; =0x00002214
	str r1, [r4, r0]
	b _0223D4FE
_0223D4F0:
	add r0, r4, #0
	mov r1, #0x3a
	bl ov88_0223D49C
	ldr r1, _0223D510 ; =ov88_0223D740
	ldr r0, _0223D50C ; =0x00002214
	str r1, [r4, r0]
_0223D4FE:
	mov r0, #0
	pop {r4, pc}
	nop
_0223D504: .word 0x00000658
_0223D508: .word ov88_0223D854
_0223D50C: .word 0x00002214
_0223D510: .word ov88_0223D740
	thumb_func_end ov88_0223D4C4

	thumb_func_start ov88_0223D514
ov88_0223D514: ; 0x0223D514
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x5d
	ldr r2, _0223D598 ; =0x00000658
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0xc
	ldr r0, [r4, r0]
	add r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D53A
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D56E
	b _0223D590
_0223D53A:
	ldr r0, [r4, #4]
	bl sub_0203068C
	ldr r1, _0223D59C ; =0x00003670
	ldr r1, [r4, r1]
	bl sub_02030788
	ldr r1, _0223D5A0 ; =0x00003694
	ldr r0, [r4, r1]
	sub r1, #0x24
	ldr r1, [r4, r1]
	bl sub_0202AFD4
	mov r0, #0
	str r0, [sp]
	ldr r1, _0223D5A4 ; =0x0000366C
	ldr r0, [r4, #4]
	ldr r1, [r4, r1]
	mov r2, #0x1f
	mov r3, #0x1a
	bl sub_02039298
	ldr r1, _0223D5A8 ; =ov88_0223D854
	ldr r0, _0223D5AC ; =0x00002214
	str r1, [r4, r0]
	b _0223D590
_0223D56E:
	ldr r0, _0223D5A4 ; =0x0000366C
	ldr r0, [r4, r0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, _0223D5B0 ; =0x00003674
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200B498
	add r0, r4, #0
	mov r1, #0x3b
	bl ov88_0223D49C
	ldr r1, _0223D5B4 ; =ov88_0223D4C4
	ldr r0, _0223D5AC ; =0x00002214
	str r1, [r4, r0]
_0223D590:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D598: .word 0x00000658
_0223D59C: .word 0x00003670
_0223D5A0: .word 0x00003694
_0223D5A4: .word 0x0000366C
_0223D5A8: .word ov88_0223D854
_0223D5AC: .word 0x00002214
_0223D5B0: .word 0x00003674
_0223D5B4: .word ov88_0223D4C4
	thumb_func_end ov88_0223D514

	thumb_func_start ov88_0223D5B8
ov88_0223D5B8: ; 0x0223D5B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0223D5DA
	add r0, r0, #1
	cmp r4, r0
	bne _0223D604
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223D5DA:
	ldr r0, _0223D674 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223D678 ; =0x0000366C
	ldr r0, [r5, r0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, _0223D67C ; =0x00003674
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #0x3b
	bl ov88_0223D49C
	ldr r1, _0223D680 ; =ov88_0223D4C4
	ldr r0, _0223D684 ; =0x00002214
	str r1, [r5, r0]
	b _0223D648
_0223D604:
	ldr r0, _0223D674 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0223D688 ; =0x00003670
	str r4, [r5, r0]
	mov r0, #0x1a
	bl sub_02025E6C
	add r6, r0, #0
	ldr r0, _0223D68C ; =0x00003694
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202AEF0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025EC0
	ldr r0, _0223D67C ; =0x00003674
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl sub_0200B498
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0x3c
	bl ov88_0223D49C
	ldr r1, _0223D690 ; =ov88_0223D514
	ldr r0, _0223D684 ; =0x00002214
	str r1, [r5, r0]
_0223D648:
	ldr r0, _0223D694 ; =0x00003684
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _0223D694 ; =0x00003684
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0xda
	lsl r0, r0, #6
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _0223D698 ; =0x0000367C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223D674: .word 0x000005DC
_0223D678: .word 0x0000366C
_0223D67C: .word 0x00003674
_0223D680: .word ov88_0223D4C4
_0223D684: .word 0x00002214
_0223D688: .word 0x00003670
_0223D68C: .word 0x00003694
_0223D690: .word ov88_0223D514
_0223D694: .word 0x00003684
_0223D698: .word 0x0000367C
	thumb_func_end ov88_0223D5B8

	thumb_func_start ov88_0223D69C
ov88_0223D69C: ; 0x0223D69C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223D730 ; =0x00003694
	ldr r0, [r5, r0]
	bl sub_0202AF94
	str r0, [sp]
	add r0, r0, #1
	mov r1, #0x1a
	bl sub_02013A04
	ldr r1, _0223D734 ; =0x0000367C
	str r0, [r5, r1]
	mov r0, #0x64
	mov r1, #0x1a
	bl sub_02023790
	ldr r7, _0223D730 ; =0x00003694
	add r6, r0, #0
	mov r4, #0
_0223D6C4:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0223D6EE
	ldr r0, _0223D730 ; =0x00003694
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202AEF0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02023D28
	ldr r0, _0223D734 ; =0x0000367C
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_02013A6C
_0223D6EE:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0223D6C4
	ldr r1, _0223D734 ; =0x0000367C
	mov r2, #0xb
	ldr r0, [r5, r1]
	sub r1, r1, #4
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0xd
	bl sub_02013A4C
	add r0, r6, #0
	bl sub_020237BC
	ldr r2, _0223D734 ; =0x0000367C
	mov r3, #0x5d
	lsl r3, r3, #2
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [sp]
	ldr r3, [r5, r3]
	add r2, r5, r2
	bl ov88_0223ED94
	mov r1, #0xda
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, _0223D738 ; =ov88_0223D5B8
	ldr r0, _0223D73C ; =0x00002214
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D730: .word 0x00003694
_0223D734: .word 0x0000367C
_0223D738: .word ov88_0223D5B8
_0223D73C: .word 0x00002214
	thumb_func_end ov88_0223D69C

	thumb_func_start ov88_0223D740
ov88_0223D740: ; 0x0223D740
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5d
	ldr r2, _0223D794 ; =0x00000658
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0xc
	ldr r0, [r4, r0]
	add r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D764
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D76C
	b _0223D78E
_0223D764:
	ldr r1, _0223D798 ; =ov88_0223D69C
	ldr r0, _0223D79C ; =0x00002214
	str r1, [r4, r0]
	b _0223D78E
_0223D76C:
	ldr r0, _0223D7A0 ; =0x0000366C
	ldr r0, [r4, r0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, _0223D7A4 ; =0x00003674
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200B498
	add r0, r4, #0
	mov r1, #0x3b
	bl ov88_0223D49C
	ldr r1, _0223D7A8 ; =ov88_0223D4C4
	ldr r0, _0223D79C ; =0x00002214
	str r1, [r4, r0]
_0223D78E:
	mov r0, #0
	pop {r4, pc}
	nop
_0223D794: .word 0x00000658
_0223D798: .word ov88_0223D69C
_0223D79C: .word 0x00002214
_0223D7A0: .word 0x0000366C
_0223D7A4: .word 0x00003674
_0223D7A8: .word ov88_0223D4C4
	thumb_func_end ov88_0223D740

	thumb_func_start ov88_0223D7AC
ov88_0223D7AC: ; 0x0223D7AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x5d
	ldr r2, _0223D828 ; =0x00000658
	lsl r0, r0, #2
	add r1, r5, r2
	add r2, #0xc
	ldr r0, [r5, r0]
	add r2, r5, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D7D2
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D81A
	b _0223D820
_0223D7D2:
	ldr r1, _0223D82C ; =ov88_0223D854
	ldr r0, _0223D830 ; =0x00002214
	ldr r6, _0223D834 ; =0x00003694
	str r1, [r5, r0]
	mov r4, #0
_0223D7DC:
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	bne _0223D7FC
	mov r0, #0
	str r0, [sp]
	ldr r1, _0223D838 ; =0x0000366C
	ldr r0, [r5, #4]
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x1a
	bl sub_02039298
	b _0223D802
_0223D7FC:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0223D7DC
_0223D802:
	cmp r4, #0x20
	bne _0223D820
	add r0, r5, #0
	mov r1, #0x3a
	bl ov88_0223D49C
	ldr r1, _0223D83C ; =ov88_0223D740
	ldr r0, _0223D830 ; =0x00002214
	add sp, #4
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223D81A:
	ldr r1, _0223D82C ; =ov88_0223D854
	ldr r0, _0223D830 ; =0x00002214
	str r1, [r5, r0]
_0223D820:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223D828: .word 0x00000658
_0223D82C: .word ov88_0223D854
_0223D830: .word 0x00002214
_0223D834: .word 0x00003694
_0223D838: .word 0x0000366C
_0223D83C: .word ov88_0223D740
	thumb_func_end ov88_0223D7AC

	thumb_func_start ov88_0223D840
ov88_0223D840: ; 0x0223D840
	push {r3, lr}
	mov r0, #0x13
	bl sub_02036540
	cmp r0, #0
	beq _0223D850
	mov r0, #2
	pop {r3, pc}
_0223D850:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov88_0223D840

	thumb_func_start ov88_0223D854
ov88_0223D854: ; 0x0223D854
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0
	ldr r0, _0223D948 ; =0x0000366C
	mvn r1, r1
	str r1, [r5, r0]
	mov r6, #0
	bl sub_02035E18
	cmp r0, #0
	ble _0223D890
	ldr r7, _0223D94C ; =0x000035EC
	add r4, r5, #0
_0223D86E:
	ldr r0, [r4, r7]
	cmp r0, #2
	bne _0223D884
	ldr r0, _0223D948 ; =0x0000366C
	lsl r1, r6, #2
	str r6, [r5, r0]
	mov r2, #0
	add r1, r5, r1
	sub r0, #0x80
	str r2, [r1, r0]
	b _0223D890
_0223D884:
	add r4, r4, #4
	add r6, r6, #1
	bl sub_02035E18
	cmp r6, r0
	blt _0223D86E
_0223D890:
	ldr r0, _0223D948 ; =0x0000366C
	mov r1, #0
	ldr r2, [r5, r0]
	mvn r1, r1
	cmp r2, r1
	bne _0223D8D4
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0200B190
	ldr r0, _0223D950 ; =0x00003674
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	mov r0, #0x13
	bl sub_020364F0
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D954 ; =0x000005A8
	ldr r3, [r5, r3]
	add r0, r5, r0
	mov r1, #0x1c
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D958 ; =ov88_0223D840
	ldr r0, _0223D95C ; =0x00002214
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D8D4:
	ldr r0, [r5, #4]
	bl sub_0207D990
	ldr r1, _0223D960 ; =0x000001B5
	mov r2, #1
	mov r3, #0x1a
	bl sub_0207D688
	cmp r0, #1
	bne _0223D90E
	ldr r0, _0223D948 ; =0x0000366C
	ldr r0, [r5, r0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, _0223D950 ; =0x00003674
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #0x39
	bl ov88_0223D49C
	ldr r1, _0223D964 ; =ov88_0223D7AC
	ldr r0, _0223D95C ; =0x00002214
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D90E:
	ldr r0, [r5, #4]
	bl sub_0202B370
	add r6, r0, #0
	mov r4, #0
_0223D918:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	bne _0223D938
	mov r0, #0
	str r0, [sp]
	ldr r1, _0223D948 ; =0x0000366C
	ldr r0, [r5, #4]
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x1a
	bl sub_02039298
	b _0223D93E
_0223D938:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0223D918
_0223D93E:
	ldr r1, _0223D968 ; =ov88_0223D854
	ldr r0, _0223D95C ; =0x00002214
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D948: .word 0x0000366C
_0223D94C: .word 0x000035EC
_0223D950: .word 0x00003674
_0223D954: .word 0x000005A8
_0223D958: .word ov88_0223D840
_0223D95C: .word 0x00002214
_0223D960: .word 0x000001B5
_0223D964: .word ov88_0223D7AC
_0223D968: .word ov88_0223D854
	thumb_func_end ov88_0223D854

	thumb_func_start ov88_0223D96C
ov88_0223D96C: ; 0x0223D96C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, _0223D9DC ; =0x000035EC
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0x1a
	bl sub_020391DC
	cmp r0, #0
	bne _0223D9AC
	mov r0, #0x13
	bl sub_020364F0
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223D9E0 ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x1c
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D9E4 ; =ov88_0223D840
	ldr r0, _0223D9E8 ; =0x00002214
	add sp, #4
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, pc}
_0223D9AC:
	mov r0, #0x1a
	bl sub_0200B358
	ldr r1, _0223D9EC ; =0x00003674
	ldr r2, _0223D9F0 ; =0x000002A3
	str r0, [r4, r1]
	mov r1, #0x1a
	mov r0, #0
	add r3, r1, #0
	bl sub_0200B144
	ldr r1, _0223D9F4 ; =0x00003678
	str r0, [r4, r1]
	ldr r0, [r4, #4]
	bl sub_0202B370
	ldr r1, _0223D9F8 ; =0x00003694
	str r0, [r4, r1]
	ldr r1, _0223D9FC ; =ov88_0223D854
	ldr r0, _0223D9E8 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223D9DC: .word 0x000035EC
_0223D9E0: .word 0x000005A8
_0223D9E4: .word ov88_0223D840
_0223D9E8: .word 0x00002214
_0223D9EC: .word 0x00003674
_0223D9F0: .word 0x000002A3
_0223D9F4: .word 0x00003678
_0223D9F8: .word 0x00003694
_0223D9FC: .word ov88_0223D854
	thumb_func_end ov88_0223D96C

	thumb_func_start ov88_0223DA00
ov88_0223DA00: ; 0x0223DA00
	ldr r2, [r0, #0x60]
	cmp r2, #0
	beq _0223DA2C
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0223DA2C
	cmp r2, #1
	bne _0223DA1C
	cmp r1, #1
	bne _0223DA1C
	ldr r2, _0223DA30 ; =ov88_0223D96C
	ldr r1, _0223DA34 ; =0x00002214
	str r2, [r0, r1]
	b _0223DA22
_0223DA1C:
	ldr r2, _0223DA38 ; =ov88_0223D3E0
	ldr r1, _0223DA34 ; =0x00002214
	str r2, [r0, r1]
_0223DA22:
	mov r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	mov r1, #0x1d
	str r1, [r0, #0x68]
_0223DA2C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223DA30: .word ov88_0223D96C
_0223DA34: .word 0x00002214
_0223DA38: .word ov88_0223D3E0
	thumb_func_end ov88_0223DA00

	thumb_func_start ov88_0223DA3C
ov88_0223DA3C: ; 0x0223DA3C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	add r1, sp, #0x10
	strb r0, [r1, #8]
	mov r0, #1
	strb r0, [r1, #9]
	mov r0, #3
	strb r0, [r1, #0xa]
	ldrb r2, [r1, #0xb]
	mov r0, #0xf
	bic r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	mov r0, #0x30
	bic r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1, #0xb]
	ldr r0, _0223DB34 ; =0x00002218
	add r1, r4, #0
	add r1, #0x88
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #8
	str r0, [sp]
	ldr r0, _0223DB38 ; =0x00000598
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x10
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #3
	mov r1, #0x1a
	bl sub_02013A04
	ldr r1, _0223DB3C ; =0x0000065C
	mov r2, #0x11
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r3, #0
	bl sub_02013A4C
	ldr r0, _0223DB3C ; =0x0000065C
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x12
	mov r3, #1
	bl sub_02013A4C
	ldr r0, _0223DB3C ; =0x0000065C
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _0223DB3C ; =0x0000065C
	ldr r1, [r4, r0]
	str r1, [sp, #0x10]
	sub r0, #0xa4
	add r0, r4, r0
	str r0, [sp, #0x14]
	bl ov88_0223ED80
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x66
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r1, _0223DB40 ; =ov88_0223DB48
	ldr r0, _0223DB44 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223DB34: .word 0x00002218
_0223DB38: .word 0x00000598
_0223DB3C: .word 0x0000065C
_0223DB40: .word ov88_0223DB48
_0223DB44: .word 0x00002214
	thumb_func_end ov88_0223DA3C

	thumb_func_start ov88_0223DB48
ov88_0223DB48: ; 0x0223DB48
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001BE0
	cmp r0, #2
	bhi _0223DB6A
	cmp r0, #0
	beq _0223DB74
	cmp r0, #1
	beq _0223DBC8
	cmp r0, #2
	beq _0223DC18
	b _0223DC66
_0223DB6A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223DC18
	b _0223DC66
_0223DB74:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223DC6C ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0223DC70 ; =0x0000065C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r1, _0223DC74 ; =ov88_0223D150
	ldr r0, _0223DC78 ; =0x00002214
	add sp, #0x10
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
_0223DBC8:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223DC7C ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0223DC70 ; =0x0000065C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r1, _0223DC80 ; =ov88_0223DC84
	ldr r0, _0223DC78 ; =0x00002214
	str r1, [r4, r0]
	b _0223DC66
_0223DC18:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223DC6C ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0223DC70 ; =0x0000065C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r1, _0223DC74 ; =ov88_0223D150
	ldr r0, _0223DC78 ; =0x00002214
	str r1, [r4, r0]
_0223DC66:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223DC6C: .word 0x00000588
_0223DC70: .word 0x0000065C
_0223DC74: .word ov88_0223D150
_0223DC78: .word 0x00002214
_0223DC7C: .word 0x000005A8
_0223DC80: .word ov88_0223DC84
	thumb_func_end ov88_0223DB48

	thumb_func_start ov88_0223DC84
ov88_0223DC84: ; 0x0223DC84
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223DCD4 ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov88_0223ECBC
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #2
	bl ov88_0223D058
	ldr r1, _0223DCD8 ; =ov88_0223DCE0
	ldr r0, _0223DCDC ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223DCD4: .word 0x000005A8
_0223DCD8: .word ov88_0223DCE0
_0223DCDC: .word 0x00002214
	thumb_func_end ov88_0223DC84

	thumb_func_start ov88_0223DCE0
ov88_0223DCE0: ; 0x0223DCE0
	ldr r2, [r0, #0x60]
	cmp r2, #0
	beq _0223DD0C
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0223DD0C
	cmp r2, #2
	bne _0223DCFC
	cmp r1, #2
	bne _0223DCFC
	ldr r2, _0223DD10 ; =ov88_0223DD1C
	ldr r1, _0223DD14 ; =0x00002214
	str r2, [r0, r1]
	b _0223DD02
_0223DCFC:
	ldr r2, _0223DD18 ; =ov88_0223D3E0
	ldr r1, _0223DD14 ; =0x00002214
	str r2, [r0, r1]
_0223DD02:
	mov r1, #0x18
	str r1, [r0, #0x68]
	mov r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
_0223DD0C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223DD10: .word ov88_0223DD1C
_0223DD14: .word 0x00002214
_0223DD18: .word ov88_0223D3E0
	thumb_func_end ov88_0223DCE0

	thumb_func_start ov88_0223DD1C
ov88_0223DD1C: ; 0x0223DD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _0223DE3C ; =0x00000438
	mov r6, #0
	add r0, r7, r0
	add r4, r7, #0
	add r5, r7, #0
	str r0, [sp, #4]
_0223DD2E:
	add r0, r7, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r6, r0
	beq _0223DD6C
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0223DE40 ; =0x00000692
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0223DD58
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0223DD58:
	ldr r0, _0223DE44 ; =0x0000069C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223DD6C
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0223DD6C:
	add r0, r6, #7
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r0, r0, r1
	bl sub_0201AD10
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	sub r0, r0, #6
	cmp r6, r0
	beq _0223DDB8
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0223DE48 ; =0x000006F2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0223DDA4
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0223DDA4:
	ldr r0, _0223DE4C ; =0x000006FC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223DDB8
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0223DDB8:
	add r0, r6, #0
	add r0, #0xd
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r0, r0, r1
	bl sub_0201AD10
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #6
	blt _0223DD2E
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r7, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r3, #0x30
	lsl r2, r0, #3
	ldr r1, _0223DE50 ; =0x0223EF9C
	ldr r0, _0223DE54 ; =0x000022C4
	ldr r1, [r1, r2]
	ldr r4, _0223DE58 ; =0x0223EFA0
	add r0, r7, r0
	ldr r2, [r4, r2]
	add r1, #0x10
	sub r2, r2, #6
	str r3, [sp]
	bl ov88_0223DE68
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, _0223DE50 ; =0x0223EF9C
	lsl r2, r0, #3
	mov r0, #0x30
	str r0, [sp]
	ldr r0, _0223DE5C ; =0x000022DC
	ldr r1, [r1, r2]
	add r3, r4, #0
	ldr r2, [r3, r2]
	add r0, r7, r0
	add r1, #0x10
	sub r2, r2, #6
	mov r3, #0xb0
	bl ov88_0223DE68
	ldr r1, _0223DE60 ; =0x000022BC
	mov r0, #0
	str r0, [r7, r1]
	ldr r2, _0223DE64 ; =ov88_0223DF00
	sub r1, #0xa8
	str r2, [r7, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DE3C: .word 0x00000438
_0223DE40: .word 0x00000692
_0223DE44: .word 0x0000069C
_0223DE48: .word 0x000006F2
_0223DE4C: .word 0x000006FC
_0223DE50: .word 0x0223EF9C
_0223DE54: .word 0x000022C4
_0223DE58: .word 0x0223EFA0
_0223DE5C: .word 0x000022DC
_0223DE60: .word 0x000022BC
_0223DE64: .word ov88_0223DF00
	thumb_func_end ov88_0223DD1C

	thumb_func_start ov88_0223DE68
ov88_0223DE68: ; 0x0223DE68
	lsl r1, r1, #0xc
	str r1, [r0, #0]
	lsl r1, r2, #0xc
	str r1, [r0, #4]
	lsl r1, r3, #0xc
	str r1, [r0, #0xc]
	ldr r1, [sp]
	lsl r1, r1, #0xc
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov88_0223DE68

	thumb_func_start ov88_0223DE7C
ov88_0223DE7C: ; 0x0223DE7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r7, [sp, #0x48]
	str r0, [sp]
	ldr r4, [r7, #0]
	ldr r0, [r7, #0xc]
	str r1, [sp, #4]
	add r6, r3, #0
	sub r0, r0, r4
	mov r1, #0x14
	str r2, [sp, #8]
	ldr r5, [sp, #0x4c]
	bl _s32_div_f
	mul r0, r6
	add r0, r4, r0
	str r0, [sp, #0x24]
	ldr r4, [r7, #4]
	ldr r0, [r7, #0x10]
	mov r1, #0x14
	sub r0, r0, r4
	bl _s32_div_f
	mul r0, r6
	add r0, r4, r0
	str r0, [sp, #0x28]
	ldr r0, [sp]
	add r1, sp, #0x24
	bl sub_02021C50
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0223DEDA
	mov r0, #5
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x18]
	mov r0, #0x16
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	bl sub_02021C50
_0223DEDA:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0223DEFC
	mov r0, #7
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #0x16
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	bl sub_02021C50
_0223DEFC:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223DE7C

	thumb_func_start ov88_0223DF00
ov88_0223DF00: ; 0x0223DF00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _0223DFD4 ; =0x000022BC
	add r4, r0, #0
	ldr r0, [r4, r3]
	add r2, r3, #0
	add r0, r0, #1
	str r0, [r4, r3]
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	add r2, #8
	add r2, r4, r2
	lsl r0, r1, #2
	str r2, [sp]
	mov r2, #0x69
	lsl r2, r2, #4
	add r2, r4, r2
	lsl r1, r1, #4
	add r1, r2, r1
	mov r2, #0x37
	str r1, [sp, #4]
	lsl r2, r2, #4
	add r5, r4, r0
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x30
	add r2, #0x60
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	bl ov88_0223DE7C
	add r0, r4, #0
	add r0, #0x8c
	ldr r3, _0223DFD8 ; =0x000022DC
	ldr r5, [r0, #0]
	add r1, r4, r3
	str r1, [sp]
	mov r1, #0x69
	lsl r1, r1, #4
	add r2, r4, r1
	lsl r1, r5, #4
	add r1, r2, r1
	mov r2, #0x37
	lsl r0, r5, #2
	lsl r2, r2, #4
	str r1, [sp, #4]
	add r5, r4, r0
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x30
	add r2, #0x60
	sub r3, #0x20
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	bl ov88_0223DE7C
	ldr r1, _0223DFD4 ; =0x000022BC
	ldr r0, [r4, r1]
	cmp r0, #0x15
	bne _0223DFCC
	mov r0, #1
	add r2, r4, #0
	str r0, [sp]
	ldr r0, _0223DFDC ; =0x00000568
	sub r1, #0xa4
	add r2, #0x88
	ldr r1, [r4, r1]
	ldr r2, [r2, #0]
	add r0, r4, r0
	mov r3, #8
	bl ov88_0223C860
	mov r0, #1
	add r2, r4, #0
	str r0, [sp]
	ldr r1, _0223DFE0 ; =0x0000221C
	add r2, #0x8c
	ldr r0, _0223DFE4 ; =0x00000578
	ldr r2, [r2, #0]
	ldr r1, [r4, r1]
	add r0, r4, r0
	sub r2, r2, #6
	mov r3, #8
	bl ov88_0223C860
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov88_0223BDA4
	ldr r1, _0223DFE8 ; =ov88_0223E110
	ldr r0, _0223DFEC ; =0x00002214
	str r1, [r4, r0]
	ldr r0, _0223DFF0 ; =0x00000418
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
_0223DFCC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DFD4: .word 0x000022BC
_0223DFD8: .word 0x000022DC
_0223DFDC: .word 0x00000568
_0223DFE0: .word 0x0000221C
_0223DFE4: .word 0x00000578
_0223DFE8: .word ov88_0223E110
_0223DFEC: .word 0x00002214
_0223DFF0: .word 0x00000418
	thumb_func_end ov88_0223DF00

	thumb_func_start ov88_0223DFF4
ov88_0223DFF4: ; 0x0223DFF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0223E0F0 ; =0x00000568
	str r0, [sp]
	add r0, r0, r1
	bl sub_0201AD10
	ldr r1, _0223E0F4 ; =0x00000578
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_0201AD10
	ldr r6, [sp]
	ldr r1, _0223E0F8 ; =0x00000438
	add r0, r6, #0
	add r0, r0, r1
	ldr r4, _0223E0FC ; =0x0223EF9C
	mov r7, #0
	add r5, r6, #0
	str r0, [sp, #4]
_0223E01C:
	mov r0, #0x69
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0223E09C
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	add r1, #0x10
	sub r2, r2, #6
	bl ov88_0223E87C
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _0223E100 ; =0x00000692
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0223E06A
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	add r1, #0x24
	add r2, #0x10
	bl ov88_0223E87C
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
_0223E06A:
	ldr r0, _0223E104 ; =0x0000069C
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223E090
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	add r1, #0x2c
	add r2, #0x10
	bl ov88_0223E87C
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
_0223E090:
	add r0, r7, #7
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r0, r0, r1
	bl sub_0201A9A4
_0223E09C:
	add r7, r7, #1
	add r6, #0x10
	add r4, #8
	add r5, r5, #4
	cmp r7, #0xc
	blt _0223E01C
	mov r1, #0xce
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #0xcf
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, _0223E0F8 ; =0x00000438
	ldr r0, [sp]
	ldr r2, [sp]
	add r0, r0, r1
	mov r1, #1
	bl ov88_0223CB34
	ldr r1, _0223E108 ; =0x0000040C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_02021CAC
	ldr r1, _0223E10C ; =0x00000418
	ldr r0, [sp]
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_02021CAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E0F0: .word 0x00000568
_0223E0F4: .word 0x00000578
_0223E0F8: .word 0x00000438
_0223E0FC: .word 0x0223EF9C
_0223E100: .word 0x00000692
_0223E104: .word 0x0000069C
_0223E108: .word 0x0000040C
_0223E10C: .word 0x00000418
	thumb_func_end ov88_0223DFF4

	thumb_func_start ov88_0223E110
ov88_0223E110: ; 0x0223E110
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	ldr r0, _0223E198 ; =0x00002218
	add r1, r4, #0
	add r1, #0x88
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	add r1, r4, #0
	ldr r0, _0223E19C ; =0x0000221C
	add r1, #0x8c
	ldr r1, [r1, #0]
	ldr r0, [r4, r0]
	sub r1, r1, #6
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B5CC
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #8
	str r0, [sp]
	ldr r0, _0223E1A0 ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x15
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E1A4 ; =ov88_0223E20C
	ldr r0, _0223E1A8 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223E198: .word 0x00002218
_0223E19C: .word 0x0000221C
_0223E1A0: .word 0x000005A8
_0223E1A4: .word ov88_0223E20C
_0223E1A8: .word 0x00002214
	thumb_func_end ov88_0223E110

	thumb_func_start ov88_0223E1AC
ov88_0223E1AC: ; 0x0223E1AC
	push {r4, lr}
	mov r1, #0x18
	mov r2, #3
	add r4, r0, #0
	bl ov88_0223D058
	mov r0, #1
	str r0, [r4, #0x5c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov88_0223E1AC

	thumb_func_start ov88_0223E1C0
ov88_0223E1C0: ; 0x0223E1C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	add r6, r2, #0
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223E208 ; =0x00000438
	ldr r3, [r5, r3]
	add r1, r5, r0
	lsl r0, r4, #4
	add r0, r1, r0
	add r1, r6, #0
	mov r2, #1
	bl ov88_0223ECBC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223E208: .word 0x00000438
	thumb_func_end ov88_0223E1C0

	thumb_func_start ov88_0223E20C
ov88_0223E20C: ; 0x0223E20C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x5d
	ldr r2, _0223E318 ; =0x00000658
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0xc
	ldr r0, [r4, r0]
	add r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223E232
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E2CC
	b _0223E310
_0223E232:
	add r0, r4, #0
	bl ov88_0223E8D0
	cmp r0, #0
	beq _0223E2BA
	add r0, r4, #0
	bl ov88_0223E914
	cmp r0, #0
	beq _0223E250
	cmp r0, #1
	beq _0223E282
	cmp r0, #2
	beq _0223E29E
	b _0223E310
_0223E250:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0223E31C ; =0x0000069C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0223E27A
	add r0, r4, #0
	bl ov88_0223E1AC
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x14
	bl ov88_0223E1C0
	ldr r1, _0223E320 ; =ov88_0223E41C
	ldr r0, _0223E324 ; =0x00002214
	str r1, [r4, r0]
	b _0223E310
_0223E27A:
	ldr r1, _0223E328 ; =ov88_0223E330
	ldr r0, _0223E324 ; =0x00002214
	str r1, [r4, r0]
	b _0223E310
_0223E282:
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x25
	bl ov88_0223E1C0
	ldr r1, _0223E320 ; =ov88_0223E41C
	ldr r0, _0223E324 ; =0x00002214
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov88_0223D058
	b _0223E310
_0223E29E:
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x26
	bl ov88_0223E1C0
	ldr r1, _0223E320 ; =ov88_0223E41C
	ldr r0, _0223E324 ; =0x00002214
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov88_0223D058
	b _0223E310
_0223E2BA:
	ldr r1, _0223E320 ; =ov88_0223E41C
	ldr r0, _0223E324 ; =0x00002214
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov88_0223D058
	b _0223E310
_0223E2CC:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223E32C ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E320 ; =ov88_0223E41C
	ldr r0, _0223E324 ; =0x00002214
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov88_0223D058
_0223E310:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223E318: .word 0x00000658
_0223E31C: .word 0x0000069C
_0223E320: .word ov88_0223E41C
_0223E324: .word 0x00002214
_0223E328: .word ov88_0223E330
_0223E32C: .word 0x000005A8
	thumb_func_end ov88_0223E20C

	thumb_func_start ov88_0223E330
ov88_0223E330: ; 0x0223E330
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #8
	str r0, [sp]
	ldr r0, _0223E378 ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x24
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E37C ; =ov88_0223E384
	ldr r0, _0223E380 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223E378: .word 0x000005A8
_0223E37C: .word ov88_0223E384
_0223E380: .word 0x00002214
	thumb_func_end ov88_0223E330

	thumb_func_start ov88_0223E384
ov88_0223E384: ; 0x0223E384
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x5d
	ldr r2, _0223E40C ; =0x00000658
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0xc
	ldr r0, [r4, r0]
	add r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223E3AA
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E3C2
	b _0223E406
_0223E3AA:
	add r0, r4, #0
	bl ov88_0223E1AC
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x14
	bl ov88_0223E1C0
	ldr r1, _0223E410 ; =ov88_0223E41C
	ldr r0, _0223E414 ; =0x00002214
	str r1, [r4, r0]
	b _0223E406
_0223E3C2:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223E418 ; =0x000005A8
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E410 ; =ov88_0223E41C
	ldr r0, _0223E414 ; =0x00002214
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov88_0223D058
_0223E406:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223E40C: .word 0x00000658
_0223E410: .word ov88_0223E41C
_0223E414: .word 0x00002214
_0223E418: .word 0x000005A8
	thumb_func_end ov88_0223E384

	thumb_func_start ov88_0223E41C
ov88_0223E41C: ; 0x0223E41C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _0223E464
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0223E464
	cmp r1, #3
	bne _0223E444
	cmp r0, #3
	bne _0223E444
	ldr r0, _0223E468 ; =0x00003698
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, _0223E46C ; =ov88_0223E478
	ldr r0, _0223E470 ; =0x00002214
	str r1, [r4, r0]
	b _0223E44A
_0223E444:
	ldr r1, _0223E474 ; =ov88_0223D3E0
	ldr r0, _0223E470 ; =0x00002214
	str r1, [r4, r0]
_0223E44A:
	mov r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	add r0, r4, #0
	bl ov88_0223E8D0
	cmp r0, #0
	beq _0223E460
	mov r0, #0x18
	str r0, [r4, #0x68]
	b _0223E464
_0223E460:
	mov r0, #0x22
	str r0, [r4, #0x68]
_0223E464:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223E468: .word 0x00003698
_0223E46C: .word ov88_0223E478
_0223E470: .word 0x00002214
_0223E474: .word ov88_0223D3E0
	thumb_func_end ov88_0223E41C

	thumb_func_start ov88_0223E478
ov88_0223E478: ; 0x0223E478
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_020331E0
	ldr r0, [r4, #8]
	add r3, r4, #0
	add r2, r4, #0
	ldr r1, _0223E4B0 ; =0x00002218
	str r0, [sp]
	add r3, #0x8c
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r2, #0x88
	ldr r3, [r3, #0]
	ldr r1, [r4, r1]
	ldr r2, [r2, #0]
	sub r3, r3, #6
	bl ov88_0223E694
	ldr r1, _0223E4B4 ; =ov88_0223D3E0
	ldr r0, _0223E4B8 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #2
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223E4B0: .word 0x00002218
_0223E4B4: .word ov88_0223D3E0
_0223E4B8: .word 0x00002214
	thumb_func_end ov88_0223E478

	thumb_func_start ov88_0223E4BC
ov88_0223E4BC: ; 0x0223E4BC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	add r1, sp, #0x10
	strb r0, [r1, #8]
	mov r0, #1
	strb r0, [r1, #9]
	mov r0, #2
	strb r0, [r1, #0xa]
	ldrb r2, [r1, #0xb]
	mov r0, #0xf
	bic r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	mov r0, #0x30
	bic r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1, #0xb]
	add r1, r4, #0
	ldr r0, _0223E5A4 ; =0x0000221C
	add r1, #0x88
	ldr r1, [r1, #0]
	ldr r0, [r4, r0]
	sub r1, r1, #6
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #8
	str r0, [sp]
	ldr r0, _0223E5A8 ; =0x00000598
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x10
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #2
	mov r1, #0x1a
	bl sub_02013A04
	ldr r1, _0223E5AC ; =0x0000065C
	mov r2, #0x11
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r3, #0
	bl sub_02013A4C
	ldr r0, _0223E5AC ; =0x0000065C
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #1
	bl sub_02013A4C
	ldr r0, _0223E5AC ; =0x0000065C
	ldr r1, [r4, r0]
	sub r0, #0x94
	add r0, r4, r0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl ov88_0223ED80
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x66
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r1, _0223E5B0 ; =ov88_0223E5B8
	ldr r0, _0223E5B4 ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223E5A4: .word 0x0000221C
_0223E5A8: .word 0x00000598
_0223E5AC: .word 0x0000065C
_0223E5B0: .word ov88_0223E5B8
_0223E5B4: .word 0x00002214
	thumb_func_end ov88_0223E4BC

	thumb_func_start ov88_0223E5B8
ov88_0223E5B8: ; 0x0223E5B8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001BE0
	cmp r0, #0
	beq _0223E5DA
	cmp r0, #1
	beq _0223E62E
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E62E
	b _0223E67C
_0223E5DA:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223E684 ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E688 ; =ov88_0223D150
	ldr r0, _0223E68C ; =0x00002214
	str r1, [r4, r0]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0223E690 ; =0x0000065C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	add sp, #0x10
	mov r0, #3
	pop {r4, pc}
_0223E62E:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x5d
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r3, #0x5e
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0223E684 ; =0x00000588
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov88_0223ECBC
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0223E690 ; =0x0000065C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r1, _0223E688 ; =ov88_0223D150
	ldr r0, _0223E68C ; =0x00002214
	str r1, [r4, r0]
_0223E67C:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223E684: .word 0x00000588
_0223E688: .word ov88_0223D150
_0223E68C: .word 0x00002214
_0223E690: .word 0x0000065C
	thumb_func_end ov88_0223E5B8

	thumb_func_start ov88_0223E694
ov88_0223E694: ; 0x0223E694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	mov r0, #0x1a
	str r1, [sp, #8]
	add r6, r2, #0
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x30]
	bl sub_02073C74
	add r7, r0, #0
	mov r0, #0x1a
	bl sub_02073C74
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r7, #0
	bl sub_020775EC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_0207A0FC
	add r1, r4, #0
	bl sub_020775EC
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _0223E7E8 ; =0x000001ED
	cmp r0, r1
	bne _0223E720
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223E708
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x56
	bne _0223E720
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223E720
_0223E708:
	ldr r0, [r5, #0x10]
	bl sub_020507E4
	str r0, [sp, #0x10]
	bl sub_0206B5F8
	cmp r0, #0
	bne _0223E720
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl sub_0206B608
_0223E720:
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223E748
	mov r1, #0x46
	add r0, sp, #0x14
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0x14
	bl sub_02074B30
_0223E748:
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl sub_0209304C
	add r0, r4, #0
	bl sub_0207893C
	ldr r1, [r5, #0x3c]
	add r0, r7, #0
	bl sub_020775EC
	ldr r1, [r5, #0x40]
	add r0, r4, #0
	bl sub_020775EC
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	ldr r1, [r5, #0x38]
	bl sub_02025E80
	ldr r0, [sp, #4]
	ldr r1, _0223E7EC ; =0x000001B9
	str r6, [r5, #0x2c]
	bl sub_0207A230
	cmp r0, #0
	bne _0223E7A0
	ldr r0, [r5, #0x10]
	bl sub_0202CC98
	bl sub_0202CCA8
_0223E7A0:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_0202F180
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020775EC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020775EC
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	bl ov88_0223E7F0
	ldr r0, [r5, #0x20]
	mov r1, #0x13
	bl sub_0202CF28
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E7E8: .word 0x000001ED
_0223E7EC: .word 0x000001B9
	thumb_func_end ov88_0223E694

	thumb_func_start ov88_0223E7F0
ov88_0223E7F0: ; 0x0223E7F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x75
	add r2, sp, #4
	bl sub_02074470
	add r0, r5, #0
	bl sub_02025EF0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02075D6C
	add r3, r0, #0
	mov r0, #0x1a
	lsl r1, r5, #0x18
	str r0, [sp]
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, sp, #4
	bl sub_0202C11C
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #4
	bl sub_0202B758
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov88_0223E7F0

	thumb_func_start ov88_0223E848
ov88_0223E848: ; 0x0223E848
	push {r4, lr}
	ldr r3, _0223E878 ; =0x000022B8
	add r4, r0, #0
	ldr r0, [r4, r3]
	mov r1, #6
	add r0, r0, #2
	str r0, [r4, r3]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	mov r2, #0
	bl sub_02019184
	mov r0, #0x5d
	ldr r3, _0223E878 ; =0x000022B8
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	pop {r4, pc}
	; .align 2, 0
_0223E878: .word 0x000022B8
	thumb_func_end ov88_0223E848

	thumb_func_start ov88_0223E87C
ov88_0223E87C: ; 0x0223E87C
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov88_0223E87C

	thumb_func_start ov88_0223E894
ov88_0223E894: ; 0x0223E894
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E8A8 ; =0x000005A8
	ldr r1, _0223E8AC ; =0x000001D9
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _0223E8B0 ; =0x000036A8
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0223E8A8: .word 0x000005A8
_0223E8AC: .word 0x000001D9
_0223E8B0: .word 0x000036A8
	thumb_func_end ov88_0223E894

	thumb_func_start ov88_0223E8B4
ov88_0223E8B4: ; 0x0223E8B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E8CC ; =0x000036A8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223E8CA
	bl sub_0200EBA0
	ldr r0, _0223E8CC ; =0x000036A8
	mov r1, #0
	str r1, [r4, r0]
_0223E8CA:
	pop {r4, pc}
	; .align 2, 0
_0223E8CC: .word 0x000036A8
	thumb_func_end ov88_0223E8B4

	thumb_func_start ov88_0223E8D0
ov88_0223E8D0: ; 0x0223E8D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223E90C ; =0x00002218
	mov r4, #0
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r3, r4, #0
	cmp r0, #0
	ble _0223E8FC
	add r1, r5, #0
	add r1, #0x88
	ldr r6, [r1, #0]
	ldr r1, _0223E910 ; =0x00000695
_0223E8EC:
	cmp r3, r6
	beq _0223E8F4
	ldrb r2, [r5, r1]
	add r4, r4, r2
_0223E8F4:
	add r3, r3, #1
	add r5, #0x10
	cmp r3, r0
	blt _0223E8EC
_0223E8FC:
	sub r0, r0, #1
	cmp r4, r0
	bne _0223E906
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223E906:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0223E90C: .word 0x00002218
_0223E910: .word 0x00000695
	thumb_func_end ov88_0223E8D0

	thumb_func_start ov88_0223E914
ov88_0223E914: ; 0x0223E914
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223E97C ; =0x00002218
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0223E948
	ldr r7, _0223E97C ; =0x00002218
_0223E92A:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223E942
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223E942:
	add r4, r4, #1
	cmp r4, r6
	blt _0223E92A
_0223E948:
	ldr r0, _0223E980 ; =0x0000221C
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0223E978
	ldr r7, _0223E980 ; =0x0000221C
_0223E95A:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223E972
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0223E972:
	add r4, r4, #1
	cmp r4, r6
	blt _0223E95A
_0223E978:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E97C: .word 0x00002218
_0223E980: .word 0x0000221C
	thumb_func_end ov88_0223E914

	thumb_func_start ov88_0223E984
ov88_0223E984: ; 0x0223E984
	ldr r1, _0223E994 ; =0x000036AC
	mov r2, #1
	str r2, [r0, r1]
	mov r2, #0
	add r1, r1, #4
	str r2, [r0, r1]
	bx lr
	nop
_0223E994: .word 0x000036AC
	thumb_func_end ov88_0223E984

	thumb_func_start ov88_0223E998
ov88_0223E998: ; 0x0223E998
	push {r3, lr}
	ldr r2, _0223E9BC ; =0x000036AC
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _0223E9BA
	add r1, r2, #4
	ldr r1, [r0, r1]
	add r3, r1, #1
	add r1, r2, #4
	str r3, [r0, r1]
	ldr r1, [r0, r1]
	ldr r0, _0223E9C0 ; =0x00000708
	cmp r1, r0
	ble _0223E9BA
	mov r0, #4
	bl sub_02038AE0
_0223E9BA:
	pop {r3, pc}
	; .align 2, 0
_0223E9BC: .word 0x000036AC
_0223E9C0: .word 0x00000708
	thumb_func_end ov88_0223E998

	.rodata


	.global Unk_ov88_0223EE28
Unk_ov88_0223EE28: ; 0x0223EE28
	.incbin "incbin/overlay88_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov88_0223EE30
Unk_ov88_0223EE30: ; 0x0223EE30
	.incbin "incbin/overlay88_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov88_0223EE40
Unk_ov88_0223EE40: ; 0x0223EE40
	.incbin "incbin/overlay88_rodata.bin", 0x18, 0x28 - 0x18

	.global Unk_ov88_0223EE50
Unk_ov88_0223EE50: ; 0x0223EE50
	.incbin "incbin/overlay88_rodata.bin", 0x28, 0x40 - 0x28

	.global Unk_ov88_0223EE68
Unk_ov88_0223EE68: ; 0x0223EE68
	.incbin "incbin/overlay88_rodata.bin", 0x40, 0x5C - 0x40

	.global Unk_ov88_0223EE84
Unk_ov88_0223EE84: ; 0x0223EE84
	.incbin "incbin/overlay88_rodata.bin", 0x5C, 0x78 - 0x5C

	.global Unk_ov88_0223EEA0
Unk_ov88_0223EEA0: ; 0x0223EEA0
	.incbin "incbin/overlay88_rodata.bin", 0x78, 0x94 - 0x78

	.global Unk_ov88_0223EEBC
Unk_ov88_0223EEBC: ; 0x0223EEBC
	.incbin "incbin/overlay88_rodata.bin", 0x94, 0xB0 - 0x94

	.global Unk_ov88_0223EED8
Unk_ov88_0223EED8: ; 0x0223EED8
	.incbin "incbin/overlay88_rodata.bin", 0xB0, 0xCC - 0xB0

	.global Unk_ov88_0223EEF4
Unk_ov88_0223EEF4: ; 0x0223EEF4
	.incbin "incbin/overlay88_rodata.bin", 0xCC, 0xE8 - 0xCC

	.global Unk_ov88_0223EF10
Unk_ov88_0223EF10: ; 0x0223EF10
	.incbin "incbin/overlay88_rodata.bin", 0xE8, 0x104 - 0xE8

	.global Unk_ov88_0223EF2C
Unk_ov88_0223EF2C: ; 0x0223EF2C
	.incbin "incbin/overlay88_rodata.bin", 0x104, 0x12C - 0x104

	.global Unk_ov88_0223EF54
Unk_ov88_0223EF54: ; 0x0223EF54
	.incbin "incbin/overlay88_rodata.bin", 0x12C, 0x174 - 0x12C

	.global Unk_ov88_0223EF9C
Unk_ov88_0223EF9C: ; 0x0223EF9C
	.incbin "incbin/overlay88_rodata.bin", 0x174, 0x1DC - 0x174

	.global Unk_ov88_0223F004
Unk_ov88_0223F004: ; 0x0223F004
	.incbin "incbin/overlay88_rodata.bin", 0x1DC, 0x314 - 0x1DC

	.global Unk_ov88_0223F13C
Unk_ov88_0223F13C: ; 0x0223F13C
	.incbin "incbin/overlay88_rodata.bin", 0x314, 0x9

