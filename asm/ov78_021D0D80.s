	.include "macros/function.inc"
	.include "include/ov78_021D0D80.inc"

	

	.text


	thumb_func_start ov78_021D0D80
ov78_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #1
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x2f
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _021D0EE4 ; =0x000006B4
	add r0, r4, #0
	mov r2, #0x2f
	bl sub_0200681C
	add r5, r0, #0
	bne _021D0DA4
	bl GF_AssertFail
_021D0DA4:
	ldr r2, _021D0EE4 ; =0x000006B4
	add r0, r5, #0
	mov r1, #0
	bl memset
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0x2f
	mov r2, #0x20
	bl sub_020182CC
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02027B50
	ldr r1, _021D0EE8 ; =0x000006A8
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl sub_02027AC0
	ldr r1, _021D0EEC ; =0x000006AC
	str r0, [r5, r1]
	mov r0, #8
	mov r1, #0x2f
	bl sub_0201DBEC
	ldr r0, _021D0EF0 ; =ov78_021D1058
	add r1, r5, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	cmp r0, #1
	beq _021D0DFE
	bl GF_AssertFail
_021D0DFE:
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D10C4
	mov r0, #0x2f
	bl sub_02018340
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	mov r1, #1
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0
	str r1, [sp]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_02018368
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0x2f
	bl ov78_021D1224
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D1308
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D20A4
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D27CC
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D13B8
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D14E8
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D1528
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D1834
	add r0, r5, #0
	mov r1, #0x2f
	bl ov78_021D1B20
	add r0, r5, #0
	bl ov78_021D1BA0
	add r0, r5, #0
	bl ov78_021D1C28
	mov r1, #6
	lsl r1, r1, #8
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x2f
	bl ov78_021D2204
	mov r1, #6
	lsl r1, r1, #8
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x2f
	bl ov78_021D22D4
	mov r0, #6
	lsl r0, r0, #8
	add r0, r5, r0
	bl ov78_021D23B8
	mov r0, #0x65
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0x2f
	bl ov78_021D2448
	mov r1, #0
	mov r0, #0x3c
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D0EE4: .word 0x000006B4
_021D0EE8: .word 0x000006A8
_021D0EEC: .word 0x000006AC
_021D0EF0: .word ov78_021D1058
	thumb_func_end ov78_021D0D80

	thumb_func_start ov78_021D0EF4
ov78_021D0EF4: ; 0x021D0EF4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_0200682C
	ldr r2, _021D0FA4 ; =0x000008C3
	add r1, sp, #0
	strh r2, [r1]
	ldr r1, [r4, #0]
	add r6, r0, #0
	cmp r1, #4
	bhi _021D0F96
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0F18: ; jump table
	.short _021D0F22 - _021D0F18 - 2 ; case 0
	.short _021D0F38 - _021D0F18 - 2 ; case 1
	.short _021D0F54 - _021D0F18 - 2 ; case 2
	.short _021D0F70 - _021D0F18 - 2 ; case 3
	.short _021D0F7C - _021D0F18 - 2 ; case 4
_021D0F22:
	bl ov78_021D107C
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl GX_LoadBGPltt
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F96
_021D0F38:
	bl ov78_021D10BC
	cmp r0, #0
	beq _021D0F96
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F96
_021D0F54:
	mov r1, #0x2f
	bl ov78_021D1978
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x2f
	bl ov78_021D19D4
	cmp r5, #1
	bne _021D0F96
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F96
_021D0F70:
	bl ov78_021D109C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F96
_021D0F7C:
	bl ov78_021D10BC
	cmp r0, #0
	beq _021D0F96
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D0F96:
	add r0, r6, #0
	bl ov78_021D1AAC
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D0FA4: .word 0x000008C3
	thumb_func_end ov78_021D0EF4

	thumb_func_start ov78_021D0FA8
ov78_021D0FA8: ; 0x021D0FA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov78_021D291C
	str r0, [r6, #0]
	bl sub_0201E530
	cmp r0, #1
	beq _021D0FDA
	bl GF_AssertFail
_021D0FDA:
	mov r0, #0x65
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov78_021D24E4
	mov r0, #6
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov78_021D2350
	mov r1, #6
	lsl r1, r1, #8
	add r0, r4, #0
	add r1, r4, r1
	bl ov78_021D2290
	mov r0, #6
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov78_021D241C
	add r0, r4, #0
	bl ov78_021D1B90
	add r0, r4, #0
	bl ov78_021D1908
	add r0, r4, #0
	bl ov78_021D1594
	add r0, r4, #0
	bl ov78_021D14BC
	add r0, r4, #0
	bl ov78_021D1518
	add r0, r4, #0
	bl ov78_021D13A0
	add r0, r4, #0
	bl ov78_021D2884
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl ov78_021D12EC
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_020181C4
	bl ov78_021D10DC
	bl sub_0201DC3C
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x2f
	bl sub_0201807C
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D0FA8

	thumb_func_start ov78_021D1058
ov78_021D1058: ; 0x021D1058
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200A858
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02008A94
	bl sub_0201DCAC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov78_021D1058

	thumb_func_start ov78_021D107C
ov78_021D107C: ; 0x021D107C
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x2f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov78_021D107C

	thumb_func_start ov78_021D109C
ov78_021D109C: ; 0x021D109C
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2f
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	thumb_func_end ov78_021D109C

	thumb_func_start ov78_021D10BC
ov78_021D10BC: ; 0x021D10BC
	ldr r3, _021D10C0 ; =sub_0200F2AC
	bx r3
	; .align 2, 0
_021D10C0: .word sub_0200F2AC
	thumb_func_end ov78_021D10BC

	thumb_func_start ov78_021D10C4
ov78_021D10C4: ; 0x021D10C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov78_021D10F0
	add r0, r4, #0
	bl ov78_021D1110
	add r0, r5, #0
	bl ov78_021D1168
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D10C4

	thumb_func_start ov78_021D10DC
ov78_021D10DC: ; 0x021D10DC
	push {r3, lr}
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	bl ov78_021D1218
	pop {r3, pc}
	thumb_func_end ov78_021D10DC

	thumb_func_start ov78_021D10F0
ov78_021D10F0: ; 0x021D10F0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D110C ; =0x021D29C0
	add r3, sp, #0
	mov r2, #5
_021D10FA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D10FA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D110C: .word 0x021D29C0
	thumb_func_end ov78_021D10F0

	thumb_func_start ov78_021D1110
ov78_021D1110: ; 0x021D1110
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r4, [sp, #0x10]
	bl sub_0200A784
	ldr r5, _021D1160 ; =0x021D294C
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r1, _021D1164 ; =0x00200010
	mov r2, #0x10
	str r4, [sp, #0x20]
	bl sub_0201E88C
	mov r0, #0x20
	add r1, r4, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D1160: .word 0x021D294C
_021D1164: .word 0x00200010
	thumb_func_end ov78_021D1110

	thumb_func_start ov78_021D1168
ov78_021D1168: ; 0x021D1168
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _021D11F4 ; =0x04000060
	ldr r1, _021D11F8 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D11FC ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	add r3, r4, #0
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r1, _021D1200 ; =0x00001084
	ldr r0, _021D1204 ; =0x0000063C
	mov r2, #0
_021D11B4:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #8
	blt _021D11B4
	ldr r0, _021D1204 ; =0x0000063C
	add r0, r4, r0
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _021D1208 ; =0x000043FF
	ldr r2, _021D120C ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D1210 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _021D1214 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D11F4: .word 0x04000060
_021D11F8: .word 0xFFFFCFFD
_021D11FC: .word 0x0000CFFB
_021D1200: .word 0x00001084
_021D1204: .word 0x0000063C
_021D1208: .word 0x000043FF
_021D120C: .word 0x00007FFF
_021D1210: .word 0x04000540
_021D1214: .word 0xBFFF0000
	thumb_func_end ov78_021D1168

	thumb_func_start ov78_021D1218
ov78_021D1218: ; 0x021D1218
	push {r3, lr}
	bl NNS_GfdResetFrmTexVramState
	bl NNS_GfdResetFrmPlttVramState
	pop {r3, pc}
	thumb_func_end ov78_021D1218

	thumb_func_start ov78_021D1224
ov78_021D1224: ; 0x021D1224
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r1, #0
	ldr r1, _021D12DC ; =0x04000008
	add r5, r0, #0
	ldrh r2, [r1]
	mov r0, #3
	mov r7, #1
	bic r2, r0
	add r0, r2, #0
	orr r0, r7
	add r3, sp, #0x38
	ldr r6, _021D12E0 ; =0x021D2988
	strh r0, [r1]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r7, #0
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r7, #0
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02019EBC
	ldr r6, _021D12E4 ; =0x021D296C
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r6, _021D12E8 ; =0x021D29A4
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D12DC: .word 0x04000008
_021D12E0: .word 0x021D2988
_021D12E4: .word 0x021D296C
_021D12E8: .word 0x021D29A4
	thumb_func_end ov78_021D1224

	thumb_func_start ov78_021D12EC
ov78_021D12EC: ; 0x021D12EC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov78_021D12EC

	thumb_func_start ov78_021D1308
ov78_021D1308: ; 0x021D1308
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A778
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r3, #4
	add r1, r5, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x94
	add r1, #0x98
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, _021D139C ; =0x000006A8
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r2, r1, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r3, #0
	bl sub_0200DD0C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x52
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x40
	str r4, [sp, #4]
	bl sub_02006E84
	add r5, #0x98
	mov r1, #0
	mov r2, #2
	ldr r0, [r5, #0]
	lsl r2, r2, #8
	add r3, r1, #0
	bl sub_0200E060
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D139C: .word 0x000006A8
	thumb_func_end ov78_021D1308

	thumb_func_start ov78_021D13A0
ov78_021D13A0: ; 0x021D13A0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_0201A8FC
	add r4, #0x98
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov78_021D13A0

	thumb_func_start ov78_021D13B8
ov78_021D13B8: ; 0x021D13B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0200762C
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r3, _021D1458 ; =0x02100DEC
	lsl r0, r1, #6
	mov r1, #0
	ldr r3, [r3, #0]
	add r2, r1, #0
	blx r3
	ldr r3, _021D145C ; =0x02100DF4
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _021D1460 ; =0x7FFF0000
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r2, _021D1464 ; =0xFFFF0000
	mov r0, #2
	lsl r0, r0, #8
	and r2, r6
	lsl r1, r6, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	mov r2, #0x81
	lsl r2, r2, #2
	add r0, r5, r2
	add r1, r5, #0
	sub r2, #0x81
	bl ov78_021D1468
	mov r2, #0x82
	lsl r2, r2, #2
	add r0, r5, r2
	add r1, r5, #0
	sub r2, #0x82
	bl ov78_021D1468
	mov r2, #0x83
	lsl r2, r2, #2
	add r0, r5, r2
	add r1, r5, #0
	sub r2, #0x83
	bl ov78_021D1468
	mov r6, #0x81
	mov r4, #0
	mov r7, #6
	lsl r6, r6, #2
_021D1442:
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #1
	bl sub_02007DEC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D1442
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1458: .word 0x02100DEC
_021D145C: .word 0x02100DF4
_021D1460: .word 0x7FFF0000
_021D1464: .word 0xFFFF0000
	thumb_func_end ov78_021D13B8

	thumb_func_start ov78_021D1468
ov78_021D1468: ; 0x021D1468
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r5, r0, #0
	lsl r0, r6, #0x10
	add r4, r1, #0
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02075DAC
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	add r0, sp, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02075FB4
	ldr r0, _021D14B8 ; =0x000003FF
	add r1, sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_02007C34
	str r0, [r5, #0]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D14B8: .word 0x000003FF
	thumb_func_end ov78_021D1468

	thumb_func_start ov78_021D14BC
ov78_021D14BC: ; 0x021D14BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x81
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_021D14C8:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D14D2
	bl sub_02007DC8
_021D14D2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D14C8
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r7, r0]
	bl sub_02007B6C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov78_021D14BC

	thumb_func_start ov78_021D14E8
ov78_021D14E8: ; 0x021D14E8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _021D1510 ; =0x021D295C
	add r3, sp, #0
	add r4, r0, #0
	add r6, r1, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	str r6, [sp, #0xc]
	bl sub_02015064
	ldr r1, _021D1514 ; =0x0000064C
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D1510: .word 0x021D295C
_021D1514: .word 0x0000064C
	thumb_func_end ov78_021D14E8

	thumb_func_start ov78_021D1518
ov78_021D1518: ; 0x021D1518
	ldr r1, _021D1520 ; =0x0000064C
	ldr r3, _021D1524 ; =sub_020150A8
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D1520: .word 0x0000064C
_021D1524: .word sub_020150A8
	thumb_func_end ov78_021D1518

	thumb_func_start ov78_021D1528
ov78_021D1528: ; 0x021D1528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #2
	add r1, #0xbc
	add r2, r4, #0
	bl sub_020095C4
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #0
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #1
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	add r1, r0, #0
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #3
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov78_021D1528

	thumb_func_start ov78_021D1594
ov78_021D1594: ; 0x021D1594
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009754
	pop {r4, pc}
	thumb_func_end ov78_021D1594

	thumb_func_start ov78_021D15CC
ov78_021D15CC: ; 0x021D15CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r1, #0
	mov r2, #0x98
	bl memset
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov78_021D1630
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov78_021D1694
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov78_021D17B4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D15CC

	thumb_func_start ov78_021D1604
ov78_021D1604: ; 0x021D1604
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x98
	bl memset
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov78_021D1630
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov78_021D17B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov78_021D1604

	thumb_func_start ov78_021D1630
ov78_021D1630: ; 0x021D1630
	push {r3, r4, lr}
	sub sp, #4
	add r3, r2, #0
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x52
	bl sub_02006FE8
	str r0, [r4, #0x54]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #0x58]
	cmp r0, #0
	beq _021D166E
	add r2, r0, #0
	add r2, #8
	beq _021D1662
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021D1662
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021D1664
_021D1662:
	mov r1, #0
_021D1664:
	cmp r1, #0
	beq _021D166E
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _021D1670
_021D166E:
	mov r0, #0
_021D1670:
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x54]
	bl NNS_G3dGetTex
	str r0, [r4, #0x60]
	bl sub_0201CBCC
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x60]
	bl sub_0201CBB0
	ldr r1, [r4, #0x5c]
	add r0, r4, #0
	bl NNS_G3dRenderObjInit
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov78_021D1630

	thumb_func_start ov78_021D1694
ov78_021D1694: ; 0x021D1694
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	mov r2, #0
	add r4, r0, #0
	add r5, r3, #0
	str r2, [sp]
	mov r0, #0x52
	add r3, r6, #0
	bl sub_02006FE8
	str r0, [r4, #0x64]
	mov r1, #0
	bl NNS_G3dGetAnmByIdx
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x5c]
	add r0, r5, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r4, #0x6c]
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x60]
	bl NNS_G3dAnmObjInit
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl NNS_G3dRenderObjAddAnmObj
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov78_021D1694

	thumb_func_start ov78_021D16D8
ov78_021D16D8: ; 0x021D16D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	cmp r0, #0
	beq _021D16E8
	bl sub_020181C4
_021D16E8:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _021D16FC
	ldr r1, [r5, #0x6c]
	add r0, r4, #0
	bl NNS_G3dFreeAnmObj
	ldr r0, [r5, #0x64]
	bl sub_020181C4
_021D16FC:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x98
	bl memset
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D16D8

	thumb_func_start ov78_021D1708
ov78_021D1708: ; 0x021D1708
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r0, sp, #0x24
	bl MTX_Identity33_
	add r0, r4, #0
	add r0, #0x90
	ldrh r0, [r0]
	ldr r3, _021D17A0 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotX33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	add r0, r4, #0
	add r0, #0x92
	ldrh r0, [r0]
	ldr r3, _021D17A0 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotY33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	ldr r3, _021D17A0 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021D179C
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x84
	add r1, #0x78
	add r2, sp, #0x24
	add r3, r4, #0
	bl sub_0201CA74
_021D179C:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_021D17A0: .word 0x020F983C
	thumb_func_end ov78_021D1708

	thumb_func_start ov78_021D17A4
ov78_021D17A4: ; 0x021D17A4
	str r1, [r0, #0x74]
	bx lr
	thumb_func_end ov78_021D17A4

	thumb_func_start ov78_021D17A8
ov78_021D17A8: ; 0x021D17A8
	str r1, [r0, #0x78]
	str r2, [r0, #0x7c]
	add r0, #0x80
	str r3, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov78_021D17A8

	thumb_func_start ov78_021D17B4
ov78_021D17B4: ; 0x021D17B4
	push {r3, r4}
	add r4, r0, #0
	add r4, #0x84
	str r1, [r4, #0]
	add r1, r0, #0
	add r1, #0x88
	str r2, [r1, #0]
	add r0, #0x8c
	str r3, [r0, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov78_021D17B4

	thumb_func_start ov78_021D17CC
ov78_021D17CC: ; 0x021D17CC
	push {r3, r4}
	add r4, r0, #0
	add r4, #0x90
	strh r1, [r4]
	add r1, r0, #0
	add r1, #0x92
	strh r2, [r1]
	add r0, #0x94
	strh r3, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov78_021D17CC

	thumb_func_start ov78_021D17E4
ov78_021D17E4: ; 0x021D17E4
	ldr r1, [r0, #0x6c]
	ldr r2, [r0, #0x70]
	ldr r1, [r1, #8]
	ldrh r1, [r1, #4]
	lsl r3, r1, #0xc
	mov r1, #1
	lsl r1, r1, #0xc
	add r1, r2, r1
	cmp r1, r3
	bge _021D17FE
	str r1, [r0, #0x70]
	mov r2, #0
	b _021D1802
_021D17FE:
	str r3, [r0, #0x70]
	mov r2, #1
_021D1802:
	ldr r1, [r0, #0x70]
	ldr r0, [r0, #0x6c]
	str r1, [r0, #0]
	add r0, r2, #0
	bx lr
	thumb_func_end ov78_021D17E4

	thumb_func_start ov78_021D180C
ov78_021D180C: ; 0x021D180C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	ldr r1, [r4, #0x70]
	lsl r0, r0, #0xc
	add r0, r1, r0
	ldr r1, [r4, #0x6c]
	ldr r1, [r1, #8]
	ldrh r1, [r1, #4]
	lsl r1, r1, #0xc
	bl _s32_div_f
	str r1, [r4, #0x70]
	ldr r0, [r4, #0x6c]
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end ov78_021D180C

	thumb_func_start ov78_021D182C
ov78_021D182C: ; 0x021D182C
	str r1, [r0, #0x70]
	ldr r0, [r0, #0x6c]
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov78_021D182C

	thumb_func_start ov78_021D1834
ov78_021D1834: ; 0x021D1834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x25
	add r7, r1, #0
	lsl r0, r0, #4
	add r1, r6, r0
	add r0, #0x10
	str r1, [sp]
	add r0, r6, r0
	mov r1, #1
	mov r2, #0
	add r3, r7, #0
	bl ov78_021D15CC
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r6, r0
	mov r1, #1
	bl ov78_021D17A4
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #8
	add r2, r7, #0
	bl ov78_021D1604
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0
	bl ov78_021D17A4
	mov r0, #0x26
	lsl r0, r0, #4
	add r1, r6, r0
	lsr r0, r0, #1
	add r5, r1, r0
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r6, r0
	mov r4, #2
	str r0, [sp, #4]
_021D188C:
	sub r0, r4, #2
	lsl r2, r0, #1
	ldr r0, [sp, #4]
	add r1, r2, #3
	str r0, [sp]
	add r0, r5, #0
	add r2, r2, #2
	add r3, r7, #0
	bl ov78_021D15CC
	add r0, r5, #0
	mov r1, #0
	bl ov78_021D17A4
	add r4, r4, #1
	add r5, #0x98
	cmp r4, #4
	ble _021D188C
	ldr r0, _021D18FC ; =0x00000558
	mov r1, #9
	add r0, r6, r0
	add r2, r7, #0
	bl ov78_021D1604
	ldr r0, _021D18FC ; =0x00000558
	mov r1, #1
	add r0, r6, r0
	bl ov78_021D17A4
	ldr r0, _021D18FC ; =0x00000558
	mov r3, #0xa
	ldr r2, _021D1900 ; =0xFFFE4000
	add r0, r6, r0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov78_021D17A8
	ldr r0, _021D18FC ; =0x00000558
	mov r1, #0xe
	lsl r1, r1, #0xa
	mov r2, #1
	add r0, r6, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl ov78_021D17B4
	ldr r0, _021D18FC ; =0x00000558
	mov r1, #0
	ldr r2, _021D1904 ; =0x00007FFF
	add r0, r6, r0
	add r3, r1, #0
	bl ov78_021D17CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D18FC: .word 0x00000558
_021D1900: .word 0xFFFE4000
_021D1904: .word 0x00007FFF
	thumb_func_end ov78_021D1834

	thumb_func_start ov78_021D1908
ov78_021D1908: ; 0x021D1908
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	add r7, r0, #0
	mov r4, #0
	add r5, r6, r0
	sub r7, #0x10
_021D1918:
	add r0, r5, #0
	add r1, r6, r7
	bl ov78_021D16D8
	add r4, r4, #1
	add r5, #0x98
	cmp r4, #6
	blt _021D1918
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov78_021D1908

	thumb_func_start ov78_021D192C
ov78_021D192C: ; 0x021D192C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldr r2, _021D1970 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1974 ; =0x00007FFF
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D1974 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D1974 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	mov r0, #0x26
	lsl r0, r0, #4
	mov r4, #0
	add r5, r5, r0
_021D1960:
	add r0, r5, #0
	bl ov78_021D1708
	add r4, r4, #1
	add r5, #0x98
	cmp r4, #6
	blt _021D1960
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1970: .word 0xFFFFF000
_021D1974: .word 0x00007FFF
	thumb_func_end ov78_021D192C

	thumb_func_start ov78_021D1978
ov78_021D1978: ; 0x021D1978
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #1
	bne _021D1986
	mov r0, #0
	pop {r4, pc}
_021D1986:
	bl ov78_021D1CA4
	cmp r0, #5
	bhi _021D19C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D199A: ; jump table
	.short _021D19C8 - _021D199A - 2 ; case 0
	.short _021D19C8 - _021D199A - 2 ; case 1
	.short _021D19C8 - _021D199A - 2 ; case 2
	.short _021D19A6 - _021D199A - 2 ; case 3
	.short _021D19C8 - _021D199A - 2 ; case 4
	.short _021D19C4 - _021D199A - 2 ; case 5
_021D19A6:
	add r0, r4, #0
	bl ov78_021D1C58
	ldr r0, _021D19CC ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _021D19C8
	add r0, r4, #0
	bl ov78_021D1C98
	ldr r0, _021D19D0 ; =0x000005DC
	bl sub_02005748
	b _021D19C8
_021D19C4:
	mov r0, #1
	pop {r4, pc}
_021D19C8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D19CC: .word 0x021BF67C
_021D19D0: .word 0x000005DC
	thumb_func_end ov78_021D1978

	thumb_func_start ov78_021D19D4
ov78_021D19D4: ; 0x021D19D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov78_021D1CA4
	cmp r0, #5
	bhi _021D1A9E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D19EE: ; jump table
	.short _021D19FA - _021D19EE - 2 ; case 0
	.short _021D1A1A - _021D19EE - 2 ; case 1
	.short _021D1A32 - _021D19EE - 2 ; case 2
	.short _021D1A84 - _021D19EE - 2 ; case 3
	.short _021D1A8E - _021D19EE - 2 ; case 4
	.short _021D1A98 - _021D19EE - 2 ; case 5
_021D19FA:
	mov r1, #1
	str r1, [r4, #8]
	mov r0, #0x24
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov78_021D1C98
	mov r0, #6
	str r0, [sp]
	ldr r0, _021D1AA0 ; =0x04000050
	mov r1, #8
	mov r2, #0x15
	mov r3, #0xa
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, pc}
_021D1A1A:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bpl _021D1A9E
	add r0, r4, #0
	mov r1, #1
	bl ov78_021D1C98
	ldr r0, _021D1AA4 ; =0x000006CA
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D1A32:
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov78_021D17E4
	cmp r0, #0
	beq _021D1A9E
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl ov78_021D17A4
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov78_021D17A4
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl ov78_021D17A4
	ldr r0, _021D1AA8 ; =0x00000428
	mov r1, #1
	add r0, r4, r0
	bl ov78_021D17A4
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #1
	bl ov78_021D17A4
	add r0, r4, #0
	mov r1, #1
	bl ov78_021D1C98
	pop {r3, r4, r5, pc}
_021D1A84:
	add r0, r4, #0
	add r1, r5, #0
	bl ov78_021D1CA8
	pop {r3, r4, r5, pc}
_021D1A8E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov78_021D1E44
	pop {r3, r4, r5, pc}
_021D1A98:
	ldr r0, _021D1AA0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
_021D1A9E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1AA0: .word 0x04000050
_021D1AA4: .word 0x000006CA
_021D1AA8: .word 0x00000428
	thumb_func_end ov78_021D19D4

	thumb_func_start ov78_021D1AAC
ov78_021D1AAC: ; 0x021D1AAC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_020241B4
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	bl NNS_G2dSetupSoftwareSpriteCamera
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02007768
	ldr r0, _021D1B1C ; =0x0000064C
	ldr r0, [r4, r0]
	bl sub_020150EC
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #4
	str r2, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	bl sub_020203EC
	add r0, r4, #0
	bl ov78_021D192C
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D1B1C: .word 0x0000064C
	thumb_func_end ov78_021D1AAC

	thumb_func_start ov78_021D1B20
ov78_021D1B20: ; 0x021D1B20
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020203AC
	mov r1, #0x5f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r1, r4, r1
	bl ov78_021D1B3C
	pop {r4, pc}
	thumb_func_end ov78_021D1B20

	thumb_func_start ov78_021D1B3C
ov78_021D1B3C: ; 0x021D1B3C
	push {r4, lr}
	sub sp, #0x20
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	add r4, r0, #0
	ldr r2, _021D1B88 ; =0x0000EAAB
	str r3, [r1, #8]
	add r0, sp, #0xc
	strh r2, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	mov r1, #0x4b
	ldr r3, _021D1B8C ; =0x00000FA4
	lsl r1, r1, #0xe
	add r2, sp, #0xc
	str r4, [sp, #8]
	bl sub_020206D0
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	add r0, sp, #0x14
	add r1, r4, #0
	bl sub_02020680
	add r0, r4, #0
	bl sub_020203D4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_021D1B88: .word 0x0000EAAB
_021D1B8C: .word 0x00000FA4
	thumb_func_end ov78_021D1B3C

	thumb_func_start ov78_021D1B90
ov78_021D1B90: ; 0x021D1B90
	mov r1, #0x5f
	lsl r1, r1, #4
	ldr r3, _021D1B9C ; =sub_020203B8
	ldr r0, [r0, r1]
	bx r3
	nop
_021D1B9C: .word sub_020203B8
	thumb_func_end ov78_021D1B90

	thumb_func_start ov78_021D1BA0
ov78_021D1BA0: ; 0x021D1BA0
	push {r4, r5, r6, r7}
	mov r5, #0
	add r4, r5, #0
	add r6, r0, #0
	sub r3, r5, #4
	add r1, r5, #0
	sub r4, #0x2c
	mov r2, #0x20
_021D1BB0:
	cmp r5, #0
	beq _021D1BBE
	cmp r5, #1
	beq _021D1BC6
	cmp r5, #2
	beq _021D1BD0
	b _021D1BDA
_021D1BBE:
	str r4, [r6, #0x58]
	str r3, [r6, #0x5c]
	str r2, [r6, #0x60]
	b _021D1BDA
_021D1BC6:
	str r1, [r6, #0x58]
	str r3, [r6, #0x5c]
	mov r7, #0x3e
	str r7, [r6, #0x60]
	b _021D1BDA
_021D1BD0:
	mov r7, #0x26
	str r7, [r6, #0x58]
	str r3, [r6, #0x5c]
	mov r7, #0x1a
	str r7, [r6, #0x60]
_021D1BDA:
	add r5, r5, #1
	add r6, #0xc
	cmp r5, #3
	blt _021D1BB0
	mov r5, #0
	mov r2, #0x82
	mov r1, #0x52
	mov r4, #0x4e
	mov r3, #0x37
_021D1BEC:
	cmp r5, #0
	beq _021D1BFA
	cmp r5, #1
	beq _021D1C04
	cmp r5, #2
	beq _021D1C0E
	b _021D1C1A
_021D1BFA:
	add r6, r0, #0
	str r4, [r0, #0x7c]
	add r6, #0x80
	str r3, [r6, #0]
	b _021D1C1A
_021D1C04:
	add r6, r0, #0
	str r2, [r0, #0x7c]
	add r6, #0x80
	str r1, [r6, #0]
	b _021D1C1A
_021D1C0E:
	mov r6, #0xac
	add r7, r0, #0
	str r6, [r0, #0x7c]
	add r7, #0x80
	mov r6, #0x32
	str r6, [r7, #0]
_021D1C1A:
	add r5, r5, #1
	add r0, #8
	cmp r5, #3
	blt _021D1BEC
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov78_021D1BA0

	thumb_func_start ov78_021D1C28
ov78_021D1C28: ; 0x021D1C28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	mov r4, #0
	add r6, r5, r0
	mov r7, #0x98
_021D1C36:
	add r0, r4, #2
	add r1, r0, #0
	mul r1, r7
	add r0, r6, r1
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	ldr r3, [r5, #0x60]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl ov78_021D17A8
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #3
	blt _021D1C36
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D1C28

	thumb_func_start ov78_021D1C58
ov78_021D1C58: ; 0x021D1C58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D1C90 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021D1C74
	ldr r0, [r4, #0x54]
	sub r0, r0, #1
	bmi _021D1C74
	str r0, [r4, #0x54]
	ldr r0, _021D1C94 ; =0x000005DC
	bl sub_02005748
_021D1C74:
	ldr r0, _021D1C90 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021D1C8E
	ldr r0, [r4, #0x54]
	add r0, r0, #1
	cmp r0, #3
	bge _021D1C8E
	str r0, [r4, #0x54]
	ldr r0, _021D1C94 ; =0x000005DC
	bl sub_02005748
_021D1C8E:
	pop {r4, pc}
	; .align 2, 0
_021D1C90: .word 0x021BF67C
_021D1C94: .word 0x000005DC
	thumb_func_end ov78_021D1C58

	thumb_func_start ov78_021D1C98
ov78_021D1C98: ; 0x021D1C98
	ldr r2, [r0, #0]
	add r1, r2, r1
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov78_021D1C98

	thumb_func_start ov78_021D1CA4
ov78_021D1CA4: ; 0x021D1CA4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov78_021D1CA4

	thumb_func_start ov78_021D1CA8
ov78_021D1CA8: ; 0x021D1CA8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r2, [r4, #4]
	cmp r2, #8
	bls _021D1CB6
	b _021D1DE4
_021D1CB6:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D1CC2: ; jump table
	.short _021D1CD4 - _021D1CC2 - 2 ; case 0
	.short _021D1CF6 - _021D1CC2 - 2 ; case 1
	.short _021D1D0E - _021D1CC2 - 2 ; case 2
	.short _021D1D24 - _021D1CC2 - 2 ; case 3
	.short _021D1D54 - _021D1CC2 - 2 ; case 4
	.short _021D1D72 - _021D1CC2 - 2 ; case 5
	.short _021D1DA2 - _021D1CC2 - 2 ; case 6
	.short _021D1DC0 - _021D1CC2 - 2 ; case 7
	.short _021D1DDA - _021D1CC2 - 2 ; case 8
_021D1CD4:
	mov r2, #0x5f
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	add r2, r2, #4
	add r0, #0x10
	add r2, r4, r2
	bl ov78_021D213C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1CF6:
	add r0, #0x10
	bl ov78_021D2200
	cmp r0, #0
	beq _021D1DE4
	mov r0, #6
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D0E:
	ldr r1, [r4, #0xc]
	sub r1, r1, #1
	str r1, [r4, #0xc]
	bpl _021D1DE4
	bl ov78_021D1E28
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D24:
	ldr r0, _021D1DE8 ; =0x0001020F
	mov r2, #0x5a
	str r0, [sp]
	ldr r0, _021D1DEC ; =0x000006AC
	lsl r2, r2, #2
	ldr r0, [r4, r0]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xac
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov78_021D201C
	mov r1, #0x6b
	lsl r1, r1, #4
	strb r0, [r4, r1]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D54:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _021D1DE4
	add r0, r4, #0
	bl ov78_021D2090
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D72:
	ldr r0, _021D1DE8 ; =0x0001020F
	mov r2, #0x5a
	str r0, [sp]
	ldr r0, _021D1DEC ; =0x000006AC
	lsl r2, r2, #2
	ldr r0, [r4, r0]
	mov r3, #7
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xac
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov78_021D201C
	mov r1, #0x6b
	lsl r1, r1, #4
	strb r0, [r4, r1]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1DA2:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _021D1DE4
	add r0, r4, #0
	bl ov78_021D2090
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1DC0:
	mov r0, #6
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #1
	bl ov78_021D2430
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1DDA:
	bl ov78_021D1DF0
	add r0, r4, #0
	bl ov78_021D1E28
_021D1DE4:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D1DE8: .word 0x0001020F
_021D1DEC: .word 0x000006AC
	thumb_func_end ov78_021D1CA8

	thumb_func_start ov78_021D1DF0
ov78_021D1DF0: ; 0x021D1DF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	mov r5, #0
	add r4, r6, r0
	mov r7, #0x98
_021D1DFE:
	ldr r0, [r6, #0x54]
	cmp r0, r5
	bne _021D1E12
	add r0, r5, #2
	add r1, r0, #0
	mul r1, r7
	add r0, r4, r1
	bl ov78_021D180C
	b _021D1E20
_021D1E12:
	add r1, r5, #2
	mov r0, #0x98
	mul r0, r1
	add r0, r4, r0
	mov r1, #0
	bl ov78_021D182C
_021D1E20:
	add r5, r5, #1
	cmp r5, #3
	blt _021D1DFE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D1DF0

	thumb_func_start ov78_021D1E28
ov78_021D1E28: ; 0x021D1E28
	add r2, r0, #0
	ldr r0, [r2, #0x54]
	ldr r3, _021D1E40 ; =ov78_021D243C
	lsl r1, r0, #3
	mov r0, #6
	lsl r0, r0, #8
	add r0, r2, r0
	add r2, r2, r1
	ldr r1, [r2, #0x7c]
	add r2, #0x80
	ldr r2, [r2, #0]
	bx r3
	; .align 2, 0
_021D1E40: .word ov78_021D243C
	thumb_func_end ov78_021D1E28

	thumb_func_start ov78_021D1E44
ov78_021D1E44: ; 0x021D1E44
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r2, [r4, #4]
	add r5, r1, #0
	cmp r2, #4
	bls _021D1E54
	b _021D1FA6
_021D1E54:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D1E60: ; jump table
	.short _021D1E6A - _021D1E60 - 2 ; case 0
	.short _021D1E96 - _021D1E60 - 2 ; case 1
	.short _021D1EDA - _021D1E60 - 2 ; case 2
	.short _021D1F1A - _021D1E60 - 2 ; case 3
	.short _021D1F52 - _021D1E60 - 2 ; case 4
_021D1E6A:
	mov r0, #6
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #0
	bl ov78_021D2430
	add r0, r4, #0
	bl ov78_021D1E28
	add r0, r4, #0
	bl ov78_021D2904
	add r0, r4, #0
	bl ov78_021D2618
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_021D1E96:
	mov r0, #0x65
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl ov78_021D2508
	ldr r0, [r4, #0x54]
	mov r2, #0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl sub_02007DEC
	add r0, r4, #0
	bl ov78_021D26A4
	cmp r0, #0
	beq _021D1FA6
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov78_021D291C
	mov r1, #0
	bl sub_02005844
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D1EDA:
	ldr r0, _021D1FAC ; =0x0001020F
	mov r2, #0xff
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r4, #0
	add r0, #0x98
	ldr r3, [r4, #0x54]
	ldr r0, [r0, #0]
	add r2, #0x69
	add r3, r3, #1
	bl ov78_021D1FB4
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x94
	ldr r0, [r0, #0]
	ldr r2, _021D1FB0 ; =0x0000029E
	add r1, #0xb0
	mov r3, #1
	bl sub_02002100
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D1F1A:
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02002114
	cmp r0, #0
	beq _021D1F36
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021D1F42
	add r1, r1, #1
	add sp, #8
	cmp r0, r1
	pop {r3, r4, r5, pc}
_021D1F36:
	add r0, r4, #0
	mov r1, #1
	bl ov78_021D1C98
	add sp, #8
	pop {r3, r4, r5, pc}
_021D1F42:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov78_021D2688
	add sp, #8
	pop {r3, r4, r5, pc}
_021D1F52:
	bl ov78_021D26A4
	cmp r0, #0
	beq _021D1FA6
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov78_021D1C98
	mov r0, #7
	str r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl ov78_021D2508
	ldr r0, [r4, #0x54]
	mov r2, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl sub_02007DEC
	ldr r0, _021D1FAC ; =0x0001020F
	mov r2, #0xff
	str r0, [sp]
	add r0, r4, #0
	str r2, [sp, #4]
	add r0, #0x98
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, #0x69
	mov r3, #7
	bl ov78_021D1FB4
	mov r1, #0x6b
	lsl r1, r1, #4
	strb r0, [r4, r1]
_021D1FA6:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D1FAC: .word 0x0001020F
_021D1FB0: .word 0x0000029E
	thumb_func_end ov78_021D1E44

	thumb_func_start ov78_021D1FB4
ov78_021D1FB4: ; 0x021D1FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r3, #0
	mov r0, #0
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	add r4, r0, #0
	bne _021D1FD0
	bl GF_AssertFail
_021D1FD0:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, [sp, #0x2c]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	mov r1, #0
	mov r2, #2
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r2, #8
	add r3, r1, #0
	bl sub_0200E060
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D1FB4

	thumb_func_start ov78_021D201C
ov78_021D201C: ; 0x021D201C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x30]
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _021D2034
	bl GF_AssertFail
_021D2034:
	mov r0, #0
	mov r1, #0x1a
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200B144
	add r6, r0, #0
	bne _021D2048
	bl GF_AssertFail
_021D2048:
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_0200B1EC
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, [sp, #0x2c]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_0201D78C
	mov r1, #0
	mov r2, #2
	add r4, r0, #0
	add r0, r5, #0
	lsl r2, r2, #8
	add r3, r1, #0
	bl sub_0200E060
	add r0, r6, #0
	bl sub_0200B190
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov78_021D201C

	thumb_func_start ov78_021D2090
ov78_021D2090: ; 0x021D2090
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_020237BC
	mov r0, #0
	add r4, #0xac
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov78_021D2090

	thumb_func_start ov78_021D20A4
ov78_021D20A4: ; 0x021D20A4
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	add r4, r1, #0
	mov r1, #1
	add r2, #0xb0
	strb r1, [r2]
	add r2, r0, #0
	mov r3, #0x17
	add r2, #0xb1
	strb r3, [r2]
	add r2, r0, #0
	mov r3, #0xc
	add r2, #0xb2
	strb r3, [r2]
	add r2, r0, #0
	mov r3, #5
	add r2, #0xb3
	strb r3, [r2]
	add r2, r0, #0
	mov r3, #4
	add r2, #0xb4
	strb r3, [r2]
	add r2, r0, #0
	mov r3, #3
	add r2, #0xb5
	strb r3, [r2]
	add r2, r0, #0
	mov r3, #0xa7
	add r2, #0xb6
	strh r3, [r2]
	mov r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	add r0, #0x94
	ldr r0, [r0, #0]
	ldr r2, _021D2104 ; =0x0000029E
	add r3, r1, #0
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x60
	add r2, r4, #0
	bl sub_02002E7C
	add sp, #8
	pop {r4, pc}
	nop
_021D2104: .word 0x0000029E
	thumb_func_end ov78_021D20A4

	thumb_func_start ov78_021D2108
ov78_021D2108: ; 0x021D2108
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov78_021D2108

	thumb_func_start ov78_021D2114
ov78_021D2114: ; 0x021D2114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r3, [r5, #0xc]
	cmp r1, r3
	blt _021D2122
	mov r4, #1
	b _021D2124
_021D2122:
	mov r4, #0
_021D2124:
	ldr r2, [r5, #8]
	add r0, r2, #0
	mul r0, r1
	add r1, r3, #0
	bl _s32_div_f
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov78_021D2114

	thumb_func_start ov78_021D213C
ov78_021D213C: ; 0x021D213C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021D214E
	bl GF_AssertFail
_021D214E:
	ldr r1, _021D2190 ; =0xFFFFEAAB
	ldr r2, _021D2194 ; =0xFFFFDC72
	add r0, r5, #0
	mov r3, #6
	bl ov78_021D2108
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0x32
	add r0, #0x10
	lsl r1, r1, #0xe
	lsl r2, r2, #0xe
	mov r3, #6
	bl ov78_021D2108
	add r0, r5, #0
	mov r2, #9
	add r0, #0x20
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #6
	bl ov78_021D2108
	mov r2, #0
	str r2, [r5, #0x3c]
	str r4, [r5, #0x30]
	str r6, [r5, #0x34]
	ldr r0, _021D2198 ; =ov78_021D219C
	add r1, r5, #0
	str r2, [r5, #0x38]
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2190: .word 0xFFFFEAAB
_021D2194: .word 0xFFFFDC72
_021D2198: .word ov78_021D219C
	thumb_func_end ov78_021D213C

	thumb_func_start ov78_021D219C
ov78_021D219C: ; 0x021D219C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r5, #0x38]
	add r6, r0, #0
	add r0, r5, #0
	bl ov78_021D2114
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x38]
	add r0, #0x10
	bl ov78_021D2114
	add r0, r5, #0
	ldr r1, [r5, #0x38]
	add r0, #0x20
	bl ov78_021D2114
	ldr r1, [r5, #0]
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r1, [r5, #0x30]
	add r0, sp, #0
	bl sub_020209D4
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x30]
	bl sub_02020A50
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x34]
	str r1, [r0, #8]
	ldr r0, [r5, #0x38]
	add r0, r0, #1
	str r0, [r5, #0x38]
	cmp r4, #1
	bne _021D21FC
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r5, #0x40]
	mov r0, #1
	str r0, [r5, #0x3c]
_021D21FC:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D219C

	thumb_func_start ov78_021D2200
ov78_021D2200: ; 0x021D2200
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end ov78_021D2200

	thumb_func_start ov78_021D2204
ov78_021D2204: ; 0x021D2204
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	mov r2, #0xa
	add r5, r0, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x7a
	add r4, r1, #0
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x52
	mov r3, #0
	bl sub_0200985C
	str r0, [r4, #4]
	bl sub_0200A3DC
	ldr r0, [r4, #4]
	bl sub_02009D4C
	mov r2, #0xb
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7b
	str r6, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x52
	mov r3, #0
	bl sub_020098B8
	str r0, [r4, #8]
	bl sub_0200A640
	ldr r0, [r4, #8]
	bl sub_02009D4C
	mov r2, #0xc
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x1f
	str r6, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x52
	mov r3, #0
	bl sub_02009918
	str r0, [r4, #0xc]
	mov r2, #0xd
	str r2, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x7d
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x52
	mov r3, #0
	bl sub_02009918
	str r0, [r4, #0x10]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D2204

	thumb_func_start ov78_021D2290
ov78_021D2290: ; 0x021D2290
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200A4E4
	ldr r0, [r4, #8]
	bl sub_0200A6DC
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #4]
	bl sub_02009D68
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl sub_02009D68
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl sub_02009D68
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D2290

	thumb_func_start ov78_021D22D4
ov78_021D22D4: ; 0x021D22D4
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #0xd
	str r0, [sp]
	sub r0, #0xe
	str r0, [sp, #4]
	add r6, r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0x7a
	add r4, r1, #0
	str r0, [sp, #0xc]
	mov r1, #1
	lsl r2, r2, #2
	str r1, [sp, #0x10]
	ldr r1, [r5, r2]
	mov r3, #0xc
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	mov r2, #0xb
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	mov r1, #0xa
	bl sub_020093B4
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x20
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	mov r1, #0
	str r0, [r4, #0]
	bl sub_02021CAC
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D22D4

	thumb_func_start ov78_021D2350
ov78_021D2350: ; 0x021D2350
	ldr r3, _021D2358 ; =sub_02021BD4
	ldr r0, [r0, #0]
	bx r3
	nop
_021D2358: .word sub_02021BD4
	thumb_func_end ov78_021D2350

	thumb_func_start ov78_021D235C
ov78_021D235C: ; 0x021D235C
	mov r3, #0
	str r3, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov78_021D235C

	thumb_func_start ov78_021D2368
ov78_021D2368: ; 0x021D2368
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D23B0 ; =0x0000FFFF
	mul r0, r1
	ldr r1, [r4, #8]
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021D23B4 ; =0x020F983C
	ldr r2, [r4, #4]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
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
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r4, #0xc]
	pop {r4, pc}
	nop
_021D23B0: .word 0x0000FFFF
_021D23B4: .word 0x020F983C
	thumb_func_end ov78_021D2368

	thumb_func_start ov78_021D23B8
ov78_021D23B8: ; 0x021D23B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D23C6
	bl GF_AssertFail
_021D23C6:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x2c
	lsl r1, r1, #0xe
	mov r2, #0x20
	bl ov78_021D235C
	ldr r0, _021D23E4 ; =ov78_021D23E8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021D23E4: .word ov78_021D23E8
	thumb_func_end ov78_021D23B8

	thumb_func_start ov78_021D23E8
ov78_021D23E8: ; 0x021D23E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x2c
	bl ov78_021D2368
	add r5, r4, #0
	add r5, #0x1c
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov78_021D23E8

	thumb_func_start ov78_021D241C
ov78_021D241C: ; 0x021D241C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D242E
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x28]
_021D242E:
	pop {r4, pc}
	thumb_func_end ov78_021D241C

	thumb_func_start ov78_021D2430
ov78_021D2430: ; 0x021D2430
	ldr r3, _021D2438 ; =sub_02021CAC
	ldr r0, [r0, #0]
	bx r3
	nop
_021D2438: .word sub_02021CAC
	thumb_func_end ov78_021D2430

	thumb_func_start ov78_021D243C
ov78_021D243C: ; 0x021D243C
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	lsl r1, r2, #0xc
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov78_021D243C

	thumb_func_start ov78_021D2448
ov78_021D2448: ; 0x021D2448
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r3, r5, #0
	add r6, r2, #0
	add r4, r1, #0
	mov r0, #0x52
	mov r1, #0xe
	mov r2, #0
	add r3, #0x14
	str r6, [sp]
	bl sub_02006F50
	add r2, r5, #0
	str r0, [r5, #0xc]
	mov r0, #0x52
	mov r1, #0xf
	add r2, #0x18
	add r3, r6, #0
	bl sub_02006F88
	str r0, [r5, #0x10]
	ldr r0, _021D24DC ; =0x0000064C
	ldr r0, [r4, r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	add r0, sp, #4
	bl sub_02015128
	str r0, [r5, #0]
	ldr r0, _021D24DC ; =0x0000064C
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	bl sub_020151A4
	str r0, [r5, #4]
	ldr r0, _021D24DC ; =0x0000064C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	str r0, [sp, #0x14]
	add r0, sp, #4
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	strh r2, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r1, _021D24E0 ; =0x000003FE
	str r1, [sp, #0x24]
	strh r2, [r0, #0x24]
	add r0, sp, #0xc
	bl sub_02015214
	str r0, [r5, #8]
	mov r1, #0
	bl sub_02015240
	mov r1, #0x40
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_02015268
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_021D24DC: .word 0x0000064C
_021D24E0: .word 0x000003FE
	thumb_func_end ov78_021D2448

	thumb_func_start ov78_021D24E4
ov78_021D24E4: ; 0x021D24E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02015238
	ldr r0, [r4, #0]
	bl sub_02015164
	ldr r0, [r4, #4]
	bl sub_020151D4
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov78_021D24E4

	thumb_func_start ov78_021D2508
ov78_021D2508: ; 0x021D2508
	ldr r3, _021D2510 ; =sub_02015240
	ldr r0, [r0, #8]
	bx r3
	nop
_021D2510: .word sub_02015240
	thumb_func_end ov78_021D2508

	thumb_func_start ov78_021D2514
ov78_021D2514: ; 0x021D2514
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _021D2528
	bl GF_AssertFail
_021D2528:
	ldr r4, [sp, #0x24]
	add r0, r5, #0
	add r0, #0x1c
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov78_021D2108
	add r0, r5, #0
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	add r0, #0x2c
	add r3, r4, #0
	bl ov78_021D2108
	add r0, r5, #0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, #0x3c
	add r3, r4, #0
	bl ov78_021D2108
	mov r2, #0
	str r2, [r5, #0x4c]
	mov r0, #1
	str r0, [r5, #0x50]
	ldr r0, _021D2568 ; =ov78_021D25A0
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2568: .word ov78_021D25A0
	thumb_func_end ov78_021D2514

	thumb_func_start ov78_021D256C
ov78_021D256C: ; 0x021D256C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _021D257A
	bl GF_AssertFail
_021D257A:
	mov r0, #1
	mvn r0, r0
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x4c]
	cmp r0, r1
	blt _021D258E
	ldr r0, [r4, #0x50]
	add r0, r1, r0
	str r0, [r4, #0x4c]
_021D258E:
	ldr r0, _021D259C ; =ov78_021D25A0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x54]
	pop {r4, pc}
	; .align 2, 0
_021D259C: .word ov78_021D25A0
	thumb_func_end ov78_021D256C

	thumb_func_start ov78_021D25A0
ov78_021D25A0: ; 0x021D25A0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x4c]
	add r0, #0x1c
	bl ov78_021D2114
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x4c]
	add r0, #0x2c
	bl ov78_021D2114
	add r0, r5, #0
	ldr r1, [r5, #0x4c]
	add r0, #0x3c
	bl ov78_021D2114
	mov r2, #1
	ldr r1, [r5, #0x1c]
	lsl r2, r2, #0x12
	sub r1, r1, r2
	ldr r3, [r5, #0x2c]
	lsl r1, r1, #4
	sub r2, r3, r2
	lsl r2, r2, #4
	ldr r0, [r5, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015254
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_02015270
	cmp r4, #1
	beq _021D25F4
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bge _021D25FE
_021D25F4:
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r5, #0x54]
_021D25FE:
	ldr r1, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x4c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D25A0

	thumb_func_start ov78_021D2608
ov78_021D2608: ; 0x021D2608
	ldr r0, [r0, #0x54]
	cmp r0, #0
	bne _021D2612
	mov r0, #1
	bx lr
_021D2612:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov78_021D2608

	thumb_func_start ov78_021D2618
ov78_021D2618: ; 0x021D2618
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	mov r2, #1
	lsl r0, r0, #3
	add r1, r5, r0
	ldr r0, [r1, #0x7c]
	add r1, #0x80
	lsl r6, r0, #0xc
	ldr r0, [r1, #0]
	ldr r1, _021D2684 ; =0x00000666
	add r0, #0x30
	lsl r4, r0, #0xc
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	lsl r2, r2, #0xc
	str r2, [sp, #8]
	mov r0, #6
	sub r1, #0x16
	str r0, [sp, #0xc]
	add r0, r5, r1
	add r1, r6, #0
	lsl r2, r2, #7
	add r3, r4, #0
	bl ov78_021D2514
	mov r0, #6
	mov r3, #1
	mov r1, #0x21
	str r4, [sp]
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021D2684 ; =0x00000666
	lsl r3, r3, #0xc
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x54]
	lsl r1, r1, #4
	lsl r2, r2, #2
	add r0, r5, r1
	add r2, r5, r2
	sub r1, #0xc
	ldr r1, [r2, r1]
	add r2, r6, #0
	lsl r3, r3, #7
	bl ov78_021D26B4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D2684: .word 0x00000666
	thumb_func_end ov78_021D2618

	thumb_func_start ov78_021D2688
ov78_021D2688: ; 0x021D2688
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x65
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov78_021D256C
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov78_021D270C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov78_021D2688

	thumb_func_start ov78_021D26A4
ov78_021D26A4: ; 0x021D26A4
	mov r1, #0x65
	lsl r1, r1, #4
	ldr r3, _021D26B0 ; =ov78_021D2608
	add r0, r0, r1
	bx r3
	nop
_021D26B0: .word ov78_021D2608
	thumb_func_end ov78_021D26A4

	thumb_func_start ov78_021D26B4
ov78_021D26B4: ; 0x021D26B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _021D26C8
	bl GF_AssertFail
_021D26C8:
	ldr r4, [sp, #0x28]
	ldr r2, [sp]
	add r0, r5, #4
	add r1, r7, #0
	add r3, r4, #0
	bl ov78_021D2108
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, #0x14
	add r3, r4, #0
	bl ov78_021D2108
	add r0, r5, #0
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r0, #0x24
	add r3, r4, #0
	bl ov78_021D2108
	str r6, [r5, #0]
	mov r2, #0
	str r2, [r5, #0x34]
	mov r0, #1
	str r0, [r5, #0x38]
	ldr r0, _021D2708 ; =ov78_021D2740
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2708: .word ov78_021D2740
	thumb_func_end ov78_021D26B4

	thumb_func_start ov78_021D270C
ov78_021D270C: ; 0x021D270C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021D271A
	bl GF_AssertFail
_021D271A:
	mov r0, #1
	mvn r0, r0
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x34]
	cmp r0, r1
	blt _021D272E
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [r4, #0x34]
_021D272E:
	ldr r0, _021D273C ; =ov78_021D2740
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x3c]
	pop {r4, pc}
	; .align 2, 0
_021D273C: .word ov78_021D2740
	thumb_func_end ov78_021D270C

	thumb_func_start ov78_021D2740
ov78_021D2740: ; 0x021D2740
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x34]
	add r7, r0, #0
	add r0, r5, #4
	bl ov78_021D2114
	add r6, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x34]
	add r0, #0x14
	bl ov78_021D2114
	add r0, r5, #0
	ldr r1, [r5, #0x34]
	add r0, #0x24
	bl ov78_021D2114
	ldr r2, [r5, #0x24]
	asr r0, r2, #0x1f
	lsr r1, r2, #0xc
	lsl r0, r0, #0x14
	lsl r3, r2, #0x14
	mov r2, #2
	orr r0, r1
	mov r1, #0
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r0, r1
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	asr r4, r2, #0xc
	ldr r2, [r5, #4]
	ldr r0, [r5, #0]
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r2, [r5, #0x14]
	ldr r0, [r5, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #0xc
	add r2, r4, #0
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #0xd
	add r2, r4, #0
	bl sub_02007DEC
	cmp r6, #1
	beq _021D27B6
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bge _021D27C0
_021D27B6:
	add r0, r7, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r5, #0x3c]
_021D27C0:
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x38]
	add r0, r1, r0
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov78_021D2740

	thumb_func_start ov78_021D27CC
ov78_021D27CC: ; 0x021D27CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	mov r0, #0x20
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #4]
	mov r0, #0x52
	mov r1, #0x11
	mov r2, #0
	mov r3, #0xa0
	bl sub_02006E84
	ldr r5, [sp, #0x14]
	mov r4, #0
	mov r6, #1
_021D27EE:
	ldr r0, [sp, #0x18]
	mov r1, #1
	bl sub_0201A778
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0201A7A0
	cmp r4, #0
	beq _021D2814
	cmp r4, #1
	beq _021D281C
	cmp r4, #2
	beq _021D2824
	b _021D282A
_021D2814:
	mov r0, #0xc
	str r0, [sp, #0x1c]
	mov r7, #4
	b _021D282A
_021D281C:
	mov r0, #4
	str r0, [sp, #0x1c]
	mov r7, #0xe
	b _021D282A
_021D2824:
	mov r0, #0x14
	str r0, [sp, #0x1c]
	mov r7, #0xd
_021D282A:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	ldr r3, [sp, #0x1c]
	add r0, #0x94
	add r1, #0x9c
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, _021D2880 ; =0x0001020A
	mov r2, #0x5a
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	lsl r2, r2, #2
	add r3, r4, #4
	bl ov78_021D28A8
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0x40
	cmp r4, #3
	blt _021D27EE
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2880: .word 0x0001020A
	thumb_func_end ov78_021D27CC

	thumb_func_start ov78_021D2884
ov78_021D2884: ; 0x021D2884
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D288A:
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D288A
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D2884

	thumb_func_start ov78_021D28A8
ov78_021D28A8: ; 0x021D28A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r3, #0
	mov r0, #0
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	add r4, r0, #0
	bne _021D28C4
	bl GF_AssertFail
_021D28C4:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B1EC
	ldr r1, [sp, #0x20]
	add r6, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r3, #1
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov78_021D28A8

	thumb_func_start ov78_021D2904
ov78_021D2904: ; 0x021D2904
	add r1, r0, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	ldr r3, _021D2918 ; =sub_0201ACF4
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x9c
	ldr r0, [r0, #0]
	bx r3
	nop
_021D2918: .word sub_0201ACF4
	thumb_func_end ov78_021D2904

	thumb_func_start ov78_021D291C
ov78_021D291C: ; 0x021D291C
	push {r3, lr}
	cmp r0, #0
	beq _021D292C
	cmp r0, #1
	beq _021D2930
	cmp r0, #2
	beq _021D2934
	b _021D2938
_021D292C:
	ldr r0, _021D2940 ; =0x00000183
	pop {r3, pc}
_021D2930:
	ldr r0, _021D2944 ; =0x00000186
	pop {r3, pc}
_021D2934:
	ldr r0, _021D2948 ; =0x00000189
	pop {r3, pc}
_021D2938:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D2940: .word 0x00000183
_021D2944: .word 0x00000186
_021D2948: .word 0x00000189
	thumb_func_end ov78_021D291C

	.rodata


	.global Unk_ov78_021D294C
Unk_ov78_021D294C: ; 0x021D294C
	.incbin "incbin/overlay78_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov78_021D295C
Unk_ov78_021D295C: ; 0x021D295C
	.incbin "incbin/overlay78_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov78_021D296C
Unk_ov78_021D296C: ; 0x021D296C
	.incbin "incbin/overlay78_rodata.bin", 0x20, 0x3C - 0x20

	.global Unk_ov78_021D2988
Unk_ov78_021D2988: ; 0x021D2988
	.incbin "incbin/overlay78_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov78_021D29A4
Unk_ov78_021D29A4: ; 0x021D29A4
	.incbin "incbin/overlay78_rodata.bin", 0x58, 0x74 - 0x58

	.global Unk_ov78_021D29C0
Unk_ov78_021D29C0: ; 0x021D29C0
	.incbin "incbin/overlay78_rodata.bin", 0x74, 0x28

