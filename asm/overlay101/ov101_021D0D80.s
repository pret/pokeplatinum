	.include "macros/function.inc"
	.include "overlay101/ov101_021D0D80.inc"

	

	.text


	thumb_func_start ov101_021D0D80
ov101_021D0D80: ; 0x021D0D80
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #2
	mov r0, #3
	mov r1, #0x4f
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #8
	mov r2, #0x4f
	bl sub_0200681C
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	bl ov101_021D0F6C
	add r5, r0, #0
	str r5, [r4, #4]
	bl ov101_021D19BC
	add r0, r5, #0
	bl ov101_021D186C
	add r0, r5, #0
	bl ov101_021D0F9C
	add r0, r5, #0
	bl ov101_021D121C
	add r0, r5, #0
	bl ov101_021D13C8
	bl ov101_021D150C
	add r0, r5, #0
	bl ov101_021D1550
	add r0, r5, #0
	bl ov101_021D1A28
	add r0, r5, #0
	bl ov101_021D59AC
	add r0, r5, #0
	bl ov101_021D5AF0
	add r0, r5, #0
	bl ov101_021D5C28
	mov r1, #0
	mov r0, #0x42
	add r2, r1, #0
	bl sub_02004550
	add r0, r5, #0
	bl ov101_021D18C0
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D0D80

	thumb_func_start ov101_021D0E40
ov101_021D0E40: ; 0x021D0E40
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	ldr r5, [r0, #4]
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _021D0EC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D0E5E: ; jump table
	.short _021D0E66 - _021D0E5E - 2 ; case 0
	.short _021D0E76 - _021D0E5E - 2 ; case 1
	.short _021D0EA8 - _021D0E5E - 2 ; case 2
	.short _021D0EB6 - _021D0E5E - 2 ; case 3
_021D0E66:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0EC6
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EC6
_021D0E76:
	add r0, r5, #0
	bl ov101_021D1AAC
	cmp r0, #1
	bne _021D0EC6
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4f
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D1894
	b _021D0EC6
_021D0EA8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0EC6
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D0EB6:
	add r0, r5, #0
	bl ov101_021D18B4
	cmp r0, #0
	bne _021D0EC6
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D0EC6:
	ldr r0, _021D0EE0 ; =0x0000044C
	ldr r0, [r5, r0]
	bl sub_020713D0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov101_021D80D4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D0EE0: .word 0x0000044C
	thumb_func_end ov101_021D0E40

	thumb_func_start ov101_021D0EE4
ov101_021D0EE4: ; 0x021D0EE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r6, r0, #0
	mov r0, #0
	ldr r4, [r6, #4]
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	add r1, r4, #0
	bl ov101_021D0F3C
	add r0, r4, #0
	bl ov101_021D1884
	add r0, r4, #0
	bl ov101_021D107C
	add r0, r4, #0
	bl ov101_021D1458
	add r0, r4, #0
	bl ov101_021D1A4C
	add r0, r4, #0
	bl ov101_021D18E4
	add r0, r4, #0
	bl ov101_021D19D4
	add r0, r4, #0
	bl ov101_021D0F94
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x4f
	bl sub_0201807C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D0EE4

	thumb_func_start ov101_021D0F3C
ov101_021D0F3C: ; 0x021D0F3C
	push {r3, lr}
	add r2, r1, #0
	ldr r3, [r2, #0x60]
	ldr r1, _021D0F68 ; =0x0000C350
	cmp r3, r1
	bls _021D0F4A
	add r3, r1, #0
_021D0F4A:
	ldr r1, [r0, #0]
	ldr r1, [r1, #0]
	str r3, [r1, #0]
	ldr r3, [r2, #0x20]
	ldr r1, [r0, #0]
	str r3, [r1, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D0F66
	ldr r2, [r2, #0xc]
	mov r1, #0xe
	bl sub_0202CF70
_021D0F66:
	pop {r3, pc}
	; .align 2, 0
_021D0F68: .word 0x0000C350
	thumb_func_end ov101_021D0F3C

	thumb_func_start ov101_021D0F6C
ov101_021D0F6C: ; 0x021D0F6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D0F8C ; =0x000004C8
	bl ov101_021D1998
	ldr r1, [r4, #0]
	ldr r1, [r1, #0]
	str r1, [r0, #0x60]
	add r1, r0, #0
	ldr r2, [r4, #4]
	add r1, #0x88
	str r2, [r1, #0]
	ldr r2, [r4, #0x10]
	ldr r1, _021D0F90 ; =0x000004C4
	str r2, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D0F8C: .word 0x000004C8
_021D0F90: .word 0x000004C4
	thumb_func_end ov101_021D0F6C

	thumb_func_start ov101_021D0F94
ov101_021D0F94: ; 0x021D0F94
	ldr r3, _021D0F98 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021D0F98: .word sub_020181C4
	thumb_func_end ov101_021D0F94

	thumb_func_start ov101_021D0F9C
ov101_021D0F9C: ; 0x021D0F9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0x4f
	bl sub_02018340
	ldr r1, _021D106C ; =0x0000043C
	str r0, [r4, r1]
	bl ov101_021D1098
	ldr r0, _021D106C ; =0x0000043C
	ldr r0, [r4, r0]
	bl ov101_021D10B8
	bl ov101_021D11D0
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _021D1070 ; =0x04000008
	mov r2, #3
	ldrh r1, [r0]
	mov r3, #1
	mov r7, #2
	bic r1, r2
	strh r1, [r0]
	ldrh r1, [r0, #2]
	ldr r6, _021D1074 ; =0x04001008
	bic r1, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bic r1, r2
	orr r1, r7
	strh r1, [r0, #4]
	ldrh r5, [r0, #6]
	mov r1, #3
	bic r5, r2
	orr r5, r1
	strh r5, [r0, #6]
	ldrh r5, [r6]
	bic r5, r2
	strh r5, [r6]
	ldrh r5, [r6, #2]
	bic r5, r2
	orr r3, r5
	strh r3, [r6, #2]
	ldrh r3, [r6, #4]
	add r0, #0x48
	bic r3, r2
	orr r3, r7
	strh r3, [r6, #4]
	ldrh r3, [r6, #6]
	bic r3, r2
	orr r1, r3
	strh r1, [r6, #6]
	mov r1, #9
	str r1, [sp]
	mov r1, #4
	mov r2, #0x10
	mov r3, #8
	bl G2x_SetBlendAlpha_
	ldr r0, _021D1078 ; =ov101_021D197C
	add r1, r4, #0
	bl sub_02017798
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D106C: .word 0x0000043C
_021D1070: .word 0x04000008
_021D1074: .word 0x04001008
_021D1078: .word ov101_021D197C
	thumb_func_end ov101_021D0F9C

	thumb_func_start ov101_021D107C
ov101_021D107C: ; 0x021D107C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D1094 ; =0x0000043C
	ldr r0, [r4, r0]
	bl ov101_021D11A4
	add r0, r4, #0
	bl ov101_021D15A4
	bl ov101_021D1544
	pop {r4, pc}
	; .align 2, 0
_021D1094: .word 0x0000043C
	thumb_func_end ov101_021D107C

	thumb_func_start ov101_021D1098
ov101_021D1098: ; 0x021D1098
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D10B4 ; =0x021D8620
	add r3, sp, #0
	mov r2, #5
_021D10A2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D10A2
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D10B4: .word 0x021D8620
	thumb_func_end ov101_021D1098

	thumb_func_start ov101_021D10B8
ov101_021D10B8: ; 0x021D10B8
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r2, _021D118C ; =0x04000304
	add r4, r0, #0
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	ldr r5, _021D1190 ; =0x021D8590
	orr r0, r1
	strh r0, [r2]
	add r3, sp, #0x70
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1194 ; =0x021D85CC
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
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
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x4f
	bl sub_02019690
	ldr r5, _021D1198 ; =0x021D85E8
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
	ldr r5, _021D119C ; =0x021D8604
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
	ldr r5, _021D11A0 ; =0x021D85B0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D118C: .word 0x04000304
_021D1190: .word 0x021D8590
_021D1194: .word 0x021D85CC
_021D1198: .word 0x021D85E8
_021D119C: .word 0x021D8604
_021D11A0: .word 0x021D85B0
	thumb_func_end ov101_021D10B8

	thumb_func_start ov101_021D11A4
ov101_021D11A4: ; 0x021D11A4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D11A4

	thumb_func_start ov101_021D11D0
ov101_021D11D0: ; 0x021D11D0
	push {r4, r5}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _021D1218 ; =0xFFFF1FFF
	add r5, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r3, [r5]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r3, r1
	add r4, r3, #0
	orr r4, r2
	mov r3, #0x20
	orr r4, r3
	strh r4, [r5]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	bic r5, r1
	add r1, r5, #0
	orr r1, r2
	orr r1, r3
	strh r1, [r4]
	add r1, r0, #0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1]
	add r0, #0x44
	strh r2, [r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_021D1218: .word 0xFFFF1FFF
	thumb_func_end ov101_021D11D0

	thumb_func_start ov101_021D121C
ov101_021D121C: ; 0x021D121C
	push {r3, r4, r5, lr}
	mov r1, #3
	mov r2, #0
	add r4, r0, #0
	bl ov101_021D19E4
	ldr r1, _021D13BC ; =0x00000448
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, _021D13BC ; =0x00000448
	mov r2, #0x1a
	ldr r1, [r4, r1]
	mov r0, #1
	ldr r1, [r1, #0xc]
	lsl r2, r2, #4
	mov r3, #0
	bl sub_0201972C
	add r0, r5, #0
	bl sub_020181C4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov101_021D19E4
	ldr r1, _021D13C0 ; =0x00000444
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, _021D13C0 ; =0x00000444
	mov r1, #0
	ldr r3, [r4, r0]
	sub r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	mov r1, #1
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov101_021D19E4
	mov r1, #0x11
	lsl r1, r1, #6
	add r1, r4, r1
	add r5, r0, #0
	bl NNS_G2dGetUnpackedScreenData
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	mov r1, #1
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D13C4 ; =0x0000043C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov101_021D19E4
	ldr r1, _021D13C0 ; =0x00000444
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, _021D13C0 ; =0x00000444
	mov r1, #0
	ldr r3, [r4, r0]
	sub r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	mov r1, #2
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl ov101_021D19E4
	mov r1, #0x11
	lsl r1, r1, #6
	add r1, r4, r1
	add r5, r0, #0
	bl NNS_G2dGetUnpackedScreenData
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D13C4 ; =0x0000043C
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov101_021D19E4
	ldr r1, _021D13BC ; =0x00000448
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, _021D13BC ; =0x00000448
	mov r2, #0x1a
	ldr r1, [r4, r1]
	mov r0, #7
	ldr r1, [r1, #0xc]
	lsl r2, r2, #4
	mov r3, #0
	bl sub_0201972C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov101_021D19E4
	ldr r1, _021D13C0 ; =0x00000444
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, _021D13C0 ; =0x00000444
	mov r1, #0
	ldr r3, [r4, r0]
	sub r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	mov r1, #7
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov101_021D19E4
	mov r1, #0x11
	lsl r1, r1, #6
	add r1, r4, r1
	add r5, r0, #0
	bl NNS_G2dGetUnpackedScreenData
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	mov r1, #7
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D13C4 ; =0x0000043C
	mov r1, #7
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D13BC: .word 0x00000448
_021D13C0: .word 0x00000444
_021D13C4: .word 0x0000043C
	thumb_func_end ov101_021D121C

	thumb_func_start ov101_021D13C8
ov101_021D13C8: ; 0x021D13C8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021D1448 ; =0x00000408
	mov r1, #0
	add r4, r5, r0
	str r1, [sp]
	mov r2, #0x4f
	str r2, [sp, #4]
	add r0, #0x34
	ldr r0, [r5, r0]
	mov r2, #1
	mov r3, #0xf
	bl sub_0200DAA4
	ldr r1, _021D144C ; =0x000004C4
	mov r2, #0x1f
	ldr r0, [r5, r1]
	sub r1, #0x88
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x4f
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	mov r1, #0
	mov r3, #0xe
	bl sub_0200DD0C
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x4f
	bl sub_02002E98
	mov r2, #0x22
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #4
	mov r3, #0x4f
	bl sub_0200B144
	ldr r1, _021D1448 ; =0x00000408
	str r0, [r5, r1]
	mov r0, #0x4f
	bl sub_0200B358
	str r0, [r4, #4]
	ldr r0, _021D1450 ; =0x0000043C
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r2, _021D1454 ; =0x021D8588
	add r1, #8
	bl sub_0201A8D4
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x4f
	bl sub_02023790
	str r0, [r4, #0x18]
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D1448: .word 0x00000408
_021D144C: .word 0x000004C4
_021D1450: .word 0x0000043C
_021D1454: .word 0x021D8588
	thumb_func_end ov101_021D13C8

	thumb_func_start ov101_021D1458
ov101_021D1458: ; 0x021D1458
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D1488 ; =0x00000408
	add r4, r5, r0
	add r6, r4, #0
	add r6, #8
	add r0, r6, #0
	bl sub_0201ACF4
	add r0, r6, #0
	bl sub_0201A8FC
	ldr r0, _021D1488 ; =0x00000408
	ldr r0, [r5, r0]
	bl sub_0200B190
	ldr r0, [r4, #4]
	bl sub_0200B3F0
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	nop
_021D1488: .word 0x00000408
	thumb_func_end ov101_021D1458

	thumb_func_start ov101_021D148C
ov101_021D148C: ; 0x021D148C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021D14E0 ; =0x00000408
	add r6, r1, #0
	add r4, r5, r0
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xe
	bl sub_0200E060
	add r0, r4, #0
	add r0, #8
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, _021D14E0 ; =0x00000408
	ldr r2, [r4, #0x18]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #8
	mov r1, #1
	bl sub_0201D738
	add r4, #8
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D14E0: .word 0x00000408
	thumb_func_end ov101_021D148C

	thumb_func_start ov101_021D14E4
ov101_021D14E4: ; 0x021D14E4
	push {r3, r4, r5, lr}
	ldr r4, _021D1508 ; =0x00000408
	add r5, r0, #0
	add r0, r5, r4
	add r0, #8
	mov r1, #1
	bl sub_0200E084
	add r0, r5, r4
	add r0, #8
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, r4
	add r0, #8
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1508: .word 0x00000408
	thumb_func_end ov101_021D14E4

	thumb_func_start ov101_021D150C
ov101_021D150C: ; 0x021D150C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D153C ; =0x021D85A0
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021D1540 ; =0x00200010
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0x10
	mov r1, #0x4f
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D153C: .word 0x021D85A0
_021D1540: .word 0x00200010
	thumb_func_end ov101_021D150C

	thumb_func_start ov101_021D1544
ov101_021D1544: ; 0x021D1544
	push {r3, lr}
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, pc}
	thumb_func_end ov101_021D1544

	thumb_func_start ov101_021D1550
ov101_021D1550: ; 0x021D1550
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4f
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0x40
	str r1, [sp, #4]
	mov r2, #0x20
	str r2, [sp, #8]
	mov r3, #0xb
	str r3, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r0, #0x4f
	add r3, r1, #0
	bl ov101_021D7E48
	mov r1, #0x45
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov101_021D15BC
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1550

	thumb_func_start ov101_021D15A4
ov101_021D15A4: ; 0x021D15A4
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D1868
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov101_021D7FB4
	bl sub_0200A878
	pop {r4, pc}
	thumb_func_end ov101_021D15A4

	thumb_func_start ov101_021D15BC
ov101_021D15BC: ; 0x021D15BC
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0x45
	add r4, r0, #0
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #1
	mov r3, #0xb
	bl ov101_021D80E4
	mov r1, #1
	mov r2, #0x45
	str r1, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r3, #0x15
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #6
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x44
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #7
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x47
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #8
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x40
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #9
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x3c
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #3
	mov r3, #0xa
	bl ov101_021D81B4
	mov r1, #1
	mov r2, #0x45
	str r1, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r3, #0x14
	bl ov101_021D81B4
	mov r2, #0x45
	mov r0, #6
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x43
	bl ov101_021D81B4
	mov r2, #0x45
	mov r0, #7
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x3f
	bl ov101_021D81B4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0xc
	mov r3, #0
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x16
	mov r3, #1
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x45
	mov r3, #6
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x48
	mov r3, #7
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x41
	mov r3, #8
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x3d
	mov r3, #9
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0xd
	mov r3, #0
	bl ov101_021D82F0
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x17
	mov r3, #1
	bl ov101_021D82F0
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x46
	mov r3, #6
	bl ov101_021D82F0
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x49
	mov r3, #7
	bl ov101_021D82F0
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x42
	mov r3, #8
	bl ov101_021D82F0
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x3e
	mov r3, #9
	bl ov101_021D82F0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #9
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov101_021D8180
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov101_021D8180
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov101_021D8180
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	bl ov101_021D8180
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl ov101_021D8180
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #9
	bl ov101_021D8180
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov101_021D8220
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov101_021D8220
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov101_021D8220
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	bl ov101_021D8220
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov101_021D8254
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov101_021D8254
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov101_021D8254
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	bl ov101_021D8254
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D15BC

	thumb_func_start ov101_021D1868
ov101_021D1868: ; 0x021D1868
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D1868

	thumb_func_start ov101_021D186C
ov101_021D186C: ; 0x021D186C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	mov r1, #0x80
	bl sub_020711EC
	ldr r1, _021D1880 ; =0x0000044C
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D1880: .word 0x0000044C
	thumb_func_end ov101_021D186C

	thumb_func_start ov101_021D1884
ov101_021D1884: ; 0x021D1884
	ldr r1, _021D188C ; =0x0000044C
	ldr r3, _021D1890 ; =sub_0207121C
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D188C: .word 0x0000044C
_021D1890: .word sub_0207121C
	thumb_func_end ov101_021D1884

	thumb_func_start ov101_021D1894
ov101_021D1894: ; 0x021D1894
	ldr r2, _021D18B0 ; =0x00000424
	add r2, r0, r2
	ldr r0, [r2, #8]
	cmp r0, r1
	beq _021D18AC
	ldr r0, [r2, #0xc]
	cmp r0, r1
	beq _021D18AC
	str r1, [r2, #0xc]
	mov r0, #1
	str r0, [r2, #0]
	str r0, [r2, #4]
_021D18AC:
	bx lr
	nop
_021D18B0: .word 0x00000424
	thumb_func_end ov101_021D1894

	thumb_func_start ov101_021D18B4
ov101_021D18B4: ; 0x021D18B4
	ldr r1, _021D18BC ; =0x00000428
	ldr r0, [r0, r1]
	bx lr
	nop
_021D18BC: .word 0x00000428
	thumb_func_end ov101_021D18B4

	thumb_func_start ov101_021D18C0
ov101_021D18C0: ; 0x021D18C0
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _021D18DC ; =0x00000424
	mov r2, #0x90
	add r4, r1, r0
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #3
	str r0, [r4, #0xc]
	ldr r0, _021D18E0 ; =ov101_021D18F4
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
_021D18DC: .word 0x00000424
_021D18E0: .word ov101_021D18F4
	thumb_func_end ov101_021D18C0

	thumb_func_start ov101_021D18E4
ov101_021D18E4: ; 0x021D18E4
	ldr r1, _021D18EC ; =0x00000434
	ldr r3, _021D18F0 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D18EC: .word 0x00000434
_021D18F0: .word sub_0200DA58
	thumb_func_end ov101_021D18E4

	thumb_func_start ov101_021D18F4
ov101_021D18F4: ; 0x021D18F4
	push {r4, lr}
	ldr r0, _021D1978 ; =0x00000424
	add r4, r1, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D1974
	cmp r1, #1
	beq _021D190A
	cmp r1, #2
	beq _021D193E
	pop {r4, pc}
_021D190A:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021D191A
	cmp r1, #1
	beq _021D1924
	cmp r1, #2
	beq _021D192E
	b _021D1936
_021D191A:
	mov r0, #1
	add r1, r0, #0
	bl sub_020049F4
	b _021D1936
_021D1924:
	add r0, #0x7c
	mov r1, #0
	bl sub_020055D0
	b _021D1936
_021D192E:
	add r0, #0x7d
	mov r1, #0
	bl sub_020055D0
_021D1936:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_021D193E:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _021D194E
	cmp r1, #1
	beq _021D1958
	cmp r1, #2
	beq _021D1960
	b _021D1966
_021D194E:
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
	b _021D1966
_021D1958:
	add r0, #0x7c
	bl sub_02005474
	b _021D1966
_021D1960:
	add r0, #0x7d
	bl sub_02005474
_021D1966:
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	mov r0, #3
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0]
_021D1974:
	pop {r4, pc}
	nop
_021D1978: .word 0x00000424
	thumb_func_end ov101_021D18F4

	thumb_func_start ov101_021D197C
ov101_021D197C: ; 0x021D197C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, _021D1994 ; =0x0000043C
	ldr r0, [r4, r0]
	bl sub_0201C2B8
	pop {r4, pc}
	nop
_021D1994: .word 0x0000043C
	thumb_func_end ov101_021D197C

	thumb_func_start ov101_021D1998
ov101_021D1998: ; 0x021D1998
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x4f
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D19AC
	bl GF_AssertFail
_021D19AC:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1998

	thumb_func_start ov101_021D19BC
ov101_021D19BC: ; 0x021D19BC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	mov r1, #0x4f
	bl sub_02006C24
	ldr r1, _021D19D0 ; =0x00000438
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D19D0: .word 0x00000438
	thumb_func_end ov101_021D19BC

	thumb_func_start ov101_021D19D4
ov101_021D19D4: ; 0x021D19D4
	ldr r1, _021D19DC ; =0x00000438
	ldr r3, _021D19E0 ; =sub_02006CA8
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D19DC: .word 0x00000438
_021D19E0: .word sub_02006CA8
	thumb_func_end ov101_021D19D4

	thumb_func_start ov101_021D19E4
ov101_021D19E4: ; 0x021D19E4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _021D1A24 ; =0x00000438
	add r6, r1, #0
	ldr r0, [r4, r0]
	add r5, r2, #0
	bl sub_02006D84
	add r1, r0, #0
	cmp r5, #1
	bne _021D1A02
	mov r0, #0x4f
	bl sub_02018144
	b _021D1A08
_021D1A02:
	mov r0, #0x4f
	bl sub_02018184
_021D1A08:
	add r5, r0, #0
	cmp r5, #0
	bne _021D1A12
	bl GF_AssertFail
_021D1A12:
	ldr r0, _021D1A24 ; =0x00000438
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r2, r5, #0
	bl sub_02006D28
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_021D1A24: .word 0x00000438
	thumb_func_end ov101_021D19E4

	.rodata


	.global Unk_ov101_021D8588
Unk_ov101_021D8588: ; 0x021D8588
	.incbin "incbin/overlay101_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov101_021D8590
Unk_ov101_021D8590: ; 0x021D8590
	.incbin "incbin/overlay101_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov101_021D85A0
Unk_ov101_021D85A0: ; 0x021D85A0
	.incbin "incbin/overlay101_rodata.bin", 0x18, 0x28 - 0x18

	.global Unk_ov101_021D85B0
Unk_ov101_021D85B0: ; 0x021D85B0
	.incbin "incbin/overlay101_rodata.bin", 0x28, 0x44 - 0x28

	.global Unk_ov101_021D85CC
Unk_ov101_021D85CC: ; 0x021D85CC
	.incbin "incbin/overlay101_rodata.bin", 0x44, 0x60 - 0x44

	.global Unk_ov101_021D85E8
Unk_ov101_021D85E8: ; 0x021D85E8
	.incbin "incbin/overlay101_rodata.bin", 0x60, 0x7C - 0x60

	.global Unk_ov101_021D8604
Unk_ov101_021D8604: ; 0x021D8604
	.incbin "incbin/overlay101_rodata.bin", 0x7C, 0x98 - 0x7C

	.global Unk_ov101_021D8620
Unk_ov101_021D8620: ; 0x021D8620
	.incbin "incbin/overlay101_rodata.bin", 0x98, 0x28

