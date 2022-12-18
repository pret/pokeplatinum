	.include "macros/function.inc"
	.include "include/ov104_022361B4.inc"

	

	.text


	thumb_func_start ov104_022361B4
ov104_022361B4: ; 0x022361B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _02236508 ; =0x00000A28
	mov r0, #0xb
	add r6, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	ldr r1, _0223650C ; =0x02241AC8
	ldr r2, _02236508 ; =0x00000A28
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _0223650C ; =0x02241AC8
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_020302DC
	str r0, [r4, #8]
	ldr r1, _0223650C ; =0x02241AC8
	str r5, [r4, #4]
	mov r0, #0xb
	str r0, [r4, #0]
	ldr r4, [r1, #0]
	bl sub_02079FF4
	str r0, [r4, #0x28]
	mov r0, #0xb
	bl sub_02079FF4
	str r0, [r4, #0x2c]
	mov r0, #0xa2
	ldr r1, [sp, #0x38]
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r4, [r4, #8]
	bl sub_0203041C
	add r5, r0, #0
	cmp r7, #0
	beq _02236210
	b _022363AA
_02236210:
	ldr r0, _0223650C ; =0x02241AC8
	ldr r1, [r0, #0]
	mov r0, #0
	strb r6, [r1, #0x10]
	strb r0, [r1, #0x11]
	add r0, r4, #0
	bl sub_020302D0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r2, [r0, #0x10]
	cmp r2, #3
	bne _02236236
	ldr r0, [r0, #4]
	bl sub_020507E4
	bl sub_0206B6FC
	b _02236242
_02236236:
	mov r3, #0
	add r0, r5, #0
	mov r1, #9
	str r3, [sp]
	bl sub_02030470
_02236242:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _02236282
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0203068C
	add r5, r0, #0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E5E0
	add r4, r0, #0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E5E0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02030698
	ldr r1, _0223650C ; =0x02241AC8
	ldr r1, [r1, #0]
	strh r0, [r1, #0x14]
	b _02236320
_02236282:
	ldr r0, _0223650C ; =0x02241AC8
	ldr r4, [r0, #0]
	mov r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #4]
	bl sub_0203068C
	add r5, r0, #0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E630
	add r7, r0, #0
	ldrb r0, [r4, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205E658
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205E658
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl sub_020306E4
	ldr r4, _0223650C ; =0x02241AC8
	mov r5, #0
_022362E2:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_0203068C
	add r6, r0, #0
	ldr r0, [r4, #0]
	lsl r1, r5, #0x18
	ldrb r0, [r0, #0x10]
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	add r7, r0, #0
	ldr r0, [r4, #0]
	lsl r1, r5, #0x18
	ldrb r0, [r0, #0x10]
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #1
	bl sub_020306E4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _022362E2
_02236320:
	ldr r0, _0223650C ; =0x02241AC8
	mov r1, #7
	ldr r5, [r0, #0]
	ldrh r0, [r5, #0x14]
	bl sub_020E1F6C
	strh r0, [r5, #0x16]
	mov r0, #0
	str r0, [r5, #0x18]
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x24
	strb r0, [r1]
	add r1, sp, #0x20
	add r0, r5, #0
	ldrh r2, [r1, #0x10]
	add r0, #0x25
	strb r2, [r0]
	add r0, r5, #0
	ldrh r1, [r1, #0x14]
	add r0, #0x26
	strb r1, [r0]
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0203068C
	add r4, r0, #0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	strh r0, [r5, #0x20]
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0203068C
	add r4, r0, #0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xa
	bl sub_02030804
	b _0223642E
_022363AA:
	ldr r0, _0223650C ; =0x02241AC8
	mov r1, #0
	ldr r5, [r0, #0]
	str r1, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02030398
	strb r0, [r5, #0x10]
	mov r2, #0
	str r2, [sp]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02030398
	strb r0, [r5, #0x11]
	ldr r0, _0223650C ; =0x02241AC8
	ldr r6, [r0, #0]
	ldr r0, [r6, #4]
	bl sub_0203068C
	add r7, r0, #0
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E5E0
	str r0, [sp, #0xc]
	ldrb r0, [r5, #0x10]
	bl sub_0205E5E0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_02030698
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, #7
	bl sub_020E1F6C
	mov r5, #0
	strh r0, [r6, #0x16]
	ldr r7, _0223650C ; =0x02241AC8
	add r6, r5, #0
_0223640C:
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #7
	lsr r2, r2, #0x18
	add r3, r6, #0
	str r6, [sp]
	bl sub_02030398
	ldr r1, [r7, #0]
	add r1, r1, r5
	add r1, #0x24
	strb r0, [r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _0223640C
_0223642E:
	ldr r6, _0223650C ; =0x02241AC8
	ldr r7, _02236510 ; =0x0000036A
	mov r4, #0
_02236434:
	ldr r5, [r6, #0]
	ldr r0, [r5, #4]
	bl sub_0207A268
	add r1, r5, r4
	add r1, #0x24
	ldrb r1, [r1]
	bl sub_0207A0FC
	ldr r5, [r6, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r1, r4, #1
	add r1, r5, r1
	strh r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _02236434
	ldr r0, [r5, #4]
	bl sub_0207A268
	str r0, [sp, #8]
	ldr r0, _0223650C ; =0x02241AC8
	mov r1, #0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223B7A8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _022364E8
	ldr r6, _0223650C ; =0x02241AC8
_0223647E:
	ldr r1, [r6, #0]
	ldr r0, [sp, #8]
	add r1, r1, r5
	add r1, #0x24
	ldrb r1, [r1]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x28]
	bl sub_0207A048
	ldr r0, [r6, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x28]
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp, #0x14]
	add r4, r0, #0
	mov r1, #6
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x32
	bls _022364DE
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x32
	bl sub_02075AD0
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0x10
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_022364DE:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r7
	blt _0223647E
_022364E8:
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02236500
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov104_0222E630
_02236500:
	ldr r0, _0223650C ; =0x02241AC8
	ldr r0, [r0, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02236508: .word 0x00000A28
_0223650C: .word 0x02241AC8
_02236510: .word 0x0000036A
	thumb_func_end ov104_022361B4

	thumb_func_start ov104_02236514
ov104_02236514: ; 0x02236514
	push {r3, lr}
	cmp r1, #0
	bne _02236520
	bl ov104_02236528
	pop {r3, pc}
_02236520:
	bl ov104_022365F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02236514

	thumb_func_start ov104_02236528
ov104_02236528: ; 0x02236528
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [r7, #0x28]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r6, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _02236590
	add r5, r7, #0
_02236542:
	ldr r0, [r7, #0x28]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x3a
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	mov r1, #0xe5
	lsl r1, r1, #2
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x3b
	mov r2, #0
	bl sub_02074470
	ldr r1, _022365F0 ; =0x00000396
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_02074470
	mov r1, #0xe6
	lsl r1, r1, #2
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #0
	bl sub_02074470
	ldr r1, _022365F4 ; =0x0000039A
	add r6, r6, #1
	strh r0, [r5, r1]
	ldr r0, [sp, #0x10]
	add r5, #8
	cmp r6, r0
	blt _02236542
_02236590:
	add r0, r7, #0
	bl ov104_0223BB60
	add r1, r0, #0
	add r2, r7, #0
	ldrb r0, [r7, #0x10]
	add r2, #0x30
	mov r3, #0xe
	bl ov104_0223B760
	ldrb r0, [r7, #0x10]
	mov r1, #1
	ldrb r4, [r7, #0x11]
	bl ov104_0223B7DC
	add r5, r0, #0
	ldrb r0, [r7, #0x10]
	bl ov104_0223BA14
	mov r3, #0xa2
	lsl r3, r3, #2
	add r1, r7, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	add r1, r7, r1
	str r1, [sp, #4]
	add r1, r3, #0
	sub r1, #0x10
	add r1, r7, r1
	lsl r0, r0, #0x18
	add r2, r4, #7
	str r1, [sp, #8]
	lsr r0, r0, #0x18
	lsl r1, r4, #1
	lsl r2, r2, #1
	str r0, [sp, #0xc]
	add r1, r7, r1
	add r2, r7, r2
	sub r3, #0x1c
	ldrh r1, [r1, #0x30]
	ldrh r2, [r2, #0x30]
	add r0, r5, #0
	add r3, r7, r3
	bl ov104_0222E4BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022365F0: .word 0x00000396
_022365F4: .word 0x0000039A
	thumb_func_end ov104_02236528

	thumb_func_start ov104_022365F8
ov104_022365F8: ; 0x022365F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	add r5, r0, #0
	bl ov104_022366A4
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_02236608:
	str r7, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #6
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl sub_02030398
	strh r0, [r6, #0x30]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #0xe
	blt _02236608
	mov r6, #0
	add r4, sp, #0x30
	add r7, r5, #0
_02236628:
	mov r0, #0
	str r0, [sp]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	mov r1, #8
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030398
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0x9b
	lsl r0, r0, #2
	strh r1, [r7, r0]
	add r6, r6, #1
	add r4, r4, #2
	add r7, r7, #2
	cmp r6, #4
	blt _02236628
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	add r1, sp, #0x30
	add r2, sp, #0x10
	mov r3, #0
	bl ov104_0222E330
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #0x3c
_02236676:
	add r0, r5, #0
	bl ov104_0223BA10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	add r2, r6, #0
	bl ov104_0223BAA0
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _02236676
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022365F8

	thumb_func_start ov104_022366A4
ov104_022366A4: ; 0x022366A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _022367A6
	add r7, sp, #8
_022366BE:
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #2
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030398
	add r2, sp, #8
	strh r0, [r7, #2]
	add r0, r6, #0
	mov r1, #0xa3
	add r2, #2
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030398
	strb r0, [r7]
	add r0, r6, #0
	mov r1, #0x3a
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #1
	bl sub_02030398
	strb r0, [r7]
	add r0, r6, #0
	mov r1, #0x3b
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02030398
	strb r0, [r7]
	add r0, r6, #0
	mov r1, #0x3c
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	mov r1, #3
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	lsr r2, r2, #0x18
	add r3, r1, #0
	bl sub_02030398
	strb r0, [r7]
	add r0, r6, #0
	mov r1, #0x3d
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030398
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xa0
	add r2, sp, #0xc
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #5
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030398
	add r2, sp, #8
	strh r0, [r7, #2]
	add r0, r6, #0
	mov r1, #6
	add r2, #2
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _022366BE
_022367A6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022366A4

	thumb_func_start ov104_022367AC
ov104_022367AC: ; 0x022367AC
	push {r4, lr}
	add r4, r0, #0
	beq _022367D6
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _022367BC
	bl sub_020181C4
_022367BC:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _022367C6
	bl sub_020181C4
_022367C6:
	ldr r2, _022367D8 ; =0x00000A28
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_020181C4
_022367D6:
	pop {r4, pc}
	; .align 2, 0
_022367D8: .word 0x00000A28
	thumb_func_end ov104_022367AC

	thumb_func_start ov104_022367DC
ov104_022367DC: ; 0x022367DC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r4, #0
	add r5, r7, #0
_022367E6:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov104_02236834
	mov r1, #0xe
	lsl r1, r1, #6
	strh r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #6
	blt _022367E6
	mov r3, #0
	sub r0, r1, #4
_02236802:
	add r2, r6, r3
	ldrb r5, [r2, #8]
	mov r4, #0x37
	add r1, r7, r3
	lsl r4, r4, #4
	strb r5, [r1, r4]
	ldrb r5, [r2, #0xc]
	add r4, r4, #4
	add r3, r3, #1
	strb r5, [r1, r4]
	mov r4, #0xde
	lsl r4, r4, #2
	ldrb r5, [r2, #0x10]
	cmp r3, #4
	strb r5, [r1, r4]
	ldrb r2, [r2, #0x14]
	strb r2, [r1, r0]
	blt _02236802
	ldrh r1, [r6, #0x28]
	ldr r0, _02236830 ; =0x00000A1C
	strh r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236830: .word 0x00000A1C
	thumb_func_end ov104_022367DC

	thumb_func_start ov104_02236834
ov104_02236834: ; 0x02236834
	push {r3, lr}
	cmp r1, #6
	blo _02236842
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
_02236842:
	ldrh r0, [r0, #0x20]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02236834

	thumb_func_start ov104_02236848
ov104_02236848: ; 0x02236848
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	bl sub_0203041C
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223B7DC
	ldrb r1, [r5, #0x10]
	add r0, sp, #0x10
	strb r1, [r0, #8]
	mov r1, #0
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02030308
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_020302F4
	mov r2, #0
	ldrb r1, [r5, #0x11]
	add r0, sp, #0x10
	add r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_02030308
	ldrb r0, [r5, #0x10]
	bl sub_0205E5E0
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E5E0
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020306E4
	cmp r6, #2
	beq _022369BA
	ldrb r0, [r5, #0x10]
	bl sub_0205E608
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E608
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E608
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E608
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030848
	ldrb r0, [r5, #0x10]
	bl sub_0205E608
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E608
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030698
	str r0, [sp, #0xc]
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030698
	add r7, r0, #0
	ldrh r0, [r5, #0x14]
	cmp r0, r6
	bne _0223695E
	ldrb r0, [r5, #0x10]
	bl sub_0205E680
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E680
	bl sub_0205E6A8
	lsl r3, r7, #0x10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	lsr r3, r3, #0x10
	bl sub_02030848
	b _02236984
_0223695E:
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bhs _02236984
	ldrb r0, [r5, #0x10]
	bl sub_0205E680
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E680
	bl sub_0205E6A8
	lsl r3, r7, #0x10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
_02236984:
	add r0, r5, #0
	add r0, #0x27
	ldrb r1, [r0]
	add r0, sp, #0x10
	mov r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x18
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	ldr r0, [sp, #4]
	mov r1, #9
	bl sub_02030430
	ldrb r0, [r5, #0x10]
	cmp r0, #3
	bne _022369BA
	mov r0, #0x6c
	bl sub_0205E6A8
	add r3, r5, #0
	add r3, #0x27
	add r2, r0, #0
	ldrb r3, [r3]
	add r0, r4, #0
	mov r1, #0x6c
	bl sub_020306E4
_022369BA:
	mov r4, #0
	add r6, sp, #0x10
	add r7, sp, #0x10
_022369C0:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #0x30]
	lsl r2, r4, #0x18
	mov r1, #6
	strh r0, [r7]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xe
	blo _022369C0
	mov r4, #0
	add r6, sp, #0x18
	add r7, sp, #0x10
_022369E8:
	add r0, r5, r4
	add r0, #0x24
	ldrb r0, [r0]
	lsl r2, r4, #0x18
	mov r1, #7
	strb r0, [r7, #8]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _022369E8
	ldr r0, [r5, #0x28]
	bl sub_0207A0F8
	mov r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _02236B00
	add r7, sp, #0x10
_02236A1A:
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	strh r0, [r7]
	add r0, sp, #0x10
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #2
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r6, #0
	mov r1, #0x3a
	mov r2, #0
	bl sub_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r6, #0
	mov r1, #0x3b
	mov r2, #0
	bl sub_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #1
	bl sub_02030308
	add r0, r6, #0
	mov r1, #0x3c
	mov r2, #0
	bl sub_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02030308
	add r0, r6, #0
	mov r1, #0x3d
	mov r2, #0
	bl sub_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	mov r1, #3
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	lsr r2, r2, #0x18
	add r3, r1, #0
	bl sub_02030308
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r7]
	add r0, sp, #0x10
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #5
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _02236A1A
_02236B00:
	ldr r0, [r5, #0x2c]
	bl sub_0207A0F8
	add r6, r0, #0
	ldr r4, _02236B44 ; =0x00000000
	beq _02236B3E
	add r7, sp, #0x10
_02236B0E:
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0207A0FC
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0x9b
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	add r0, sp, #0x10
	lsl r2, r4, #0x18
	strh r1, [r0]
	str r7, [sp]
	ldr r0, [r5, #8]
	mov r1, #8
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030308
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blo _02236B0E
_02236B3E:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02236B44: .word 0x00000000
	thumb_func_end ov104_02236848

	thumb_func_start ov104_02236B48
ov104_02236B48: ; 0x02236B48
	ldrb r1, [r0, #0x11]
	add r1, r1, #1
	strb r1, [r0, #0x11]
	ldrb r0, [r0, #0x11]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02236B48

	thumb_func_start ov104_02236B54
ov104_02236B54: ; 0x02236B54
	ldrb r0, [r0, #0x11]
	bx lr
	thumb_func_end ov104_02236B54

	thumb_func_start ov104_02236B58
ov104_02236B58: ; 0x02236B58
	push {r4, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldrb r4, [r2, #0x11]
	mov r3, #7
	mul r3, r1
	add r1, r4, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x17
	add r1, r2, r1
	ldrh r1, [r1, #0x30]
	add r0, sp, #0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end ov104_02236B58

	thumb_func_start ov104_02236B8C
ov104_02236B8C: ; 0x02236B8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_02236B92:
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r6, r0, #0
	lsl r1, r4, #0x18
	ldrb r0, [r5, #0x10]
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	add r7, r0, #0
	lsl r1, r4, #0x18
	ldrb r0, [r5, #0x10]
	lsr r1, r1, #0x18
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #1
	bl sub_020306E4
	add r4, r4, #1
	cmp r4, #3
	blt _02236B92
	add r0, r5, #0
	mov r1, #1
	bl ov104_02236848
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02236B8C

	thumb_func_start ov104_02236BD0
ov104_02236BD0: ; 0x02236BD0
	add r1, r0, #0
	mov r2, #1
	add r1, #0x27
	strb r2, [r1]
	ldrh r1, [r0, #0x16]
	cmp r1, #8
	bhs _02236BE2
	add r1, r1, #1
	strh r1, [r0, #0x16]
_02236BE2:
	ldr r3, _02236BEC ; =ov104_02236848
	mov r1, #0
	strb r1, [r0, #0x11]
	bx r3
	nop
_02236BEC: .word ov104_02236848
	thumb_func_end ov104_02236BD0

	thumb_func_start ov104_02236BF0
ov104_02236BF0: ; 0x02236BF0
	ldr r3, _02236BF4 ; =ov104_0223BAB8
	bx r3
	; .align 2, 0
_02236BF4: .word ov104_0223BAB8
	thumb_func_end ov104_02236BF0

	thumb_func_start ov104_02236BF8
ov104_02236BF8: ; 0x02236BF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	ldrb r4, [r5, #0x11]
	bl ov104_0223B7DC
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223BA14
	mov r3, #0xa2
	lsl r3, r3, #2
	add r1, r5, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r3, #0
	sub r1, #0x10
	add r1, r5, r1
	lsl r0, r0, #0x18
	add r2, r4, #7
	str r1, [sp, #8]
	lsr r0, r0, #0x18
	lsl r1, r4, #1
	lsl r2, r2, #1
	str r0, [sp, #0xc]
	add r1, r5, r1
	add r2, r5, r2
	sub r3, #0x1c
	ldrh r1, [r1, #0x30]
	ldrh r2, [r2, #0x30]
	add r0, r6, #0
	add r3, r5, r3
	bl ov104_0222E4BC
	add r0, r5, #0
	bl ov104_0223BAB8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02236BF8

	thumb_func_start ov104_02236C50
ov104_02236C50: ; 0x02236C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02236C64
	mov r0, #0
	str r0, [sp]
	b _02236C68
_02236C64:
	mov r0, #2
	str r0, [sp]
_02236C68:
	ldrb r0, [r6, #0x10]
	mov r1, #0
	bl ov104_0223B7A8
	add r5, r0, #0
	ldr r0, [r6, #0x28]
	bl sub_0207A0F8
	ldr r4, [sp]
	add r0, r4, #0
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp, #4]
	cmp r1, r0
	bge _02236CDA
_02236C86:
	ldr r0, [r6, #0x28]
	add r1, r4, #0
	bl sub_0207A0FC
	ldr r1, [sp]
	mov r2, #0
	sub r1, r4, r1
	lsl r1, r1, #3
	add r5, r6, r1
	mov r1, #0x3a
	add r7, r0, #0
	bl sub_02074470
	mov r1, #0xe5
	lsl r1, r1, #2
	strh r0, [r5, r1]
	add r0, r7, #0
	mov r1, #0x3b
	mov r2, #0
	bl sub_02074470
	ldr r1, _02236D08 ; =0x00000396
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_02074470
	mov r1, #0xe6
	lsl r1, r1, #2
	strh r0, [r5, r1]
	add r0, r7, #0
	mov r1, #0x3d
	mov r2, #0
	bl sub_02074470
	ldr r1, _02236D0C ; =0x0000039A
	add r4, r4, #1
	strh r0, [r5, r1]
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _02236C86
_02236CDA:
	ldr r0, [r6, #0x28]
	bl ov104_0223BA24
	mov r0, #0x37
	lsl r0, r0, #4
	mov r7, #0
	add r2, r0, #0
	add r3, r0, #0
	add r4, r7, #0
	add r1, r0, #4
	add r2, #8
	add r3, #0xc
_02236CF2:
	add r5, r6, r7
	strb r4, [r5, r0]
	strb r4, [r5, r1]
	strb r4, [r5, r2]
	add r7, r7, #1
	strb r4, [r5, r3]
	cmp r7, #4
	blt _02236CF2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236D08: .word 0x00000396
_02236D0C: .word 0x0000039A
	thumb_func_end ov104_02236C50

	thumb_func_start ov104_02236D10
ov104_02236D10: ; 0x02236D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	add r1, sp, #0x18
	add r4, r0, #0
_02236D1E:
	add r0, r0, #1
	strb r4, [r1]
	add r1, r1, #1
	cmp r0, #0x14
	blt _02236D1E
	strb r4, [r6, #0x12]
	bl sub_0203608C
	cmp r0, #0
	bne _02236D38
	mov r0, #0
	str r0, [sp]
	b _02236D3C
_02236D38:
	mov r0, #2
	str r0, [sp]
_02236D3C:
	ldrb r0, [r6, #0x10]
	mov r1, #0
	bl ov104_0223B7A8
	str r0, [sp, #8]
	ldrb r0, [r6, #0x10]
	mov r1, #1
	bl ov104_0223B7DC
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	add r0, r1, r0
	ldr r1, [sp]
	str r0, [sp, #0xc]
	cmp r1, r0
	bge _02236E12
	add r7, sp, #0x18
_02236D60:
	ldr r0, [r6, #0x28]
	ldr r1, [sp]
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02236E06
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02236DD2
	ldrb r1, [r7]
	add r1, r1, #1
	strb r1, [r7]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _02236DA6
	ldrb r0, [r7, #1]
	add r0, r0, #1
	strb r0, [r7, #1]
	b _02236DBC
_02236DA6:
	lsr r1, r0, #1
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blo _02236DB6
	ldrb r0, [r7, #2]
	add r0, r0, #1
	strb r0, [r7, #2]
	b _02236DBC
_02236DB6:
	ldrb r0, [r7, #3]
	add r0, r0, #1
	strb r0, [r7, #3]
_02236DBC:
	add r0, r5, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02236DD6
	ldrb r0, [r7, #4]
	add r0, r0, #1
	strb r0, [r7, #4]
	b _02236DD6
_02236DD2:
	mov r0, #1
	strb r0, [r6, #0x12]
_02236DD6:
	add r0, r5, #0
	mov r1, #0x3a
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x3c
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x3d
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
_02236E06:
	ldr r0, [sp]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp]
	cmp r1, r0
	blt _02236D60
_02236E12:
	ldr r1, [sp, #4]
	mov r0, #0
	cmp r1, #0
	ble _02236E36
	mov r2, #0xdd
	add r3, sp, #0x18
	lsl r2, r2, #2
_02236E20:
	add r1, r6, r0
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _02236E2E
	ldrb r1, [r3, #8]
	add r1, r1, #1
	strb r1, [r3, #8]
_02236E2E:
	ldr r1, [sp, #4]
	add r0, r0, #1
	cmp r0, r1
	blt _02236E20
_02236E36:
	ldr r0, [sp, #8]
	mov r3, #0
	add r7, r3, #0
	cmp r0, #0
	ble _02236E5E
	mov r0, #0xe5
	lsl r0, r0, #2
_02236E44:
	mov r2, #0
	add r5, r6, #0
_02236E48:
	ldrh r1, [r5, r0]
	add r2, r2, #1
	add r5, r5, #2
	add r3, r3, r1
	cmp r2, #4
	blt _02236E48
	ldr r1, [sp, #8]
	add r7, r7, #1
	add r6, #8
	cmp r7, r1
	blt _02236E44
_02236E5E:
	sub r0, r3, r4
	cmp r0, #5
	bgt _02236E6E
	add r0, sp, #0x18
	ldrb r1, [r0, #5]
	add r1, r1, #1
	strb r1, [r0, #5]
	b _02236E88
_02236E6E:
	cmp r0, #0xa
	bgt _02236E7C
	add r0, sp, #0x18
	ldrb r1, [r0, #6]
	add r1, r1, #1
	strb r1, [r0, #6]
	b _02236E88
_02236E7C:
	cmp r0, #0xf
	bgt _02236E88
	add r0, sp, #0x18
	ldrb r1, [r0, #7]
	add r1, r1, #1
	strb r1, [r0, #7]
_02236E88:
	add r1, sp, #0x18
	ldrb r2, [r1]
	lsl r0, r2, #1
	add r2, r2, r0
	ldr r0, [sp, #0x10]
	add r3, r0, r2
	ldrb r2, [r1, #1]
	lsl r0, r2, #1
	add r0, r2, r0
	add r2, r3, r0
	ldrb r0, [r1, #2]
	lsl r0, r0, #1
	add r2, r2, r0
	ldrb r0, [r1, #3]
	add r2, r2, r0
	ldrb r0, [r1, #4]
	add r2, r2, r0
	ldrb r0, [r1, #5]
	lsl r0, r0, #3
	add r3, r2, r0
	ldrb r2, [r1, #6]
	mov r0, #6
	mul r0, r2
	add r2, r3, r0
	ldrb r0, [r1, #7]
	ldrb r1, [r1, #8]
	lsl r0, r0, #2
	add r2, r2, r0
	mov r0, #7
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _02236ED0
	mov r0, #1
	str r0, [sp, #0x10]
_02236ED0:
	ldr r0, [sp, #0x10]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02236D10

	thumb_func_start ov104_02236ED8
ov104_02236ED8: ; 0x02236ED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0203068C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	str r0, [sp]
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02030698
	add r1, r0, r4
	ldr r0, _02236F6C ; =0x0000270F
	cmp r1, r0
	ble _02236F34
	add r0, r6, #0
	bl sub_0203068C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #4]
	ldr r3, _02236F6C ; =0x0000270F
	add r0, r7, #0
	bl sub_020306E4
	b _02236F5A
_02236F34:
	add r0, r6, #0
	bl sub_0203068C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205E630
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_02030804
_02236F5A:
	add r0, r6, #0
	bl sub_0202CD88
	mov r1, #0x41
	add r2, r4, #0
	bl sub_0202CF70
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02236F6C: .word 0x0000270F
	thumb_func_end ov104_02236ED8

	thumb_func_start ov104_02236F70
ov104_02236F70: ; 0x02236F70
	push {r3, lr}
	cmp r1, #6
	bhi _02236FBC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02236F82: ; jump table
	.short _02236F90 - _02236F82 - 2 ; case 0
	.short _02236F96 - _02236F82 - 2 ; case 1
	.short _02236F9C - _02236F82 - 2 ; case 2
	.short _02236FA2 - _02236F82 - 2 ; case 3
	.short _02236FA8 - _02236F82 - 2 ; case 4
	.short _02236FB0 - _02236F82 - 2 ; case 5
	.short _02236FB8 - _02236F82 - 2 ; case 6
_02236F90:
	bl ov104_0222F3B8
	pop {r3, pc}
_02236F96:
	bl ov104_0222F44C
	pop {r3, pc}
_02236F9C:
	bl ov104_0222F4B8
	pop {r3, pc}
_02236FA2:
	bl ov104_0222F5D4
	pop {r3, pc}
_02236FA8:
	add r1, r2, #0
	bl ov104_0222F6C8
	pop {r3, pc}
_02236FB0:
	add r1, r2, #0
	bl ov104_0222F710
	pop {r3, pc}
_02236FB8:
	bl ov104_0222F758
_02236FBC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02236F70

	thumb_func_start ov104_02236FC0
ov104_02236FC0: ; 0x02236FC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl ov104_0222E924
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02236FDC
	bl sub_02022974
_02236FDC:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02236FEA
	bl sub_02022974
_02236FEA:
	ldrb r0, [r6, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02237032
	mov r0, #0xb
	mov r1, #1
	bl sub_0201A778
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	mov r2, #1
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _022370B8 ; =0x00000253
	add r1, #0xa8
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	add r3, r2, #0
	bl sub_0201A7E8
	add r1, r5, #0
	add r1, #0xa8
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov104_022370C0
	b _022370AA
_02237032:
	mov r0, #0xb
	mov r1, #1
	bl sub_0201A778
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	mov r0, #0xb
	mov r1, #1
	bl sub_0201A778
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1, #0]
	mov r2, #1
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _022370B8 ; =0x00000253
	add r1, #0xa8
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	add r3, r2, #0
	bl sub_0201A7E8
	mov r2, #1
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _022370BC ; =0x0000022B
	add r1, #0xac
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	mov r3, #0x15
	bl sub_0201A7E8
	add r1, r5, #0
	add r1, #0xa8
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov104_022370C0
	add r1, r5, #0
	add r1, #0xac
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov104_022370C0
_022370AA:
	add r0, r5, #0
	add r1, r6, #0
	bl ov104_02237180
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_022370B8: .word 0x00000253
_022370BC: .word 0x0000022B
	thumb_func_end ov104_02236FC0

	thumb_func_start ov104_022370C0
ov104_022370C0: ; 0x022370C0
	push {r4, lr}
	add r4, r1, #0
	ldr r2, _022370DC ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xc
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	pop {r4, pc}
	nop
_022370DC: .word 0x000003D9
	thumb_func_end ov104_022370C0

	thumb_func_start ov104_022370E0
ov104_022370E0: ; 0x022370E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r1, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02237114
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022370FC
	bl sub_02022974
_022370FC:
	add r0, r5, #0
	add r0, #0xa8
	ldr r4, [r0, #0]
	mov r1, #0
	add r0, r4, #0
	bl sub_0200DC9C
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A928
	b _02237170
_02237114:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02237122
	bl sub_02022974
_02237122:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02237130
	bl sub_02022974
_02237130:
	bl sub_0203608C
	cmp r0, #0
	bne _02237144
	add r0, r5, #0
	add r0, #0xa8
	ldr r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xac
	b _0223714E
_02237144:
	add r0, r5, #0
	add r0, #0xac
	ldr r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xa8
_0223714E:
	ldr r6, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A928
	add r0, r6, #0
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	mov r1, #1
	bl sub_0201A928
_02237170:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r5, #0xac
	str r1, [r5, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_022370E0

	thumb_func_start ov104_02237180
ov104_02237180: ; 0x02237180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022371DA
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223719E
	bl sub_02022974
_0223719E:
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02025E38
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0xa8
	ldr r1, [r4, #0]
	add r3, r6, #0
	bl ov104_02237284
	pop {r3, r4, r5, r6, r7, pc}
_022371DA:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022371E8
	bl sub_02022974
_022371E8:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022371F6
	bl sub_02022974
_022371F6:
	bl sub_0203608C
	cmp r0, #0
	bne _0223722A
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	add r6, r0, #0
	ldr r0, _02237280 ; =0x00000A1C
	ldrh r5, [r5, r0]
	b _02237254
_0223722A:
	ldr r0, _02237280 ; =0x00000A1C
	ldrh r6, [r5, r0]
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02030698
	add r5, r0, #0
_02237254:
	mov r0, #0
	bl sub_02032EE8
	add r1, r4, #0
	add r1, #0xa8
	add r2, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	add r3, r6, #0
	bl ov104_02237284
	mov r0, #1
	bl sub_02032EE8
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0xac
	ldr r1, [r4, #0]
	add r3, r5, #0
	bl ov104_02237284
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237280: .word 0x00000A1C
	thumb_func_end ov104_02237180

	thumb_func_start ov104_02237284
ov104_02237284: ; 0x02237284
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r3, [sp, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r5, #0x34]
	mov r0, #0x14
	str r2, [sp, #0x10]
	bl sub_02023790
	add r4, r0, #0
	ldr r1, [r5, #0x34]
	mov r0, #0x14
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xc7
	mov r3, #0xb
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x14]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r7, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x44]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r3, #0x10
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	add r2, r6, #0
	bl sub_0201D738
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x10]
	mov r1, #0
	bl sub_0200B498
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x44]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [sp, #0xc]
	bl sub_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02237284

	thumb_func_start ov104_02237338
ov104_02237338: ; 0x02237338
	ldrb r3, [r0, #0x10]
	ldrh r2, [r0, #0x16]
	cmp r3, #1
	bhi _0223734E
	cmp r2, #8
	blo _02237348
	mov r1, #7
	b _0223735A
_02237348:
	ldr r1, _02237370 ; =0x0223FAB4
	ldrb r1, [r1, r2]
	b _0223735A
_0223734E:
	cmp r2, #8
	blo _02237356
	mov r1, #0x12
	b _0223735A
_02237356:
	ldr r1, _02237374 ; =0x0223FAC0
	ldrb r1, [r1, r2]
_0223735A:
	cmp r3, #0
	bne _0223736A
	ldrh r0, [r0, #0x14]
	cmp r0, #0x15
	beq _02237368
	cmp r0, #0x31
	bne _0223736A
_02237368:
	mov r1, #0x14
_0223736A:
	add r0, r1, #0
	bx lr
	nop
_02237370: .word 0x0223FAB4
_02237374: .word 0x0223FAC0
	thumb_func_end ov104_02237338

	.rodata


	.global Unk_ov104_0223FAB4
Unk_ov104_0223FAB4: ; 0x0223FAB4
	.incbin "incbin/overlay104_rodata.bin", 0x824, 0x830 - 0x824

	.global Unk_ov104_0223FAC0
Unk_ov104_0223FAC0: ; 0x0223FAC0
	.incbin "incbin/overlay104_rodata.bin", 0x830, 0x9


	.bss


	.global Unk_ov104_02241AC8
Unk_ov104_02241AC8: ; 0x02241AC8
	.space 0x4

