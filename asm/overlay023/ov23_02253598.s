	.include "macros/function.inc"
	.include "overlay023/ov23_02253598.inc"

	

	.text


	thumb_func_start ov23_02253598
ov23_02253598: ; 0x02253598
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x30
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, _022535C8 ; =0x022577BC
	str r5, [r0, #0]
	str r6, [r5, #8]
	ldr r0, [r0, #0]
	str r4, [r0, #0xc]
	mov r0, #0xf
	bl sub_0202855C
	ldr r1, _022535C8 ; =0x022577BC
	ldr r2, [r1, #0]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0]
	add r0, #0x14
	bl sub_020361BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022535C8: .word Unk_ov23_022577BC
	thumb_func_end ov23_02253598

	thumb_func_start ov23_022535CC
ov23_022535CC: ; 0x022535CC
	push {r3, lr}
	ldr r0, _022535E8 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_020181C4
	ldr r0, _022535E8 ; =0x022577BC
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _022535E8 ; =0x022577BC
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_022535E8: .word Unk_ov23_022577BC
	thumb_func_end ov23_022535CC

	thumb_func_start ov23_022535EC
ov23_022535EC: ; 0x022535EC
	push {r3, lr}
	ldr r0, _02253600 ; =0x022577BC
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _022535FE
	ldr r1, [r1, #0]
	bl ov23_022537D4
_022535FE:
	pop {r3, pc}
	; .align 2, 0
_02253600: .word Unk_ov23_022577BC
	thumb_func_end ov23_022535EC

	thumb_func_start ov23_02253604
ov23_02253604: ; 0x02253604
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02253604

	thumb_func_start ov23_02253608
ov23_02253608: ; 0x02253608
	mov r0, #0x30
	bx lr
	thumb_func_end ov23_02253608

	thumb_func_start ov23_0225360C
ov23_0225360C: ; 0x0225360C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	mov r0, #4
	str r1, [sp, #0xc]
	add r5, r2, #0
	str r3, [sp, #0x10]
	bl sub_0200B358
	str r0, [sp, #0x1c]
	mov r0, #0x1e
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x1e
	mov r1, #4
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0xc]
	mov r1, #2
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x84
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #6
	mov r3, #5
	bl sub_0200B60C
	ldr r0, [sp, #0xc]
	mov r1, #5
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r3, #0x94
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x1c]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B498
	ldr r0, [sp, #0xc]
	mov r1, #4
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r3, #0x39
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	bl sub_0202958C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r1, #0x14
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x39
	str r1, [sp, #8]
	bl sub_0201D738
	mov r5, #0
	mov r6, #0x27
_02253738:
	ldr r0, [sp, #0xc]
	add r1, r5, #6
	add r2, r4, #0
	bl sub_0200B1B8
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0201D738
	add r5, r5, #1
	add r6, #0x10
	cmp r5, #7
	blt _02253738
	mov r0, #0
	ldr r6, _022537D0 ; =0x022576EC
	str r0, [sp, #0x14]
	mov r5, #0x27
_02253768:
	ldr r0, [sp, #0x10]
	ldr r1, [r6, #0]
	blx r1
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [sp, #0xc]
	mov r1, #0xd
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0x94
	bl sub_0201D738
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #7
	blt _02253768
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022537D0: .word 0x022576EC
	thumb_func_end ov23_0225360C

	thumb_func_start ov23_022537D4
ov23_022537D4: ; 0x022537D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _022537FE
	ldr r0, [r4, #4]
	blx r1
_022537FE:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _02253818 ; =0x022577BC
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #4]
	ldr r0, [r0, #0]
	str r2, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02253818: .word Unk_ov23_022577BC
	thumb_func_end ov23_022537D4

	thumb_func_start ov23_0225381C
ov23_0225381C: ; 0x0225381C
	push {r3, lr}
	ldr r2, _02253830 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #3
	tst r2, r3
	beq _0225382C
	bl ov23_022537D4
_0225382C:
	pop {r3, pc}
	nop
_02253830: .word 0x021BF67C
	thumb_func_end ov23_0225381C

	thumb_func_start ov23_02253834
ov23_02253834: ; 0x02253834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x14]
	mov r0, #4
	mov r1, #0x2c
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2c
	bl MI_CpuFill8
	str r5, [r4, #0]
	add r1, r4, #0
	str r6, [r4, #4]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, #8
	mov r2, #3
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, #0
	ldr r2, _022538EC ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0xa
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #6
	mov r3, #4
	bl sub_0200B144
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022538AE
	ldr r0, _022538F0 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r3, [r0, #0xc]
	b _022538B4
_022538AE:
	ldr r0, _022538F0 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r3, [r0, #0x10]
_022538B4:
	add r0, r4, #0
	ldr r2, [sp, #0x14]
	add r0, #8
	add r1, r5, #0
	bl ov23_0225360C
	add r0, r4, #0
	add r0, #8
	bl sub_0201A9A4
	ldr r0, _022538F4 ; =0x000005FD
	bl sub_02005748
	ldr r0, _022538F8 ; =ov23_0225381C
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200D9E8
	ldr r1, _022538F0 ; =0x022577BC
	ldr r2, [r1, #0]
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	str r4, [r0, #0]
	add r0, r5, #0
	bl sub_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022538EC: .word 0x000003D9
_022538F0: .word Unk_ov23_022577BC
_022538F4: .word 0x000005FD
_022538F8: .word ov23_0225381C
	thumb_func_end ov23_02253834

	thumb_func_start ov23_022538FC
ov23_022538FC: ; 0x022538FC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02028558
	add r4, r0, #0
	ldr r0, _02253960 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202CD88
	bl sub_0202D034
	add r6, r0, #0
	mov r0, #4
	add r1, r4, #1
	bl sub_02018144
	mov r1, #0
	add r2, r4, #1
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, _02253964 ; =0x000F423F
	strb r7, [r5]
	cmp r6, r0
	blt _02253932
	add r6, r0, #0
_02253932:
	ldr r0, _02253960 ; =0x022577BC
	add r1, r6, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020294D4
	ldr r0, _02253960 ; =0x022577BC
	add r1, r5, #1
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0xc]
	bl MI_CpuCopy8
	mov r0, #0x51
	add r1, r5, #0
	add r2, r4, #1
	bl sub_020359DC
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253960: .word Unk_ov23_022577BC
_02253964: .word 0x000F423F
	thumb_func_end ov23_022538FC

	thumb_func_start ov23_02253968
ov23_02253968: ; 0x02253968
	push {r3, lr}
	ldr r0, _02253990 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202CD88
	bl sub_0202D034
	add r1, r0, #0
	ldr r0, _02253994 ; =0x000F423F
	cmp r1, r0
	blt _02253982
	add r1, r0, #0
_02253982:
	ldr r0, _02253990 ; =0x022577BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020294D4
	pop {r3, pc}
	nop
_02253990: .word Unk_ov23_022577BC
_02253994: .word 0x000F423F
	thumb_func_end ov23_02253968

	thumb_func_start ov23_02253998
ov23_02253998: ; 0x02253998
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _022539A4 ; =sub_02035AC4
	mov r0, #0x52
	bx r3
	; .align 2, 0
_022539A4: .word sub_02035AC4
	thumb_func_end ov23_02253998

	thumb_func_start ov23_022539A8
ov23_022539A8: ; 0x022539A8
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _022539D0
	ldr r1, _022539D4 ; =0x022577BC
	add r0, r4, #1
	ldr r1, [r1, #0]
	sub r2, r5, #1
	ldr r1, [r1, #0x10]
	bl MI_CpuCopy8
	ldr r0, _022539D4 ; =0x022577BC
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x2c
	strb r1, [r0]
_022539D0:
	pop {r3, r4, r5, pc}
	nop
_022539D4: .word Unk_ov23_022577BC
	thumb_func_end ov23_022539A8

	thumb_func_start ov23_022539D8
ov23_022539D8: ; 0x022539D8
	ldr r0, _022539E4 ; =0x022577BC
	ldr r0, [r0, #0]
	add r0, #0x2c
	ldrb r0, [r0]
	bx lr
	nop
_022539E4: .word Unk_ov23_022577BC
	thumb_func_end ov23_022539D8

	thumb_func_start ov23_022539E8
ov23_022539E8: ; 0x022539E8
	ldr r0, _022539F4 ; =0x022577BC
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x2c
	strb r1, [r0]
	bx lr
	; .align 2, 0
_022539F4: .word Unk_ov23_022577BC
	thumb_func_end ov23_022539E8

	thumb_func_start ov23_022539F8
ov23_022539F8: ; 0x022539F8
	ldr r3, _022539FC ; =sub_02059514
	bx r3
	; .align 2, 0
_022539FC: .word sub_02059514
	thumb_func_end ov23_022539F8

	thumb_func_start ov23_02253A00
ov23_02253A00: ; 0x02253A00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	sub r0, #0x20
	lsl r1, r0, #2
	ldr r0, _02253A70 ; =0x022576EC
	cmp r5, #0x20
	ldr r4, [r0, r1]
	bge _02253A18
	bl GF_AssertFail
_02253A18:
	cmp r5, #0x2d
	ble _02253A20
	bl GF_AssertFail
_02253A20:
	bl sub_020594FC
	bl ov23_022421BC
	mov r1, #0xa
	lsl r1, r1, #6
	mov r2, #1
	bl ov23_02253DFC
	mov r0, #4
	bl sub_0202855C
	add r6, r0, #0
	bl sub_02028558
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl MI_CpuCopy8
	add r0, r6, #0
	blx r4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020181C4
	bl ov23_022421BC
	add r1, r4, #0
	bl ov23_02254178
	bl ov23_022421BC
	ldr r3, _02253A74 ; =ov23_022539F8
	add r1, r5, #0
	mov r2, #1
	bl ov23_02253F40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253A70: .word 0x022576EC
_02253A74: .word ov23_022539F8
	thumb_func_end ov23_02253A00

	thumb_func_start ov23_02253A78
ov23_02253A78: ; 0x02253A78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x40]
	mov r0, #4
	add r5, r2, #0
	str r3, [sp, #0x14]
	bl sub_0200B358
	add r7, r0, #0
	mov r0, #0x28
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x28
	mov r1, #4
	bl sub_02023790
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_0200B498
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	mov r1, #0xd
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x14]
	bl sub_020295B8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	mov r1, #0xe
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r3, #0x66
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	mov r1, #0xf
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x34
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #8]
	bl sub_0201D738
	mov r5, #0
	str r5, [sp, #0x20]
_02253B5E:
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x20]
	mov r1, #4
	bl sub_020288C8
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02253BF8
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B498
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x45
	str r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r6, #0
	mov r3, #2
	bl sub_0201D738
	ldr r0, [sp, #0x24]
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	mov r1, #5
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	mov r1, #0x11
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r3, #0x66
	bl sub_0201D738
	ldr r0, [sp, #0x24]
	bl sub_020181C4
	b _02253C42
_02253BF8:
	ldr r0, [sp, #0x10]
	mov r1, #0x33
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x45
	str r0, [sp, #0x18]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	mov r1, #0x34
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	mov r3, #0x66
	bl sub_0201D738
_02253C42:
	ldr r0, [sp, #0x20]
	add r5, #0x11
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _02253B5E
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_02253A78

	thumb_func_start ov23_02253C64
ov23_02253C64: ; 0x02253C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x14]
	mov r0, #4
	mov r1, #0x2c
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x2c
	add r5, r0, #0
	bl MI_CpuFill8
	add r1, r5, #0
	ldr r0, [sp, #0x30]
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, #8
	mov r2, #3
	mov r3, #4
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _02253D00 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _02253D04 ; =0x0000027F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r4, r0, #0
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	ldr r3, _02253D08 ; =0x022577BC
	str r6, [sp]
	ldr r3, [r3, #0]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0xc]
	add r0, #8
	add r1, r4, #0
	bl ov23_02253A78
	ldr r0, _02253D0C ; =0x000005FD
	bl sub_02005748
	add r0, r5, #0
	add r0, #8
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253D00: .word 0x000003D9
_02253D04: .word 0x0000027F
_02253D08: .word Unk_ov23_022577BC
_02253D0C: .word 0x000005FD
	thumb_func_end ov23_02253C64

	thumb_func_start ov23_02253D10
ov23_02253D10: ; 0x02253D10
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02253D36
	ldr r0, [r4, #4]
	blx r1
_02253D36:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02253D10
	.data


	.global Unk_ov23_022576EC
Unk_ov23_022576EC: ; 0x022576EC
	.incbin "incbin/overlay23_data.bin", 0xB0C, 0x38


	.bss


	.global Unk_ov23_022577BC
Unk_ov23_022577BC: ; 0x022577BC
	.space 0x4

