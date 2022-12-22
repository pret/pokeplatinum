	.include "macros/function.inc"
	.include "include/unk_020218BC.inc"

	

	.text


	thumb_func_start sub_020218BC
sub_020218BC: ; 0x020218BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _020218C6
	bl sub_02022974
_020218C6:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _020218D0
	bl sub_02022974
_020218D0:
	mov r1, #0x49
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bne _020218E2
	bl sub_02022974
_020218E2:
	add r0, r4, #0
	bl sub_02021A50
	ldr r2, [r5, #0]
	ldr r0, [r5, #8]
	lsl r1, r2, #6
	add r1, r2, r1
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #0]
	cmp r0, #0
	bne _02021900
	bl sub_02022974
_02021900:
	ldr r0, [r5, #0]
	str r0, [r4, #4]
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _02021918
	bl sub_02022974
_02021918:
	add r0, r4, #0
	bl sub_02022518
	add r0, r4, #0
	add r0, #0x10
	bl sub_02021A78
	add r2, r4, #0
	mov r1, #0x43
	lsl r1, r1, #2
	add r2, #0x10
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #4]
	add r1, #8
	str r0, [r4, r1]
	ldr r0, [r5, #8]
	ldr r1, _02021960 ; =0x02100848
	bl sub_02017A40
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r1, r4, r1
	bl NNS_G2dGetUnpackedAnimBank
	mov r0, #0x12
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02021960: .word 0x02100848
	thumb_func_end sub_020218BC

	thumb_func_start sub_02021964
sub_02021964: ; 0x02021964
	push {r4, lr}
	add r4, r0, #0
	bne _0202196E
	mov r0, #0
	pop {r4, pc}
_0202196E:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _02021978
	mov r0, #1
	pop {r4, pc}
_02021978:
	bl sub_020219C0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02021A50
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021964

	thumb_func_start sub_020219A4
sub_020219A4: ; 0x020219A4
	cmp r0, #0
	bne _020219AC
	mov r0, #0
	bx lr
_020219AC:
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020219B6
	mov r0, #0
	bx lr
_020219B6:
	mov r2, #0x12
	lsl r2, r2, #4
	str r1, [r0, r2]
	mov r0, #1
	bx lr
	thumb_func_end sub_020219A4

	thumb_func_start sub_020219C0
sub_020219C0: ; 0x020219C0
	push {r4, r5, r6, lr}
	cmp r0, #0
	bne _020219CA
	mov r0, #0
	pop {r4, r5, r6, pc}
_020219CA:
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020219D4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020219D4:
	mov r1, #0x11
	lsl r1, r1, #4
	add r4, r0, #0
	ldr r1, [r0, r1]
	add r4, #0x10
	cmp r1, r4
	beq _020219F4
	mov r6, #1
	lsl r6, r6, #8
_020219E6:
	ldr r5, [r1, r6]
	add r0, r1, #0
	bl sub_02021BD4
	add r1, r5, #0
	cmp r5, r4
	bne _020219E6
_020219F4:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020219C0

	thumb_func_start sub_020219F8
sub_020219F8: ; 0x020219F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02021A02
	bl sub_02022974
_02021A02:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02021A44
	sub r0, #0x10
	add r6, r5, #0
	ldr r4, [r5, r0]
	add r6, #0x10
	cmp r4, r6
	beq _02021A44
	ldr r7, _02021A48 ; =0x020E56E4
_02021A1A:
	add r2, r4, #0
	add r2, #0x34
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	add r1, r4, #0
	add r1, #0x35
	ldrb r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02021A4C ; =0x020E56EC
	ldr r1, [r1, r2]
	blx r1
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r4, r0]
	cmp r4, r6
	bne _02021A1A
_02021A44:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02021A48: .word 0x020E56E4
_02021A4C: .word 0x020E56EC
	thumb_func_end sub_020219F8

	thumb_func_start sub_02021A50
sub_02021A50: ; 0x02021A50
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #0x45
	str r1, [r4, #0xc]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x10
	bl sub_02021A78
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021A50

	thumb_func_start sub_02021A78
sub_02021A78: ; 0x02021A78
	push {r4, lr}
	mov r2, #0x41
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	str r1, [r4, #0x3c]
	bl memset
	add r0, r4, #0
	add r0, #0xb4
	bl NNS_G2dInitImageProxy
	add r0, r4, #0
	add r0, #0xd8
	bl NNS_G2dInitImagePaletteProxy
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021A78

	thumb_func_start sub_02021AA0
sub_02021AA0: ; 0x02021AA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02022550
	add r4, r0, #0
	bne _02021AB2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02021AB2:
	ldr r0, [r5, #0]
	add r6, r5, #0
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xf0
	add r6, #8
	strh r2, [r0]
	ldmia r6!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, r5, #0
	str r0, [r3, #0]
	add r6, #0x14
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldrh r0, [r5, #0x20]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldr r1, [r5, #0x28]
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [r5, #0x24]
	add r0, #0xf4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x26
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x27
	strb r2, [r0]
	str r2, [r4, #0x2c]
	add r0, r4, #0
	str r2, [r4, #0x30]
	mov r1, #0x11
	add r0, #0x28
	strb r1, [r0]
	mov r0, #0x45
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x26
	ldrb r1, [r1]
	bl NNS_G2dSetRndCoreAffineOverwriteMode
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #0x45
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	mov r3, #2
	and r1, r2
	and r2, r3
	bl NNS_G2dSetRndCoreFlipMode
	add r0, r4, #0
	mov r2, #1
	add r0, #0x34
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	lsl r0, r2, #0xd
	str r0, [r4, #0x38]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r3, [r5, #0x2c]
	add r2, r4, #0
	bl sub_02022110
	cmp r0, #0
	bne _02021B62
	add r0, r4, #0
	bl sub_02021BD4
	mov r0, #0
	pop {r4, r5, r6, pc}
_02021B62:
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xd8
	bl sub_020222C4
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02022464
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02021AA0

	thumb_func_start sub_02021B90
sub_02021B90: ; 0x02021B90
	push {r4, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldr r0, [r2, #0]
	add r4, r2, #0
	str r0, [sp]
	ldr r0, [r2, #4]
	add r4, #8
	str r0, [sp, #4]
	ldmia r4!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [r3, #0]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	strh r1, [r0, #0x20]
	ldr r0, [r2, #0x14]
	str r0, [sp, #0x24]
	ldr r0, [r2, #0x18]
	str r0, [sp, #0x28]
	ldr r0, [r2, #0x1c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_02021AA0
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021B90

	thumb_func_start sub_02021BD4
sub_02021BD4: ; 0x02021BD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xec
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02021C4C
	add r1, r5, #0
	add r1, #0xfc
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02021BF0
	bl sub_020224FC
_02021BF0:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _02021C1A
	add r1, r5, #0
	add r1, #0xf8
	add r0, r5, #0
	add r4, r5, #0
	ldr r1, [r1, #0]
	add r0, #0xb4
	add r4, #0x40
	bl NNS_G2dGetImageLocation
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02021C1A
	ldr r0, [r4, #0x60]
	bl NNS_G2dFreeCellTransferStateHandle
_02021C1A:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _02021C3C
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02021C32
	bl sub_020181C4
_02021C32:
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02021C3C
	bl sub_020181C4
_02021C3C:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
	ldr r0, [r5, #0x3c]
	add r1, r5, #0
	bl sub_0202256C
_02021C4C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021BD4

	thumb_func_start sub_02021C50
sub_02021C50: ; 0x02021C50
	add r2, r1, #0
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021C50

	thumb_func_start sub_02021C60
sub_02021C60: ; 0x02021C60
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02021C60

	thumb_func_start sub_02021C70
sub_02021C70: ; 0x02021C70
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02021C70

	thumb_func_start sub_02021C80
sub_02021C80: ; 0x02021C80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02021C70
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021CF8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021C80

	thumb_func_start sub_02021C94
sub_02021C94: ; 0x02021C94
	strh r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02021C94

	thumb_func_start sub_02021C98
sub_02021C98: ; 0x02021C98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02021C94
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021CF8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021C98

	thumb_func_start sub_02021CAC
sub_02021CAC: ; 0x02021CAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021CBA
	bl sub_02022974
_02021CBA:
	cmp r4, #2
	blt _02021CC2
	bl sub_02022974
_02021CC2:
	add r5, #0x34
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021CAC

	thumb_func_start sub_02021CC8
sub_02021CC8: ; 0x02021CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021CD6
	bl sub_02022974
_02021CD6:
	cmp r4, #2
	blt _02021CDE
	bl sub_02022974
_02021CDE:
	add r5, #0x35
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021CC8

	thumb_func_start sub_02021CE4
sub_02021CE4: ; 0x02021CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021CF2
	bl sub_02022974
_02021CF2:
	str r4, [r5, #0x38]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021CE4

	thumb_func_start sub_02021CF8
sub_02021CF8: ; 0x02021CF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021D06
	bl sub_02022974
_02021D06:
	add r5, #0x26
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021CF8

	thumb_func_start sub_02021D0C
sub_02021D0C: ; 0x02021D0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021D1A
	bl sub_02022974
_02021D1A:
	add r0, r5, #0
	add r0, #0x27
	strb r4, [r0]
	mov r0, #0
	add r5, #0x26
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021D0C

	thumb_func_start sub_02021D28
sub_02021D28: ; 0x02021D28
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021D28

	thumb_func_start sub_02021D2C
sub_02021D2C: ; 0x02021D2C
	add r0, #0x18
	bx lr
	thumb_func_end sub_02021D2C

	thumb_func_start sub_02021D30
sub_02021D30: ; 0x02021D30
	ldrh r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_02021D30

	thumb_func_start sub_02021D34
sub_02021D34: ; 0x02021D34
	add r0, #0x34
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021D34

	thumb_func_start sub_02021D3C
sub_02021D3C: ; 0x02021D3C
	add r0, #0x35
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021D3C

	thumb_func_start sub_02021D44
sub_02021D44: ; 0x02021D44
	push {r4, lr}
	add r4, r0, #0
	bne _02021D4E
	bl sub_02022974
_02021D4E:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02021D5C
	cmp r0, #3
	bne _02021D62
_02021D5C:
	ldr r0, [r4, #0x44]
	ldrh r0, [r0]
	pop {r4, pc}
_02021D62:
	add r4, #0xb0
	ldr r0, [r4, #0]
	ldrh r0, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021D44

	thumb_func_start sub_02021D6C
sub_02021D6C: ; 0x02021D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021D44
	cmp r0, r4
	bhi _02021D7E
	bl sub_02022974
_02021D7E:
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	add r0, #0xf0
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02021D96
	cmp r0, #3
	bne _02021DB2
_02021D96:
	add r5, #0x40
	lsl r1, r4, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl NNS_G2dGetAnimSequenceByIdx
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl NNS_G2dSetCellAnimationSequence
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_02021DB2:
	add r5, #0x40
	ldr r0, [r5, #0x70]
	bl NNS_G2dGetAnimSequenceByIdx
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl NNS_G2dSetAnimSequenceToMCAnimation
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021D6C

	thumb_func_start sub_02021DCC
sub_02021DCC: ; 0x02021DCC
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xf0
	ldrh r2, [r2]
	cmp r2, r1
	beq _02021DDC
	bl sub_02021D6C
_02021DDC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02021DCC

	thumb_func_start sub_02021DE0
sub_02021DE0: ; 0x02021DE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02021DF0
	cmp r0, #3
	bne _02021E0A
_02021DF0:
	add r5, r4, #0
	add r5, #0x40
	add r0, r5, #0
	add r0, #8
	bl NNS_G2dResetAnimCtrlState
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E50
	pop {r3, r4, r5, pc}
_02021E0A:
	add r5, r4, #0
	add r5, #0x40
	add r0, r5, #0
	add r0, #8
	bl NNS_G2dResetAnimCtrlState
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E50
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021DE0

	thumb_func_start sub_02021E24
sub_02021E24: ; 0x02021E24
	add r0, #0xf0
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021E24

	thumb_func_start sub_02021E2C
sub_02021E2C: ; 0x02021E2C
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xec
	ldr r2, [r2, #0]
	cmp r2, #1
	beq _02021E3C
	cmp r2, #3
	bne _02021E46
_02021E3C:
	add r0, #0x40
	add r0, #8
	bl NNS_G2dTickCellAnimation
	pop {r3, pc}
_02021E46:
	add r0, #0x40
	add r0, #8
	bl NNS_G2dTickMCAnimation
	pop {r3, pc}
	thumb_func_end sub_02021E2C

	thumb_func_start sub_02021E50
sub_02021E50: ; 0x02021E50
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xec
	ldr r2, [r2, #0]
	cmp r2, #1
	beq _02021E60
	cmp r2, #3
	bne _02021E6A
_02021E60:
	add r0, #0x40
	add r0, #8
	bl NNS_G2dSetCellAnimationCurrentFrame
	pop {r3, pc}
_02021E6A:
	add r0, #0x40
	add r0, #8
	bl NNS_G2dSetMCAnimationCurrentFrame
	pop {r3, pc}
	thumb_func_end sub_02021E50

	thumb_func_start sub_02021E74
sub_02021E74: ; 0x02021E74
	ldr r3, _02021E7C ; =NNS_G2dGetAnimCtrlCurrentFrame
	add r0, #0x40
	add r0, #8
	bx r3
	; .align 2, 0
_02021E7C: .word NNS_G2dGetAnimCtrlCurrentFrame
	thumb_func_end sub_02021E74

	thumb_func_start sub_02021E80
sub_02021E80: ; 0x02021E80
	add r0, #0xf2
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021E80

	thumb_func_start sub_02021E88
sub_02021E88: ; 0x02021E88
	add r0, #0xf2
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021E88

	thumb_func_start sub_02021E90
sub_02021E90: ; 0x02021E90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021E9E
	bl sub_02022974
_02021E9E:
	add r0, r5, #0
	add r0, #0x29
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x10
	add r5, #0x28
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021E90

	thumb_func_start sub_02021EC4
sub_02021EC4: ; 0x02021EC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021E90
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xd8
	bl sub_020222C4
	add r1, r4, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r4, #0x29
	add r0, r1, r0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021EC4

	thumb_func_start sub_02021EE8
sub_02021EE8: ; 0x02021EE8
	add r0, #0x29
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021EE8

	thumb_func_start sub_02021EF0
sub_02021EF0: ; 0x02021EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021EFE
	bl sub_02022974
_02021EFE:
	add r0, r5, #0
	add r0, #0x2a
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x10
	orr r1, r0
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #2
	add r5, #0x28
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021EF0

	thumb_func_start sub_02021F24
sub_02021F24: ; 0x02021F24
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021EF0
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xd8
	bl sub_020222C4
	add r1, r4, #0
	add r1, #0x2a
	ldrb r1, [r1]
	add r4, #0x2a
	add r0, r1, r0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021F24

	thumb_func_start sub_02021F48
sub_02021F48: ; 0x02021F48
	push {r4, lr}
	add r4, r0, #0
	bne _02021F52
	bl sub_02022974
_02021F52:
	add r4, #0x2a
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021F48

	thumb_func_start sub_02021F58
sub_02021F58: ; 0x02021F58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, r5, #0
	ldr r4, [r5, #0x3c]
	add r2, #0xf4
	strh r1, [r2]
	bl sub_020224FC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02022464
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021F58

	thumb_func_start sub_02021F74
sub_02021F74: ; 0x02021F74
	add r0, #0xf4
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021F74

	thumb_func_start sub_02021F7C
sub_02021F7C: ; 0x02021F7C
	push {r3, r4}
	add r3, r0, #0
	add r4, r1, #0
	add r3, #0xb4
	mov r2, #4
_02021F86:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02021F86
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021F7C

	thumb_func_start sub_02021F98
sub_02021F98: ; 0x02021F98
	add r0, #0xb4
	bx lr
	thumb_func_end sub_02021F98

	thumb_func_start sub_02021F9C
sub_02021F9C: ; 0x02021F9C
	add r0, #0xd8
	bx lr
	thumb_func_end sub_02021F9C

	thumb_func_start sub_02021FA0
sub_02021FA0: ; 0x02021FA0
	str r1, [r0, #0x2c]
	cmp r1, #1
	bne _02021FB6
	add r1, r0, #0
	add r1, #0x28
	ldrb r2, [r1]
	mov r1, #4
	add r0, #0x28
	orr r1, r2
	strb r1, [r0]
	bx lr
_02021FB6:
	add r1, r0, #0
	add r1, #0x28
	ldrb r2, [r1]
	mov r1, #4
	eor r1, r2
	add r0, #0x28
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021FA0

	thumb_func_start sub_02021FC8
sub_02021FC8: ; 0x02021FC8
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021FC8

	thumb_func_start sub_02021FD0
sub_02021FD0: ; 0x02021FD0
	push {r4, lr}
	add r4, r0, #0
	bne _02021FDA
	bl sub_02022974
_02021FDA:
	ldr r0, [r4, #0x54]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021FD0

	thumb_func_start sub_02021FE0
sub_02021FE0: ; 0x02021FE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02021FEE
	bl sub_02022974
_02021FEE:
	str r5, [r4, #0x30]
	cmp r5, #0
	bne _02022004
	add r0, r4, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #8
	add r4, #0x28
	eor r0, r1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02022004:
	add r0, r4, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #8
	orr r0, r1
	add r4, #0x28
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021FE0

	thumb_func_start sub_02022014
sub_02022014: ; 0x02022014
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xb
	mov r2, #1
	lsl r0, r0, #6
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl MIi_CpuClear16
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl DC_FlushRange
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl GX_LoadOAM
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02022014

	thumb_func_start sub_0202204C
sub_0202204C: ; 0x0202204C
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xb
	mov r2, #1
	lsl r0, r0, #6
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl MIi_CpuClear16
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl GXS_LoadOAM
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202204C

	thumb_func_start sub_0202207C
sub_0202207C: ; 0x0202207C
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xec
	ldr r3, [r3, #0]
	cmp r3, #1
	beq _0202208C
	cmp r3, #3
	bne _02022090
_0202208C:
	ldr r0, [r0, #0x44]
	b _02022094
_02022090:
	add r0, #0xb0
	ldr r0, [r0, #0]
_02022094:
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _020220A2
	ldr r3, [r4, #0]
	ldr r0, _020220F0 ; =0x55414154
	cmp r3, r0
	beq _020220A4
_020220A2:
	mov r4, #0
_020220A4:
	cmp r4, #0
	beq _020220AC
	add r4, #8
	b _020220AE
_020220AC:
	mov r4, #0
_020220AE:
	cmp r4, #0
	beq _020220EA
	lsl r0, r1, #0x10
	lsr r3, r0, #0x10
	ldrh r0, [r4]
	cmp r3, r0
	bhs _020220C6
	mov r0, #0xc
	ldr r1, [r4, #4]
	mul r0, r3
	add r1, r1, r0
	b _020220C8
_020220C6:
	mov r1, #0
_020220C8:
	cmp r1, #0
	beq _020220EA
	ldrh r0, [r1]
	cmp r0, #0
	beq _020220DC
	lsl r0, r2, #0x10
	ldr r1, [r1, #8]
	lsr r0, r0, #0xe
	add r0, r1, r0
	b _020220DE
_020220DC:
	mov r0, #0
_020220DE:
	cmp r0, #0
	beq _020220EA
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	pop {r3, r4}
	bx lr
_020220EA:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_020220F0: .word 0x55414154
	thumb_func_end sub_0202207C

	thumb_func_start sub_020220F4
sub_020220F4: ; 0x020220F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02021E24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02021E74
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202207C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020220F4

	thumb_func_start sub_02022110
sub_02022110: ; 0x02022110
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r0, r5, #0
	add r7, r3, #0
	bl sub_020221B8
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r3, r4, #0
	ldr r6, [r5, #0]
	add r3, #0xb4
	mov r2, #4
_0202212E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0202212E
	ldr r0, [r6, #0]
	add r2, r4, #0
	str r0, [r3, #0]
	ldr r3, [r5, #8]
	add r2, #0xd8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	ldr r0, [r5, #0xc]
	bl sub_020221D0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02022162
	add r1, r4, #0
	bl sub_020221D4
	b _02022170
_02022162:
	mov r1, #0x47
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	bl sub_020221D4
_02022170:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _02022194
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_020221D8
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_020221E0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02022264
	b _020221AC
_02022194:
	cmp r0, #3
	bne _020221A4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02022208
	b _020221AC
_020221A4:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020221E8
_020221AC:
	add r5, #0x20
	ldrb r0, [r5]
	add r4, #0xf2
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022110

	thumb_func_start sub_020221B8
sub_020221B8: ; 0x020221B8
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _020221C2
	mov r0, #2
	bx lr
_020221C2:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _020221CC
	mov r0, #3
	bx lr
_020221CC:
	mov r0, #1
	bx lr
	thumb_func_end sub_020221B8

	thumb_func_start sub_020221D0
sub_020221D0: ; 0x020221D0
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_020221D0

	thumb_func_start sub_020221D4
sub_020221D4: ; 0x020221D4
	str r0, [r1, #0x44]
	bx lr
	thumb_func_end sub_020221D4

	thumb_func_start sub_020221D8
sub_020221D8: ; 0x020221D8
	add r1, #0xac
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020221D8

	thumb_func_start sub_020221E0
sub_020221E0: ; 0x020221E0
	add r1, #0xb0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020221E0

	thumb_func_start sub_020221E8
sub_020221E8: ; 0x020221E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #4]
	mov r1, #0
	bl NNS_G2dGetAnimSequenceByIdx
	add r4, #8
	add r1, r0, #0
	ldr r2, [r5, #0x40]
	add r0, r4, #0
	bl NNS_G2dInitCellAnimation
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020221E8

	thumb_func_start sub_02022208
sub_02022208: ; 0x02022208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x40
	add r5, r0, #0
	bl NNS_G2dGetNewCellTransferStateHandle
	str r0, [r4, #0x60]
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r5, [r5, #4]
	bl NNS_G2dGetAnimSequenceByIdx
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #1
	bl NNS_G2dGetImageLocation
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #0
	mvn r1, r1
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r2, [r6, #0x40]
	ldr r3, [r4, #0x60]
	add r0, #8
	bl NNS_G2dInitCellAnimationVramTransfered
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02022208

	thumb_func_start sub_02022264
sub_02022264: ; 0x02022264
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #0x70]
	add r7, r1, #0
	mov r1, #0
	bl NNS_G2dGetAnimSequenceByIdx
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	bl NNS_G2dGetMCBankNumNodesRequired
	add r6, r0, #0
	mov r1, #0x28
	add r0, r7, #0
	mul r1, r6
	bl sub_02018144
	mov r1, #0x58
	str r0, [r4, #0x74]
	add r0, r7, #0
	mul r1, r6
	bl sub_02018144
	str r0, [r4, #0x78]
	ldr r0, [r4, #4]
	add r3, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x40]
	str r0, [sp, #4]
	ldr r0, [r4, #0x6c]
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [r4, #0x74]
	ldr r2, [r4, #0x78]
	add r0, #8
	bl NNS_G2dInitMCAnimation
	add r4, #8
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl NNS_G2dSetAnimSequenceToMCAnimation
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022264

	thumb_func_start sub_020222C4
sub_020222C4: ; 0x020222C4
	push {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _020222D2
	mov r4, #2
	lsl r4, r4, #8
	b _020222DE
_020222D2:
	ldr r2, [r0, #0]
	cmp r2, #4
	bne _020222DC
	mov r4, #0
	b _020222DE
_020222DC:
	mov r4, #0x20
_020222DE:
	cmp r4, #0
	beq _020222EE
	bl NNS_G2dGetImagePaletteLocation
	add r1, r4, #0
	bl _u32_div_f
	pop {r4, pc}
_020222EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020222C4

	thumb_func_start sub_020222F4
sub_020222F4: ; 0x020222F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r3, r4, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xb4
	add r2, #0xd8
	bl NNS_G2dSetRendererImageProxy
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl NNS_G2dBeginRendering
	bl NNS_G2dPushMtx
	add r1, r4, #0
	mov r0, #0x45
	add r1, #0x26
	lsl r0, r0, #2
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl NNS_G2dSetRndCoreAffineOverwriteMode
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0202235C
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	mov r3, #2
	and r1, r2
	and r2, r3
	bl NNS_G2dSetRndCoreFlipMode
	b _0202236A
_0202235C:
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl NNS_G2dSetRndCoreFlipMode
_0202236A:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl NNS_G2dTranslate
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _020223B8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl NNS_G2dTranslate
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	bl NNS_G2dScale
	ldrh r0, [r4, #0x24]
	ldr r2, _0202244C ; =0x020F983C
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl NNS_G2dRotZ
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	neg r0, r0
	neg r1, r1
	neg r2, r2
	bl NNS_G2dTranslate
_020223B8:
	add r0, r4, #0
	add r0, #0x28
	ldrb r3, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	add r2, #0x84
	orr r1, r3
	str r1, [r2, #0]
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	mvn r6, r1
	ldr r1, [r5, r0]
	add r2, r1, #0
	add r2, #0x84
	ldr r3, [r2, #0]
	mvn r2, r6
	and r2, r3
	add r1, #0x84
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0x29
	ldrb r2, [r1]
	ldr r1, [r5, r0]
	add r1, #0x8a
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x2a
	ldrb r2, [r1]
	ldr r1, [r5, r0]
	add r1, #0x94
	strh r2, [r1]
	ldr r1, [r5, r0]
	ldr r2, [r4, #0x2c]
	add r1, #0x90
	str r2, [r1, #0]
	ldr r1, [r5, r0]
	ldr r2, [r4, #0x30]
	add r1, #0x8c
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xf2
	ldr r0, [r5, r0]
	ldrb r1, [r1]
	add r0, #0x88
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0202242A
	cmp r0, #3
	bne _02022436
_0202242A:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	bl NNS_G2dDrawCellAnimation
	b _02022440
_02022436:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	bl NNS_G2dDrawMultiCellAnimation
_02022440:
	bl NNS_G2dPopMtx
	bl NNS_G2dEndRendering
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0202244C: .word 0x020F983C
	thumb_func_end sub_020222F4

	thumb_func_start sub_02022450
sub_02022450: ; 0x02022450
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022450

	thumb_func_start sub_02022454
sub_02022454: ; 0x02022454
	ldr r3, _0202245C ; =sub_02021E2C
	ldr r1, [r0, #0x38]
	bx r3
	nop
_0202245C: .word sub_02021E2C
	thumb_func_end sub_02022454

	thumb_func_start sub_02022460
sub_02022460: ; 0x02022460
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022460

	thumb_func_start sub_02022464
sub_02022464: ; 0x02022464
	push {r4, r5, r6, r7}
	mov r2, #0x11
	lsl r2, r2, #4
	add r4, r0, #0
	ldr r5, [r0, r2]
	add r4, #0x10
	cmp r5, r4
	bne _02022488
	str r1, [r0, r2]
	sub r3, r2, #4
	str r1, [r0, r3]
	add r0, r1, #0
	add r0, #0xfc
	str r4, [r0, #0]
	sub r2, #0x10
	str r4, [r1, r2]
	pop {r4, r5, r6, r7}
	bx lr
_02022488:
	add r3, r1, #0
	add r3, #0xf4
	ldrh r6, [r3]
	sub r3, r2, #4
	ldr r3, [r0, r3]
	add r7, r3, #0
	add r7, #0xf4
	ldrh r7, [r7]
	cmp r7, r6
	bhi _020224BA
	add r5, r1, #0
	add r5, #0xfc
	str r3, [r5, #0]
	sub r3, r2, #4
	ldr r5, [r0, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r1, [r5, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r4, [r1, r3]
	sub r2, r2, #4
	str r1, [r0, r2]
	pop {r4, r5, r6, r7}
	bx lr
_020224BA:
	cmp r5, r4
	beq _020224F6
	add r0, r2, #0
	sub r0, #0x10
_020224C2:
	add r2, r5, #0
	add r2, #0xf4
	ldrh r2, [r2]
	cmp r2, r6
	bls _020224F0
	add r0, r5, #0
	add r0, #0xfc
	mov r2, #1
	ldr r0, [r0, #0]
	lsl r2, r2, #8
	str r1, [r0, r2]
	add r0, r5, #0
	add r0, #0xfc
	ldr r3, [r0, #0]
	add r0, r1, #0
	add r0, #0xfc
	str r3, [r0, #0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0, #0]
	str r5, [r1, r2]
	pop {r4, r5, r6, r7}
	bx lr
_020224F0:
	ldr r5, [r5, r0]
	cmp r5, r4
	bne _020224C2
_020224F6:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022464

	thumb_func_start sub_020224FC
sub_020224FC: ; 0x020224FC
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #8
	add r1, #0xfc
	ldr r3, [r0, r2]
	ldr r1, [r1, #0]
	str r3, [r1, r2]
	add r1, r0, #0
	add r1, #0xfc
	ldr r0, [r0, r2]
	ldr r1, [r1, #0]
	add r0, #0xfc
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020224FC

	thumb_func_start sub_02022518
sub_02022518: ; 0x02022518
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r7, #0
	cmp r0, #0
	ble _02022548
	add r4, r7, #0
	add r6, r7, #0
_02022528:
	ldr r0, [r5, #0]
	add r0, r0, r4
	bl sub_02021A78
	ldr r0, [r5, #0]
	add r7, r7, #1
	add r1, r0, r4
	ldr r0, [r5, #8]
	str r1, [r0, r6]
	mov r0, #0x41
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [r5, #4]
	add r6, r6, #4
	cmp r7, r0
	blt _02022528
_02022548:
	mov r0, #0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022518

	thumb_func_start sub_02022550
sub_02022550: ; 0x02022550
	ldr r3, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0202255C
	mov r0, #0
	bx lr
_0202255C:
	ldr r2, [r0, #8]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	str r1, [r0, #0xc]
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022550

	thumb_func_start sub_0202256C
sub_0202256C: ; 0x0202256C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0
	bgt _0202257C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202257C:
	add r0, r4, #0
	bl sub_02021A78
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202256C

	.rodata


	.global Unk_020E56E4
Unk_020E56E4: ; 0x020E56E4
	.incbin "incbin/arm9_rodata.bin", 0xAA4, 0xAAC - 0xAA4

	.global Unk_020E56EC
Unk_020E56EC: ; 0x020E56EC
	.incbin "incbin/arm9_rodata.bin", 0xAAC, 0x8



	.data


	.global Unk_02100848
Unk_02100848: ; 0x02100848
	.incbin "incbin/arm9_data.bin", 0x1B68, 0x18

