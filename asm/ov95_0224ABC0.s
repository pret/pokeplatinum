	.include "macros/function.inc"
	.include "include/ov95_0224ABC0.inc"

	

	.text


	thumb_func_start ov95_0224ABC0
ov95_0224ABC0: ; 0x0224ABC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	beq _0224ABEE
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
_0224ABEE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224ABC0

	thumb_func_start ov95_0224ABF4
ov95_0224ABF4: ; 0x0224ABF4
	push {r4, lr}
	add r4, r0, #0
	beq _0224AC28
	bl ov95_0224B050
	add r0, r4, #0
	bl ov95_0224B194
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0224AC0E
	bl ov95_0224B308
_0224AC0E:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0224AC18
	bl ov95_0224B258
_0224AC18:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0224AC22
	bl ov95_0224B3BC
_0224AC22:
	add r0, r4, #0
	bl sub_020181C4
_0224AC28:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224ABF4

	thumb_func_start ov95_0224AC2C
ov95_0224AC2C: ; 0x0224AC2C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #3
	bhs _0224AC5A
	lsl r3, r2, #2
	ldr r2, _0224AC60 ; =0x0224C190
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224AC50
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_0224AC50:
	add r0, r5, #0
	bl ov95_0224AC64
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224AC5A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224AC60: .word 0x0224C190
	thumb_func_end ov95_0224AC2C

	thumb_func_start ov95_0224AC64
ov95_0224AC64: ; 0x0224AC64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224AC96
	mov r0, #0x2a
	ldrsh r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	strh r0, [r4, #0x2a]
	add r1, r4, #0
	ldr r0, [r4, #0x24]
	add r1, #0x28
	bl ov95_02247990
	bl G3X_Reset
	ldr r0, [r4, #0x20]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_0224AC96:
	pop {r4, pc}
	thumb_func_end ov95_0224AC64

	thumb_func_start ov95_0224AC98
ov95_0224AC98: ; 0x0224AC98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_0224AE1C
	add r0, r4, #0
	bl ov95_0224B084
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224ACC4 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224ACC4: .word 0x00007FFF
	thumb_func_end ov95_0224AC98

	thumb_func_start ov95_0224ACC8
ov95_0224ACC8: ; 0x0224ACC8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bhi _0224AD92
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224ACE0: ; jump table
	.short _0224ACEE - _0224ACE0 - 2 ; case 0
	.short _0224AD0C - _0224ACE0 - 2 ; case 1
	.short _0224AD26 - _0224ACE0 - 2 ; case 2
	.short _0224AD38 - _0224ACE0 - 2 ; case 3
	.short _0224AD50 - _0224ACE0 - 2 ; case 4
	.short _0224AD74 - _0224ACE0 - 2 ; case 5
	.short _0224AD88 - _0224ACE0 - 2 ; case 6
_0224ACEE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224AD92
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	add r4, #0x30
	add r1, r4, #0
	bl ov95_0224B274
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD0C:
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	cmp r1, #8
	ble _0224AD92
	add r4, #0x34
	add r1, r4, #0
	bl ov95_0224B1A8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD26:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0224AD92
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0224AD92
	add r0, r1, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD38:
	mov r1, #0
	add r0, #0x14
	mvn r1, r1
	bl ov95_02246F30
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD50:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x1e
	ble _0224AD92
	add r0, r4, #0
	add r0, #0x38
	str r0, [sp]
	ldr r0, [r4, #0x24]
	mov r1, #0x1f
	mov r2, #0
	mov r3, #0x28
	bl ov95_0224B324
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD74:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0224AD92
	ldr r0, [r4, #0x10]
	bl ov95_02247004
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD88:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0224AD92
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224AD92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224ACC8

	thumb_func_start ov95_0224AD98
ov95_0224AD98: ; 0x0224AD98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224ADB0
	cmp r0, #1
	beq _0224ADD8
	cmp r0, #2
	beq _0224AE02
	b _0224AE16
_0224ADB0:
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r3, #1
	str r0, [sp]
	add r0, r5, #0
	str r3, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	lsl r1, r3, #0xc
	lsl r2, r3, #0xa
	bl ov95_022472C4
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224AE16
_0224ADD8:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xd
	ble _0224AE16
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224AE16
_0224AE02:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224AE16
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0224AE16
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224AE16:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov95_0224AD98

	thumb_func_start ov95_0224AE1C
ov95_0224AE1C: ; 0x0224AE1C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0224B034 ; =0x0224C1F4
	bl sub_0201FE94
	ldr r2, _0224B038 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224B03C ; =0x0224C19C
	bl sub_02018368
	ldr r0, [r4, #0xc]
	ldr r2, _0224B040 ; =0x0224C1BC
	mov r1, #2
	mov r3, #1
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224B040 ; =0x0224C1BC
	mov r1, #6
	mov r3, #1
	bl sub_020183C4
	bl OS_DisableInterrupts
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, _0224B044 ; =0x0224C1D8
	mov r1, #3
	mov r3, #2
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224B044 ; =0x0224C1D8
	mov r1, #7
	mov r3, #2
	bl sub_020183C4
	add r0, r5, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r1, #2
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	add r3, r1, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #2
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r3, #2
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r3, #6
	bl sub_02006E60
	ldr r0, [r4, #0]
	bl ov95_02247644
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #3
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	ldr r0, _0224B048 ; =0x0224C188
	lsl r1, r5, #1
	ldrh r5, [r0, r1]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #5
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #5
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #4
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #4
	mov r3, #7
	bl sub_02006E60
	mov r0, #0x3a
	mov r1, #0x60
	bl sub_02018144
	add r5, r0, #0
	beq _0224AFF2
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x60
	bl MIi_CpuClear32
	add r0, r5, #0
	mov r1, #0x60
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	bl GXS_BeginLoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GX_LoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GXS_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	add r0, r5, #0
	bl sub_020181C4
_0224AFF2:
	ldr r0, [r4, #0xc]
	ldr r3, _0224B04C ; =0xFFFFFE80
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #6
	sub r3, #0xc3
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	mov r3, #0x43
	bl sub_02019184
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B034: .word 0x0224C1F4
_0224B038: .word 0x04000304
_0224B03C: .word 0x0224C19C
_0224B040: .word 0x0224C1BC
_0224B044: .word 0x0224C1D8
_0224B048: .word 0x0224C188
_0224B04C: .word 0xFFFFFE80
	thumb_func_end ov95_0224AE1C

	thumb_func_start ov95_0224B050
ov95_0224B050: ; 0x0224B050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224B060
	ldr r0, [r4, #0x10]
	bl ov95_02247018
_0224B060:
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B050

	thumb_func_start ov95_0224B084
ov95_0224B084: ; 0x0224B084
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0224B168 ; =0x04000060
	ldr r1, _0224B16C ; =0xFFFFCFFD
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
	ldr r2, _0224B170 ; =0x0000CFFB
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
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0224B174 ; =0x0224C1AC
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _0224B178 ; =0x000043FF
	ldr r2, _0224B17C ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _0224B180 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224B184 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _0224B188 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x20]
	mov r1, #0
	mov r0, #0x23
	str r1, [sp]
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	str r0, [r4, #0x24]
	ldr r0, _0224B18C ; =0x0224C370
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x20]
	ldr r1, _0224B190 ; =0x0224C370
	bl ov95_02247AB0
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov95_02247AD0
	mov r1, #2
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl ov95_022479D4
	ldr r0, [r4, #0x24]
	add r4, #0x28
	add r1, r4, #0
	bl ov95_02247978
	add sp, #0x10
	pop {r4, pc}
	nop
_0224B168: .word 0x04000060
_0224B16C: .word 0xFFFFCFFD
_0224B170: .word 0x0000CFFB
_0224B174: .word 0x0224C1AC
_0224B178: .word 0x000043FF
_0224B17C: .word 0x00007FFF
_0224B180: .word 0x04000540
_0224B184: .word 0xBFFF0000
_0224B188: .word 0x04000008
_0224B18C: .word 0x0224C370
_0224B190: .word 0x0224C370
	thumb_func_end ov95_0224B084

	thumb_func_start ov95_0224B194
ov95_0224B194: ; 0x0224B194
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224B1A6
	bl ov95_0224773C
	mov r0, #0
	str r0, [r4, #0x20]
_0224B1A6:
	pop {r4, pc}
	thumb_func_end ov95_0224B194

	thumb_func_start ov95_0224B1A8
ov95_0224B1A8: ; 0x0224B1A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x3a
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	beq _0224B1E8
	str r6, [r4, #0]
	ldr r0, [r6, #0xc]
	add r1, r4, #0
	str r0, [r4, #4]
	ldr r0, _0224B1EC ; =0xFFE80000
	mov r2, #0
	str r0, [r4, #0xc]
	asr r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, _0224B1F0 ; =0x00009999
	str r0, [r4, #0x14]
	mov r0, #0x28
	str r0, [r4, #8]
	ldr r0, _0224B1F4 ; =ov95_0224B1F8
	str r5, [r4, #0x1c]
	bl sub_0200DA04
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224B1E8
	add r0, r4, #0
	bl sub_020181C4
_0224B1E8:
	pop {r4, r5, r6, pc}
	nop
_0224B1EC: .word 0xFFE80000
_0224B1F0: .word 0x00009999
_0224B1F4: .word ov95_0224B1F8
	thumb_func_end ov95_0224B1A8

	thumb_func_start ov95_0224B1F8
ov95_0224B1F8: ; 0x0224B1F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224B238
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	mov r2, #3
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #2
	asr r3, r3, #0xc
	bl sub_02019184
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224B238:
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0xc0
	bl sub_02019184
	add r0, r5, #0
	bl ov95_0224B258
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_0224B1F8

	thumb_func_start ov95_0224B258
ov95_0224B258: ; 0x0224B258
	push {r4, lr}
	add r4, r0, #0
	beq _0224B272
	bl sub_0201CED0
	ldr r1, [r0, #0x1c]
	mov r2, #0
	str r2, [r1, #0]
	bl ov95_022476C8
	add r0, r4, #0
	bl sub_0200DA58
_0224B272:
	pop {r4, pc}
	thumb_func_end ov95_0224B258

	thumb_func_start ov95_0224B274
ov95_0224B274: ; 0x0224B274
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x3a
	mov r1, #0x1c
	bl sub_02018144
	add r4, r0, #0
	beq _0224B2C0
	str r5, [r4, #0]
	ldr r0, [r6, #0x24]
	add r1, r4, #0
	str r0, [r4, #8]
	add r1, #0xc
	bl ov95_02247958
	mov r0, #0x32
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [r4, #0x18]
	mov r0, #0x10
	str r0, [r4, #4]
	ldr r0, _0224B2C4 ; =ov95_0224B2C8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224B2C0
	add r0, r4, #0
	bl sub_020181C4
_0224B2C0:
	pop {r4, r5, r6, pc}
	nop
_0224B2C4: .word ov95_0224B2C8
	thumb_func_end ov95_0224B274

	thumb_func_start ov95_0224B2C8
ov95_0224B2C8: ; 0x0224B2C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224B2EE
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	bl ov95_02247968
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224B2EE:
	mov r0, #0x32
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	add r4, #0xc
	add r1, r4, #0
	bl ov95_02247968
	add r0, r5, #0
	bl ov95_0224B308
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B2C8

	thumb_func_start ov95_0224B308
ov95_0224B308: ; 0x0224B308
	push {r4, lr}
	add r4, r0, #0
	beq _0224B322
	bl sub_0201CED0
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224B322:
	pop {r4, pc}
	thumb_func_end ov95_0224B308

	thumb_func_start ov95_0224B324
ov95_0224B324: ; 0x0224B324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x18
	str r2, [sp, #4]
	add r7, r3, #0
	ldr r5, [sp, #0x20]
	bl sub_02018144
	add r4, r0, #0
	beq _0224B37C
	str r5, [r4, #0]
	lsl r0, r6, #0xc
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	lsl r1, r0, #0xc
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	add r1, r7, #0
	bl _s32_div_f
	str r0, [r4, #8]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	add r1, r6, #0
	str r0, [r4, #0x14]
	bl ov95_022479AC
	ldr r0, _0224B384 ; =ov95_0224B388
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224B380
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224B37C:
	mov r0, #0
	str r0, [r5, #0]
_0224B380:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B384: .word ov95_0224B388
	thumb_func_end ov95_0224B324

	thumb_func_start ov95_0224B388
ov95_0224B388: ; 0x0224B388
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x10]
	sub r0, r0, #1
	str r0, [r1, #0x10]
	cmp r0, #0
	ble _0224B3A8
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	add r2, r2, r0
	str r2, [r1, #4]
	ldr r0, [r1, #0x14]
	asr r1, r2, #0xc
	bl ov95_022479AC
	pop {r4, pc}
_0224B3A8:
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0xc]
	asr r1, r1, #0xc
	bl ov95_022479AC
	add r0, r4, #0
	bl ov95_0224B3BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B388

	thumb_func_start ov95_0224B3BC
ov95_0224B3BC: ; 0x0224B3BC
	push {r4, lr}
	add r4, r0, #0
	beq _0224B3D6
	bl sub_0201CED0
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224B3D6:
	pop {r4, pc}
	thumb_func_end ov95_0224B3BC

	.rodata


	.global Unk_ov95_0224C188
Unk_ov95_0224C188: ; 0x0224C188
	.incbin "incbin/overlay95_rodata.bin", 0x314, 0x31C - 0x314

	.global Unk_ov95_0224C190
Unk_ov95_0224C190: ; 0x0224C190
	.incbin "incbin/overlay95_rodata.bin", 0x31C, 0x328 - 0x31C

	.global Unk_ov95_0224C19C
Unk_ov95_0224C19C: ; 0x0224C19C
	.incbin "incbin/overlay95_rodata.bin", 0x328, 0x338 - 0x328

	.global Unk_ov95_0224C1AC
Unk_ov95_0224C1AC: ; 0x0224C1AC
	.incbin "incbin/overlay95_rodata.bin", 0x338, 0x348 - 0x338

	.global Unk_ov95_0224C1BC
Unk_ov95_0224C1BC: ; 0x0224C1BC
	.incbin "incbin/overlay95_rodata.bin", 0x348, 0x364 - 0x348

	.global Unk_ov95_0224C1D8
Unk_ov95_0224C1D8: ; 0x0224C1D8
	.incbin "incbin/overlay95_rodata.bin", 0x364, 0x380 - 0x364

	.global Unk_ov95_0224C1F4
Unk_ov95_0224C1F4: ; 0x0224C1F4
	.incbin "incbin/overlay95_rodata.bin", 0x380, 0x28


	.bss


	.global Unk_ov95_0224C370
Unk_ov95_0224C370: ; 0x0224C370
	.space 0x8

