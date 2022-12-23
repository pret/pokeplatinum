	.include "macros/function.inc"
	.include "overlay017/ov17_0223F118.inc"

	

	.text


	thumb_func_start ov17_0223F118
ov17_0223F118: ; 0x0223F118
	push {r3, lr}
	ldr r0, _0223F134 ; =0x0000000B
	mov r1, #2
	bl sub_02006590
	ldr r0, _0223F138 ; =0x0000000C
	mov r1, #2
	bl sub_02006590
	ldr r0, _0223F13C ; =0x00000016
	mov r1, #2
	bl sub_02006590
	pop {r3, pc}
	; .align 2, 0
_0223F134: .word 0x0000000B
_0223F138: .word 0x0000000C
_0223F13C: .word 0x00000016
	thumb_func_end ov17_0223F118

	thumb_func_start ov17_0223F140
ov17_0223F140: ; 0x0223F140
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	ldr r1, _0223F158 ; =ov17_0223F15C
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0223F158: .word ov17_0223F15C
	thumb_func_end ov17_0223F140

	thumb_func_start ov17_0223F15C
ov17_0223F15C: ; 0x0223F15C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0223F1C8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223F1CC ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223F1D0 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0223F1D4 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0223F1D8 ; =0xBFFF0000
	ldr r0, _0223F1DC ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0223F1C8: .word 0x04000008
_0223F1CC: .word 0xFFFFCFFD
_0223F1D0: .word 0x0000CFFB
_0223F1D4: .word 0x00007FFF
_0223F1D8: .word 0xBFFF0000
_0223F1DC: .word 0x04000580
	thumb_func_end ov17_0223F15C

	thumb_func_start ov17_0223F1E0
ov17_0223F1E0: ; 0x0223F1E0
	ldr r3, _0223F1E4 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0223F1E4: .word sub_020242C4
	thumb_func_end ov17_0223F1E0

	thumb_func_start ov17_0223F1E8
ov17_0223F1E8: ; 0x0223F1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x8c]
	mov r2, #0
	str r3, [sp, #0x24]
	ldr r5, [sp, #0x88]
	ldr r4, [sp, #0xa0]
	bl sub_02002D7C
	add r7, r0, #0
	asr r1, r7, #2
	lsr r1, r1, #0x1d
	add r1, r7, r1
	asr r6, r1, #3
	mov r1, #8
	bl FX_ModS32
	cmp r0, #0
	beq _0223F218
	add r6, r6, #1
_0223F218:
	add r0, sp, #0x34
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x34
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x90]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x8c]
	add r0, sp, #0x34
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	ldr r2, [sp, #0x18]
	add r0, sp, #0x34
	mov r1, #1
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x28
	bl sub_0201ED94
	ldr r0, [sp, #0xa8]
	cmp r0, #1
	bne _0223F270
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	sub r4, r4, r0
_0223F270:
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x44]
	add r0, sp, #0x34
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	bl sub_0200D9B0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x9c]
	bl sub_0200D04C
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x5c]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0xa4]
	sub r0, #8
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x64]
	ldr r0, [sp, #0xb0]
	str r0, [sp, #0x68]
	mov r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl sub_020127E8
	ldr r1, [sp, #0x98]
	add r6, r0, #0
	cmp r1, #0
	beq _0223F2BC
	bl sub_02012A90
_0223F2BC:
	ldr r2, [sp, #0xa4]
	add r0, r6, #0
	add r1, r4, #0
	sub r2, #8
	bl sub_020128C4
	add r0, sp, #0x34
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x28
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	strh r7, [r5, #0x10]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F1E8

	thumb_func_start ov17_0223F2E4
ov17_0223F2E4: ; 0x0223F2E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F2E4

	thumb_func_start ov17_0223F2F8
ov17_0223F2F8: ; 0x0223F2F8
	cmp r3, #1
	bne _0223F302
	ldrh r3, [r0, #0x10]
	lsr r3, r3, #1
	sub r1, r1, r3
_0223F302:
	ldr r3, _0223F30C ; =sub_020128C4
	ldr r0, [r0, #0]
	sub r2, #8
	bx r3
	nop
_0223F30C: .word sub_020128C4
	thumb_func_end ov17_0223F2F8

	thumb_func_start ov17_0223F310
ov17_0223F310: ; 0x0223F310
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcf
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0223F310

	thumb_func_start ov17_0223F334
ov17_0223F334: ; 0x0223F334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	ldr r1, _0223F36C ; =0x00000122
	ldrb r1, [r5, r1]
	bl ov17_02252A9C
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
_0223F348:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl ov17_02252A70
	ldr r1, _0223F370 ; =0x0000012A
	add r6, r6, #1
	strh r0, [r4, r1]
	add r5, r5, #4
	add r4, #0xc
	cmp r6, #4
	blt _0223F348
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F36C: .word 0x00000122
_0223F370: .word 0x0000012A
	thumb_func_end ov17_0223F334

	thumb_func_start ov17_0223F374
ov17_0223F374: ; 0x0223F374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r4, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #4]
_0223F384:
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	mov r6, #0x64
	add r5, r0, #0
	add r0, r6, #0
	ldr r1, [sp]
	add r0, #0xbb
	ldrb r0, [r1, r0]
	cmp r0, #4
	bls _0223F3A0
	b _0223F512
_0223F3A0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F3AC: ; jump table
	.short _0223F3B6 - _0223F3AC - 2 ; case 0
	.short _0223F3FC - _0223F3AC - 2 ; case 1
	.short _0223F442 - _0223F3AC - 2 ; case 2
	.short _0223F488 - _0223F3AC - 2 ; case 3
	.short _0223F4CE - _0223F3AC - 2 ; case 4
_0223F3B6:
	ldr r0, [r4, #0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa0
	cmp r5, r0
	beq _0223F3F4
	add r0, r6, #0
	add r0, #0xa1
	cmp r5, r0
	beq _0223F3F8
	add r0, r6, #0
	add r0, #0xa4
	cmp r5, r0
	beq _0223F3F8
	b _0223F51A
_0223F3F4:
	mov r6, #0x6e
	b _0223F51A
_0223F3F8:
	mov r6, #0x69
	b _0223F51A
_0223F3FC:
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa0
	cmp r5, r0
	beq _0223F43E
	add r0, r6, #0
	add r0, #0xa1
	cmp r5, r0
	beq _0223F43A
	add r0, r6, #0
	add r0, #0xa2
	cmp r5, r0
	beq _0223F43E
	b _0223F51A
_0223F43A:
	mov r6, #0x6e
	b _0223F51A
_0223F43E:
	mov r6, #0x69
	b _0223F51A
_0223F442:
	ldr r0, [r4, #0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa1
	cmp r5, r0
	beq _0223F484
	add r0, r6, #0
	add r0, #0xa2
	cmp r5, r0
	beq _0223F480
	add r0, r6, #0
	add r0, #0xa3
	cmp r5, r0
	beq _0223F484
	b _0223F51A
_0223F480:
	mov r6, #0x6e
	b _0223F51A
_0223F484:
	mov r6, #0x69
	b _0223F51A
_0223F488:
	ldr r0, [r4, #0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa2
	cmp r5, r0
	beq _0223F4CA
	add r0, r6, #0
	add r0, #0xa3
	cmp r5, r0
	beq _0223F4C6
	add r0, r6, #0
	add r0, #0xa4
	cmp r5, r0
	beq _0223F4CA
	b _0223F51A
_0223F4C6:
	mov r6, #0x6e
	b _0223F51A
_0223F4CA:
	mov r6, #0x69
	b _0223F51A
_0223F4CE:
	ldr r0, [r4, #0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xa0
	cmp r5, r0
	beq _0223F50E
	add r0, r6, #0
	add r0, #0xa3
	cmp r5, r0
	beq _0223F50E
	add r0, r6, #0
	add r0, #0xa4
	cmp r5, r0
	bne _0223F51A
	mov r6, #0x6e
	b _0223F51A
_0223F50E:
	mov r6, #0x69
	b _0223F51A
_0223F512:
	bl GF_AssertFail
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223F51A:
	ldr r0, [r4, #0]
	mov r1, #0x18
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #8]
	add r1, r1, r7
	add r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x64
	bl _s32_div_f
	mov r1, #0x4a
	ldr r2, [sp, #4]
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r2, #0
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	bge _0223F55A
	b _0223F384
_0223F55A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F374

	thumb_func_start ov17_0223F560
ov17_0223F560: ; 0x0223F560
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r2, #0
	mov r2, #0
	mvn r2, r2
	add r5, r0, #0
	add r4, r1, #0
	cmp r3, r2
	beq _0223F582
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r2, #0x2e
	mov r3, #0x49
	bl sub_0200CBDC
_0223F582:
	mov r1, #0
	ldr r0, [sp, #0x28]
	mvn r1, r1
	cmp r0, r1
	beq _0223F5AC
	mov r1, #0x2e
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #2
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CD7C
_0223F5AC:
	mov r0, #0
	ldr r1, [sp, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _0223F5C8
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	mov r3, #0x4a
	bl sub_0200CE0C
_0223F5C8:
	mov r0, #0
	ldr r1, [sp, #0x30]
	mvn r0, r0
	cmp r1, r0
	beq _0223F5E4
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x2e
	mov r3, #0x4b
	bl sub_0200CE3C
_0223F5E4:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0223F560

	thumb_func_start ov17_0223F5E8
ov17_0223F5E8: ; 0x0223F5E8
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0
	mvn r2, r2
	add r5, r0, #0
	add r6, r3, #0
	cmp r1, r2
	beq _0223F5FC
	bl sub_0200D070
_0223F5FC:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223F60C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D080
_0223F60C:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223F61C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D090
_0223F61C:
	mov r0, #0
	ldr r1, [sp, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _0223F62C
	add r0, r5, #0
	bl sub_0200D0A0
_0223F62C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F5E8

	thumb_func_start ov17_0223F630
ov17_0223F630: ; 0x0223F630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r5, _0223F6B8 ; =0x022531FC
	str r2, [sp, #4]
	str r0, [sp]
	add r7, r1, #0
	add r4, sp, #8
	mov r2, #6
_0223F640:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0223F640
	ldr r0, [r5, #0]
	ldr r5, _0223F6BC ; =0x022531CC
	str r0, [r4, #0]
	ldr r0, [sp, #0x50]
	ldr r4, [sp]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	mov r6, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x34]
_0223F66C:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, sp, #8
	bl sub_0200CE6C
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl sub_0200D4C4
	ldrb r1, [r5, #6]
	ldr r0, [r4, #0]
	bl sub_0200D364
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D6A4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r6, r6, #1
	add r4, r4, #4
	add r5, #8
	cmp r6, #6
	blt _0223F66C
	ldr r0, _0223F6C0 ; =ov17_0223F6E8
	ldr r1, [sp]
	ldr r2, [sp, #0x68]
	bl sub_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x18]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F6B8: .word 0x022531FC
_0223F6BC: .word 0x022531CC
_0223F6C0: .word ov17_0223F6E8
	thumb_func_end ov17_0223F630

	thumb_func_start ov17_0223F6C4
ov17_0223F6C4: ; 0x0223F6C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223F6CC:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0223F6CC
	ldr r0, [r6, #0x18]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r6, #0x18]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F6C4

	thumb_func_start ov17_0223F6E8
ov17_0223F6E8: ; 0x0223F6E8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0223F708 ; =0x022531CC
	add r5, r1, #0
	mov r6, #0
	mov r7, #4
_0223F6F2:
	ldrsh r1, [r4, r7]
	ldr r0, [r5, #0]
	bl sub_0200D7C0
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _0223F6F2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F708: .word 0x022531CC
	thumb_func_end ov17_0223F6E8

	thumb_func_start ov17_0223F70C
ov17_0223F70C: ; 0x0223F70C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x14
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r5, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [sp, #0x18]
	strb r7, [r4, #0x10]
	strb r0, [r4, #0x12]
	ldr r0, _0223F740 ; =ov17_0223F774
	ldr r2, [sp, #0x1c]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F740: .word ov17_0223F774
	thumb_func_end ov17_0223F70C

	thumb_func_start ov17_0223F744
ov17_0223F744: ; 0x0223F744
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223F752
	bl GF_AssertFail
_0223F752:
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov17_0223F744

	thumb_func_start ov17_0223F760
ov17_0223F760: ; 0x0223F760
	push {r3, lr}
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _0223F770
	mov r0, #1
	pop {r3, pc}
_0223F770:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov17_0223F760

	thumb_func_start ov17_0223F774
ov17_0223F774: ; 0x0223F774
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #1
	add r4, r1, #0
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223F7DA
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	cmp r2, r0
	ble _0223F7DA
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	mov r1, #0
	mov r2, #4
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _0223F7E0 ; =0x000005F8
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #8]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	blo _0223F7DA
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0223F7CE
	add r0, r4, #0
	bl ov17_0223F744
	add sp, #4
	pop {r3, r4, pc}
_0223F7CE:
	cmp r0, #0xff
	beq _0223F7D6
	sub r0, r0, #1
	strb r0, [r4, #0x12]
_0223F7D6:
	mov r0, #0
	strb r0, [r4, #0x11]
_0223F7DA:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223F7E0: .word 0x000005F8
	thumb_func_end ov17_0223F774

	.rodata


	.global Unk_ov17_022531CC
Unk_ov17_022531CC: ; 0x022531CC
	.incbin "incbin/overlay17_rodata.bin", 0x440, 0x470 - 0x440

	.global Unk_ov17_022531FC
Unk_ov17_022531FC: ; 0x022531FC
	.incbin "incbin/overlay17_rodata.bin", 0x470, 0x34

	.section .sinit, 4
	.word ov17_0223F118
