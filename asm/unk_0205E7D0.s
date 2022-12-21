	.include "macros/function.inc"
	.include "include/unk_0205E7D0.inc"

	

	.text


	thumb_func_start sub_0205E7D0
sub_0205E7D0: ; 0x0205E7D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #8]
	bl sub_0205E8FC
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x2c]
	add r6, r0, #0
	bl sub_0205E91C
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0205E7FE
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl sub_0205ED6C
	add r2, r0, #0
	b _0205E80A
_0205E7FE:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0205E808
	mov r2, #0xfc
	b _0205E80A
_0205E808:
	mov r2, #0xfd
_0205E80A:
	ldr r3, [sp, #8]
	str r5, [sp]
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #4]
	bl sub_0205E988
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205E7D0

	thumb_func_start sub_0205E820
sub_0205E820: ; 0x0205E820
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	bl sub_0205E8FC
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205EC94
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0205E91C
	add r0, r7, #0
	bl sub_0205EA64
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206291C
	mov r1, #9
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020628BC
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020628C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02062F90
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB38
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205E820

	thumb_func_start sub_0205E884
sub_0205E884: ; 0x0205E884
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EB3C
	add r6, r0, #0
	bne _0205E896
	bl sub_02022974
_0205E896:
	add r0, r6, #0
	bl sub_02062A40
	add r0, r5, #0
	bl ov5_021F6218
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	bne _0205E8DE
	cmp r4, #9
	beq _0205E8DE
	add r0, r5, #0
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205EA78
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov5_021F261C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205EC00
_0205E8DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205E884

	thumb_func_start sub_0205E8E0
sub_0205E8E0: ; 0x0205E8E0
	ldr r3, _0205E8E4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0205E8E4: .word sub_020181C4
	thumb_func_end sub_0205E8E0

	thumb_func_start sub_0205E8E8
sub_0205E8E8: ; 0x0205E8E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB3C
	bl sub_02061AF4
	add r0, r4, #0
	bl sub_0205E8E0
	pop {r4, pc}
	thumb_func_end sub_0205E8E8

	thumb_func_start sub_0205E8FC
sub_0205E8FC: ; 0x0205E8FC
	push {r4, lr}
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	bne _0205E90E
	bl sub_02022974
_0205E90E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205E8FC

	thumb_func_start sub_0205E91C
sub_0205E91C: ; 0x0205E91C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r3, #0
	add r6, r2, #0
	bl sub_0205EC08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB58
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0205EB94
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB8C
	add r0, r5, #0
	bl sub_0205EBC0
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_0205EBDC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_0205EBE4
	add r0, r5, #0
	mov r1, #0xff
	mov r2, #0
	bl sub_0205EC20
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EF6C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205EFF0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205E91C

	thumb_func_start sub_0205E988
sub_0205E988: ; 0x0205E988
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	bl sub_020619DC
	add r5, r0, #0
	bne _0205E9A8
	bl sub_02022974
_0205E9A8:
	add r0, r5, #0
	mov r1, #0xff
	bl sub_0206290C
	add r0, r5, #0
	mov r1, #0
	bl sub_0206294C
	add r0, r5, #0
	mov r1, #0
	bl sub_02062954
	add r0, r5, #0
	mov r1, #0
	bl sub_0206295C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_020629B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_020629B4
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl sub_020629B4
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_020629FC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_02062A04
	mov r1, #9
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_020628BC
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_020628C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02062F90
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EB38
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205E988

	thumb_func_start sub_0205EA24
sub_0205EA24: ; 0x0205EA24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r5, r0, #0
	bl sub_020625B0
	cmp r0, #0
	beq _0205EA5E
	add r4, sp, #0
	add r6, sp, #4
	mov r7, #1
_0205EA44:
	ldr r0, [sp]
	bl sub_02062948
	cmp r0, #1
	beq _0205EA5E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020625B0
	cmp r0, #0
	bne _0205EA44
_0205EA5E:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205EA24

	thumb_func_start sub_0205EA64
sub_0205EA64: ; 0x0205EA64
	push {r4, lr}
	bl sub_0205EA24
	add r4, r0, #0
	bne _0205EA72
	bl sub_02022974
_0205EA72:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205EA64

	thumb_func_start sub_0205EA78
sub_0205EA78: ; 0x0205EA78
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_0206298C
	pop {r3, pc}
	thumb_func_end sub_0205EA78

	thumb_func_start sub_0205EA84
sub_0205EA84: ; 0x0205EA84
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02062974
	pop {r4, pc}
	thumb_func_end sub_0205EA84

	thumb_func_start sub_0205EA94
sub_0205EA94: ; 0x0205EA94
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_0206299C
	pop {r3, pc}
	thumb_func_end sub_0205EA94

	thumb_func_start sub_0205EAA0
sub_0205EAA0: ; 0x0205EAA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F16C
	cmp r0, #1
	bne _0205EAB4
	add r0, r4, #0
	bl sub_0205EA78
	pop {r4, pc}
_0205EAB4:
	add r0, r4, #0
	bl sub_0205EA94
	pop {r4, pc}
	thumb_func_end sub_0205EAA0

	thumb_func_start sub_0205EABC
sub_0205EABC: ; 0x0205EABC
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063020
	pop {r3, pc}
	thumb_func_end sub_0205EABC

	thumb_func_start sub_0205EAC8
sub_0205EAC8: ; 0x0205EAC8
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063040
	pop {r3, pc}
	thumb_func_end sub_0205EAC8

	thumb_func_start sub_0205EAD4
sub_0205EAD4: ; 0x0205EAD4
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063008
	pop {r3, pc}
	thumb_func_end sub_0205EAD4

	thumb_func_start sub_0205EAE0
sub_0205EAE0: ; 0x0205EAE0
	push {r3, lr}
	bl sub_0205EB3C
	bl sub_02063018
	pop {r3, pc}
	thumb_func_end sub_0205EAE0

	thumb_func_start sub_0205EAEC
sub_0205EAEC: ; 0x0205EAEC
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02063050
	pop {r4, pc}
	thumb_func_end sub_0205EAEC

	thumb_func_start sub_0205EAFC
sub_0205EAFC: ; 0x0205EAFC
	push {r3, lr}
	bl sub_0205EB54
	bl sub_02063070
	pop {r3, pc}
	thumb_func_end sub_0205EAFC

	thumb_func_start sub_0205EB08
sub_0205EB08: ; 0x0205EB08
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0205EB08

	thumb_func_start sub_0205EB0C
sub_0205EB0C: ; 0x0205EB0C
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0205EB0C

	thumb_func_start sub_0205EB10
sub_0205EB10: ; 0x0205EB10
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0205EB10

	thumb_func_start sub_0205EB14
sub_0205EB14: ; 0x0205EB14
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0205EB14

	thumb_func_start sub_0205EB18
sub_0205EB18: ; 0x0205EB18
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	cmp r4, #1
	bne _0205EB2E
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628C4
	pop {r4, pc}
_0205EB2E:
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628BC
	pop {r4, pc}
	thumb_func_end sub_0205EB18

	thumb_func_start sub_0205EB38
sub_0205EB38: ; 0x0205EB38
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_0205EB38

	thumb_func_start sub_0205EB3C
sub_0205EB3C: ; 0x0205EB3C
	push {r4, lr}
	add r4, r0, #0
	bne _0205EB46
	bl sub_02022974
_0205EB46:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0205EB50
	bl sub_02022974
_0205EB50:
	ldr r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end sub_0205EB3C

	thumb_func_start sub_0205EB54
sub_0205EB54: ; 0x0205EB54
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_0205EB54

	thumb_func_start sub_0205EB58
sub_0205EB58: ; 0x0205EB58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blt _0205EB66
	bl sub_02022974
_0205EB66:
	add r0, r5, #0
	add r1, r4, #0
	str r4, [r5, #0x1c]
	bl sub_0205ECA8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205EB58

	thumb_func_start sub_0205EB74
sub_0205EB74: ; 0x0205EB74
	push {r4, lr}
	add r4, r0, #0
	bne _0205EB7E
	bl sub_02022974
_0205EB7E:
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205EB74

	thumb_func_start sub_0205EB84
sub_0205EB84: ; 0x0205EB84
	ldr r2, [r0, #4]
	orr r1, r2
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB84

	thumb_func_start sub_0205EB8C
sub_0205EB8C: ; 0x0205EB8C
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB8C

	thumb_func_start sub_0205EB90
sub_0205EB90: ; 0x0205EB90
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0205EB90

	thumb_func_start sub_0205EB94
sub_0205EB94: ; 0x0205EB94
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0205EB94

	thumb_func_start sub_0205EB98
sub_0205EB98: ; 0x0205EB98
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0205EB98

	thumb_func_start sub_0205EB9C
sub_0205EB9C: ; 0x0205EB9C
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_0205EB9C

	thumb_func_start sub_0205EBA4
sub_0205EBA4: ; 0x0205EBA4
	ldr r2, [r0, #0]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EBA4

	thumb_func_start sub_0205EBB0
sub_0205EBB0: ; 0x0205EBB0
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EBB0

	thumb_func_start sub_0205EBB8
sub_0205EBB8: ; 0x0205EBB8
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205EBB8

	thumb_func_start sub_0205EBBC
sub_0205EBBC: ; 0x0205EBBC
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205EBBC

	thumb_func_start sub_0205EBC0
sub_0205EBC0: ; 0x0205EBC0
	ldr r3, _0205EBC8 ; =sub_0205EF98
	mov r1, #0
	str r1, [r0, #0x24]
	bx r3
	; .align 2, 0
_0205EBC8: .word sub_0205EF98
	thumb_func_end sub_0205EBC0

	thumb_func_start sub_0205EBCC
sub_0205EBCC: ; 0x0205EBCC
	ldr r3, [r0, #0x24]
	add r1, r3, r1
	str r1, [r0, #0x24]
	cmp r1, r2
	ble _0205EBD8
	str r2, [r0, #0x24]
_0205EBD8:
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_0205EBCC

	thumb_func_start sub_0205EBDC
sub_0205EBDC: ; 0x0205EBDC
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_0205EBDC

	thumb_func_start sub_0205EBE0
sub_0205EBE0: ; 0x0205EBE0
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_0205EBE0

	thumb_func_start sub_0205EBE4
sub_0205EBE4: ; 0x0205EBE4
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0205EBE4

	thumb_func_start sub_0205EBE8
sub_0205EBE8: ; 0x0205EBE8
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0205EBE8

	thumb_func_start sub_0205EBEC
sub_0205EBEC: ; 0x0205EBEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0205EBDC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EBE4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205EBEC

	thumb_func_start sub_0205EC00
sub_0205EC00: ; 0x0205EC00
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end sub_0205EC00

	thumb_func_start sub_0205EC04
sub_0205EC04: ; 0x0205EC04
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_0205EC04

	thumb_func_start sub_0205EC08
sub_0205EC08: ; 0x0205EC08
	str r1, [r0, #0x38]
	bx lr
	thumb_func_end sub_0205EC08

	thumb_func_start sub_0205EC0C
sub_0205EC0C: ; 0x0205EC0C
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_0205EC0C

	thumb_func_start sub_0205EC10
sub_0205EC10: ; 0x0205EC10
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0205EC10

	thumb_func_start sub_0205EC14
sub_0205EC14: ; 0x0205EC14
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0205EC14

	thumb_func_start sub_0205EC18
sub_0205EC18: ; 0x0205EC18
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_0205EC18

	thumb_func_start sub_0205EC1C
sub_0205EC1C: ; 0x0205EC1C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0205EC1C

	thumb_func_start sub_0205EC20
sub_0205EC20: ; 0x0205EC20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0205EC10
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EC18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205EC20

	thumb_func_start sub_0205EC34
sub_0205EC34: ; 0x0205EC34
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EC34

	thumb_func_start sub_0205EC40
sub_0205EC40: ; 0x0205EC40
	cmp r0, #0
	beq _0205EC4E
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _0205EC4E
	mov r0, #1
	bx lr
_0205EC4E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205EC40

	thumb_func_start sub_0205EC54
sub_0205EC54: ; 0x0205EC54
	cmp r1, #1
	bne _0205EC5E
	mov r1, #1
	strh r1, [r0, #2]
	bx lr
_0205EC5E:
	mov r1, #0
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_0205EC54

	thumb_func_start sub_0205EC64
sub_0205EC64: ; 0x0205EC64
	cmp r0, #0
	bne _0205EC6C
	mov r0, #0
	bx lr
_0205EC6C:
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0205EC64

	thumb_func_start sub_0205EC70
sub_0205EC70: ; 0x0205EC70
	cmp r0, #0
	beq _0205EC76
	strh r1, [r0]
_0205EC76:
	bx lr
	thumb_func_end sub_0205EC70

	thumb_func_start sub_0205EC78
sub_0205EC78: ; 0x0205EC78
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EC0C
	add r1, r4, #0
	bl sub_0205EC70
	pop {r4, pc}
	thumb_func_end sub_0205EC78

	thumb_func_start sub_0205EC88
sub_0205EC88: ; 0x0205EC88
	push {r3, lr}
	bl sub_0205EC0C
	bl sub_0205EC64
	pop {r3, pc}
	thumb_func_end sub_0205EC88

	thumb_func_start sub_0205EC94
sub_0205EC94: ; 0x0205EC94
	cmp r0, #0
	beq _0205EC9C
	ldr r0, [r0, #4]
	bx lr
_0205EC9C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205EC94

	thumb_func_start sub_0205ECA0
sub_0205ECA0: ; 0x0205ECA0
	cmp r0, #0
	beq _0205ECA6
	str r1, [r0, #4]
_0205ECA6:
	bx lr
	thumb_func_end sub_0205ECA0

	thumb_func_start sub_0205ECA8
sub_0205ECA8: ; 0x0205ECA8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EC0C
	add r1, r4, #0
	bl sub_0205ECA0
	pop {r4, pc}
	thumb_func_end sub_0205ECA8

	thumb_func_start sub_0205ECB8
sub_0205ECB8: ; 0x0205ECB8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	bl sub_0205EB3C
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020632D4
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205ECB8

	thumb_func_start sub_0205ECE0
sub_0205ECE0: ; 0x0205ECE0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0205EB3C
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	str r4, [sp]
	bl sub_02063340
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB08
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205ECE0

	thumb_func_start sub_0205ED0C
sub_0205ED0C: ; 0x0205ED0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #0
	str r5, [sp, #4]
	bl sub_02063060
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_0205ED0C

	thumb_func_start sub_0205ED2C
sub_0205ED2C: ; 0x0205ED2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	cmp r4, #1
	bne _0205ED40
	mov r1, #0
	bl sub_02062E28
	pop {r4, pc}
_0205ED40:
	mov r1, #1
	bl sub_02062E28
	pop {r4, pc}
	thumb_func_end sub_0205ED2C

	thumb_func_start sub_0205ED48
sub_0205ED48: ; 0x0205ED48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0205EB3C
	add r4, r0, #0
	cmp r5, #1
	bne _0205ED64
	mov r1, #0
	bl sub_02062E28
	add r0, r4, #0
	bl sub_020642F8
	pop {r3, r4, r5, pc}
_0205ED64:
	mov r1, #1
	bl sub_02062E28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205ED48

	thumb_func_start sub_0205ED6C
sub_0205ED6C: ; 0x0205ED6C
	push {r3, lr}
	cmp r1, #0
	bne _0205EE10
	cmp r0, #0x1e
	bls _0205ED78
	b _0205EEA6
_0205ED78:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205ED84: ; jump table
	.short _0205EDC2 - _0205ED84 - 2 ; case 0
	.short _0205EDC6 - _0205ED84 - 2 ; case 1
	.short _0205EDCA - _0205ED84 - 2 ; case 2
	.short _0205EEA6 - _0205ED84 - 2 ; case 3
	.short _0205EEA6 - _0205ED84 - 2 ; case 4
	.short _0205EEA6 - _0205ED84 - 2 ; case 5
	.short _0205EEA6 - _0205ED84 - 2 ; case 6
	.short _0205EEA6 - _0205ED84 - 2 ; case 7
	.short _0205EEA6 - _0205ED84 - 2 ; case 8
	.short _0205EEA6 - _0205ED84 - 2 ; case 9
	.short _0205EEA6 - _0205ED84 - 2 ; case 10
	.short _0205EEA6 - _0205ED84 - 2 ; case 11
	.short _0205EEA6 - _0205ED84 - 2 ; case 12
	.short _0205EEA6 - _0205ED84 - 2 ; case 13
	.short _0205EEA6 - _0205ED84 - 2 ; case 14
	.short _0205EEA6 - _0205ED84 - 2 ; case 15
	.short _0205EDCE - _0205ED84 - 2 ; case 16
	.short _0205EDD2 - _0205ED84 - 2 ; case 17
	.short _0205EDD6 - _0205ED84 - 2 ; case 18
	.short _0205EDDA - _0205ED84 - 2 ; case 19
	.short _0205EDDE - _0205ED84 - 2 ; case 20
	.short _0205EDE2 - _0205ED84 - 2 ; case 21
	.short _0205EDE6 - _0205ED84 - 2 ; case 22
	.short _0205EDEA - _0205ED84 - 2 ; case 23
	.short _0205EDF0 - _0205ED84 - 2 ; case 24
	.short _0205EDF4 - _0205ED84 - 2 ; case 25
	.short _0205EDF8 - _0205ED84 - 2 ; case 26
	.short _0205EDFE - _0205ED84 - 2 ; case 27
	.short _0205EE02 - _0205ED84 - 2 ; case 28
	.short _0205EE06 - _0205ED84 - 2 ; case 29
	.short _0205EE0C - _0205ED84 - 2 ; case 30
_0205EDC2:
	mov r0, #0
	pop {r3, pc}
_0205EDC6:
	mov r0, #0x15
	pop {r3, pc}
_0205EDCA:
	mov r0, #0xb2
	pop {r3, pc}
_0205EDCE:
	mov r0, #0xb0
	pop {r3, pc}
_0205EDD2:
	mov r0, #0xb4
	pop {r3, pc}
_0205EDD6:
	mov r0, #0xba
	pop {r3, pc}
_0205EDDA:
	mov r0, #0xbc
	pop {r3, pc}
_0205EDDE:
	mov r0, #0xc4
	pop {r3, pc}
_0205EDE2:
	mov r0, #0xc6
	pop {r3, pc}
_0205EDE6:
	mov r0, #0xc8
	pop {r3, pc}
_0205EDEA:
	mov r0, #1
	lsl r0, r0, #8
	pop {r3, pc}
_0205EDF0:
	mov r0, #0xd4
	pop {r3, pc}
_0205EDF4:
	ldr r0, _0205EEB0 ; =0x00000102
	pop {r3, pc}
_0205EDF8:
	mov r0, #0x43
	lsl r0, r0, #2
	pop {r3, pc}
_0205EDFE:
	ldr r0, _0205EEB4 ; =0x0000010E
	pop {r3, pc}
_0205EE02:
	mov r0, #0xd2
	pop {r3, pc}
_0205EE06:
	mov r0, #0x11
	lsl r0, r0, #4
	pop {r3, pc}
_0205EE0C:
	ldr r0, _0205EEB8 ; =0x00000112
	pop {r3, pc}
_0205EE10:
	cmp r0, #0x1e
	bhi _0205EEA6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205EE20: ; jump table
	.short _0205EE5E - _0205EE20 - 2 ; case 0
	.short _0205EE62 - _0205EE20 - 2 ; case 1
	.short _0205EE66 - _0205EE20 - 2 ; case 2
	.short _0205EEA6 - _0205EE20 - 2 ; case 3
	.short _0205EEA6 - _0205EE20 - 2 ; case 4
	.short _0205EEA6 - _0205EE20 - 2 ; case 5
	.short _0205EEA6 - _0205EE20 - 2 ; case 6
	.short _0205EEA6 - _0205EE20 - 2 ; case 7
	.short _0205EEA6 - _0205EE20 - 2 ; case 8
	.short _0205EEA6 - _0205EE20 - 2 ; case 9
	.short _0205EEA6 - _0205EE20 - 2 ; case 10
	.short _0205EEA6 - _0205EE20 - 2 ; case 11
	.short _0205EEA6 - _0205EE20 - 2 ; case 12
	.short _0205EEA6 - _0205EE20 - 2 ; case 13
	.short _0205EEA6 - _0205EE20 - 2 ; case 14
	.short _0205EEA6 - _0205EE20 - 2 ; case 15
	.short _0205EE6A - _0205EE20 - 2 ; case 16
	.short _0205EE6E - _0205EE20 - 2 ; case 17
	.short _0205EE72 - _0205EE20 - 2 ; case 18
	.short _0205EE76 - _0205EE20 - 2 ; case 19
	.short _0205EE7A - _0205EE20 - 2 ; case 20
	.short _0205EE7E - _0205EE20 - 2 ; case 21
	.short _0205EE82 - _0205EE20 - 2 ; case 22
	.short _0205EE86 - _0205EE20 - 2 ; case 23
	.short _0205EE8A - _0205EE20 - 2 ; case 24
	.short _0205EE8E - _0205EE20 - 2 ; case 25
	.short _0205EE92 - _0205EE20 - 2 ; case 26
	.short _0205EE96 - _0205EE20 - 2 ; case 27
	.short _0205EE9A - _0205EE20 - 2 ; case 28
	.short _0205EE9E - _0205EE20 - 2 ; case 29
	.short _0205EEA2 - _0205EE20 - 2 ; case 30
_0205EE5E:
	mov r0, #0x61
	pop {r3, pc}
_0205EE62:
	mov r0, #0x62
	pop {r3, pc}
_0205EE66:
	mov r0, #0xb3
	pop {r3, pc}
_0205EE6A:
	mov r0, #0xb1
	pop {r3, pc}
_0205EE6E:
	mov r0, #0xb5
	pop {r3, pc}
_0205EE72:
	mov r0, #0xbb
	pop {r3, pc}
_0205EE76:
	mov r0, #0xbd
	pop {r3, pc}
_0205EE7A:
	mov r0, #0xc5
	pop {r3, pc}
_0205EE7E:
	mov r0, #0xc7
	pop {r3, pc}
_0205EE82:
	mov r0, #0xc9
	pop {r3, pc}
_0205EE86:
	ldr r0, _0205EEBC ; =0x00000101
	pop {r3, pc}
_0205EE8A:
	ldr r0, _0205EEC0 ; =0x00000107
	pop {r3, pc}
_0205EE8E:
	ldr r0, _0205EEC4 ; =0x00000103
	pop {r3, pc}
_0205EE92:
	ldr r0, _0205EEC8 ; =0x0000010D
	pop {r3, pc}
_0205EE96:
	ldr r0, _0205EECC ; =0x0000010F
	pop {r3, pc}
_0205EE9A:
	mov r0, #0xd3
	pop {r3, pc}
_0205EE9E:
	ldr r0, _0205EED0 ; =0x00000111
	pop {r3, pc}
_0205EEA2:
	ldr r0, _0205EED4 ; =0x00000113
	pop {r3, pc}
_0205EEA6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_0205EEB0: .word 0x00000102
_0205EEB4: .word 0x0000010E
_0205EEB8: .word 0x00000112
_0205EEBC: .word 0x00000101
_0205EEC0: .word 0x00000107
_0205EEC4: .word 0x00000103
_0205EEC8: .word 0x0000010D
_0205EECC: .word 0x0000010F
_0205EED0: .word 0x00000111
_0205EED4: .word 0x00000113
	thumb_func_end sub_0205ED6C

	thumb_func_start sub_0205EED8
sub_0205EED8: ; 0x0205EED8
	push {r3, lr}
	cmp r0, #0x11
	bgt _0205EEF4
	bge _0205EF1C
	cmp r0, #2
	bgt _0205EF32
	cmp r0, #0
	blt _0205EF32
	beq _0205EF10
	cmp r0, #1
	beq _0205EF14
	cmp r0, #2
	beq _0205EF18
	b _0205EF32
_0205EEF4:
	cmp r0, #0x13
	bgt _0205EEFC
	beq _0205EF20
	b _0205EF32
_0205EEFC:
	cmp r0, #0x16
	bgt _0205EF32
	cmp r0, #0x14
	blt _0205EF32
	beq _0205EF24
	cmp r0, #0x15
	beq _0205EF28
	cmp r0, #0x16
	beq _0205EF2C
	b _0205EF32
_0205EF10:
	mov r0, #1
	pop {r3, pc}
_0205EF14:
	mov r0, #2
	pop {r3, pc}
_0205EF18:
	mov r0, #4
	pop {r3, pc}
_0205EF1C:
	mov r0, #0x10
	pop {r3, pc}
_0205EF20:
	mov r0, #0x20
	pop {r3, pc}
_0205EF24:
	mov r0, #0x40
	pop {r3, pc}
_0205EF28:
	mov r0, #0x80
	pop {r3, pc}
_0205EF2C:
	mov r0, #1
	lsl r0, r0, #8
	pop {r3, pc}
_0205EF32:
	bl sub_02022974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EED8

	thumb_func_start sub_0205EF3C
sub_0205EF3C: ; 0x0205EF3C
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end sub_0205EF3C

	thumb_func_start sub_0205EF40
sub_0205EF40: ; 0x0205EF40
	push {r3, lr}
	cmp r1, #1
	bne _0205EF4E
	mov r1, #1
	bl sub_0205EB9C
	pop {r3, pc}
_0205EF4E:
	mov r1, #1
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EF40

	thumb_func_start sub_0205EF58
sub_0205EF58: ; 0x0205EF58
	push {r3, lr}
	mov r1, #1
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EF68
	mov r0, #1
	pop {r3, pc}
_0205EF68:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EF58

	thumb_func_start sub_0205EF6C
sub_0205EF6C: ; 0x0205EF6C
	push {r3, lr}
	cmp r1, #1
	bne _0205EF7A
	mov r1, #2
	bl sub_0205EB9C
	pop {r3, pc}
_0205EF7A:
	mov r1, #2
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EF6C

	thumb_func_start sub_0205EF84
sub_0205EF84: ; 0x0205EF84
	push {r3, lr}
	mov r1, #2
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EF94
	mov r0, #1
	pop {r3, pc}
_0205EF94:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EF84

	thumb_func_start sub_0205EF98
sub_0205EF98: ; 0x0205EF98
	push {r3, lr}
	cmp r1, #1
	bne _0205EFA6
	mov r1, #4
	bl sub_0205EB9C
	pop {r3, pc}
_0205EFA6:
	mov r1, #4
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EF98

	thumb_func_start sub_0205EFB0
sub_0205EFB0: ; 0x0205EFB0
	push {r3, lr}
	mov r1, #4
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EFC0
	mov r0, #1
	pop {r3, pc}
_0205EFC0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EFB0

	thumb_func_start sub_0205EFC4
sub_0205EFC4: ; 0x0205EFC4
	push {r3, lr}
	cmp r1, #1
	bne _0205EFD2
	mov r1, #8
	bl sub_0205EB9C
	pop {r3, pc}
_0205EFD2:
	mov r1, #8
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EFC4

	thumb_func_start sub_0205EFDC
sub_0205EFDC: ; 0x0205EFDC
	push {r3, lr}
	mov r1, #8
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205EFEC
	mov r0, #1
	pop {r3, pc}
_0205EFEC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205EFDC

	thumb_func_start sub_0205EFF0
sub_0205EFF0: ; 0x0205EFF0
	push {r3, lr}
	cmp r1, #1
	bne _0205EFFE
	mov r1, #0x10
	bl sub_0205EB9C
	pop {r3, pc}
_0205EFFE:
	mov r1, #0x10
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205EFF0

	thumb_func_start sub_0205F008
sub_0205F008: ; 0x0205F008
	push {r3, lr}
	mov r1, #0x10
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205F018
	mov r0, #1
	pop {r3, pc}
_0205F018:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205F008

	thumb_func_start sub_0205F01C
sub_0205F01C: ; 0x0205F01C
	push {r3, lr}
	cmp r1, #1
	bne _0205F02A
	mov r1, #0x20
	bl sub_0205EB9C
	pop {r3, pc}
_0205F02A:
	mov r1, #0x20
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F01C

	thumb_func_start sub_0205F034
sub_0205F034: ; 0x0205F034
	push {r3, lr}
	mov r1, #0x20
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205F044
	mov r0, #1
	pop {r3, pc}
_0205F044:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205F034

	thumb_func_start sub_0205F048
sub_0205F048: ; 0x0205F048
	ldr r3, _0205F050 ; =sub_0205EB9C
	mov r1, #0x40
	bx r3
	nop
_0205F050: .word sub_0205EB9C
	thumb_func_end sub_0205F048

	thumb_func_start sub_0205F054
sub_0205F054: ; 0x0205F054
	ldr r3, _0205F05C ; =sub_0205EBA4
	mov r1, #0x40
	bx r3
	nop
_0205F05C: .word sub_0205EBA4
	thumb_func_end sub_0205F054

	thumb_func_start sub_0205F060
sub_0205F060: ; 0x0205F060
	push {r3, lr}
	mov r1, #0x40
	bl sub_0205EBB0
	cmp r0, #0
	beq _0205F070
	mov r0, #1
	pop {r3, pc}
_0205F070:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0205F060

	thumb_func_start sub_0205F074
sub_0205F074: ; 0x0205F074
	push {r3, lr}
	cmp r1, #1
	bne _0205F082
	mov r1, #0x80
	bl sub_0205EB9C
	pop {r3, pc}
_0205F082:
	mov r1, #0x80
	bl sub_0205EBA4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F074

	thumb_func_start sub_0205F08C
sub_0205F08C: ; 0x0205F08C
	ldr r3, _0205F094 ; =sub_0205EBB0
	mov r1, #0x80
	bx r3
	nop
_0205F094: .word sub_0205EBB0
	thumb_func_end sub_0205F08C

	thumb_func_start sub_0205F098
sub_0205F098: ; 0x0205F098
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x1f
	lsl r1, r1, #8
	add r4, r0, #0
	bl sub_0205EBA4
	cmp r5, #5
	bhi _0205F100
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205F0B6: ; jump table
	.short _0205F0C2 - _0205F0B6 - 2 ; case 0
	.short _0205F0C4 - _0205F0B6 - 2 ; case 1
	.short _0205F0D0 - _0205F0B6 - 2 ; case 2
	.short _0205F0DC - _0205F0B6 - 2 ; case 3
	.short _0205F0E8 - _0205F0B6 - 2 ; case 4
	.short _0205F0F4 - _0205F0B6 - 2 ; case 5
_0205F0C2:
	pop {r3, r4, r5, pc}
_0205F0C4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0D0:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0DC:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0E8:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F0F4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0205EB9C
	pop {r3, r4, r5, pc}
_0205F100:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205F098

	thumb_func_start sub_0205F108
sub_0205F108: ; 0x0205F108
	push {r4, lr}
	mov r1, #0x1f
	lsl r1, r1, #8
	mov r4, #0
	bl sub_0205EBB0
	mov r2, #1
	lsl r2, r2, #0xa
	cmp r0, r2
	bhi _0205F130
	bhs _0205F14A
	lsr r1, r2, #2
	cmp r0, r1
	bhi _0205F128
	beq _0205F142
	b _0205F154
_0205F128:
	lsr r1, r2, #1
	cmp r0, r1
	beq _0205F146
	b _0205F154
_0205F130:
	lsl r1, r2, #1
	cmp r0, r1
	bhi _0205F13A
	beq _0205F14E
	b _0205F154
_0205F13A:
	lsl r1, r2, #2
	cmp r0, r1
	beq _0205F152
	b _0205F154
_0205F142:
	mov r4, #1
	b _0205F154
_0205F146:
	mov r4, #2
	b _0205F154
_0205F14A:
	mov r4, #3
	b _0205F154
_0205F14E:
	mov r4, #4
	b _0205F154
_0205F152:
	mov r4, #5
_0205F154:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205F108

	thumb_func_start sub_0205F158
sub_0205F158: ; 0x0205F158
	push {r3, lr}
	bl sub_0205F108
	cmp r0, #1
	bls _0205F166
	mov r0, #1
	pop {r3, pc}
_0205F166:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F158

	thumb_func_start sub_0205F16C
sub_0205F16C: ; 0x0205F16C
	push {r3, lr}
	bl sub_0205F108
	cmp r0, #2
	bhi _0205F17A
	mov r0, #1
	pop {r3, pc}
_0205F17A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205F16C