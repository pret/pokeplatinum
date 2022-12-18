	.include "macros/function.inc"
	.include "include/ov22_02259C58.inc"

	

	.text


	thumb_func_start ov22_02259C58
ov22_02259C58: ; 0x02259C58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02259C66
	bl sub_02022974
_02259C66:
	cmp r4, #0
	bne _02259C6E
	bl sub_02022974
_02259C6E:
	ldr r0, [r4, #0]
	bl sub_02021AA0
	str r0, [r5, #0]
	cmp r0, #0
	bne _02259C7E
	bl sub_02022974
_02259C7E:
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02259C90
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_02259C90:
	ldr r0, _02259C98 ; =ov22_02259D94
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02259C98: .word ov22_02259D94
	thumb_func_end ov22_02259C58

	thumb_func_start ov22_02259C9C
ov22_02259C9C: ; 0x02259C9C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	bl ov22_02259C58
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_020127E8
	str r0, [r5, #0x10]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259C9C

	thumb_func_start ov22_02259CE8
ov22_02259CE8: ; 0x02259CE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	mov r1, #0x10
	mov r0, #0
_02259CF6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _02259CF6
	pop {r4, pc}
	thumb_func_end ov22_02259CE8

	thumb_func_start ov22_02259D00
ov22_02259D00: ; 0x02259D00
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02259CE8
	ldr r0, [r4, #0x10]
	bl sub_02012870
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02259D00

	thumb_func_start ov22_02259D1C
ov22_02259D1C: ; 0x02259D1C
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _02259D2A
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	blx r2
_02259D2A:
	pop {r3, pc}
	thumb_func_end ov22_02259D1C

	thumb_func_start ov22_02259D2C
ov22_02259D2C: ; 0x02259D2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #2
	add r5, #0x20
_02259D38:
	cmp r4, r7
	beq _02259D44
	add r0, r5, #0
	bl ov22_02259DA4
	b _02259D68
_02259D44:
	cmp r6, #0
	bne _02259D56
	add r0, r5, #0
	bl ov22_02259DB0
	ldr r0, _02259D74 ; =0x0000067D
	bl sub_02005748
	b _02259D68
_02259D56:
	cmp r6, #2
	bne _02259D62
	add r0, r5, #0
	bl ov22_02259D98
	b _02259D68
_02259D62:
	add r0, r5, #0
	bl ov22_02259DB0
_02259D68:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	ble _02259D38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02259D74: .word 0x0000067D
	thumb_func_end ov22_02259D2C

	thumb_func_start ov22_02259D78
ov22_02259D78: ; 0x02259D78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02259D8A
	bl sub_02022974
_02259D8A:
	str r7, [r5, #4]
	str r6, [r5, #8]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02259D78

	thumb_func_start ov22_02259D94
ov22_02259D94: ; 0x02259D94
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259D94

	thumb_func_start ov22_02259D98
ov22_02259D98: ; 0x02259D98
	ldr r3, _02259DA0 ; =sub_02021E50
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	; .align 2, 0
_02259DA0: .word sub_02021E50
	thumb_func_end ov22_02259D98

	thumb_func_start ov22_02259DA4
ov22_02259DA4: ; 0x02259DA4
	ldr r3, _02259DAC ; =sub_02021E50
	ldr r0, [r0, #0]
	mov r1, #0
	bx r3
	; .align 2, 0
_02259DAC: .word sub_02021E50
	thumb_func_end ov22_02259DA4

	thumb_func_start ov22_02259DB0
ov22_02259DB0: ; 0x02259DB0
	ldr r3, _02259DB8 ; =sub_02021E50
	ldr r0, [r0, #0]
	mov r1, #1
	bx r3
	; .align 2, 0
_02259DB8: .word sub_02021E50
	thumb_func_end ov22_02259DB0

	thumb_func_start ov22_02259DBC
ov22_02259DBC: ; 0x02259DBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #0xd
	bl sub_02012744
	str r0, [r5, #0x64]
	add r0, r4, #0
	bl ov22_0225A218
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x30
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #0
	mov r2, #0x30
	mov r3, #0x98
	bl ov22_0225A200
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	add r2, r4, #0
	mov r3, #8
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #1
	mov r2, #8
	mov r3, #0x98
	bl ov22_0225A200
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x60
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #2
	mov r2, #0x60
	mov r3, #0x9c
	bl ov22_0225A200
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x30
	mov r1, #3
	add r2, r4, #0
	mov r3, #0x88
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #3
	mov r2, #0x88
	mov r3, #0x9c
	bl ov22_0225A200
	mov r0, #2
	mov r1, #0xe
	bl sub_02002BB8
	mov r0, #9
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r2, _02259F1C ; =0x00000181
	add r0, r4, #0
	mov r1, #0x1a
	mov r3, #0
	bl ov22_0225A348
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xb8
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	mov r0, #0x2a
	str r0, [sp, #0x10]
	add r0, r5, #0
	ldr r3, [r5, #0x64]
	add r0, #0x40
	mov r1, #4
	add r2, r4, #0
	bl ov22_0225A154
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #4
	mov r2, #0xb8
	mov r3, #0x9c
	bl ov22_0225A200
	add r0, r6, #0
	bl ov22_0225A3D0
	mov r0, #2
	bl sub_02002C60
	mov r0, #1
	str r0, [r5, #0x60]
	add r0, r4, #0
	bl ov22_0225A2A8
	add r0, r5, #0
	add r0, #0x20
	bl ov22_02259D98
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	ldr r2, _02259F20 ; =ov22_0225A02C
	add r0, #0x6c
	mov r1, #5
	add r3, r5, #0
	bl sub_02023FCC
	str r0, [r5, #0x68]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02259F1C: .word 0x00000181
_02259F20: .word ov22_0225A02C
	thumb_func_end ov22_02259DBC

	thumb_func_start ov22_02259F24
ov22_02259F24: ; 0x02259F24
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02259F2C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_022552EC
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255300
	add r0, r4, #0
	bl sub_0201EB50
	add r4, r4, #1
	cmp r4, #5
	blt _02259F2C
	mov r0, #0
	bl sub_0201F9F0
	mov r0, #1
	bl sub_0201F9F0
	mov r5, #0
	add r4, r6, #0
_02259F58:
	add r0, r4, #0
	bl ov22_02259CE8
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #4
	blt _02259F58
	add r0, r6, #0
	add r0, #0x54
	bl sub_0201EE28
	add r0, r6, #0
	add r0, #0x40
	bl ov22_02259D00
	ldr r0, [r6, #0x64]
	bl sub_020127BC
	ldr r0, [r6, #0x68]
	bl sub_02024034
	mov r0, #0
	str r0, [r6, #0x68]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259F24

	thumb_func_start ov22_02259F88
ov22_02259F88: ; 0x02259F88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _02259F96
	bl sub_02022974
_02259F96:
	ldr r0, [r4, #0x68]
	bl sub_0202404C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02259F88

	thumb_func_start ov22_02259FA0
ov22_02259FA0: ; 0x02259FA0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	mov r1, #3
	bl ov22_0225A2D0
	add r0, r4, #0
	add r0, #0x40
	mov r1, #3
	bl ov22_0225A2F4
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	bl ov22_02259D2C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02259FA0

	thumb_func_start ov22_02259FC4
ov22_02259FC4: ; 0x02259FC4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	add r5, r0, #0
_02259FD0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_0225A3DC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _02259FD0
	ldr r0, [sp]
	add r1, r6, #0
	add r0, #0x40
	add r2, r7, #0
	str r0, [sp]
	bl ov22_0225A418
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02259FC4

	thumb_func_start ov22_02259FF4
ov22_02259FF4: ; 0x02259FF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0225A006
	bl sub_02022974
_0225A006:
	cmp r4, #4
	bge _0225A01A
	lsl r0, r4, #4
	ldr r3, [sp, #0x18]
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_02259D78
	pop {r3, r4, r5, r6, r7, pc}
_0225A01A:
	add r5, #0x40
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_02259D78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02259FF4

	thumb_func_start ov22_0225A02C
ov22_0225A02C: ; 0x0225A02C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r6, #4
	bhi _0225A0D4
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A044: ; jump table
	.short _0225A04E - _0225A044 - 2 ; case 0
	.short _0225A06A - _0225A044 - 2 ; case 1
	.short _0225A08C - _0225A044 - 2 ; case 2
	.short _0225A08C - _0225A044 - 2 ; case 3
	.short _0225A0A2 - _0225A044 - 2 ; case 4
_0225A04E:
	add r0, r4, #0
	bl ov22_0225A2D0
	ldr r1, _0225A0DC ; =0x00000681
	add r0, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl ov22_0225A338
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A06A:
	add r0, r4, #0
	add r0, #0x10
	bl ov22_0225A2D0
	add r0, r4, #0
	ldr r1, _0225A0DC ; =0x00000681
	add r0, #0x10
	mov r2, #0
	add r3, r5, #0
	bl ov22_0225A338
	add r4, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A08C:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov22_02259D2C
	lsl r0, r6, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A0A2:
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _0225A0D8
	add r0, r4, #0
	add r0, #0x40
	bl ov22_0225A2D0
	add r0, r4, #0
	add r0, #0x40
	add r1, r5, #0
	bl ov22_0225A2F4
	add r0, r4, #0
	ldr r1, _0225A0E0 ; =0x000005E2
	add r0, #0x40
	mov r2, #0
	add r3, r5, #0
	bl ov22_0225A338
	add r4, #0x40
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A0D4:
	bl sub_02022974
_0225A0D8:
	pop {r4, r5, r6, pc}
	nop
_0225A0DC: .word 0x00000681
_0225A0E0: .word 0x000005E2
	thumb_func_end ov22_0225A02C

	thumb_func_start ov22_0225A0E4
ov22_0225A0E4: ; 0x0225A0E4
	push {r4, r5, r6, lr}
	sub sp, #0x90
	add r6, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x48]
	add r4, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	add r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r5, #0x44]
	mov r2, #0
	mov r1, #1
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #0x54]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0xe
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	str r0, [sp, #0x80]
	str r1, [sp, #0x8c]
	add r0, r6, #0
	add r1, sp, #0x80
	str r2, [sp, #0x3c]
	str r2, [sp, #0x84]
	str r2, [sp, #0x88]
	bl ov22_02259C58
	add sp, #0x90
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A0E4

	thumb_func_start ov22_0225A154
ov22_0225A154: ; 0x0225A154
	push {r4, r5, r6, lr}
	sub sp, #0xa8
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r4, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x48]
	add r6, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x4c]
	add r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0x44]
	mov r2, #0xe
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xbc]
	str r2, [sp, #0x58]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc0]
	add r2, sp, #0x2c
	lsl r0, r0, #0xc
	mov r1, #2
	str r2, [sp, #0x80]
	ldr r2, [sp, #0xb8]
	str r0, [sp, #0x38]
	mov r0, #0
	str r1, [sp, #0x50]
	mov r1, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	str r0, [sp, #0x9c]
	mov r0, #0x13
	str r1, [sp, #0x8c]
	str r6, [sp, #0x94]
	str r2, [sp, #0x90]
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0x4c]
	bl sub_02009DC8
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0x98]
	ldr r0, [sp, #0xb8]
	mov r1, #1
	mov r2, #0xd
	bl sub_02012898
	mov r1, #1
	add r3, r5, #0
	add r2, r1, #0
	add r3, #0x14
	bl sub_0201ED94
	cmp r0, #0
	bne _0225A1F0
	bl sub_02022974
_0225A1F0:
	ldr r0, [r5, #0x18]
	add r1, sp, #0x80
	str r0, [sp, #0xa4]
	add r0, r5, #0
	bl ov22_02259C9C
	add sp, #0xa8
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_0225A154

	thumb_func_start ov22_0225A200
ov22_0225A200: ; 0x0225A200
	lsl r1, r1, #2
	strb r3, [r0, r1]
	add r1, r0, r1
	ldr r0, [sp, #4]
	strb r2, [r1, #2]
	add r0, r3, r0
	strb r0, [r1, #1]
	ldr r0, [sp]
	add r0, r2, r0
	strb r0, [r1, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225A200

	thumb_func_start ov22_0225A218
ov22_0225A218: ; 0x0225A218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x6b
	mov r4, #0
	str r0, [sp, #0xc]
	mov r7, #0x6a
	mov r6, #0x69
_0225A228:
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	str r4, [sp, #4]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl ov22_02255248
	mov r1, #6
	str r4, [sp]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ov22_0225528C
	mov r1, #6
	str r4, [sp]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov22_022552A8
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #3
	str r0, [sp, #0xc]
	add r7, r7, #3
	add r6, r6, #3
	cmp r4, #5
	blt _0225A228
	mov r0, #1
	str r0, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsl r1, r1, #7
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x68
	bl ov22_02255268
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x78
	mov r3, #0
	bl ov22_02255268
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A218

	thumb_func_start ov22_0225A2A8
ov22_0225A2A8: ; 0x0225A2A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0225A2AE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_022552C4
	add r4, r4, #1
	cmp r4, #5
	blt _0225A2AE
	add r0, r5, #0
	mov r1, #0
	bl ov22_022552D8
	add r0, r5, #0
	mov r1, #1
	bl ov22_022552D8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A2A8

	thumb_func_start ov22_0225A2D0
ov22_0225A2D0: ; 0x0225A2D0
	push {r3, lr}
	cmp r1, #0
	bne _0225A2DC
	bl ov22_02259DB0
	pop {r3, pc}
_0225A2DC:
	cmp r1, #2
	bne _0225A2E6
	bl ov22_02259D98
	pop {r3, pc}
_0225A2E6:
	cmp r1, #1
	beq _0225A2EE
	cmp r1, #3
	bne _0225A2F2
_0225A2EE:
	bl ov22_02259DA4
_0225A2F2:
	pop {r3, pc}
	thumb_func_end ov22_0225A2D0

	thumb_func_start ov22_0225A2F4
ov22_0225A2F4: ; 0x0225A2F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0225A310
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0xf
	bl sub_020128C4
	ldr r0, [r5, #0x10]
	mov r1, #4
	bl sub_02012A60
	pop {r3, r4, r5, pc}
_0225A310:
	cmp r4, #1
	bne _0225A31E
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0x13
	bl sub_020128C4
_0225A31E:
	cmp r4, #3
	bne _0225A334
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0x13
	bl sub_020128C4
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl sub_02012A60
_0225A334:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A2F4

	thumb_func_start ov22_0225A338
ov22_0225A338: ; 0x0225A338
	push {r3, lr}
	cmp r3, r2
	bne _0225A346
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0225A346:
	pop {r3, pc}
	thumb_func_end ov22_0225A338

	thumb_func_start ov22_0225A348
ov22_0225A348: ; 0x0225A348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r3, #0
	mov r0, #0
	mov r3, #0xd
	bl sub_0200B144
	add r7, r0, #0
	bne _0225A360
	bl sub_02022974
_0225A360:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0xe
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	bl sub_0201A7A0
	mov r0, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x40]
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A870
	ldr r3, [sp, #0x28]
	mov r0, #2
	add r1, r5, #0
	mov r2, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225A3CC ; =0x00010203
	add r2, r5, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225A3CC: .word 0x00010203
	thumb_func_end ov22_0225A348

	thumb_func_start ov22_0225A3D0
ov22_0225A3D0: ; 0x0225A3D0
	ldr r3, _0225A3D8 ; =sub_0201A928
	mov r1, #1
	bx r3
	nop
_0225A3D8: .word sub_0201A928
	thumb_func_end ov22_0225A3D0

	thumb_func_start ov22_0225A3DC
ov22_0225A3DC: ; 0x0225A3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	lsl r0, r4, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r6, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A3DC

	thumb_func_start ov22_0225A418
ov22_0225A418: ; 0x0225A418
	push {r4, lr}
	add r4, r0, #0
	bl ov22_0225A3DC
	ldr r0, [r4, #0x10]
	bl sub_02012938
	pop {r4, pc}
	thumb_func_end ov22_0225A418