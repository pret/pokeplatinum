	.include "macros/function.inc"
	.include "include/ov22_0225A428.inc"

	

	.text


	thumb_func_start ov22_0225A428
ov22_0225A428: ; 0x0225A428
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #1
	add r5, r0, #0
	tst r1, r6
	beq _0225A442
	mov r2, #0x52
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
_0225A442:
	mov r0, #2
	tst r0, r6
	beq _0225A450
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov22_0225A6E0
_0225A450:
	mov r0, #4
	add r1, r6, #0
	tst r1, r0
	beq _0225A474
	mov r1, #0x1b
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r4, #0]
	add r0, #0x2c
	mov r2, #2
	mov r3, #0x13
	bl ov22_0225A748
_0225A474:
	mov r0, #8
	tst r0, r6
	beq _0225A48C
	ldr r0, [r4, #0x24]
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov22_0225A914
_0225A48C:
	mov r0, #0x10
	tst r0, r6
	beq _0225A4AC
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x1c]
	add r0, #0xa0
	bl ov22_0225AB54
_0225A4AC:
	mov r0, #0x20
	tst r0, r6
	beq _0225A522
	mov r0, #0x1b
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x8b
	str r0, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	add r0, #0xa9
	ldr r1, [r4, #0]
	add r0, r5, r0
	bl ov22_0225A748
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0225A55C ; =0x0001020F
	mov r1, #0x1a
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	add r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	mov r3, #6
	bl ov22_0225A860
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0225A55C ; =0x0001020F
	mov r1, #0x1a
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	add r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov22_0225A860
	mov r0, #0x4d
	lsl r0, r0, #2
	mov r2, #1
	ldr r0, [r5, r0]
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
_0225A522:
	ldr r0, [r4, #4]
	str r0, [r5, #0x30]
	ldr r0, [r4, #8]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl ov22_0225A718
	ldr r0, [r4, #0xc]
	bl sub_02027B50
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl sub_02027AC0
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r1, #8
	orr r0, r6
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225A55C: .word 0x0001020F
	thumb_func_end ov22_0225A428

	thumb_func_start ov22_0225A560
ov22_0225A560: ; 0x0225A560
	push {r4, lr}
	mov r1, #0x4e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	tst r1, r2
	beq _0225A580
	bl ov22_0225A7B8
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #2
	bic r2, r0
	str r2, [r4, r1]
_0225A580:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _0225A59E
	ldr r0, [r4, #0x2c]
	bl ov22_0225A7C0
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #4
	bic r2, r0
	str r2, [r4, r1]
_0225A59E:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #8
	tst r0, r1
	beq _0225A5C0
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x38
	bl ov22_0225AA10
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	bic r2, r0
	str r2, [r4, r1]
_0225A5C0:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0225A5E2
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0xa0
	bl ov22_0225AC58
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x10
	bic r2, r0
	str r2, [r4, r1]
_0225A5E2:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0x20
	tst r1, r2
	beq _0225A602
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov22_0225A7C0
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x20
	bic r2, r0
	str r2, [r4, r1]
_0225A602:
	mov r2, #0x52
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov22_0225A560

	thumb_func_start ov22_0225A610
ov22_0225A610: ; 0x0225A610
	push {r3, lr}
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	beq _0225A624
	add r0, #0xa0
	bl ov22_0225AC8C
_0225A624:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A610

	thumb_func_start ov22_0225A628
ov22_0225A628: ; 0x0225A628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #4
	add r6, r2, #0
	add r7, r3, #0
	tst r0, r1
	bne _0225A644
	bl sub_02022974
_0225A644:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xff
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_0225A7CC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A628

	thumb_func_start ov22_0225A660
ov22_0225A660: ; 0x0225A660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #4
	add r6, r2, #0
	add r7, r3, #0
	tst r0, r1
	bne _0225A67C
	bl sub_02022974
_0225A67C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_0225A814
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A660

	thumb_func_start ov22_0225A6A0
ov22_0225A6A0: ; 0x0225A6A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov22_0225A6A0

	thumb_func_start ov22_0225A6B8
ov22_0225A6B8: ; 0x0225A6B8
	ldr r3, _0225A6C0 ; =ov22_0225A9C8
	add r0, #0x38
	bx r3
	nop
_0225A6C0: .word ov22_0225A9C8
	thumb_func_end ov22_0225A6B8

	thumb_func_start ov22_0225A6C4
ov22_0225A6C4: ; 0x0225A6C4
	add r0, #0xbc
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225A6C4

	thumb_func_start ov22_0225A6CC
ov22_0225A6CC: ; 0x0225A6CC
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225A6CC

	thumb_func_start ov22_0225A6D4
ov22_0225A6D4: ; 0x0225A6D4
	ldr r3, _0225A6DC ; =ov22_0225AF34
	add r0, #0xd0
	bx r3
	nop
_0225A6DC: .word ov22_0225AF34
	thumb_func_end ov22_0225A6D4

	thumb_func_start ov22_0225A6E0
ov22_0225A6E0: ; 0x0225A6E0
	push {r3, lr}
	sub sp, #0x30
	str r1, [sp]
	mov r1, #0x19
	str r1, [sp, #4]
	mov r1, #0xe0
	str r1, [sp, #8]
	mov r1, #0xe1
	str r1, [sp, #0xc]
	mov r2, #0
	mov r1, #0xe2
	str r1, [sp, #0x10]
	mov r1, #4
	str r1, [sp, #0x1c]
	mov r1, #1
	str r1, [sp, #0x20]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	add r1, sp, #0
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	bl ov22_022597BC
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A6E0

	thumb_func_start ov22_0225A718
ov22_0225A718: ; 0x0225A718
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	mov r2, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_0200DD0C
	mov r0, #4
	mov r1, #0x40
	mov r2, #0xe
	bl sub_02002E98
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_0225A718

	thumb_func_start ov22_0225A748
ov22_0225A748: ; 0x0225A748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	mov r0, #0xe
	mov r1, #1
	add r4, r2, #0
	bl sub_0201A778
	str r0, [r5, #0]
	bl sub_0201A7A0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r3, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsr r3, r3, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_0201A7E8
	ldr r0, [r5, #0]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0225A7AC
	mov r2, #1
	ldr r0, [r5, #0]
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
_0225A7AC:
	ldr r0, [r5, #0]
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A748

	thumb_func_start ov22_0225A7B8
ov22_0225A7B8: ; 0x0225A7B8
	ldr r3, _0225A7BC ; =ov22_02259804
	bx r3
	; .align 2, 0
_0225A7BC: .word ov22_02259804
	thumb_func_end ov22_0225A7B8

	thumb_func_start ov22_0225A7C0
ov22_0225A7C0: ; 0x0225A7C0
	ldr r3, _0225A7C8 ; =sub_0201A928
	mov r1, #1
	bx r3
	nop
_0225A7C8: .word sub_0201A928
	thumb_func_end ov22_0225A7C0

	thumb_func_start ov22_0225A7CC
ov22_0225A7CC: ; 0x0225A7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0225A810 ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov22_0225A860
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A810: .word 0x0001020F
	thumb_func_end ov22_0225A7CC

	thumb_func_start ov22_0225A814
ov22_0225A814: ; 0x0225A814
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0225A85C ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov22_0225A8B4
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225A85C: .word 0x0001020F
	thumb_func_end ov22_0225A814

	thumb_func_start ov22_0225A860
ov22_0225A860: ; 0x0225A860
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r3, #0
	mov r0, #0
	mov r3, #0xd
	bl sub_0200B144
	add r5, r0, #0
	bne _0225A878
	bl sub_02022974
_0225A878:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0201D78C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B190
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A860

	thumb_func_start ov22_0225A8B4
ov22_0225A8B4: ; 0x0225A8B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x38]
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0225A8CC
	bl sub_02022974
_0225A8CC:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0xd
	bl sub_0200B144
	add r5, r0, #0
	bne _0225A8E0
	bl sub_02022974
_0225A8E0:
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200B1EC
	str r0, [r4, #0]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	add r0, r7, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A8B4

	thumb_func_start ov22_0225A914
ov22_0225A914: ; 0x0225A914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r1, #0
	mov r1, #0x67
	str r1, [sp]
	mov r1, #0xe1
	str r1, [sp, #4]
	mov r1, #0x66
	str r1, [sp, #8]
	mov r1, #0x65
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x7d
	add r4, r2, #0
	str r3, [sp, #0x1c]
	lsl r1, r1, #4
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	str r0, [sp, #0x18]
	add r1, r4, #0
	mov r2, #0xe
	bl ov22_0225AA34
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl ov22_0225AAF4
	add r0, sp, #0x48
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x3c]
	mov r0, #0xe
	str r0, [sp, #0x44]
	mov r0, #0x68
	ldr r7, [sp, #0x24]
	str r5, [sp, #0x28]
	str r0, [sp, #0x20]
_0225A96A:
	ldr r0, [sp, #0x20]
	mov r6, #0
	str r0, [sp, #0x34]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	str r1, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	lsl r1, r7, #2
	mov r4, #0x26
	add r5, r0, r1
_0225A984:
	str r4, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x28
	bl sub_02021B90
	mov r1, #1
	str r0, [r5, #0x10]
	bl sub_02021D6C
	ldr r0, [sp, #0x1c]
	add r1, r6, r7
	cmp r1, r0
	blt _0225A9A8
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_02021CAC
_0225A9A8:
	add r6, r6, #1
	add r4, #0x12
	add r5, r5, #4
	cmp r6, #0xa
	blt _0225A984
	ldr r0, [sp, #0x20]
	add r7, #0xa
	add r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225A96A
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A914

	thumb_func_start ov22_0225A9C8
ov22_0225A9C8: ; 0x0225A9C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, [r7, #0x60]
	add r5, r1, #0
	cmp r6, r5
	bge _0225A9EE
	cmp r6, r5
	bge _0225AA0C
	lsl r0, r6, #2
	add r4, r7, r0
_0225A9DC:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02021D6C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r5
	blt _0225A9DC
	b _0225AA0C
_0225A9EE:
	cmp r6, r5
	ble _0225AA0C
	sub r6, r6, #1
	cmp r6, r5
	blt _0225AA0C
	lsl r0, r6, #2
	add r4, r7, r0
_0225A9FC:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02021D6C
	sub r6, r6, #1
	sub r4, r4, #4
	cmp r6, r5
	bge _0225A9FC
_0225AA0C:
	str r5, [r7, #0x60]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A9C8

	thumb_func_start ov22_0225AA10
ov22_0225AA10: ; 0x0225AA10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r5, r6, #0
_0225AA1A:
	ldr r0, [r5, #0x10]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x14
	blt _0225AA1A
	add r0, r6, #0
	add r1, r7, #0
	bl ov22_0225AAC0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AA10

	thumb_func_start ov22_0225AA34
ov22_0225AA34: ; 0x0225AA34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	ldr r7, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	add r5, r0, #0
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r4, r1, #0
	str r6, [sp, #8]
	ldr r0, [r4, #0]
	str r3, [sp, #0x10]
	add r1, r3, #0
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0]
	bl sub_0200A3DC
	ldr r0, [r5, #0]
	bl sub_02009D4C
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	mov r3, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_02009B04
	str r0, [r5, #4]
	bl sub_0200A640
	ldr r0, [r5, #4]
	bl sub_02009D4C
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	mov r3, #0
	bl sub_02009BC4
	ldr r2, [sp, #0x34]
	str r0, [r5, #8]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AA34

	thumb_func_start ov22_0225AAC0
ov22_0225AAC0: ; 0x0225AAC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0200A4E4
	ldr r0, [r5, #4]
	bl sub_0200A6DC
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl sub_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl sub_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225AAC0

	thumb_func_start ov22_0225AAF4
ov22_0225AAF4: ; 0x0225AAF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02009E08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl sub_02009E08
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl sub_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl sub_02009E08
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl sub_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AAF4

	thumb_func_start ov22_0225AB54
ov22_0225AB54: ; 0x0225AB54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0xe5
	str r1, [sp]
	mov r1, #0xe6
	str r1, [sp, #4]
	mov r1, #0xe4
	str r1, [sp, #8]
	mov r1, #0xe3
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0225AC50 ; =0x00000BB8
	add r5, r2, #0
	str r3, [sp, #0x18]
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	add r7, r0, #0
	add r1, r5, #0
	mov r2, #0xe
	bl ov22_0225AA34
	add r0, r7, #0
	add r1, r5, #0
	add r2, sp, #0x3c
	mov r3, #0
	bl ov22_0225AAF4
	add r0, sp, #0x3c
	str r0, [sp, #0x20]
	mov r2, #2
	mov r0, #0xe
	mov r1, #0x3a
	str r0, [sp, #0x38]
	lsl r1, r1, #0xc
	lsl r0, r2, #0x14
	mov r6, #0
	str r4, [sp, #0x1c]
	str r1, [sp, #0x28]
	add r0, r1, r0
	str r2, [sp, #0x34]
	str r6, [sp, #0x30]
	str r0, [sp, #0x28]
	mov r4, #0x67
	add r5, r7, #0
_0225ABB0:
	str r4, [sp, #0x24]
	lsl r0, r4, #0xc
	str r0, [sp, #0x24]
	add r0, sp, #0x1c
	bl sub_02021B90
	str r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x18
	add r5, r5, #4
	cmp r6, #2
	blt _0225ABB0
	ldr r0, [sp, #0x18]
	mov r1, #0x1e
	str r0, [r7, #0x1c]
	mul r1, r0
	str r1, [r7, #0x20]
	ldr r1, [sp, #0x7c]
	str r1, [r7, #0x2c]
	str r0, [r1, #0]
	ldr r1, [r7, #0x2c]
	str r0, [r1, #8]
	add r0, r7, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r7, #0
	bl ov22_0225ACE4
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xc1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	ldr r1, [sp, #0x78]
	add r0, #0x18
	mov r2, #0xa
	mov r3, #8
	bl ov22_0225A748
	ldr r0, [r7, #0x18]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	mov r3, #4
	ldr r0, _0225AC54 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xff
	str r2, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r1, #0x1a
	add r2, #0x82
	bl ov22_0225A860
	mov r0, #0x48
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0225AC54 ; =0x00010200
	mov r2, #0xff
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r1, #0x1a
	add r2, #0x82
	mov r3, #5
	bl ov22_0225A860
	ldr r0, [r7, #0x18]
	bl sub_0201A954
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225AC50: .word 0x00000BB8
_0225AC54: .word 0x00010200
	thumb_func_end ov22_0225AB54

	thumb_func_start ov22_0225AC58
ov22_0225AC58: ; 0x0225AC58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	cmp r0, #0
	beq _0225AC68
	bl sub_0200DA58
_0225AC68:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0225AC72
	bl sub_0200DA58
_0225AC72:
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_0225AAC0
	ldr r0, [r5, #0x18]
	bl ov22_0225A7C0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x94
	bl sub_020D5124
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225AC58

	thumb_func_start ov22_0225AC8C
ov22_0225AC8C: ; 0x0225AC8C
	push {r4, lr}
	add r4, r0, #0
	bl ov22_0225AD5C
	ldr r0, [r4, #0x20]
	mov r1, #0x1e
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_02095C60
	add r0, r4, #0
	bl ov22_0225ACBC
	add r0, r4, #0
	bl ov22_0225ACE4
	add r4, #0x30
	add r0, r4, #0
	bl ov22_0225AE9C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AC8C

	thumb_func_start ov22_0225ACBC
ov22_0225ACBC: ; 0x0225ACBC
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	ldr r2, [r1, #0]
	ldr r1, [r0, #0x1c]
	cmp r1, r2
	beq _0225ACDC
	str r2, [r0, #0x1c]
	cmp r2, #0xa
	bgt _0225ACDC
	add r1, r0, #0
	add r1, #0x30
	bl ov22_0225ADC0
	ldr r0, _0225ACE0 ; =0x00000683
	bl sub_02005748
_0225ACDC:
	pop {r3, pc}
	nop
_0225ACE0: .word 0x00000683
	thumb_func_end ov22_0225ACBC

	thumb_func_start ov22_0225ACE4
ov22_0225ACE4: ; 0x0225ACE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r1, #1
	str r0, [sp]
	mov r0, #0xa
	add r4, r1, #0
	mul r4, r0
	mov r7, #0
	add r5, r6, #0
_0225ACFA:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_020E1F6C
	str r0, [sp, #4]
	cmp r0, #0xa
	ble _0225AD0C
	bl sub_02022974
_0225AD0C:
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]
	bl sub_02021D6C
	ldr r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	mul r1, r4
	sub r0, r0, r1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225AD4E
	ldr r0, [r6, #0x1c]
	cmp r0, #0xa
	bgt _0225AD4E
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_02021EC4
	cmp r7, #1
	bne _0225AD4E
	add r1, r6, #0
	add r1, #0x90
	mov r0, #1
	str r0, [r1, #0]
_0225AD4E:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _0225ACFA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225ACE4

	thumb_func_start ov22_0225AD5C
ov22_0225AD5C: ; 0x0225AD5C
	ldr r1, [r0, #0x20]
	sub r1, r1, #1
	bmi _0225AD64
	str r1, [r0, #0x20]
_0225AD64:
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225AD5C

	thumb_func_start ov22_0225AD68
ov22_0225AD68: ; 0x0225AD68
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov22_0225AD68

	thumb_func_start ov22_0225AD78
ov22_0225AD78: ; 0x0225AD78
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0225ADB8
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0225ADB8:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AD78

	thumb_func_start ov22_0225ADC0
ov22_0225ADC0: ; 0x0225ADC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x3a
	mov r0, #2
	lsl r1, r1, #0xc
	lsl r0, r0, #0x14
	ldr r4, [sp, #4]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r6, [sp]
	mov r7, #0
	mov r5, #0x67
	str r0, [sp, #8]
_0225ADE2:
	ldr r0, [r6, #0x10]
	mov r1, #2
	str r0, [r4, #4]
	bl sub_02021CF8
	ldr r2, [sp, #8]
	str r5, [sp, #0xc]
	lsl r0, r5, #0xc
	add r2, #0xc
	add r3, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	str r2, [sp, #8]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r7, r7, #1
	str r0, [r2, #0]
	add r6, r6, #4
	add r4, r4, #4
	add r5, #0x18
	cmp r7, #2
	blt _0225ADE2
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	mov r0, #0xa
	sub r0, r0, r1
	cmp r0, #0
	ble _0225AE3C
	lsl r0, r0, #0xc
	ldr r2, _0225AE98 ; =0x00000266
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	lsl r0, r2, #1
	add r4, r1, r0
	b _0225AE40
_0225AE3C:
	mov r4, #1
	lsl r4, r4, #0xc
_0225AE40:
	ldr r0, [sp, #4]
	mov r2, #1
	add r0, #0x24
	add r1, r4, #0
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl ov22_0225AD68
	mov r2, #6
	asr r1, r4, #0x1f
	add r0, r4, #0
	lsl r2, r2, #0xe
	mov r3, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	mov r0, #6
	lsl r0, r0, #0xe
	sub r4, r1, r0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r0, #0x38
	mov r3, #0x10
	bl ov22_0225AD68
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r0, #0x4c
	mov r2, #0
	mov r3, #0x10
	bl ov22_0225AD68
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225AE98: .word 0x00000266
	thumb_func_end ov22_0225ADC0

	thumb_func_start ov22_0225AE9C
ov22_0225AE9C: ; 0x0225AE9C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0225AF2E
	add r0, r5, #0
	add r0, #0x24
	bl ov22_0225AD78
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov22_0225AD78
	add r0, r5, #0
	add r0, #0x4c
	bl ov22_0225AD78
	ldr r0, [r5, #0x24]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl sub_02021C70
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl sub_02021C70
	add r6, r5, #0
	add r6, #0xc
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	ldr r0, [r5, #0x38]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl sub_02021C50
	add r6, r5, #0
	add r6, #0x18
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl sub_02021C50
	cmp r4, #0
	beq _0225AF2E
	mov r0, #0
	str r0, [r5, #0]
_0225AF2E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AE9C

	thumb_func_start ov22_0225AF34
ov22_0225AF34: ; 0x0225AF34
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0225AF3E
	mov r0, #1
	bx lr
_0225AF3E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225AF34