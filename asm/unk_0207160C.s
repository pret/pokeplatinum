	.include "macros/function.inc"
	.include "include/unk_0207160C.inc"

	

	.text


	thumb_func_start sub_0207160C
sub_0207160C: ; 0x0207160C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #7
	bl sub_02027F6C
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	ldr r3, _020716C4 ; =0x020F03F4
	mov r7, #0x18
	add r2, r1, #0
	mul r2, r7
	add r6, r3, r2
	lsl r0, r0, #2
	ldr r5, [r6, r0]
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _02071672
	ldr r3, _020716C8 ; =0x020F03E8
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r7, #0xea
	str r0, [r2, #0]
	str r5, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x50]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x30]
	mov r3, ip
	bl ov5_021E19CC
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _020716CC ; =0x00000102
	bl ov5_021E18CC
	str r0, [sp, #0x14]
	b _02071694
_02071672:
	ldr r0, _020716D0 ; =0x020F03D0
	add r1, sp, #0xc
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	add r3, sp, #0x14
	bl sub_02055324
	cmp r0, #0
	bne _02071694
	bl GF_AssertFail
_02071694:
	ldr r1, [sp, #0x14]
	add r0, sp, #0x18
	bl ov5_021E1894
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	str r5, [sp, #0x1c]
	bl ov5_021E18A4
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	add r4, #0xa0
	ldr r0, [r4, #0]
	mov r3, #3
	str r0, [sp, #8]
	ldr r1, [r6, #8]
	ldr r2, [r6, #0xc]
	mov r0, #0
	bl ov5_021EF2CC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020716C4: .word 0x020F03F4
_020716C8: .word 0x020F03E8
_020716CC: .word 0x00000102
_020716D0: .word 0x020F03D0
	thumb_func_end sub_0207160C

	thumb_func_start sub_020716D4
sub_020716D4: ; 0x020716D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	add r5, r0, #0
	mov r1, #7
	bl sub_02027F5C
	add r0, r5, #0
	mov r1, #7
	bl sub_02027F6C
	mov r3, #1
	str r3, [r0, #4]
	mov r2, #0
	str r2, [r0, #8]
	ldr r4, [r4, #0x1c]
	ldr r5, _02071810 ; =0x00000123
	ldr r1, [r4, #0]
	cmp r1, r5
	bgt _0207172C
	bge _0207173E
	add r5, r1, #0
	sub r5, #0xb0
	cmp r5, #9
	bhi _02071808
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02071718: ; jump table
	.short _02071778 - _02071718 - 2 ; case 0
	.short _02071808 - _02071718 - 2 ; case 1
	.short _02071790 - _02071718 - 2 ; case 2
	.short _02071808 - _02071718 - 2 ; case 3
	.short _020717A8 - _02071718 - 2 ; case 4
	.short _02071808 - _02071718 - 2 ; case 5
	.short _020717C0 - _02071718 - 2 ; case 6
	.short _02071808 - _02071718 - 2 ; case 7
	.short _020717D8 - _02071718 - 2 ; case 8
	.short _020717F0 - _02071718 - 2 ; case 9
_0207172C:
	ldr r2, _02071814 ; =0x00000125
	cmp r1, r2
	bgt _02071736
	beq _02071750
	b _02071808
_02071736:
	add r2, r2, #1
	cmp r1, r2
	beq _02071764
	b _02071808
_0207173E:
	ldr r1, [r4, #0xc]
	cmp r1, #0x1a
	bne _02071748
	strh r2, [r0]
	b _0207174A
_02071748:
	strh r3, [r0]
_0207174A:
	mov r1, #0
	strh r1, [r0, #2]
	pop {r3, r4, r5, pc}
_02071750:
	ldr r1, [r4, #0xc]
	cmp r1, #0x30
	bne _0207175A
	mov r1, #0
	b _0207175C
_0207175A:
	mov r1, #1
_0207175C:
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	pop {r3, r4, r5, pc}
_02071764:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _0207176E
	mov r1, #0
	b _02071770
_0207176E:
	mov r1, #1
_02071770:
	strh r1, [r0]
	mov r1, #2
	strh r1, [r0, #2]
	pop {r3, r4, r5, pc}
_02071778:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _02071782
	strh r2, [r0]
	b _02071786
_02071782:
	strh r3, [r0]
	str r2, [r0, #4]
_02071786:
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02071790:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _0207179A
	strh r2, [r0]
	b _0207179E
_0207179A:
	strh r3, [r0]
	str r2, [r0, #4]
_0207179E:
	mov r1, #4
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717A8:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _020717B2
	strh r2, [r0]
	b _020717B6
_020717B2:
	strh r3, [r0]
	str r2, [r0, #4]
_020717B6:
	mov r1, #5
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717C0:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _020717CA
	strh r2, [r0]
	b _020717CE
_020717CA:
	strh r3, [r0]
	str r2, [r0, #4]
_020717CE:
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717D8:
	ldr r1, [r4, #0xc]
	cmp r1, #0x17
	bne _020717E2
	strh r2, [r0]
	b _020717E6
_020717E2:
	strh r3, [r0]
	str r2, [r0, #4]
_020717E6:
	mov r1, #7
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717F0:
	ldr r1, [r4, #0xc]
	cmp r1, #0x12
	bne _020717FA
	strh r2, [r0]
	b _020717FE
_020717FA:
	strh r3, [r0]
	str r2, [r0, #4]
_020717FE:
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02071808:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_02071810: .word 0x00000123
_02071814: .word 0x00000125
	thumb_func_end sub_020716D4

	thumb_func_start sub_02071818
sub_02071818: ; 0x02071818
	push {r3, lr}
	bl sub_0203D174
	bl sub_02027860
	mov r1, #7
	bl sub_02027F6C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02071832
	mov r0, #1
	b _02071834
_02071832:
	mov r0, #0
_02071834:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02071818

	thumb_func_start sub_0207183C
sub_0207183C: ; 0x0207183C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #7
	bl sub_02027F6C
	add r4, r0, #0
	ldrh r1, [r4, #2]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _020718C0 ; =0x020F0404
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02071866
	ldrh r0, [r4]
	cmp r0, #1
	beq _020718BC
_02071866:
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldrh r1, [r4, #2]
	mov r0, #0x18
	add r3, r1, #0
	ldr r1, _020718C4 ; =0x020F0408
	mul r3, r0
	ldr r1, [r1, r3]
	str r1, [r2, #8]
	ldr r1, [r4, #8]
	str r1, [r2, #0xc]
	ldrh r1, [r4]
	cmp r1, #0
	ldrh r1, [r4, #2]
	bne _020718A6
	add r3, r1, #0
	mul r3, r0
	ldr r0, _020718C8 ; =0x020F03F8
	ldr r1, _020718CC ; =sub_020718D8
	ldr r0, [r0, r3]
	str r0, [r2, #4]
	ldr r0, [r5, #0x10]
	bl sub_02050944
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_020718A6:
	add r3, r1, #0
	mul r3, r0
	ldr r0, _020718D0 ; =0x020F03F4
	ldr r1, _020718D4 ; =sub_020719D8
	ldr r0, [r0, r3]
	str r0, [r2, #4]
	ldr r0, [r5, #0x10]
	bl sub_02050944
	mov r0, #0
	strh r0, [r4]
_020718BC:
	pop {r3, r4, r5, pc}
	nop
_020718C0: .word 0x020F0404
_020718C4: .word 0x020F0408
_020718C8: .word 0x020F03F8
_020718CC: .word sub_020718D8
_020718D0: .word 0x020F03F4
_020718D4: .word sub_020719D8
	thumb_func_end sub_0207183C

	thumb_func_start sub_020718D8
sub_020718D8: ; 0x020718D8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _020719C4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020718FE: ; jump table
	.short _02071906 - _020718FE - 2 ; case 0
	.short _0207191C - _020718FE - 2 ; case 1
	.short _02071996 - _020718FE - 2 ; case 2
	.short _020719BA - _020718FE - 2 ; case 3
_02071906:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, [r4, #0xc]
	bl sub_02071ACC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020719C4
_0207191C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02071932
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _020719CC ; =0x00000102
	bl ov5_021E18CC
	str r0, [sp, #0xc]
	b _02071954
_02071932:
	ldr r0, _020719D0 ; =0x020F03D0
	add r1, sp, #4
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, sp, #0xc
	bl sub_02055324
	cmp r0, #0
	bne _02071954
	bl GF_AssertFail
_02071954:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x10
	bl ov5_021E1894
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02071966
	mov r1, #1
	b _02071968
_02071966:
	mov r1, #2
_02071968:
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0xc
	add r1, r0, r1
	str r1, [sp, #0x14]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _02071984
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02071AEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02071984:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #0x14]
	bl sub_0205ED0C
	ldr r0, [sp, #0xc]
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _020719C4
_02071996:
	add r2, r5, #0
	add r2, #0xa0
	ldr r1, [r4, #4]
	ldr r2, [r2, #0]
	mov r0, #0
	bl ov5_021EF388
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _020719D4 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020719C4
_020719BA:
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_020719C4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_020719CC: .word 0x00000102
_020719D0: .word 0x020F03D0
_020719D4: .word 0x0000061A
	thumb_func_end sub_020718D8

	thumb_func_start sub_020719D8
sub_020719D8: ; 0x020719D8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _02071ABA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020719FE: ; jump table
	.short _02071A06 - _020719FE - 2 ; case 0
	.short _02071A1C - _020719FE - 2 ; case 1
	.short _02071A8C - _020719FE - 2 ; case 2
	.short _02071AB0 - _020719FE - 2 ; case 3
_02071A06:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, [r4, #0xc]
	bl sub_02071ACC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02071ABA
_02071A1C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02071A32
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _02071AC0 ; =0x00000102
	bl ov5_021E18CC
	str r0, [sp, #0xc]
	b _02071A54
_02071A32:
	ldr r0, _02071AC4 ; =0x020F03D0
	add r1, sp, #4
	ldr r2, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, sp, #0xc
	bl sub_02055324
	cmp r0, #0
	bne _02071A54
	bl GF_AssertFail
_02071A54:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x10
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r0, [r4, #4]
	cmp r1, r0
	bgt _02071A7A
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02071AEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02071A7A:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #0x14]
	bl sub_0205ED0C
	ldr r0, [sp, #0xc]
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _02071ABA
_02071A8C:
	add r2, r5, #0
	add r2, #0xa0
	ldr r1, [r4, #4]
	ldr r2, [r2, #0]
	mov r0, #0
	bl ov5_021EF388
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _02071AC8 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02071ABA
_02071AB0:
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_02071ABA:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_02071AC0: .word 0x00000102
_02071AC4: .word 0x020F03D0
_02071AC8: .word 0x0000061A
	thumb_func_end sub_020719D8

	thumb_func_start sub_02071ACC
sub_02071ACC: ; 0x02071ACC
	push {r3, lr}
	cmp r0, #0
	bne _02071ADA
	ldr r0, _02071AE4 ; =0x00000611
	bl sub_02005748
	pop {r3, pc}
_02071ADA:
	ldr r0, _02071AE8 ; =0x00000614
	bl sub_02005748
	pop {r3, pc}
	nop
_02071AE4: .word 0x00000611
_02071AE8: .word 0x00000614
	thumb_func_end sub_02071ACC

	thumb_func_start sub_02071AEC
sub_02071AEC: ; 0x02071AEC
	push {r3, lr}
	cmp r0, #0
	bne _02071AFC
	ldr r0, _02071B08 ; =0x00000611
	mov r1, #0
	bl sub_020057A4
	pop {r3, pc}
_02071AFC:
	ldr r0, _02071B0C ; =0x00000614
	mov r1, #0
	bl sub_020057A4
	pop {r3, pc}
	nop
_02071B08: .word 0x00000611
_02071B0C: .word 0x00000614
	thumb_func_end sub_02071AEC

	.rodata


	.global Unk_020F03D0
Unk_020F03D0: ; 0x020F03D0
	.incbin "incbin/arm9_rodata.bin", 0xB790, 0xB798 - 0xB790

	.global Unk_020F03D8
Unk_020F03D8: ; 0x020F03D8
	.incbin "incbin/arm9_rodata.bin", 0xB798, 0xB7A0 - 0xB798

	.global Unk_020F03E0
Unk_020F03E0: ; 0x020F03E0
	.incbin "incbin/arm9_rodata.bin", 0xB7A0, 0xB7A8 - 0xB7A0

	.global Unk_020F03E8
Unk_020F03E8: ; 0x020F03E8
	.incbin "incbin/arm9_rodata.bin", 0xB7A8, 0xB7B4 - 0xB7A8

	.global Unk_020F03F4
Unk_020F03F4: ; 0x020F03F4
	.incbin "incbin/arm9_rodata.bin", 0xB7B4, 0xD8

