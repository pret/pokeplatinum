	.include "macros/function.inc"
	.include "overlay019/ov19_021DB2FC.inc"

	

	.text


	thumb_func_start ov19_021DB2FC
ov19_021DB2FC: ; 0x021DB2FC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	str r1, [r4, #0xc]
	str r3, [r4, #0]
	str r2, [r4, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x1a
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	mov r2, #0x12
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	mov r3, #0xa
	str r0, [r4, #0x10]
	mov r0, #0
	bl sub_0200B144
	str r0, [r4, #0x14]
	mov r0, #0x40
	mov r1, #0xa
	bl sub_02023790
	str r0, [r4, #0x30]
	mov r0, #0x40
	mov r1, #0xa
	bl sub_02023790
	str r0, [r4, #0x34]
	mov r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	str r0, [r4, #0x18]
	mov r0, #0xa
	str r0, [sp]
	add r3, r4, #0
	ldr r0, [sp, #0x20]
	mov r1, #0x19
	mov r2, #1
	add r3, #0x28
	bl sub_020071B4
	str r0, [r4, #0x24]
	cmp r0, #0
	beq _021DB362
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021DB362
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021DB368
_021DB362:
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_021DB368:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB2FC

	thumb_func_start ov19_021DB370
ov19_021DB370: ; 0x021DB370
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021DB3C0
	mov r6, #0
	add r4, r6, #0
_021DB37E:
	ldr r0, [r5, #0x18]
	add r0, r0, r4
	bl sub_0201A8FC
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #2
	blt _021DB37E
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021DB398
	bl sub_020181C4
_021DB398:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DB3A2
	bl sub_0200B190
_021DB3A2:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DB3AC
	bl sub_020237BC
_021DB3AC:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DB3B6
	bl sub_020237BC
_021DB3B6:
	ldr r0, [r5, #0x18]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0x18]
_021DB3C0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB370

	thumb_func_start ov19_021DB3C4
ov19_021DB3C4: ; 0x021DB3C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #0xa
	mov r1, #2
	bl sub_0201A778
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _021DB3F4
	mov r7, #0
	ldr r4, _021DB440 ; =0x021E01F8
	add r5, r7, #0
_021DB3DE:
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0]
	add r1, r1, r5
	add r2, r4, #0
	bl sub_0201A8D4
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #2
	blt _021DB3DE
_021DB3F4:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r6, #0]
	mov r0, #0x26
	mov r3, #1
	bl sub_02006E3C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x26
	mov r1, #0x18
	mov r2, #0
	mov r3, #0xe0
	bl sub_02006E84
	ldr r0, [r6, #0x20]
	ldr r2, _021DB444 ; =0x00000209
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	mov r1, #1
	mov r3, #8
	bl sub_0200DD0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DB440: .word 0x021E01F8
_021DB444: .word 0x00000209
	thumb_func_end ov19_021DB3C4

	thumb_func_start ov19_021DB448
ov19_021DB448: ; 0x021DB448
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	bl sub_0201A9F4
	ldr r3, [r5, #0x18]
	ldrb r0, [r3, #7]
	str r0, [sp]
	ldrb r0, [r3, #8]
	str r0, [sp, #4]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	ldrb r3, [r3, #6]
	ldr r0, [r5, #0]
	bl ov19_021DB4B4
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x30]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x34]
	mov r1, #1
	bl sub_0201D738
	ldr r0, [r5, #0x18]
	bl sub_0201ACCC
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019448
	mov r0, #1
	strh r0, [r5, #0x1c]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB448

	thumb_func_start ov19_021DB4B4
ov19_021DB4B4: ; 0x021DB4B4
	push {r3, r4, r5, r6, r7, lr}
	lsl r1, r1, #0x18
	add r7, r3, #0
	lsr r1, r1, #0x18
	add r6, r2, #0
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	bl sub_02019FE4
	sub r1, r7, #1
	sub r2, r6, #2
	lsl r1, r1, #5
	add r1, r2, r1
	lsl r3, r1, #1
	ldr r2, _021DB558 ; =0x00008209
	add r1, r0, r3
	strh r2, [r0, r3]
	add r0, r2, #1
	mov r2, #0
	strh r0, [r1, #2]
	cmp r4, #0
	bls _021DB4EE
	ldr r0, _021DB55C ; =0x0000820B
	add r3, r1, #0
_021DB4E4:
	add r2, r2, #1
	strh r0, [r3, #4]
	add r3, r3, #2
	cmp r2, r4
	blo _021DB4E4
_021DB4EE:
	lsl r0, r4, #1
	add r2, r1, r0
	ldr r3, _021DB560 ; =0x0000820C
	mov ip, r0
	strh r3, [r2, #4]
	add r0, r3, #1
	strh r0, [r2, #6]
	add r0, r3, #2
	strh r0, [r2, #8]
	add r1, #0x40
	mov r3, #0
	cmp r5, #0
	bls _021DB52A
	mov r0, ip
	add r2, r0, r1
	ldr r0, _021DB564 ; =0x0000820F
	add r7, r0, #1
_021DB510:
	strh r0, [r1]
	strh r7, [r1, #2]
	ldr r6, _021DB568 ; =0x00008212
	add r3, r3, #1
	strh r6, [r2, #4]
	add r6, r6, #1
	strh r6, [r2, #6]
	ldr r6, _021DB56C ; =0x00008214
	add r1, #0x40
	strh r6, [r2, #8]
	add r2, #0x40
	cmp r3, r5
	blo _021DB510
_021DB52A:
	ldr r0, _021DB570 ; =0x00008215
	mov r3, #0
	strh r0, [r1]
	add r0, r0, #1
	strh r0, [r1, #2]
	cmp r4, #0
	bls _021DB546
	ldr r0, _021DB574 ; =0x00008217
	add r2, r1, #0
_021DB53C:
	add r3, r3, #1
	strh r0, [r2, #4]
	add r2, r2, #2
	cmp r3, r4
	blo _021DB53C
_021DB546:
	mov r0, ip
	ldr r2, _021DB578 ; =0x00008218
	add r1, r1, r0
	strh r2, [r1, #4]
	add r0, r2, #1
	strh r0, [r1, #6]
	add r0, r2, #2
	strh r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB558: .word 0x00008209
_021DB55C: .word 0x0000820B
_021DB560: .word 0x0000820C
_021DB564: .word 0x0000820F
_021DB568: .word 0x00008212
_021DB56C: .word 0x00008214
_021DB570: .word 0x00008215
_021DB574: .word 0x00008217
_021DB578: .word 0x00008218
	thumb_func_end ov19_021DB4B4

	thumb_func_start ov19_021DB57C
ov19_021DB57C: ; 0x021DB57C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r0, [r5, #0x1e]
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _021DB594
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0]
	add r1, #0x10
	bl ov19_021DB84C
_021DB594:
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	str r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	bl sub_0201ADA4
	ldr r0, [sp, #0x10]
	mov r6, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #8
	sub r0, r0, r1
	lsl r7, r0, #4
	cmp r1, #0
	bls _021DB608
	ldr r4, [sp, #0x10]
_021DB5B6:
	ldr r3, [r4, #0]
	cmp r3, #0x38
	blt _021DB5D2
	cmp r3, #0x3d
	bgt _021DB5D2
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, #0x22
	ldrb r2, [r2]
	add r0, r5, #0
	sub r3, #0x38
	bl ov19_021DB638
	b _021DB5F8
_021DB5D2:
	add r3, #0x18
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x30]
	add r1, r3, #0
	bl sub_0200B1B8
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB634 ; =0x000B0C0F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x30]
	mov r3, #0xa
	bl sub_0201D78C
_021DB5F8:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, #0x21
	ldrb r0, [r0]
	add r7, #0x10
	add r4, r4, #4
	cmp r6, r0
	blo _021DB5B6
_021DB608:
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov19_021DB748
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0x21
	str r1, [sp, #0x10]
	ldrb r1, [r1]
	bl ov19_021DB684
	ldr r0, [sp, #0x14]
	bl sub_0201ACCC
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019448
	mov r0, #1
	strh r0, [r5, #0x1e]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB634: .word 0x000B0C0F
	thumb_func_end ov19_021DB57C

	thumb_func_start ov19_021DB638
ov19_021DB638: ; 0x021DB638
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #1
	lsl r0, r3
	tst r0, r2
	beq _021DB64A
	mov r4, #0
	b _021DB64C
_021DB64A:
	mov r4, #8
_021DB64C:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp, #8]
	lsl r0, r3, #4
	add r0, r0, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	lsl r2, r3, #0x13
	str r0, [sp, #0x14]
	mov r0, #0xff
	str r0, [sp, #0x18]
	add r0, r1, #0
	ldr r1, [r5, #0x28]
	lsl r3, r4, #0x10
	ldr r1, [r1, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE08
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB638

	thumb_func_start ov19_021DB684
ov19_021DB684: ; 0x021DB684
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02019FE4
	mov r2, #8
	sub r2, r2, r5
	mov ip, r2
	add r0, #0xe6
	lsl r2, r2, #7
	add r2, r0, r2
	ldr r1, _021DB6EC ; =0x00000251
	mov r3, #0x18
	mov r0, ip
	mul r3, r0
	add r4, r1, r3
	mov r6, #0
	lsl r7, r5, #1
	beq _021DB6D0
	mov r0, #1
	lsl r0, r0, #0xe
_021DB6B4:
	mov r3, #0
	add r5, r2, #0
_021DB6B8:
	add r1, r4, #0
	orr r1, r0
	strh r1, [r5]
	add r3, r3, #1
	add r4, r4, #1
	add r5, r5, #2
	cmp r3, #0xc
	blo _021DB6B8
	add r6, r6, #1
	add r2, #0x40
	cmp r6, r7
	blo _021DB6B4
_021DB6D0:
	mov r0, #0xc
	str r0, [sp]
	mov r3, ip
	lsl r3, r3, #1
	ldr r0, [sp, #8]
	str r7, [sp, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #0x13
	add r3, r3, #3
	bl ov19_021DB7BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB6EC: .word 0x00000251
	thumb_func_end ov19_021DB684

	thumb_func_start ov19_021DB6F0
ov19_021DB6F0: ; 0x021DB6F0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DB706
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x18]
	bl ov19_021DB898
	mov r0, #0
	strh r0, [r4, #0x1c]
_021DB706:
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _021DB71A
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0]
	add r1, #0x10
	bl ov19_021DB84C
	mov r0, #0
	strh r0, [r4, #0x1e]
_021DB71A:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019448
	pop {r4, pc}
	thumb_func_end ov19_021DB6F0

	thumb_func_start ov19_021DB724
ov19_021DB724: ; 0x021DB724
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _021DB73C
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0]
	add r1, #0x10
	bl ov19_021DB84C
	mov r0, #0
	strh r0, [r4, #0x1e]
_021DB73C:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019448
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB724

	thumb_func_start ov19_021DB748
ov19_021DB748: ; 0x021DB748
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r4, [r0, #0x18]
	add r0, r6, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #8
	add r4, #0x10
	sub r0, r0, r1
	lsl r5, r0, #4
	mov r0, #0xa
	str r0, [sp]
	lsl r0, r1, #0x14
	lsr r0, r0, #0x10
	lsl r3, r5, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	add r6, #0x20
	ldrb r2, [r6]
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	add r2, r5, r2
	bl sub_02002180
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DB748

	thumb_func_start ov19_021DB790
ov19_021DB790: ; 0x021DB790
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, [r6, #0x18]
	add r7, r1, #0
	add r4, #0x10
	mov r5, #0
_021DB79C:
	add r2, r7, #0
	add r2, #0x22
	ldrb r2, [r2]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, #0
	bl ov19_021DB638
	add r5, r5, #1
	cmp r5, #6
	blt _021DB79C
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB790

	thumb_func_start ov19_021DB7BC
ov19_021DB7BC: ; 0x021DB7BC
	push {r3, r4, r5, r6, r7, lr}
	lsl r1, r1, #0x18
	add r7, r3, #0
	lsr r1, r1, #0x18
	add r6, r2, #0
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl sub_02019FE4
	sub r1, r7, #1
	sub r2, r6, #1
	lsl r1, r1, #5
	add r1, r2, r1
	mov r2, #0x72
	lsl r3, r1, #1
	lsl r2, r2, #8
	strh r2, [r0, r3]
	add r1, r0, r3
	mov r2, #0
	cmp r5, #0
	bls _021DB7F4
	ldr r0, _021DB838 ; =0x00007201
	add r3, r1, #0
_021DB7EA:
	add r2, r2, #1
	strh r0, [r3, #2]
	add r3, r3, #2
	cmp r2, r5
	blo _021DB7EA
_021DB7F4:
	lsl r0, r5, #1
	add r2, r1, r0
	ldr r3, _021DB83C ; =0x00007202
	add r1, #0x40
	mov r7, #0
	strh r3, [r2, #2]
	cmp r4, #0
	bls _021DB818
	ldr r2, _021DB840 ; =0x00007205
	add r6, r0, r1
	add r3, r3, #1
_021DB80A:
	strh r3, [r1]
	strh r2, [r6, #2]
	add r7, r7, #1
	add r6, #0x40
	add r1, #0x40
	cmp r7, r4
	blo _021DB80A
_021DB818:
	ldr r2, _021DB844 ; =0x00007206
	mov r4, #0
	strh r2, [r1]
	cmp r5, #0
	bls _021DB830
	add r3, r1, #0
	add r2, r2, #1
_021DB826:
	add r4, r4, #1
	strh r2, [r3, #2]
	add r3, r3, #2
	cmp r4, r5
	blo _021DB826
_021DB830:
	ldr r2, _021DB848 ; =0x00007208
	add r0, r1, r0
	strh r2, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB838: .word 0x00007201
_021DB83C: .word 0x00007202
_021DB840: .word 0x00007205
_021DB844: .word 0x00007206
_021DB848: .word 0x00007208
	thumb_func_end ov19_021DB7BC

	thumb_func_start ov19_021DB84C
ov19_021DB84C: ; 0x021DB84C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r1, [r4, #4]
	bl sub_02019FE4
	ldrb r1, [r4, #5]
	mov r5, #0
	sub r2, r1, #1
	ldrb r1, [r4, #6]
	sub r1, r1, #1
	lsl r1, r1, #5
	add r1, r2, r1
	lsl r1, r1, #1
	add r2, r0, r1
	ldrb r0, [r4, #8]
	add r0, r0, #2
	beq _021DB896
	add r0, r5, #0
	add r1, r5, #0
_021DB872:
	ldrb r6, [r4, #7]
	add r3, r1, #0
	add r6, r6, #2
	beq _021DB88A
	add r6, r2, #0
_021DB87C:
	strh r0, [r6]
	ldrb r7, [r4, #7]
	add r3, r3, #1
	add r6, r6, #2
	add r7, r7, #2
	cmp r3, r7
	blo _021DB87C
_021DB88A:
	ldrb r3, [r4, #8]
	add r5, r5, #1
	add r2, #0x40
	add r3, r3, #2
	cmp r5, r3
	blo _021DB872
_021DB896:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DB84C

	thumb_func_start ov19_021DB898
ov19_021DB898: ; 0x021DB898
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r1, [r4, #4]
	bl sub_02019FE4
	ldrb r1, [r4, #5]
	mov r5, #0
	sub r2, r1, #2
	ldrb r1, [r4, #6]
	sub r1, r1, #1
	lsl r1, r1, #5
	add r1, r2, r1
	lsl r1, r1, #1
	add r2, r0, r1
	ldrb r0, [r4, #8]
	add r0, r0, #2
	beq _021DB8E2
	add r0, r5, #0
	add r1, r5, #0
_021DB8BE:
	ldrb r6, [r4, #7]
	add r3, r1, #0
	add r6, r6, #5
	beq _021DB8D6
	add r6, r2, #0
_021DB8C8:
	strh r0, [r6]
	ldrb r7, [r4, #7]
	add r3, r3, #1
	add r6, r6, #2
	add r7, r7, #5
	cmp r3, r7
	blo _021DB8C8
_021DB8D6:
	ldrb r3, [r4, #8]
	add r5, r5, #1
	add r2, #0x40
	add r3, r3, #2
	cmp r5, r3
	blo _021DB8BE
_021DB8E2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DB898

	.rodata


	.global Unk_ov19_021E01F8
Unk_ov19_021E01F8: ; 0x021E01F8
	.incbin "incbin/overlay19_rodata.bin", 0x408, 0x10

