	.include "macros/function.inc"
	.include "include/unk_02050568.inc"

	

	.text


	thumb_func_start sub_02050568
sub_02050568: ; 0x02050568
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	strb r0, [r2, #5]
	strb r0, [r2, #6]
	strb r0, [r2, #7]
	strb r0, [r2, #8]
	strb r0, [r2, #9]
	strb r0, [r2, #0xa]
	strb r0, [r2, #0xb]
	ldr r0, [r4, #0x10]
	ldr r1, _0205059C ; =sub_020505A0
	bl sub_02050944
	pop {r4, pc}
	nop
_0205059C: .word sub_020505A0
	thumb_func_end sub_02050568

	thumb_func_start sub_020505A0
sub_020505A0: ; 0x020505A0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	ldrb r1, [r4, #8]
	cmp r1, #0xb
	bls _020505C2
	b _02050730
_020505C2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020505CE: ; jump table
	.short _020505E6 - _020505CE - 2 ; case 0
	.short _0205060C - _020505CE - 2 ; case 1
	.short _0205061A - _020505CE - 2 ; case 2
	.short _02050642 - _020505CE - 2 ; case 3
	.short _02050650 - _020505CE - 2 ; case 4
	.short _02050688 - _020505CE - 2 ; case 5
	.short _02050698 - _020505CE - 2 ; case 6
	.short _020506C2 - _020505CE - 2 ; case 7
	.short _020506D0 - _020505CE - 2 ; case 8
	.short _020506F8 - _020505CE - 2 ; case 9
	.short _02050706 - _020505CE - 2 ; case 10
	.short _0205071C - _020505CE - 2 ; case 11
_020505E6:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	strh r0, [r4, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_02070428
	add r0, r6, #0
	bl sub_020558AC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_0205060C:
	add r0, r6, #0
	bl sub_02055820
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_0205061A:
	bl sub_0206AE0C
	mov r0, #0xac
	str r0, [sp, #0x24]
	sub r0, #0xad
	str r0, [sp, #0x28]
	ldr r0, _02050738 ; =0x0000034F
	add r1, sp, #0x24
	str r0, [sp, #0x2c]
	ldr r0, _0205073C ; =0x00000231
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x34]
	add r0, r6, #0
	bl sub_020539A0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050642:
	add r0, r6, #0
	bl sub_02055868
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050650:
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205074C
	add r0, r5, #0
	bl sub_0205075C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _02050740 ; =0x0000FFFF
	add r0, r6, #0
	mov r1, #3
	mov r2, #0x11
	bl sub_02056B30
	ldr r0, _02050744 ; =0x00000679
	bl sub_02005748
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050688:
	ldr r0, _02050748 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _02050730
	add r0, r1, #1
	strb r0, [r4, #8]
	b _02050730
_02050698:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _02050740 ; =0x0000FFFF
	add r0, r6, #0
	mov r1, #3
	mov r2, #0x10
	bl sub_02056B30
	ldr r0, _02050744 ; =0x00000679
	bl sub_02005748
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_020506C2:
	add r0, r6, #0
	bl sub_02055820
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_020506D0:
	bl sub_0206AE1C
	ldrh r2, [r4, #6]
	ldrh r1, [r4, #4]
	mov r0, #0xa4
	str r0, [sp, #0x10]
	sub r0, #0xa5
	str r0, [sp, #0x14]
	mov r0, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x10
	bl sub_020539A0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_020506F8:
	add r0, r6, #0
	bl sub_02055868
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_02050706:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205074C
	add r0, r6, #0
	bl sub_020558F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02050730
_0205071C:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02070428
	add sp, #0x38
	mov r0, #1
	pop {r4, r5, r6, pc}
_02050730:
	mov r0, #0
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_02050738: .word 0x0000034F
_0205073C: .word 0x00000231
_02050740: .word 0x0000FFFF
_02050744: .word 0x00000679
_02050748: .word 0x021BF67C
	thumb_func_end sub_020505A0

	thumb_func_start sub_0205074C
sub_0205074C: ; 0x0205074C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02062D64
	pop {r4, pc}
	thumb_func_end sub_0205074C

	thumb_func_start sub_0205075C
sub_0205075C: ; 0x0205075C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _020507B0 ; =0x000008C1
	ldr r1, [r4, #0x24]
	bl sub_02020910
	ldr r0, _020507B4 ; =0x000F81B8
	ldr r1, [r4, #0x24]
	bl sub_02020A50
	ldr r0, _020507B8 ; =0x0350523D
	str r0, [sp, #8]
	ldr r0, _020507BC ; =0x0015EDB7
	str r0, [sp, #0xc]
	ldr r0, _020507C0 ; =0x023DA40E
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x24]
	add r0, sp, #8
	bl sub_02020ACC
	ldr r1, _020507C4 ; =0x00000823
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x52
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r4, #0x24]
	add r0, sp, #0
	bl sub_020209D4
	mov r0, #3
	ldr r1, _020507C8 ; =0x0061C000
	ldr r2, [r4, #0x24]
	lsl r0, r0, #0xe
	bl sub_020206BC
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_020507B0: .word 0x000008C1
_020507B4: .word 0x000F81B8
_020507B8: .word 0x0350523D
_020507BC: .word 0x0015EDB7
_020507C0: .word 0x023DA40E
_020507C4: .word 0x00000823
_020507C8: .word 0x0061C000
	thumb_func_end sub_0205075C