	.include "macros/function.inc"
	.include "include/ov67_0225C700.inc"

	

	.text


	thumb_func_start ov67_0225C700
ov67_0225C700: ; 0x0225C700
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r2, #2
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x70
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	mov r2, #0x70
	bl sub_0200681C
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xa
	add r5, r0, #0
	bl memset
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _0225C810 ; =0x00000497
	str r0, [r5, #0]
	mov r0, #0xb
	mov r2, #0
	bl sub_02004550
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0x70
	bl ov67_0225CE30
	mov r0, #2
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x1b
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r3, _0225C814 ; =0x000002A2
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x40
	mov r2, #1
	bl ov67_0225D188
	mov r0, #2
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x1b
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r3, _0225C818 ; =0x000002B7
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x70
	mov r2, #1
	bl ov67_0225D188
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r3, _0225C818 ; =0x000002B7
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0xa0
	mov r2, #0
	bl ov67_0225D188
	mov r0, #5
	str r0, [sp]
	mov r2, #1
	mov r3, #0x87
	str r2, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	lsl r3, r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r5, #0]
	add r3, #0x86
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x10
	bl ov67_0225D188
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0x15
	bl ov67_0225D37C
	ldr r0, _0225C81C ; =ov67_0225CE28
	add r1, r5, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0225C810: .word 0x00000497
_0225C814: .word 0x000002A2
_0225C818: .word 0x000002B7
_0225C81C: .word ov67_0225CE28
	thumb_func_end ov67_0225C700

	thumb_func_start ov67_0225C820
ov67_0225C820: ; 0x0225C820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xf
	bls _0225C83E
	b _0225CB06
_0225C83E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225C84A: ; jump table
	.short _0225C86A - _0225C84A - 2 ; case 0
	.short _0225C888 - _0225C84A - 2 ; case 1
	.short _0225C898 - _0225C84A - 2 ; case 2
	.short _0225C8CA - _0225C84A - 2 ; case 3
	.short _0225C8F8 - _0225C84A - 2 ; case 4
	.short _0225C920 - _0225C84A - 2 ; case 5
	.short _0225C954 - _0225C84A - 2 ; case 6
	.short _0225CAD8 - _0225C84A - 2 ; case 7
	.short _0225CAF8 - _0225C84A - 2 ; case 8
	.short _0225C9A2 - _0225C84A - 2 ; case 9
	.short _0225C9FE - _0225C84A - 2 ; case 10
	.short _0225CA32 - _0225C84A - 2 ; case 11
	.short _0225CA60 - _0225C84A - 2 ; case 12
	.short _0225CA88 - _0225C84A - 2 ; case 13
	.short _0225CA96 - _0225C84A - 2 ; case 14
	.short _0225CABA - _0225C84A - 2 ; case 15
_0225C86A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	ldr r3, _0225CB10 ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C888:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225C8E2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C898:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0225C8C4
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0x11
	bl ov67_0225D210
	mov r0, #0x70
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, _0225CB14 ; =0x0225D3EC
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_02002100
	add r5, #0xd0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C8C4:
	mov r0, #4
	str r0, [r4, #0]
	b _0225CB0A
_0225C8CA:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x70
	bl sub_02002114
	cmp r0, #0
	beq _0225C8E4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0225C8EA
_0225C8E2:
	b _0225CB0A
_0225C8E4:
	mov r0, #4
	str r0, [r4, #0]
	b _0225CB0A
_0225C8EA:
	add r5, #0x40
	add r0, r5, #0
	bl ov67_0225D294
	mov r0, #7
	str r0, [r4, #0]
	b _0225CB0A
_0225C8F8:
	ldr r0, [r6, #4]
	bl ov66_0222E3BC
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203878C
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0x17
	bl ov67_0225D210
	add r5, #0x70
	add r0, r5, #0
	bl ov67_0225D2EC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C920:
	bl sub_020383E8
	cmp r0, #0
	bne _0225C930
	bl sub_0203881C
	cmp r0, #0
	beq _0225C93C
_0225C930:
	add r5, #0x70
	add r0, r5, #0
	bl ov67_0225D310
	mov r0, #9
	str r0, [r4, #0]
_0225C93C:
	bl sub_02038804
	cmp r0, #1
	beq _0225C946
	b _0225CB0A
_0225C946:
	ldr r0, [r6, #4]
	bl ov66_0222F16C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C954:
	bl sub_020383E8
	cmp r0, #0
	bne _0225C964
	bl sub_0203881C
	cmp r0, #0
	beq _0225C970
_0225C964:
	add r0, r5, #0
	add r0, #0x70
	bl ov67_0225D310
	mov r0, #9
	str r0, [r4, #0]
_0225C970:
	bl sub_02038294
	cmp r0, #0
	beq _0225CA76
	add r0, r5, #0
	add r0, #0x70
	bl ov67_0225D310
	ldr r0, [r5, #0]
	bl sub_0202CD88
	mov r1, #0x2c
	bl sub_0202CFEC
	bl sub_020138EC
	ldr r2, [r6, #0xc]
	str r0, [r2, #0]
	str r1, [r2, #4]
	mov r0, #1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C9A2:
	bl sub_020383E8
	cmp r0, #0
	beq _0225C9BE
	bl sub_020382F8
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	bl ov66_022316F4
	str r0, [sp, #0xc]
	ldr r7, [r7, #0]
	b _0225C9CC
_0225C9BE:
	bl ov66_022326DC
	bl ov66_0223270C
	add r7, r0, #0
	mov r0, #0x20
	str r0, [sp, #0xc]
_0225C9CC:
	ldr r0, [r6, #4]
	bl ov66_0222F198
	add r0, r5, #0
	add r0, #0x40
	bl ov67_0225D294
	add r0, r5, #0
	add r0, #0x70
	bl ov67_0225D294
	add r0, r5, #0
	add r0, #0xa0
	add r1, r7, #0
	bl ov67_0225D3D0
	add r5, #0xa0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov67_0225D210
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225C9FE:
	ldr r0, _0225CB18 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0225CA76
	bl sub_020383E8
	cmp r0, #0
	beq _0225CA2C
	bl sub_020382F8
	add r1, r0, #0
	ldmia r1!, {r0, r1}
	bl ov66_02231718
	cmp r0, #0
	bne _0225CA26
	mov r0, #0xb
	str r0, [r4, #0]
	b _0225CB0A
_0225CA26:
	mov r0, #0xe
	str r0, [r4, #0]
	b _0225CB0A
_0225CA2C:
	mov r0, #0xb
	str r0, [r4, #0]
	b _0225CB0A
_0225CA32:
	add r0, r5, #0
	add r0, #0xa0
	bl ov67_0225D294
	add r0, r5, #0
	add r0, #0x40
	mov r1, #0x58
	bl ov67_0225D210
	mov r0, #0x70
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, _0225CB14 ; =0x0225D3EC
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_02002100
	add r5, #0xd0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225CA60:
	add r5, #0xd0
	ldr r0, [r5, #0]
	mov r1, #0x70
	bl sub_02002114
	cmp r0, #0
	beq _0225CA78
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0225CA82
_0225CA76:
	b _0225CB0A
_0225CA78:
	bl sub_020387E8
	mov r0, #0xd
	str r0, [r4, #0]
	b _0225CB0A
_0225CA82:
	mov r0, #0xe
	str r0, [r4, #0]
	b _0225CB0A
_0225CA88:
	bl sub_02036780
	cmp r0, #0
	bne _0225CB0A
	mov r0, #4
	str r0, [r4, #0]
	b _0225CB0A
_0225CA96:
	add r0, r5, #0
	add r0, #0x40
	bl ov67_0225D294
	add r0, r5, #0
	add r0, #0x70
	bl ov67_0225D294
	add r5, #0xa0
	add r0, r5, #0
	bl ov67_0225D294
	bl sub_020387E8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225CABA:
	bl sub_02036780
	cmp r0, #0
	bne _0225CB0A
	add r0, r5, #0
	add r0, #0x40
	bl ov67_0225D294
	add r5, #0x70
	add r0, r5, #0
	bl ov67_0225D294
	mov r0, #7
	str r0, [r4, #0]
	b _0225CB0A
_0225CAD8:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CB0A
_0225CAF8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225CB0A
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225CB06:
	bl sub_02022974
_0225CB0A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CB10: .word 0x0000FFFF
_0225CB14: .word 0x0225D3EC
_0225CB18: .word 0x021BF67C
	thumb_func_end ov67_0225C820

	thumb_func_start ov67_0225CB1C
ov67_0225CB1C: ; 0x0225CB1C
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225CB4C
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
_0225CB4C:
	add r0, r4, #0
	add r0, #0x40
	bl ov67_0225D330
	add r0, r4, #0
	add r0, #0x70
	bl ov67_0225D330
	add r0, r4, #0
	add r0, #0xa0
	bl ov67_0225D330
	add r0, r4, #0
	add r0, #0x10
	bl ov67_0225D330
	add r0, r4, #0
	bl ov67_0225D154
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x70
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov67_0225CB1C

	thumb_func_start ov67_0225CB8C
ov67_0225CB8C: ; 0x0225CB8C
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x70
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xa
	mov r2, #0x70
	bl sub_0200681C
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xa
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #0]
	mov r1, #0x70
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov67_0225CE30
	mov r0, #2
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x1b
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r3, _0225CC64 ; =0x000002B7
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x40
	mov r2, #1
	bl ov67_0225D188
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r3, _0225CC64 ; =0x000002B7
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0xa0
	mov r2, #0
	bl ov67_0225D188
	mov r0, #5
	str r0, [sp]
	mov r2, #1
	mov r3, #0x87
	str r2, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	lsl r3, r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r4, #0]
	add r3, #0x86
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov67_0225D188
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0x15
	bl ov67_0225D37C
	bl sub_02039734
	ldr r0, _0225CC68 ; =ov67_0225CE28
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_0225CC64: .word 0x000002B7
_0225CC68: .word ov67_0225CE28
	thumb_func_end ov67_0225CB8C

	thumb_func_start ov67_0225CC6C
ov67_0225CC6C: ; 0x0225CC6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bls _0225CC8A
	b _0225CDB6
_0225CC8A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CC96: ; jump table
	.short _0225CCAC - _0225CC96 - 2 ; case 0
	.short _0225CCCA - _0225CC96 - 2 ; case 1
	.short _0225CCD8 - _0225CC96 - 2 ; case 2
	.short _0225CD0E - _0225CC96 - 2 ; case 3
	.short _0225CD1E - _0225CC96 - 2 ; case 4
	.short _0225CD38 - _0225CC96 - 2 ; case 5
	.short _0225CD42 - _0225CC96 - 2 ; case 6
	.short _0225CD5E - _0225CC96 - 2 ; case 7
	.short _0225CD72 - _0225CC96 - 2 ; case 8
	.short _0225CD80 - _0225CC96 - 2 ; case 9
	.short _0225CDA0 - _0225CC96 - 2 ; case 10
_0225CCAC:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	ldr r3, _0225CDBC ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CDB6
_0225CCCA:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225CDB6
	mov r0, #2
	str r0, [r4, #0]
	b _0225CDB6
_0225CCD8:
	add r0, r5, #0
	add r0, #0x40
	mov r1, #0x1a
	bl ov67_0225D210
	bl sub_020383E8
	cmp r0, #0
	bne _0225CCF2
	bl sub_0203881C
	cmp r0, #0
	beq _0225CD00
_0225CCF2:
	mov r0, #5
	add r5, #0x40
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov67_0225D2EC
	b _0225CDB6
_0225CD00:
	mov r0, #3
	add r5, #0x40
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov67_0225D2EC
	b _0225CDB6
_0225CD0E:
	bl ov66_02232C8C
	mov r0, #0xe1
	lsl r0, r0, #2
	str r0, [r5, #8]
	mov r0, #4
	str r0, [r4, #0]
	b _0225CDB6
_0225CD1E:
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	bl ov66_02232CB8
	cmp r0, #0
	bne _0225CD32
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0225CDB6
_0225CD32:
	mov r0, #5
	str r0, [r4, #0]
	b _0225CDB6
_0225CD38:
	bl sub_020387E8
	mov r0, #6
	str r0, [r4, #0]
	b _0225CDB6
_0225CD42:
	bl sub_02036780
	cmp r0, #0
	bne _0225CDB6
	add r5, #0x70
	add r0, r5, #0
	bl ov67_0225D310
	ldr r0, [r6, #4]
	bl ov66_0222F198
	mov r0, #7
	str r0, [r4, #0]
	b _0225CDB6
_0225CD5E:
	add r0, r5, #0
	add r0, #0x40
	mov r1, #0x1b
	bl ov67_0225D210
	mov r0, #0x5a
	str r0, [r5, #8]
	mov r0, #8
	str r0, [r4, #0]
	b _0225CDB6
_0225CD72:
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	bne _0225CDB6
	mov r0, #9
	str r0, [r4, #0]
	b _0225CDB6
_0225CD80:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225CDB6
_0225CDA0:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225CDB6
	add r5, #0x40
	add r0, r5, #0
	bl ov67_0225D310
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225CDB6:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225CDBC: .word 0x0000FFFF
	thumb_func_end ov67_0225CC6C

	thumb_func_start ov67_0225CDC0
ov67_0225CDC0: ; 0x0225CDC0
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225CDF0
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd8
	str r1, [r0, #0]
_0225CDF0:
	add r0, r4, #0
	add r0, #0x40
	bl ov67_0225D330
	add r0, r4, #0
	add r0, #0xa0
	bl ov67_0225D330
	add r0, r4, #0
	add r0, #0x10
	bl ov67_0225D330
	add r0, r4, #0
	bl ov67_0225D154
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x70
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov67_0225CDC0

	thumb_func_start ov67_0225CE28
ov67_0225CE28: ; 0x0225CE28
	ldr r3, _0225CE2C ; =ov67_0225D17C
	bx r3
	; .align 2, 0
_0225CE2C: .word ov67_0225D17C
	thumb_func_end ov67_0225CE28

	thumb_func_start ov67_0225CE30
ov67_0225CE30: ; 0x0225CE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	add r6, r1, #0
	ldr r0, _0225D0A4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0225D0A8 ; =0x04001050
	strh r1, [r0]
	ldr r0, _0225D0AC ; =0x0225D410
	bl sub_0201FE94
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	ldr r0, _0225D0B0 ; =0x0225D400
	bl sub_02018368
	add r0, r6, #0
	bl sub_02018340
	ldr r1, [sp, #0x10]
	ldr r4, _0225D0B4 ; =0x0225D438
	ldr r5, _0225D0B8 ; =0x0225D3F4
	str r0, [r1, #0xc]
	mov r7, #0
_0225CE66:
	ldr r0, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, [r0, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #0]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r6, #0
	bl sub_02019690
	ldr r0, [sp, #0x10]
	ldr r1, [r5, #0]
	ldr r0, [r0, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #3
	blt _0225CE66
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	mov r1, #6
	lsr r4, r0, #0x18
	mov r0, #0
	lsl r1, r1, #6
	add r2, r6, #0
	bl sub_02002E7C
	mov r1, #0x16
	mov r0, #0
	lsl r1, r1, #4
	add r2, r6, #0
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_0200DAA4
	str r4, [sp]
	mov r1, #1
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	mov r3, #0xd
	bl sub_0200DD0C
	mov r0, #0x16
	lsl r0, r0, #4
	str r0, [sp]
	mov r2, #0
	mov r0, #0x5c
	mov r1, #3
	add r3, r2, #0
	str r6, [sp, #4]
	bl sub_02006E84
	mov r0, #0x16
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x5c
	mov r1, #3
	mov r2, #4
	mov r3, #0
	str r6, [sp, #4]
	bl sub_02006E84
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	mov r0, #0x5c
	mov r1, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	mov r0, #0x5c
	mov r1, #0xa
	mov r3, #4
	bl sub_02006E3C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	mov r0, #0x5c
	mov r1, #5
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	mov r0, #0x5c
	mov r1, #0xb
	mov r3, #4
	bl sub_02006E60
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x5c
	add r1, r6, #0
	bl sub_02006C24
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	mov r2, #0xcb
	add r0, #0xd4
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, #4
	add r2, sp, #0x38
	add r3, r6, #0
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, #0xdc
	mov r2, #0x80
	bl MIi_CpuCopy16
	ldr r0, [sp, #0x38]
	mov r2, #0x57
	ldr r1, [sp, #0x10]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	mov r1, #0x57
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, #0xdc
	str r0, [sp, #0x14]
_0225CFDE:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x30]
_0225CFF0:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _0225CFFA
	bl sub_02022974
_0225CFFA:
	ldr r0, [sp, #0x30]
	mov r7, #1
	add r6, r0, #2
	ldr r0, [sp, #0x18]
	add r4, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_0225D012:
	add r0, r6, #0
	add r0, #0xdc
	ldrh r0, [r0]
	ldr r3, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0200393C
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _0225D012
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _0225D05E
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0225CFF0
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0225CFF0
_0225D05E:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0225CFDE
	mov r1, #0x57
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0xd8
	str r1, [r0, #0]
	ldr r1, [sp, #0x10]
	ldr r0, _0225D0BC ; =ov67_0225D0C0
	add r1, #0xd4
	mov r2, #0x14
	bl sub_0200DA04
	ldr r1, [sp, #0x10]
	add r1, #0xd4
	str r0, [r1, #0]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D0A4: .word 0x04000050
_0225D0A8: .word 0x04001050
_0225D0AC: .word 0x0225D410
_0225D0B0: .word 0x0225D400
_0225D0B4: .word 0x0225D438
_0225D0B8: .word 0x0225D3F4
_0225D0BC: .word ov67_0225D0C0
	thumb_func_end ov67_0225CE30

	thumb_func_start ov67_0225D0C0
ov67_0225D0C0: ; 0x0225D0C0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225D148
	ldr r0, _0225D14C ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0225D148
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	ldr r0, _0225D150 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0225D12C
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0225D148
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0225D12C:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0225D148
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_0225D148:
	pop {r4, pc}
	nop
_0225D14C: .word 0x0000032B
_0225D150: .word 0x0000032A
	thumb_func_end ov67_0225D0C0

	thumb_func_start ov67_0225D154
ov67_0225D154: ; 0x0225D154
	push {r4, r5, r6, lr}
	ldr r5, _0225D178 ; =0x0225D3F4
	add r6, r0, #0
	mov r4, #0
_0225D15C:
	ldr r1, [r5, #0]
	ldr r0, [r6, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225D15C
	ldr r0, [r6, #0xc]
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225D178: .word 0x0225D3F4
	thumb_func_end ov67_0225D154

	thumb_func_start ov67_0225D17C
ov67_0225D17C: ; 0x0225D17C
	ldr r3, _0225D184 ; =sub_0201C2B8
	ldr r0, [r0, #0xc]
	bx r3
	nop
_0225D184: .word sub_0201C2B8
	thumb_func_end ov67_0225D17C

	thumb_func_start ov67_0225D188
ov67_0225D188: ; 0x0225D188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x48]
	add r5, r0, #0
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r7, r1, #0
	add r6, r2, #0
	bl sub_0200B358
	str r0, [r5, #0]
	ldr r2, [sp, #0x14]
	mov r0, #0
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	str r0, [r5, #4]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r4, #0
	bl sub_02023790
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r4, #0
	bl sub_02023790
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x44]
	str r6, [r5, #0x20]
	bl sub_02025E44
	bl sub_02027AC0
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r5, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	lsl r3, r3, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	add r1, r5, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov67_0225D188

	thumb_func_start ov67_0225D210
ov67_0225D210: ; 0x0225D210
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D230
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D230:
	add r0, r5, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x1c]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x18]
	add r0, #8
	mov r1, #1
	bl sub_0201D738
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0225D27A
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_0200DC48
	b _0225D288
_0225D27A:
	add r0, r5, #0
	mov r1, #1
	add r0, #8
	add r2, r1, #0
	mov r3, #0xd
	bl sub_0200E060
_0225D288:
	add r5, #8
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov67_0225D210

	thumb_func_start ov67_0225D294
ov67_0225D294: ; 0x0225D294
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D2B0
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D2B0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0225D2CA
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	add r4, #8
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
_0225D2CA:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0225D2D6
	add r0, r4, #0
	bl ov67_0225D310
_0225D2D6:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r4, #8
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov67_0225D294

	thumb_func_start ov67_0225D2EC
ov67_0225D2EC: ; 0x0225D2EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0225D30C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0225D300
	bl sub_02022974
_0225D300:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200E7FC
	str r0, [r4, #0x24]
_0225D30C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov67_0225D2EC

	thumb_func_start ov67_0225D310
ov67_0225D310: ; 0x0225D310
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0225D32E
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0225D324
	bl sub_02022974
_0225D324:
	ldr r0, [r4, #0x24]
	bl sub_0200EBA0
	mov r0, #0
	str r0, [r4, #0x24]
_0225D32E:
	pop {r4, pc}
	thumb_func_end ov67_0225D310

	thumb_func_start ov67_0225D330
ov67_0225D330: ; 0x0225D330
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225D34C
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225D34C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0225D358
	add r0, r4, #0
	bl ov67_0225D310
_0225D358:
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r0, [r4, #0x1c]
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	ldr r0, [r4, #4]
	bl sub_0200B190
	ldr r0, [r4, #0]
	bl sub_0200B3F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov67_0225D330

	thumb_func_start ov67_0225D37C
ov67_0225D37C: ; 0x0225D37C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r0, #8
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	add r1, r5, #0
	bl sub_0200B1B8
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r4, #0x18]
	add r2, r0, #0
	mov r3, #0xb0
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _0225D3CC ; =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #8
	mov r1, #1
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225D3CC: .word 0x000F0E00
	thumb_func_end ov67_0225D37C

	thumb_func_start ov67_0225D3D0
ov67_0225D3D0: ; 0x0225D3D0
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #0]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov67_0225D3D0

	.rodata


	.global Unk_ov67_0225D3EC
Unk_ov67_0225D3EC: ; 0x0225D3EC
	.incbin "incbin/overlay67_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov67_0225D3F4
Unk_ov67_0225D3F4: ; 0x0225D3F4
	.incbin "incbin/overlay67_rodata.bin", 0x8, 0x14 - 0x8

	.global Unk_ov67_0225D400
Unk_ov67_0225D400: ; 0x0225D400
	.incbin "incbin/overlay67_rodata.bin", 0x14, 0x24 - 0x14

	.global Unk_ov67_0225D410
Unk_ov67_0225D410: ; 0x0225D410
	.incbin "incbin/overlay67_rodata.bin", 0x24, 0x4C - 0x24

	.global Unk_ov67_0225D438
Unk_ov67_0225D438: ; 0x0225D438
	.incbin "incbin/overlay67_rodata.bin", 0x4C, 0x54

