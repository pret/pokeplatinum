	.include "macros/function.inc"
	.include "include/unk_02020AEC.inc"

	

	.text


	thumb_func_start sub_02020AEC
sub_02020AEC: ; 0x02020AEC
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	str r2, [r0, #4]
	add r1, r0, #0
	str r2, [r0, #8]
	add r1, #0xd0
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd8
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xdc
	str r2, [r1, #0]
	strb r2, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02020AEC

	thumb_func_start sub_02020B14
sub_02020B14: ; 0x02020B14
	mov r3, #0
	str r3, [r0, #0x28]
	add r1, r0, #0
	str r3, [r0, #0x2c]
	add r1, #0x84
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0x88
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0x8c
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0x90
	add r2, r0, #0
	str r3, [r1, #0]
	add r2, #0xa0
	mov r1, #0x10
_02020B38:
	strb r3, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02020B38
	add r2, r0, #0
	mov r1, #0
	add r2, #0x94
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0x98
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0x9c
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0xb0
	str r1, [r2, #0]
	str r1, [r0, #0]
	str r1, [r0, #4]
	mov r2, #1
	str r1, [r0, #8]
	lsl r2, r2, #0xc
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	add r2, r0, #0
	str r1, [r0, #0x18]
	add r2, #0xb6
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0xb4
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0xbc
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0xc0
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0x24
	strb r1, [r2]
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02020B14

	thumb_func_start sub_02020B90
sub_02020B90: ; 0x02020B90
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02020BCC ; =0x021C0774
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02020BA2
	bl sub_02022974
_02020BA2:
	mov r1, #0xe0
	add r0, r4, #0
	mul r1, r6
	bl sub_02018144
	ldr r7, _02020BCC ; =0x021C0774
	mov r4, #0
	str r0, [r7, #0]
	str r6, [r7, #4]
	cmp r6, #0
	ble _02020BCA
	add r5, r4, #0
_02020BBA:
	ldr r0, [r7, #0]
	add r0, r0, r5
	bl sub_02020AEC
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r6
	blt _02020BBA
_02020BCA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02020BCC: .word 0x021C0774
	thumb_func_end sub_02020B90

	thumb_func_start sub_02020BD0
sub_02020BD0: ; 0x02020BD0
	push {r4, r5, r6, lr}
	ldr r6, _02020C04 ; =0x021C0774
	mov r4, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _02020BF0
	add r5, r4, #0
_02020BDE:
	ldr r0, [r6, #0]
	add r0, r0, r5
	bl sub_02020CCC
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r0
	blt _02020BDE
_02020BF0:
	ldr r0, _02020C04 ; =0x021C0774
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02020C04 ; =0x021C0774
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	pop {r4, r5, r6, pc}
	nop
_02020C04: .word 0x021C0774
	thumb_func_end sub_02020BD0

	thumb_func_start sub_02020C08
sub_02020C08: ; 0x02020C08
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02020C40 ; =0x021C0774
	mov r4, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _02020C3C
	add r5, r4, #0
	mov r7, #2
_02020C18:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _02020C26
	bl sub_02020DA8
_02020C26:
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _02020C32
	strb r7, [r1, #3]
_02020C32:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r0
	blt _02020C18
_02020C3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02020C40: .word 0x021C0774
	thumb_func_end sub_02020C08

	thumb_func_start sub_02020C44
sub_02020C44: ; 0x02020C44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02020D74
	add r4, r0, #0
	bne _02020C58
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02020C58:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r4, #1]
	ldr r2, [r5, #0]
	mov r1, #0xc4
	ldr r0, [r5, #4]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xc
	bl sub_02020B14
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xcc
	str r1, [r0, #0]
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_020216A8
	ldr r0, [r5, #4]
	mov r1, #0x10
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [r5, #4]
	mov r2, #4
	bl sub_020182CC
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	bl sub_0201DD00
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02020C44

	thumb_func_start sub_02020CCC
sub_02020CCC: ; 0x02020CCC
	push {r4, lr}
	add r4, r0, #0
	bne _02020CDA
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02020CDA:
	ldrb r1, [r4]
	cmp r1, #0
	beq _02020D0E
	bl sub_02020D14
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_0201DD3C
	add r0, r4, #0
	bl sub_02020AEC
_02020D0E:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02020CCC

	thumb_func_start sub_02020D14
sub_02020D14: ; 0x02020D14
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _02020D24
	bne _02020D20
	bl sub_02022974
_02020D20:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02020D24:
	ldrb r1, [r0]
	cmp r1, #0
	beq _02020D4A
	add r1, r0, #0
	add r1, #0xc8
	add r4, r0, #0
	ldr r1, [r1, #0]
	add r4, #0xc
	cmp r1, r4
	beq _02020D4A
_02020D38:
	add r0, r1, #0
	add r0, #0xbc
	ldr r5, [r0, #0]
	add r0, r1, #0
	bl sub_020211FC
	add r1, r5, #0
	cmp r5, r4
	bne _02020D38
_02020D4A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02020D14

	thumb_func_start sub_02020D50
sub_02020D50: ; 0x02020D50
	push {r4, lr}
	add r4, r0, #0
	bne _02020D5A
	bl sub_02022974
_02020D5A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _02020D64
	mov r0, #0
	pop {r4, pc}
_02020D64:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02020D50

	thumb_func_start sub_02020D68
sub_02020D68: ; 0x02020D68
	ldrb r1, [r0, #3]
	cmp r1, #2
	bne _02020D72
	mov r1, #0
	strb r1, [r0, #3]
_02020D72:
	bx lr
	thumb_func_end sub_02020D68

	thumb_func_start sub_02020D74
sub_02020D74: ; 0x02020D74
	push {r3, r4}
	ldr r0, _02020DA4 ; =0x021C0774
	mov r1, #0
	ldr r3, [r0, #4]
	cmp r3, #0
	ble _02020D9C
	ldr r4, [r0, #0]
	add r2, r4, #0
_02020D84:
	ldrb r0, [r2]
	cmp r0, #0
	bne _02020D94
	mov r0, #0xe0
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4}
	bx lr
_02020D94:
	add r1, r1, #1
	add r2, #0xe0
	cmp r1, r3
	blt _02020D84
_02020D9C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_02020DA4: .word 0x021C0774
	thumb_func_end sub_02020D74

	thumb_func_start sub_02020DA8
sub_02020DA8: ; 0x02020DA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bne _02020DB4
	bl sub_02022974
_02020DB4:
	add r0, sp, #0
	bl sub_020BB4C8
	add r0, r5, #0
	add r0, #0xc8
	ldr r4, [r0, #0]
	add r5, #0xc
	cmp r4, r5
	beq _02020E24
	add r6, sp, #0
_02020DC8:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #1
	bne _02020E1C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02020DDE
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	blx r2
_02020DDE:
	add r0, r4, #0
	bl sub_0202185C
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #3
	bne _02020DF6
	add r0, r4, #0
	bl sub_0202144C
	b _02020E00
_02020DF6:
	cmp r0, #2
	bne _02020E00
	add r0, r4, #0
	bl sub_02021414
_02020E00:
	ldr r2, [r4, #0x18]
	cmp r2, #0
	bne _02020E08
	add r2, r6, #0
_02020E08:
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x30
	add r1, r4, #0
	add r3, #0xc
	bl sub_0201CA74
	add r0, r4, #0
	bl sub_0202187C
_02020E1C:
	add r4, #0xbc
	ldr r4, [r4, #0]
	cmp r4, r5
	bne _02020DC8
_02020E24:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02020DA8

	thumb_func_start sub_02020E28
sub_02020E28: ; 0x02020E28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x28]
	add r4, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202105C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021078
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020210F4
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02020E5E
	add r6, #0xc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02021744
_02020E5E:
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb4
	strb r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0xb6
	strh r1, [r0]
	add r5, #0xb8
	str r1, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02020E28

	thumb_func_start sub_02020E78
sub_02020E78: ; 0x02020E78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x28]
	add r4, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202105C
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02020EA2
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02020FC8
_02020EA2:
	add r0, r5, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0x24]
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021148
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202117C
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02020EDE
	add r6, #0xc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02021744
_02020EDE:
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	strb r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0xb6
	strh r1, [r0]
	add r5, #0xb8
	str r1, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02020E78

	thumb_func_start sub_02020EF8
sub_02020EF8: ; 0x02020EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020AE8C4
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020AE8D8
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020AEA04
	str r0, [sp]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02020F36
	ldr r3, _02020F88 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r2, r1, #0
	blx r3
	str r0, [r4, #0]
	cmp r0, #0
	bne _02020F3A
	bl sub_02022974
	b _02020F3A
_02020F36:
	mov r0, #0
	str r0, [r4, #0]
_02020F3A:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02020F56
	ldr r3, _02020F88 ; =0x02100DEC
	mov r1, #1
	ldr r3, [r3, #0]
	mov r2, #0
	blx r3
	str r0, [r6, #0]
	cmp r0, #0
	bne _02020F5A
	bl sub_02022974
	b _02020F5A
_02020F56:
	mov r0, #0
	str r0, [r6, #0]
_02020F5A:
	ldr r0, [sp]
	cmp r0, #0
	beq _02020F7E
	ldr r3, _02020F8C ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	mov r2, #0
	blx r3
	str r0, [r7, #0]
	cmp r0, #0
	bne _02020F82
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02020F7E:
	mov r0, #0
	str r0, [r7, #0]
_02020F82:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02020F88: .word 0x02100DEC
_02020F8C: .word 0x02100DF4
	thumb_func_end sub_02020EF8

	thumb_func_start sub_02020F90
sub_02020F90: ; 0x02020F90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_020AE9B8
	add r0, r5, #0
	bl sub_020AEA70
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02020F90

	thumb_func_start sub_02020FA4
sub_02020FA4: ; 0x02020FA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r2, #0]
	ldr r2, [r3, #0]
	add r5, r0, #0
	bl sub_020AE8EC
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_020AEA18
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020AF1E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02020FA4

	thumb_func_start sub_02020FC8
sub_02020FC8: ; 0x02020FC8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _02020FDA
	ldr r1, _02020FF4 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
_02020FDA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02020FE6
	ldr r1, _02020FF4 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
_02020FE6:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02020FF2
	ldr r1, _02020FF8 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
_02020FF2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02020FF4: .word 0x02100DF0
_02020FF8: .word 0x02100DF8
	thumb_func_end sub_02020FC8

	thumb_func_start sub_02020FFC
sub_02020FFC: ; 0x02020FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	beq _0202100C
	cmp r5, #0
	bne _02021012
_0202100C:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02021012:
	bl sub_020AE8C4
	str r0, [sp]
	add r0, r4, #0
	bl sub_020AE8D8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020AEA04
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020AE8C4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020AE8D8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020AEA04
	ldr r1, [sp]
	cmp r1, r6
	bne _0202104E
	ldr r1, [sp, #4]
	cmp r1, r7
	bne _0202104E
	cmp r4, r0
	beq _02021054
_0202104E:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02021054:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02020FFC

	thumb_func_start sub_0202105C
sub_0202105C: ; 0x0202105C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02021074
	bl sub_0201DDAC
	mov r0, #0
	add r4, #0xb0
	str r0, [r4, #0]
_02021074:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202105C

	thumb_func_start sub_02021078
sub_02021078: ; 0x02021078
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r4, [r0, #0]
	add r0, r1, #0
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x88
	add r2, #0x8c
	bl sub_02021788
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0x30
	bl sub_020AE608
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #3
	beq _020210BA
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_02020FFC
	b _020210BC
_020210BA:
	mov r0, #0
_020210BC:
	cmp r0, #0
	bne _020210F0
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _020210DA
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02020FC8
_020210DA:
	add r0, r5, #0
	add r0, #0x8c
	add r1, r5, #0
	add r2, r5, #0
	add r5, #0x9c
	ldr r0, [r0, #0]
	add r1, #0x94
	add r2, #0x98
	add r3, r5, #0
	bl sub_02020EF8
_020210F0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021078

	thumb_func_start sub_020210F4
sub_020210F4: ; 0x020210F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl sub_020217D4
	add r1, r5, #0
	add r1, #0x90
	add r3, r5, #0
	add r3, #0xa0
	str r0, [r1, #0]
	add r4, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r1, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp, #4]
	add r6, #0xdc
	add r2, #0x90
	add r3, #0x94
	ldr r0, [r6, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	bl sub_0201DD54
	add r5, #0xb0
	str r0, [r5, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020210F4

	thumb_func_start sub_02021148
sub_02021148: ; 0x02021148
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, r4, #0
	add r1, #0x88
	add r2, #0x8c
	bl sub_02021788
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0x30
	bl sub_020AE608
	add r0, r4, #0
	bl sub_020217D4
	add r5, #0x90
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021148

	thumb_func_start sub_0202117C
sub_0202117C: ; 0x0202117C
	push {r3, r4}
	add r4, r0, #0
	add r2, r4, #0
	add r3, r1, #0
	add r3, #0xc
	add r2, #0xa0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r4, #0xb0
	str r0, [r4, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202117C

	thumb_func_start sub_0202119C
sub_0202119C: ; 0x0202119C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0]
	cmp r6, #0
	bne _020211AA
	mov r0, #0
	pop {r4, r5, r6, pc}
_020211AA:
	add r0, r6, #0
	bl sub_020216E0
	add r4, r0, #0
	bne _020211B8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020211B8:
	add r3, r5, #0
	str r6, [r4, #0x28]
	add r3, #8
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r5, #0
	str r0, [r2, #0]
	add r3, #0x14
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	add r0, r4, #0
	add r0, #0xb6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_020217E0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202119C

	thumb_func_start sub_020211FC
sub_020211FC: ; 0x020211FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _02021206
	bl sub_02022974
_02021206:
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02021214
	bl sub_02022974
_02021214:
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	ldr r4, [r5, #0x28]
	cmp r0, #0
	bne _02021224
	mov r0, #0
	pop {r3, r4, r5, pc}
_02021224:
	add r0, r5, #0
	bl sub_02021768
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02021244
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02020FC8
_02021244:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202105C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202170C
	mov r0, #1
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020211FC

	thumb_func_start sub_0202125C
sub_0202125C: ; 0x0202125C
	push {r3, r4}
	add r4, r0, #0
	str r1, [r4, #0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r3, [sp, #8]
	add r2, r4, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0202125C

	thumb_func_start sub_02021284
sub_02021284: ; 0x02021284
	push {r3, r4}
	add r4, r0, #0
	str r1, [r4, #0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r3, [sp, #8]
	add r2, r4, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02021284

	thumb_func_start sub_020212A8
sub_020212A8: ; 0x020212A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _020212B6
	bl sub_02022974
_020212B6:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020212A8

	thumb_func_start sub_020212C0
sub_020212C0: ; 0x020212C0
	push {r4, lr}
	add r4, r0, #0
	bne _020212CA
	bl sub_02022974
_020212CA:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020212C0

	thumb_func_start sub_020212D0
sub_020212D0: ; 0x020212D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _020212DE
	bl sub_02022974
_020212DE:
	ldmia r5!, {r0, r1}
	add r4, #0xc
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020212D0

	thumb_func_start sub_020212EC
sub_020212EC: ; 0x020212EC
	push {r4, lr}
	add r4, r0, #0
	bne _020212F6
	bl sub_02022974
_020212F6:
	add r4, #0xc
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020212EC

	thumb_func_start sub_020212FC
sub_020212FC: ; 0x020212FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202130A
	bl sub_02022974
_0202130A:
	str r4, [r5, #0x18]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020212FC

	thumb_func_start sub_02021310
sub_02021310: ; 0x02021310
	push {r4, lr}
	add r4, r0, #0
	bne _0202131A
	bl sub_02022974
_0202131A:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021310

	thumb_func_start sub_02021320
sub_02021320: ; 0x02021320
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202132E
	bl sub_02022974
_0202132E:
	add r5, #0x24
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021320

	thumb_func_start sub_02021334
sub_02021334: ; 0x02021334
	push {r4, lr}
	add r4, r0, #0
	bne _0202133E
	bl sub_02022974
_0202133E:
	add r4, #0x24
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021334

	thumb_func_start sub_02021344
sub_02021344: ; 0x02021344
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021352
	bl sub_02022974
_02021352:
	add r5, #0xb6
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021344

	thumb_func_start sub_02021358
sub_02021358: ; 0x02021358
	push {r4, lr}
	add r4, r0, #0
	bne _02021362
	bl sub_02022974
_02021362:
	add r4, #0xb6
	ldrh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021358

	thumb_func_start sub_02021368
sub_02021368: ; 0x02021368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021376
	bl sub_02022974
_02021376:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021804
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021368

	thumb_func_start sub_02021380
sub_02021380: ; 0x02021380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202138E
	bl sub_02022974
_0202138E:
	add r5, #0xb8
	str r4, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021380

	thumb_func_start sub_02021394
sub_02021394: ; 0x02021394
	push {r4, lr}
	add r4, r0, #0
	bne _0202139E
	bl sub_02022974
_0202139E:
	add r4, #0xb8
	ldr r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02021394

	thumb_func_start sub_020213A4
sub_020213A4: ; 0x020213A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020213B2
	bl sub_02022974
_020213B2:
	add r1, r5, #0
	add r1, #0xb6
	ldrh r1, [r1]
	add r0, r5, #0
	bl sub_020217F4
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r5, #0xb8
	add r0, r0, r4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020213A4

	thumb_func_start sub_020213D4
sub_020213D4: ; 0x020213D4
	push {r4, lr}
	add r4, r0, #0
	bne _020213DE
	bl sub_02022974
_020213DE:
	add r1, r4, #0
	add r1, #0xb6
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_020217F4
	add r4, #0xb8
	ldr r1, [r4, #0]
	sub r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020213D4

	thumb_func_start sub_020213F4
sub_020213F4: ; 0x020213F4
	push {r4, lr}
	add r4, r0, #0
	bne _020213FE
	bl sub_02022974
_020213FE:
	add r4, #0x88
	ldr r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020213F4

	thumb_func_start sub_02021404
sub_02021404: ; 0x02021404
	push {r4, lr}
	add r4, r0, #0
	bne _0202140E
	bl sub_02022974
_0202140E:
	add r4, #0xb4
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021404

	thumb_func_start sub_02021414
sub_02021414: ; 0x02021414
	push {r3, lr}
	add r1, r0, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _0202142E
	add r0, r1, #0
	add r0, #0xb0
	add r1, #0xb8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0201DDD8
_0202142E:
	pop {r3, pc}
	thumb_func_end sub_02021414

	thumb_func_start sub_02021430
sub_02021430: ; 0x02021430
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021430

	thumb_func_start sub_02021438
sub_02021438: ; 0x02021438
	add r0, #0x8c
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021438

	thumb_func_start sub_02021440
sub_02021440: ; 0x02021440
	add r0, #0x30
	bx lr
	thumb_func_end sub_02021440

	thumb_func_start sub_02021444
sub_02021444: ; 0x02021444
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021444

	thumb_func_start sub_0202144C
sub_0202144C: ; 0x0202144C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r0, #0xa0
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bl sub_0202414C
	add r2, sp, #0
	strb r0, [r2]
	lsr r0, r0, #8
	strb r0, [r2, #1]
	ldrb r0, [r2]
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r2, #2]
	ldrb r0, [r2, #1]
	strb r0, [r2, #3]
	add r0, r4, #0
	add r0, #0x88
	ldrb r2, [r2, #2]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0202149C
	add r0, r4, #0
	add r2, sp, #0
	add r0, #0x88
	add r4, #0x90
	ldrb r2, [r2, #3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_020215A0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202144C

	thumb_func_start sub_0202149C
sub_0202149C: ; 0x0202149C
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _020214AC
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020214AC
	add r6, r0, r3
	b _020214AE
_020214AC:
	mov r6, #0
_020214AE:
	ldrh r0, [r6]
	add r4, r6, r0
	cmp r1, #0
	beq _020214DC
	add r0, r1, #0
	add r0, #0x3c
	beq _020214D8
	add r3, r1, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r2, r3
	bhs _020214D8
	add r1, #0x42
	ldrh r1, [r1]
	add r3, r0, r1
	ldrh r0, [r0, r1]
	add r3, r3, #4
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	b _020214DE
_020214D8:
	mov r0, #0
	b _020214DE
_020214DC:
	mov r0, #0
_020214DE:
	ldr r0, [r0, #0]
	mov r5, #0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrb r0, [r4, #1]
	cmp r0, #0
	ble _02021520
_020214EC:
	cmp r4, #0
	beq _02021506
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02021506
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _02021508
_02021506:
	mov r1, #0
_02021508:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	beq _02021518
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02021524
_02021518:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blt _020214EC
_02021520:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202149C

	thumb_func_start sub_02021524
sub_02021524: ; 0x02021524
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrb r0, [r0, #2]
	mov r6, #0
	cmp r0, #0
	ble _02021596
	add r7, r5, #4
_02021542:
	ldr r0, [sp, #8]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _0202156E
	cmp r7, #0
	beq _02021562
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _02021562
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _02021564
_02021562:
	mov r0, #0
_02021564:
	cmp r0, #0
	beq _0202156E
	ldr r0, [r0, #0]
	add r4, r5, r0
	b _02021570
_0202156E:
	mov r4, #0
_02021570:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, _0202159C ; =0x0000FFFF
	cmp r1, r0
	bls _02021584
	bl sub_02022974
_02021584:
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	cmp r6, r0
	blt _02021542
_02021596:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202159C: .word 0x0000FFFF
	thumb_func_end sub_02021524

	thumb_func_start sub_020215A0
sub_020215A0: ; 0x020215A0
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _020215B0
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020215B0
	add r6, r0, r3
	b _020215B2
_020215B0:
	mov r6, #0
_020215B2:
	ldrh r0, [r6, #2]
	add r4, r6, r0
	cmp r1, #0
	beq _020215DE
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	beq _020215DE
	add r0, r1, r0
	beq _020215DA
	ldrb r1, [r0, #1]
	cmp r2, r1
	bhs _020215DA
	ldrh r1, [r0, #6]
	add r3, r0, r1
	ldrh r0, [r0, r1]
	add r3, r3, #4
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	b _020215E0
_020215DA:
	mov r0, #0
	b _020215E0
_020215DE:
	mov r0, #0
_020215E0:
	ldrh r1, [r0, #2]
	ldrh r7, [r0]
	mov r0, #1
	tst r0, r1
	bne _020215EC
	lsr r7, r7, #1
_020215EC:
	ldrb r0, [r4, #1]
	mov r5, #0
	cmp r0, #0
	bls _02021628
_020215F4:
	cmp r4, #0
	beq _0202160E
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0202160E
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _02021610
_0202160E:
	mov r1, #0
_02021610:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	beq _02021620
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0202162C
_02021620:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blo _020215F4
_02021628:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020215A0

	thumb_func_start sub_0202162C
sub_0202162C: ; 0x0202162C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrb r0, [r0, #2]
	mov r6, #0
	cmp r0, #0
	bls _0202169E
	add r7, r5, #4
_0202164A:
	ldr r0, [sp, #8]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _02021676
	cmp r7, #0
	beq _0202166A
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _0202166A
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _0202166C
_0202166A:
	mov r0, #0
_0202166C:
	cmp r0, #0
	beq _02021676
	ldr r0, [r0, #0]
	add r4, r5, r0
	b _02021678
_02021676:
	mov r4, #0
_02021678:
	ldrh r1, [r4, #0x1c]
	ldr r0, _020216A4 ; =0x00001FFF
	and r1, r0
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, _020216A4 ; =0x00001FFF
	cmp r1, r0
	bls _0202168C
	bl sub_02022974
_0202168C:
	ldrh r1, [r4, #0x1c]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r1, r0
	strh r0, [r4, #0x1c]
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	cmp r6, r0
	blo _0202164A
_0202169E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020216A4: .word 0x00001FFF
	thumb_func_end sub_0202162C

	thumb_func_start sub_020216A8
sub_020216A8: ; 0x020216A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r7, #0
	cmp r0, #0
	ble _020216D8
	add r4, r7, #0
	add r6, r7, #0
_020216B8:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl sub_02020B14
	ldr r0, [r5, #4]
	add r7, r7, #1
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r4, #0xc4
	str r1, [r0, r6]
	ldr r0, [r5, #8]
	add r6, r6, #4
	cmp r7, r0
	blt _020216B8
_020216D8:
	mov r0, #0
	add r5, #0xd4
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020216A8

	thumb_func_start sub_020216E0
sub_020216E0: ; 0x020216E0
	add r1, r0, #0
	add r1, #0xd4
	ldr r3, [r1, #0]
	ldr r1, [r0, #8]
	cmp r3, r1
	blt _020216F0
	mov r0, #0
	bx lr
_020216F0:
	add r1, r0, #0
	add r1, #0xd0
	ldr r2, [r1, #0]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r0, #0xd4
	add r1, r1, #1
	str r1, [r0, #0]
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020216E0

	thumb_func_start sub_0202170C
sub_0202170C: ; 0x0202170C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	add r4, r1, #0
	cmp r0, #0
	bgt _0202171E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202171E:
	add r0, r4, #0
	bl sub_02020B14
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xd0
	add r5, #0xd4
	ldr r1, [r0, #0]
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202170C

	thumb_func_start sub_02021744
sub_02021744: ; 0x02021744
	add r2, r0, #0
	add r2, #0xc0
	ldr r3, [r2, #0]
	add r2, r1, #0
	add r2, #0xc0
	str r3, [r2, #0]
	add r2, r0, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, #0xbc
	str r1, [r2, #0]
	add r2, r1, #0
	add r2, #0xbc
	str r0, [r2, #0]
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021744

	thumb_func_start sub_02021768
sub_02021768: ; 0x02021768
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r1, #0xbc
	str r2, [r1, #0]
	add r1, r0, #0
	add r0, #0xbc
	add r1, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02021768

	thumb_func_start sub_02021788
sub_02021788: ; 0x02021788
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	bl sub_0202189C
	add r7, r0, #0
	bl sub_020B3C0C
	add r4, r0, #0
	beq _020217BE
	add r1, r4, #0
	add r1, #8
	beq _020217B2
	ldrb r0, [r4, #9]
	cmp r0, #0
	bls _020217B2
	ldrh r0, [r4, #0xe]
	add r0, r1, r0
	add r0, r0, #4
	b _020217B4
_020217B2:
	mov r0, #0
_020217B4:
	cmp r0, #0
	beq _020217BE
	ldr r0, [r0, #0]
	add r0, r4, r0
	b _020217C0
_020217BE:
	mov r0, #0
_020217C0:
	str r0, [r6, #0]
	cmp r5, #0
	beq _020217CE
	add r0, r7, #0
	bl sub_020B3C1C
	str r0, [r5, #0]
_020217CE:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02021788

	thumb_func_start sub_020217D4
sub_020217D4: ; 0x020217D4
	ldr r3, _020217DC ; =sub_0202189C
	mov r1, #1
	bx r3
	nop
_020217DC: .word sub_0202189C
	thumb_func_end sub_020217D4

	thumb_func_start sub_020217E0
sub_020217E0: ; 0x020217E0
	push {r3, lr}
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	bne _020217EE
	bl sub_02020E28
	pop {r3, pc}
_020217EE:
	bl sub_02020E78
	pop {r3, pc}
	thumb_func_end sub_020217E0

	thumb_func_start sub_020217F4
sub_020217F4: ; 0x020217F4
	push {r3, lr}
	ldr r0, [r0, #0x2c]
	bl sub_020218B4
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020217F4

	thumb_func_start sub_02021804
sub_02021804: ; 0x02021804
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xb6
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	bl sub_020218B4
	add r5, #0xb8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02021824
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021804

	thumb_func_start sub_02021824
sub_02021824: ; 0x02021824
	push {r3, r4, r5, r6}
	ldr r4, [r0, #0]
	ldr r6, [r1, #0]
	lsl r4, r4, #0xc
	mov r3, #0
	cmp r4, r6
	bgt _0202183A
	ldr r5, [r0, #4]
	lsl r5, r5, #0xc
	cmp r5, r6
	bge _0202183E
_0202183A:
	str r4, [r1, #0]
	b _02021856
_0202183E:
	add r2, r6, r2
	cmp r5, r2
	bge _02021854
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0202184E
	str r4, [r1, #0]
	b _02021856
_0202184E:
	mov r3, #1
	str r5, [r1, #0]
	b _02021856
_02021854:
	str r2, [r1, #0]
_02021856:
	add r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02021824

	thumb_func_start sub_0202185C
sub_0202185C: ; 0x0202185C
	push {r3, lr}
	add r3, r0, #0
	add r0, #0x9c
	str r0, [sp]
	add r0, r3, #0
	add r1, r3, #0
	add r2, r3, #0
	add r0, #0x8c
	add r1, #0x84
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, #0x94
	add r3, #0x98
	bl sub_02020FA4
	pop {r3, pc}
	thumb_func_end sub_0202185C

	thumb_func_start sub_0202187C
sub_0202187C: ; 0x0202187C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020AF298
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0
	bl sub_02020F90
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0202187C

	thumb_func_start sub_0202189C
sub_0202189C: ; 0x0202189C
	cmp r1, #0
	beq _020218A6
	cmp r1, #1
	beq _020218AA
	b _020218AE
_020218A6:
	ldr r0, [r0, #0]
	bx lr
_020218AA:
	ldr r0, [r0, #4]
	bx lr
_020218AE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202189C

	thumb_func_start sub_020218B4
sub_020218B4: ; 0x020218B4
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_020218B4

	.bss


	.global Unk_021C0774
Unk_021C0774: ; 0x021C0774
	.space 0x4

	.global Unk_021C0778
Unk_021C0778: ; 0x021C0778
	.space 0x4

