	.include "macros/function.inc"
	.include "include/ov17_0223F7E4.inc"

	

	.text


	thumb_func_start ov17_0223F7E4
ov17_0223F7E4: ; 0x0223F7E4
	push {r4, lr}
	mov r1, #0x32
	mov r0, #0x15
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x32
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0
	mov r0, #0x2e
	mvn r1, r1
	lsl r0, r0, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0223F7E4

	thumb_func_start ov17_0223F80C
ov17_0223F80C: ; 0x0223F80C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0223F860 ; =0x02253448
	add r5, r0, #0
	add r7, r4, #0
_0223F816:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019EE0
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0223F816
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F860: .word 0x02253448
	thumb_func_end ov17_0223F80C

	thumb_func_start ov17_0223F864
ov17_0223F864: ; 0x0223F864
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0223F86C:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02019120
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #4
	blo _0223F86C
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0223F864

	thumb_func_start ov17_0223F88C
ov17_0223F88C: ; 0x0223F88C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov17_0223F7E4
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	mov r0, #0xc
	mov r1, #0x15
	bl sub_02012744
	str r0, [r4, #0x3c]
	mov r0, #0x2d
	mov r1, #0x15
	bl sub_02006C24
	mov r7, #2
	str r0, [sp, #0xc]
	mov r5, #0
	lsl r7, r7, #0xa
	b _0223F8FA
_0223F8BE:
	mov r0, #0x15
	add r1, r7, #0
	bl sub_02018144
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x20]
	mov r0, #0x15
	str r0, [sp]
	ldr r1, _0223F958 ; =0x02253250
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	add r6, r0, #0
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r1, [r0, #0x20]
	ldr r0, [sp, #0x10]
	add r2, r7, #0
	add r0, #0xc
	bl sub_020C4B68
	add r0, r6, #0
	bl sub_020181C4
	add r5, r5, #1
_0223F8FA:
	cmp r5, #5
	blt _0223F8BE
	ldr r0, [r4, #4]
	mov r7, #2
	ldr r6, [r0, #0x50]
	mov r5, #0
	lsl r7, r7, #8
	b _0223F948
_0223F90A:
	mov r0, #0x15
	add r1, r7, #0
	bl sub_02018144
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x34]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0223F95C ; =0x02253238
	lsl r3, r5, #1
	ldrh r2, [r2, r3]
	add r0, r6, #0
	mov r1, #0x2d
	mov r3, #0x15
	bl sub_02003050
	add r0, r6, #0
	mov r1, #1
	bl sub_02003164
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, #0x34]
	add r2, r7, #0
	bl sub_020C4B18
	add r5, r5, #1
_0223F948:
	cmp r5, #2
	blt _0223F90A
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F958: .word 0x02253250
_0223F95C: .word 0x02253238
	thumb_func_end ov17_0223F88C

	thumb_func_start ov17_0223F960
ov17_0223F960: ; 0x0223F960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl ov17_022404B0
	ldr r0, [r6, #0x3c]
	bl sub_020127BC
	ldr r3, _0223F9C0 ; =0x000080F8
	str r3, [sp]
	ldr r0, [r6, #4]
	add r1, r3, #5
	ldr r0, [r0, #0x1c]
	sub r2, r3, #7
	bl ov17_02252B20
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl ov17_02252BCC
	mov r4, #0
	add r5, r6, #0
_0223F98E:
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0223F98E
	mov r5, #0
	add r4, r6, #0
_0223F9A0:
	ldr r0, [r4, #0x34]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _0223F9A0
	add r0, r6, #0
	bl ov17_022409F4
	add r0, r6, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223F9C0: .word 0x000080F8
	thumb_func_end ov17_0223F960

	thumb_func_start ov17_0223F9C4
ov17_0223F9C4: ; 0x0223F9C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r3, [r7, #0xc]
	ldr r0, [r7, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r2, [r7, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _0223F9EE
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	b _0223F9F8
_0223F9EE:
	mov r0, #0x30
	ldr r1, _0223FAE8 ; =0x02253558
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #0x10]
_0223F9F8:
	ldr r0, [sp, #4]
	mov r1, #0x30
	ldr r2, _0223FAE8 ; =0x02253558
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #0x14]
	mov r4, #0
	add r5, r0, #0
_0223FA08:
	ldrh r1, [r5, #0xc]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0223FA08
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r0, [r7, #4]
	ldrh r1, [r1, #2]
	ldr r0, [r0, #0x50]
	mov r2, #1
	lsl r1, r1, #2
	add r1, r7, r1
	ldr r1, [r1, #0x34]
	mov r3, #0
	bl sub_02002FBC
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x10]
	mov r5, #0
_0223FA42:
	ldrh r2, [r6, #4]
	ldr r0, _0223FAEC ; =0x0000FFFF
	cmp r2, r0
	beq _0223FA78
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0223FA56
	ldrh r0, [r4, #4]
	cmp r2, r0
	beq _0223FA78
_0223FA56:
	lsl r2, r2, #2
	add r1, r5, #4
	add r2, r7, r2
	lsl r1, r1, #0x18
	mov r3, #2
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0x20]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	bl sub_02019574
	add r1, r5, #4
	lsl r1, r1, #0x18
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
_0223FA78:
	add r5, r5, #1
	add r6, r6, #2
	add r4, r4, #2
	cmp r5, #4
	blt _0223FA42
	mov r1, #0x2e
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	strb r0, [r7, r1]
	add r0, r7, #0
	bl ov17_022404B0
	ldr r0, [sp, #0x14]
	ldr r3, [r0, #0x28]
	cmp r3, #0
	beq _0223FAA0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	blx r3
_0223FAA0:
	ldr r0, [sp, #0x14]
	ldrh r1, [r0]
	ldr r0, _0223FAEC ; =0x0000FFFF
	cmp r1, r0
	beq _0223FADA
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0223FAB8
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0223FADA
_0223FAB8:
	mov r3, #0xb7
	mov r0, #0x15
	lsl r3, r3, #2
	str r0, [sp]
	mov r0, #0x2d
	mov r2, #1
	add r3, r7, r3
	bl sub_02006F50
	mov r1, #0xb6
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r0, _0223FAF0 ; =ov17_022411E4
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
_0223FADA:
	ldr r0, _0223FAF4 ; =ov17_02241220
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FAE8: .word 0x02253558
_0223FAEC: .word 0x0000FFFF
_0223FAF0: .word ov17_022411E4
_0223FAF4: .word ov17_02241220
	thumb_func_end ov17_0223F9C4

	thumb_func_start ov17_0223FAF8
ov17_0223FAF8: ; 0x0223FAF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r1, [r5, r0]
	mov r6, #0
	sub r0, r6, #1
	cmp r1, r0
	bne _0223FB0E
	bl sub_02022974
_0223FB0E:
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r1, [r5, r0]
	ldr r3, _0223FBBC ; =0x02253558
	mov r0, #0x30
	add r2, r1, #0
	mul r2, r0
	add r4, r3, r2
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0223FB28
	sub r0, #0x31
	pop {r3, r4, r5, r6, r7, pc}
_0223FB28:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0223FB32
	bl sub_02022974
_0223FB32:
	ldr r0, [r4, #0x14]
	bl sub_02022664
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _0223FB4C
	add r0, r5, #0
	bl ov17_02240C90
	add r7, r0, #0
	add r6, r6, #1
_0223FB4C:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	cmp r7, r0
	bne _0223FB5A
	mov r2, #0xff
	b _0223FB66
_0223FB5A:
	ldr r1, [r4, #0x18]
	lsl r0, r7, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldrb r2, [r0, r7]
_0223FB66:
	ldr r3, [r4, #0x2c]
	cmp r3, #0
	beq _0223FBB6
	ldr r1, [sp]
	add r0, r5, #0
	blx r3
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _0223FBB6
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0223FB88
	add r0, r5, #0
	add r1, r7, #0
	blx r2
_0223FB88:
	mov r0, #0xc6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov17_02252C9C
	cmp r6, #0
	ble _0223FBAE
	mov r0, #0xc7
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r5, r0]
	b _0223FBB6
_0223FBAE:
	mov r0, #0xc7
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
_0223FBB6:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FBBC: .word 0x02253558
	thumb_func_end ov17_0223FAF8

	thumb_func_start ov17_0223FBC0
ov17_0223FBC0: ; 0x0223FBC0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0223FBD0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223FBD0
	mov r0, #1
	bx lr
_0223FBD0:
	mov r0, #0
	bx lr
	thumb_func_end ov17_0223FBC0

	thumb_func_start ov17_0223FBD4
ov17_0223FBD4: ; 0x0223FBD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r0, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	ldrb r1, [r3, r1]
	ldr r3, [r5, #0]
	add r2, #0x51
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _0223FCA0 ; =0x0000011F
	ldr r2, [r0, #0]
	ldrb r0, [r2, r1]
	add r1, r1, #2
	ldrb r1, [r2, r1]
	bl sub_020958C4
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x38]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, _0223FCA4 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223FCA8 ; =0x000080F0
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x7f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x40
	add r2, r4, #0
	str r3, [sp, #0x18]
	bl ov17_02240138
	ldr r0, _0223FCA4 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223FCA8 ; =0x000080F0
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x9f
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x54
	add r2, r6, #0
	str r3, [sp, #0x18]
	bl ov17_02240138
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	ldr r2, [r5, #4]
	mov r0, #1
	str r0, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r2, #0]
	add r1, #0xff
	ldrb r0, [r0, r1]
	mov r1, #0x2d
	mov r3, #0x15
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x50]
	mov r2, #0x26
	bl sub_02002FEC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_0223FCA0: .word 0x0000011F
_0223FCA4: .word 0x00010200
_0223FCA8: .word 0x000080F0
	thumb_func_end ov17_0223FBD4

	thumb_func_start ov17_0223FCAC
ov17_0223FCAC: ; 0x0223FCAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r5, r6, r0
	ldr r0, _0223FF18 ; =0x000002E1
	mov r1, #0xff
	strb r1, [r6, r0]
	add r0, r5, #0
	str r0, [sp, #0x24]
	add r0, #0x50
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r7, r6, #0
	str r0, [sp, #0x28]
	add r0, #0xa0
	mov r4, #0
	add r7, #0x40
	str r0, [sp, #0x28]
	b _0223FDF8
_0223FCD6:
	ldr r0, [r6, #4]
	ldr r1, _0223FF1C ; =0x00000123
	ldr r0, [r0, #0]
	mov r2, #0
	ldrb r1, [r0, r1]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	lsl r1, r4, #1
	add r2, sp, #0x3c
	strh r0, [r2, r1]
	add r0, r2, #0
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0223FD04
	mov r0, #0x4b
	add r2, r5, r4
	lsl r0, r0, #2
	ldrb r2, [r2, r0]
	b _0223FD06
_0223FD04:
	mov r2, #0
_0223FD06:
	add r0, sp, #0x34
	strh r2, [r0, r1]
	ldr r0, _0223FF20 ; =0x00010708
	ldr r1, _0223FF24 ; =0x02253278
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 ; =0x000080F0
	mov r2, #0
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	mov r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0223FF24 ; =0x02253278
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, r1
	bl ov17_02240138
	ldr r0, _0223FF2C ; =0x00010200
	ldr r1, _0223FF30 ; =0x02253314
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 ; =0x000080F0
	add r2, r4, #4
	str r0, [sp, #8]
	lsl r0, r4, #3
	ldrh r1, [r1, r0]
	str r1, [sp, #0xc]
	ldr r1, _0223FF30 ; =0x02253314
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, r1
	add r3, r2, #0
	bl ov17_02240138
	ldr r0, _0223FF2C ; =0x00010200
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 ; =0x000080F0
	lsl r1, r4, #3
	str r0, [sp, #8]
	ldr r0, _0223FF30 ; =0x02253314
	add r2, #8
	add r1, r0, r1
	ldrh r0, [r1, #4]
	str r0, [sp, #0xc]
	ldrh r0, [r1, #6]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, r1
	add r3, r2, #0
	bl ov17_02240138
	lsl r1, r4, #1
	add r0, sp, #0x3c
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _0223FDF6
	mov r0, #0x14
	mul r0, r4
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	bl sub_020129D0
	add r1, r4, #4
	mov r0, #0x14
	mul r0, r1
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	bl sub_020129D0
	add r1, r4, #0
	add r1, #8
	mov r0, #0x14
	mul r0, r1
	add r0, r6, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	bl sub_020129D0
_0223FDF6:
	add r4, r4, #1
_0223FDF8:
	cmp r4, #4
	bge _0223FDFE
	b _0223FCD6
_0223FDFE:
	mov r4, #0
	add r7, sp, #0x3c
	b _0223FE2C
_0223FE04:
	lsl r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _0223FE1E
	mov r0, #0x13
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	add r0, r6, #0
	add r2, r4, #0
	bl ov17_02240424
	b _0223FE2A
_0223FE1E:
	mov r1, #0
	add r0, r6, #0
	mvn r1, r1
	add r2, r4, #0
	bl ov17_02240424
_0223FE2A:
	add r4, r4, #1
_0223FE2C:
	cmp r4, #4
	blt _0223FE04
	mov r4, #0
	mov r7, #0x20
	add r5, sp, #0x3c
	b _0223FE7E
_0223FE38:
	lsl r0, r4, #1
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _0223FE7C
	ldr r1, [r6, #4]
	ldr r0, [r6, #8]
	ldr r3, [r1, #0]
	ldr r1, _0223FF1C ; =0x00000123
	ldrb r1, [r3, r1]
	bl ov17_02243A98
	cmp r0, #0
	bne _0223FE7C
	str r7, [sp]
	ldr r0, [r6, #4]
	mov r1, #1
	add r3, r4, #4
	lsl r3, r3, #0x14
	ldr r2, [r6, #0x38]
	lsl r1, r1, #8
	add r1, r2, r1
	ldr r0, [r0, #0x50]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	ldr r0, _0223FF18 ; =0x000002E1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	beq _0223FE78
	bl sub_02022974
_0223FE78:
	ldr r0, _0223FF18 ; =0x000002E1
	strb r4, [r6, r0]
_0223FE7C:
	add r4, r4, #1
_0223FE7E:
	cmp r4, #4
	blt _0223FE38
	add r0, r6, #0
	add r1, sp, #0x3c
	bl ov17_022402E8
	mov r4, #0
	b _0223FF0E
_0223FE8E:
	lsl r1, r4, #1
	add r0, sp, #0x3c
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0223FF0C
	add r0, sp, #0x34
	ldrh r0, [r0, r1]
	bl sub_02095734
	str r0, [sp, #0x20]
	cmp r0, #0
	bge _0223FEA8
	neg r0, r0
_0223FEA8:
	mov r1, #0xa
	bl sub_020E1F6C
	str r0, [sp, #0x1c]
	cmp r0, #6
	ble _0223FEB8
	bl sub_02022974
_0223FEB8:
	mov r0, #0x18
	mul r0, r4
	add r7, r6, r0
	lsl r0, r4, #3
	ldr r1, _0223FF34 ; =0x02253334
	str r0, [sp, #0x2c]
	add r0, r1, r0
	mov r5, #0
	str r0, [sp, #0x30]
	b _0223FF06
_0223FECC:
	lsl r0, r5, #2
	add r1, r7, r0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223FEDE
	bl sub_02022974
_0223FEDE:
	ldr r0, [sp, #0x20]
	ldr r3, _0223FF34 ; =0x02253334
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	ldr r1, [r6, #4]
	ldr r3, [r3, r2]
	lsl r2, r5, #3
	add r2, r3, r2
	ldr r3, [sp, #0x30]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	ldr r3, [r3, #4]
	bl ov17_0224136C
	lsl r1, r5, #2
	add r2, r7, r1
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r5, r5, #1
_0223FF06:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	blt _0223FECC
_0223FF0C:
	add r4, r4, #1
_0223FF0E:
	cmp r4, #4
	blt _0223FE8E
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0223FF18: .word 0x000002E1
_0223FF1C: .word 0x00000123
_0223FF20: .word 0x00010708
_0223FF24: .word 0x02253278
_0223FF28: .word 0x000080F0
_0223FF2C: .word 0x00010200
_0223FF30: .word 0x02253314
_0223FF34: .word 0x02253334
	thumb_func_end ov17_0223FCAC

	thumb_func_start ov17_0223FF38
ov17_0223FF38: ; 0x0223FF38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r6, r5, r0
	add r7, r5, #0
	mov r4, #0
	add r6, #0xf0
	add r7, #0x40
	b _0223FF86
_0223FF4E:
	ldr r0, _0223FFE4 ; =0x0001090A
	ldr r1, _0223FFE8 ; =0x0225325C
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FFEC ; =0x000080F0
	mov r2, #0
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	mov r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0223FFE8 ; =0x0225325C
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	add r0, r6, r1
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	bl ov17_02240138
	add r4, r4, #1
_0223FF86:
	cmp r4, #3
	blt _0223FF4E
	ldr r0, [r5, #4]
	mov r1, #0x35
	ldr r0, [r0, #0x38]
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, _0223FFE4 ; =0x0001090A
	ldr r1, _0223FFEC ; =0x000080F0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x80
	str r1, [sp, #0xc]
	mov r1, #0xa4
	str r1, [sp, #0x10]
	mov r1, #1
	str r1, [sp, #0x14]
	add r2, r5, #0
	mov r1, #0x14
	str r0, [sp, #0x18]
	add r2, #0x40
	mul r1, r4
	add r1, r2, r1
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl ov17_02240138
	add r0, r6, #0
	bl sub_020237BC
	ldr r2, [r5, #4]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r3, [r2, #0]
	ldr r2, _0223FFF0 ; =0x0000011E
	ldrb r2, [r3, r2]
	bl ov17_022412C0
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FFE4: .word 0x0001090A
_0223FFE8: .word 0x0225325C
_0223FFEC: .word 0x000080F0
_0223FFF0: .word 0x0000011E
	thumb_func_end ov17_0223FF38

	thumb_func_start ov17_0223FFF4
ov17_0223FFF4: ; 0x0223FFF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #1
	str r2, [sp]
	cmp r0, #4
	bhi _02240018
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224000E: ; jump table
	.short _02240018 - _0224000E - 2 ; case 0
	.short _0224001E - _0224000E - 2 ; case 1
	.short _0224001E - _0224000E - 2 ; case 2
	.short _0224001E - _0224000E - 2 ; case 3
	.short _0224001E - _0224000E - 2 ; case 4
_02240018:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0224001E:
	ldr r0, [r4, #4]
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02240080 ; =0x00000123
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0x36
	bl sub_02074470
	cmp r0, #0
	beq _02240040
	ldr r0, _02240084 ; =0x000002E1
	ldrb r0, [r4, r0]
	cmp r0, r5
	bne _02240046
_02240040:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02240046:
	mov r0, #6
	ldr r1, _02240088 ; =0x022532E4
	mul r0, r5
	add r7, r1, r0
	ldr r1, _0224008C ; =0x02253388
	lsl r0, r5, #4
	add r6, r1, r0
	ldr r1, [sp]
	add r0, r4, #0
	bl ov17_02240930
	ldr r0, _02240090 ; =ov17_02240658
	add r1, r4, #0
	bl ov17_022404CC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r7, [r4, r1]
	add r0, r1, #4
	str r6, [r4, r0]
	add r0, r1, #0
	mov r2, #2
	add r0, #0xc
	strb r2, [r4, r0]
	add r1, #8
	str r5, [r4, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240080: .word 0x00000123
_02240084: .word 0x000002E1
_02240088: .word 0x022532E4
_0224008C: .word 0x02253388
_02240090: .word ov17_02240658
	thumb_func_end ov17_0223FFF4

	thumb_func_start ov17_02240094
ov17_02240094: ; 0x02240094
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #1
	cmp r0, #4
	bhi _022400B6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022400AC: ; jump table
	.short _022400B6 - _022400AC - 2 ; case 0
	.short _022400BA - _022400AC - 2 ; case 1
	.short _022400BE - _022400AC - 2 ; case 2
	.short _022400C2 - _022400AC - 2 ; case 3
	.short _022400C6 - _022400AC - 2 ; case 4
_022400B6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022400BA:
	mov r6, #0
	b _022400C8
_022400BE:
	mov r6, #1
	b _022400C8
_022400C2:
	mov r6, #2
	b _022400C8
_022400C6:
	mov r6, #3
_022400C8:
	ldr r0, [r4, #4]
	ldr r1, [r0, #0]
	ldr r0, _02240128 ; =0x0000011E
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _022400D8
	mov r7, #1
	b _022400DA
_022400D8:
	mov r7, #0
_022400DA:
	add r0, r4, #0
	add r1, r2, #0
	bl ov17_02240930
	ldr r0, _0224012C ; =ov17_0224051C
	add r1, r4, #0
	bl ov17_022404CC
	mov r0, #6
	ldr r1, _02240130 ; =0x022532FC
	mul r0, r5
	add r0, r1, r0
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _02240134 ; =0x022533C8
	lsl r0, r5, #4
	add r2, r2, r0
	add r0, r1, #4
	str r2, [r4, r0]
	mov r2, #3
	lsl r0, r2, #8
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r5, [r4, r0]
	add r0, r1, #0
	add r0, #0xd
	strb r6, [r4, r0]
	cmp r7, #1
	bne _02240122
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	sub r1, #0xc
	str r0, [r4, r1]
_02240122:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240128: .word 0x0000011E
_0224012C: .word ov17_0224051C
_02240130: .word 0x022532FC
_02240134: .word 0x022533C8
	thumb_func_end ov17_02240094

	thumb_func_start ov17_02240138
ov17_02240138: ; 0x02240138
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _02240152
	bl sub_02022974
_02240152:
	ldr r1, [r7, #4]
	cmp r4, #0
	ldr r0, [r1, #0x24]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0x1c]
	str r0, [sp, #0x20]
	bne _0224016E
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov17_02240C60
	b _02240176
_0224016E:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_02240176:
	cmp r4, #0
	bne _022401B4
	add r0, sp, #0x3c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsl r2, r2, #0x18
	add r1, sp, #0x3c
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	b _022401C0
_022401B4:
	add r3, r4, #0
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_022401C0:
	add r0, sp, #0x3c
	mov r1, #2
	mov r2, #0x15
	bl sub_02012898
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x30
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _022401E4
	ldr r1, [sp, #0x2c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r6, r6, r0
_022401E4:
	ldr r0, [r7, #0x3c]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl sub_0200D9B0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	str r0, [sp, #0x58]
	mov r0, #0
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x6c]
	mov r0, #0x64
	str r1, [sp, #0x60]
	mov r1, #0x42
	str r0, [sp, #0x70]
	mov r0, #2
	str r0, [sp, #0x74]
	mov r0, #0x15
	str r0, [sp, #0x78]
	ldr r2, [sp, #0xa0]
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, sp, #0x4c
	str r6, [sp, #0x64]
	str r1, [sp, #0x68]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r7, r0, #0
	bl sub_02012AC0
	mov r2, #0x42
	ldr r3, [sp, #0xa0]
	lsl r2, r2, #2
	add r0, r7, #0
	add r1, r6, #0
	add r2, r3, r2
	bl sub_020128C4
	cmp r4, #0
	bne _02240248
	add r0, sp, #0x3c
	bl sub_0201A8FC
_02240248:
	str r7, [r5, #0]
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240138

	thumb_func_start ov17_02240260
ov17_02240260: ; 0x02240260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r4, #0x44
	add r7, r6, #0
_0224026C:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0224027E
	bl sub_02012870
	add r0, r4, #0
	bl sub_0201EE28
	str r7, [r5, #0x40]
_0224027E:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0xc
	blt _0224026C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240260

	thumb_func_start ov17_0224028C
ov17_0224028C: ; 0x0224028C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022402A6
	bl ov17_02241314
	mov r0, #5
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_022402A6:
	pop {r4, pc}
	thumb_func_end ov17_0224028C

	thumb_func_start ov17_022402A8
ov17_022402A8: ; 0x022402A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	mov r7, #0x51
	str r0, [sp, #4]
	add r6, r0, #0
	lsl r7, r7, #2
_022402B8:
	ldr r5, [sp]
	mov r4, #0
_022402BC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022402CC
	bl ov17_022413AC
	mov r0, #0x51
	lsl r0, r0, #2
	str r6, [r5, r0]
_022402CC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _022402BC
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _022402B8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022402A8

	thumb_func_start ov17_022402E8
ov17_022402E8: ; 0x022402E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #4]
	ldr r4, _0224037C ; =0x02253354
	ldr r0, [r1, #0x18]
	add r3, sp, #8
	str r0, [sp, #4]
	ldr r0, [r1, #0x1c]
	mov r2, #6
	str r0, [sp]
_02240300:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02240300
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [r3, #0]
	add r6, sp, #8
	b _02240374
_02240312:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02240324
	bl sub_02022974
_02240324:
	lsl r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02240372
	mov r0, #0xb5
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	ldr r0, _02240380 ; =0x000080F6
	ldr r1, _02240384 ; =0x02253298
	add r0, r4, r0
	str r0, [sp, #0x1c]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r3, sp, #8
	strh r1, [r6]
	ldr r1, _02240384 ; =0x02253298
	add r0, r1, r0
	ldrh r0, [r0, #2]
	ldr r1, [sp]
	strh r0, [r6, #2]
	ldr r0, [sp, #4]
	bl ov17_0224F154
	lsl r1, r4, #2
	mov r2, #0x13
	mov r3, #0x11
	add r1, r5, r1
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r2, #0
	ldr r0, [r1, r0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	lsl r3, r3, #0x10
	bl sub_0200D500
_02240372:
	add r4, r4, #1
_02240374:
	cmp r4, #4
	blt _02240312
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224037C: .word 0x02253354
_02240380: .word 0x000080F6
_02240384: .word 0x02253298
	thumb_func_end ov17_022402E8

	thumb_func_start ov17_02240388
ov17_02240388: ; 0x02240388
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x13
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_02240394:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022403A4
	bl ov17_0224F184
	mov r0, #0x13
	lsl r0, r0, #4
	str r6, [r5, r0]
_022403A4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02240394
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240388

	thumb_func_start ov17_022403B0
ov17_022403B0: ; 0x022403B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	ldr r0, [r0, #0x24]
	add r7, r3, #0
	mov r1, #4
	add r4, r2, #0
	str r0, [sp, #4]
	bl sub_02019FE4
	mov ip, r0
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	ldr r7, [r4, #0]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #1
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #4]
	cmp r7, r0
	bgt _02240416
	lsl r6, r7, #5
_022403E2:
	lsl r2, r6, #1
	mov r0, ip
	add r5, r0, r2
	ldr r0, [sp]
	ldr r3, [r4, #0xc]
	add r2, r0, r2
	ldr r0, [r4, #8]
	cmp r0, r3
	bgt _0224040C
	lsl r3, r0, #1
	add r2, r2, r3
	add r3, r5, r3
_022403FA:
	ldrh r5, [r2]
	add r0, r0, #1
	add r2, r2, #2
	add r5, r1, r5
	strh r5, [r3]
	ldr r5, [r4, #0xc]
	add r3, r3, #2
	cmp r0, r5
	ble _022403FA
_0224040C:
	ldr r0, [r4, #4]
	add r7, r7, #1
	add r6, #0x20
	cmp r7, r0
	ble _022403E2
_02240416:
	ldr r0, [sp, #4]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022403B0

	thumb_func_start ov17_02240424
ov17_02240424: ; 0x02240424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _0224049C ; =0x022532BC
	add r5, r2, #0
	add r4, r0, #0
	add r3, r1, #0
	add r2, sp, #4
	ldmia r6!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #0
	mvn r0, r0
	cmp r3, r0
	beq _02240464
	mov r0, #0x20
	str r0, [sp]
	lsl r1, r3, #2
	ldr r0, [r4, #4]
	add r3, r5, #4
	lsl r3, r3, #0x14
	ldr r0, [r0, #0x50]
	ldr r1, [r7, r1]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02240464:
	ldr r2, _022404A0 ; =0x02253248
	lsl r1, r5, #1
	mov r0, #0
	add r1, r2, r1
	str r0, [sp]
	ldr r3, _022404A4 ; =0x02253408
	lsl r2, r5, #4
	add r2, r3, r2
	add r0, r4, #0
	mov r3, #2
	bl ov17_022403B0
	mov r2, #0x20
	str r2, [sp]
	ldr r0, [r4, #4]
	add r3, r5, #4
	lsl r3, r3, #0x14
	ldr r1, [r4, #0x38]
	add r2, #0xe0
	add r1, r1, r2
	ldr r0, [r0, #0x50]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224049C: .word 0x022532BC
_022404A0: .word 0x02253248
_022404A4: .word 0x02253408
	thumb_func_end ov17_02240424

	thumb_func_start ov17_022404A8
ov17_022404A8: ; 0x022404A8
	ldr r3, _022404AC ; =ov17_022404B0
	bx r3
	; .align 2, 0
_022404AC: .word ov17_022404B0
	thumb_func_end ov17_022404A8

	thumb_func_start ov17_022404B0
ov17_022404B0: ; 0x022404B0
	push {r4, lr}
	add r4, r0, #0
	bl ov17_0224028C
	add r0, r4, #0
	bl ov17_022402A8
	add r0, r4, #0
	bl ov17_02240388
	add r0, r4, #0
	bl ov17_02240260
	pop {r4, pc}
	thumb_func_end ov17_022404B0

	thumb_func_start ov17_022404CC
ov17_022404CC: ; 0x022404CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022404DC
	bl sub_02022974
_022404DC:
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r2, _022404F8 ; =0x00000514
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022404F8: .word 0x00000514
	thumb_func_end ov17_022404CC

	thumb_func_start ov17_022404FC
ov17_022404FC: ; 0x022404FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224051A
	bl sub_0200DA58
	mov r0, #0xb9
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x20
	str r1, [r4, #0x10]
	bl sub_020C4CF4
_0224051A:
	pop {r4, pc}
	thumb_func_end ov17_022404FC

	thumb_func_start ov17_0224051C
ov17_0224051C: ; 0x0224051C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r3, #0xb9
	add r5, r1, #0
	lsl r3, r3, #2
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _02240536
	cmp r0, #1
	beq _022405A8
	cmp r0, #2
	beq _022405C4
	b _02240634
_02240536:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #0
	add r2, r3, #0
	add r3, #0x1c
	add r1, #0x10
	add r2, #0x14
	ldrb r3, [r5, r3]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ov17_022403B0
	ldr r0, _02240654 ; =0x00000301
	add r2, sp, #4
	ldrb r1, [r5, r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	add r1, sp, #8
	bl sub_020129A4
	ldr r0, _02240654 ; =0x00000301
	ldr r2, [sp, #4]
	ldrb r1, [r5, r0]
	mov r0, #0x14
	sub r2, r2, #2
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #8]
	bl sub_020128C4
	mov r7, #0xba
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02240582:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240592
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
_02240592:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02240582
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r5, r0]
	add sp, #0xc
	add r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_022405A8:
	add r0, r3, #2
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02240650
	mov r1, #0
	add r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r3]
	add r0, r0, #1
	strh r0, [r5, r3]
_022405C4:
	mov r0, #1
	mov r3, #0xbd
	str r0, [sp]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r5, r3]
	add r3, #0xc
	ldrb r3, [r5, r3]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ov17_022403B0
	ldr r0, _02240654 ; =0x00000301
	add r2, sp, #4
	ldrb r1, [r5, r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	add r1, sp, #8
	bl sub_020129A4
	ldr r0, _02240654 ; =0x00000301
	ldr r2, [sp, #4]
	ldrb r1, [r5, r0]
	mov r0, #0x14
	add r2, r2, #1
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #8]
	bl sub_020128C4
	mov r7, #0xba
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0224060E:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224061E
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #1
	bl sub_0200D5AC
_0224061E:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0224060E
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r5, r0]
	add sp, #0xc
	add r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_02240634:
	add r0, r3, #2
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02240650
	add r0, r5, #0
	bl ov17_022404A8
	add r0, r5, #0
	bl ov17_022404FC
_02240650:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240654: .word 0x00000301
	thumb_func_end ov17_0224051C

	thumb_func_start ov17_02240658
ov17_02240658: ; 0x02240658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r7, _022408DC ; =0x00000123
	add r4, r1, #0
	mov r6, #0
	add r5, sp, #0x20
_02240664:
	ldr r0, [r4, #4]
	mov r2, #0
	ldr r0, [r0, #0]
	ldrb r1, [r0, r7]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	add r1, #0x36
	bl sub_02074470
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _02240664
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _022406E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240698: ; jump table
	.short _022406A0 - _02240698 - 2 ; case 0
	.short _022406B2 - _02240698 - 2 ; case 1
	.short _022406C4 - _02240698 - 2 ; case 2
	.short _022406D6 - _02240698 - 2 ; case 3
_022406A0:
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0]
	mov r5, #0
	mov r6, #4
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406B2:
	mov r0, #9
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #2]
	mov r5, #1
	mov r6, #5
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406C4:
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	mov r5, #2
	mov r6, #6
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406D6:
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #6]
	mov r5, #3
	mov r6, #7
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406E8:
	mov r5, #0
	add r6, r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #8]
_022406F0:
	mov r3, #0xb9
	lsl r3, r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _02240704
	cmp r0, #1
	beq _022407D2
	cmp r0, #2
	beq _022407EE
	b _022408BA
_02240704:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #0
	add r2, r3, #0
	add r3, #0x1c
	add r1, #0x10
	add r2, #0x14
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov17_022403B0
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r5
	add r7, #0x40
	str r0, [sp, #0x10]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	sub r2, r2, #2
	bl sub_020128C4
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r6
	add r7, #0x40
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	sub r2, r2, #2
	bl sub_020128C4
	ldr r0, [sp, #0xc]
	add r6, r4, #0
	mov r1, #0x14
	add r7, r0, #0
	mul r7, r1
	add r6, #0x40
	ldr r0, [r6, r7]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r2, [sp, #0x28]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x2c]
	sub r2, r2, #2
	bl sub_020128C4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022407C4
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
	mov r7, #0x51
	ldr r0, [sp, #4]
	mov r1, #0x18
	mul r1, r0
	mov r6, #0
	add r5, r4, r1
	lsl r7, r7, #2
_022407AC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022407BC
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
_022407BC:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _022407AC
_022407C4:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	add sp, #0x30
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022407D2:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022408D6
	mov r1, #0
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	add r0, r0, #1
	strh r0, [r4, r3]
_022407EE:
	mov r0, #1
	mov r3, #0xbd
	str r0, [sp]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r4, r3]
	add r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov17_022403B0
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r5
	add r7, #0x40
	str r0, [sp, #0x18]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	add r2, r2, #1
	bl sub_020128C4
	add r7, r4, #0
	mov r0, #0x14
	mul r0, r6
	add r7, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	add r2, r2, #1
	bl sub_020128C4
	ldr r0, [sp, #0xc]
	add r6, r4, #0
	mov r1, #0x14
	add r7, r0, #0
	mul r7, r1
	add r6, #0x40
	ldr r0, [r6, r7]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	ldr r2, [sp, #0x28]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x2c]
	add r2, r2, #1
	bl sub_020128C4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022408AC
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0200D5AC
	mov r7, #0x51
	ldr r0, [sp, #4]
	mov r1, #0x18
	mul r1, r0
	mov r6, #0
	add r5, r4, r1
	lsl r7, r7, #2
_02240894:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022408A4
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #1
	bl sub_0200D5AC
_022408A4:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _02240894
_022408AC:
	mov r0, #0xb9
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	add sp, #0x30
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022408BA:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022408D6
	add r0, r4, #0
	bl ov17_022404A8
	add r0, r4, #0
	bl ov17_022404FC
_022408D6:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022408DC: .word 0x00000123
	thumb_func_end ov17_02240658

	thumb_func_start ov17_022408E0
ov17_022408E0: ; 0x022408E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022408F0
	bl sub_02022974
_022408F0:
	mov r0, #0xc1
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	ldr r2, _0224090C ; =0x00000528
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224090C: .word 0x00000528
	thumb_func_end ov17_022408E0

	thumb_func_start ov17_02240910
ov17_02240910: ; 0x02240910
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224092E
	bl sub_0200DA58
	mov r0, #0xc1
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xc
	str r1, [r4, #0x14]
	bl sub_020C4CF4
_0224092E:
	pop {r4, pc}
	thumb_func_end ov17_02240910

	thumb_func_start ov17_02240930
ov17_02240930: ; 0x02240930
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	beq _02240946
	ldr r0, _02240948 ; =ov17_02240950
	add r1, r5, #0
	bl ov17_022408E0
	ldr r0, _0224094C ; =0x0000030D
	strb r4, [r5, r0]
_02240946:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02240948: .word ov17_02240950
_0224094C: .word 0x0000030D
	thumb_func_end ov17_02240930

	thumb_func_start ov17_02240950
ov17_02240950: ; 0x02240950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #0xc1
	add r5, r1, #0
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, [r5, #4]
	mov r4, #0
	ldr r3, [r0, #0x50]
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _02240970
	cmp r0, #1
	beq _0224098C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02240970:
	mov r0, #0xa
	lsl r0, r0, #8
	strh r0, [r2, #4]
	ldr r0, _022409EC ; =0xFFFFFB00
	strh r0, [r2, #6]
	mov r0, #4
	ldrsh r1, [r2, r0]
	mov r0, #6
	ldrsh r0, [r2, r0]
	sub r0, r1, r0
	strh r0, [r2, #4]
	ldrb r0, [r2, #8]
	add r0, r0, #1
	strb r0, [r2, #8]
_0224098C:
	mov r7, #4
	mov r6, #6
	ldrsh r1, [r2, r7]
	ldrsh r0, [r2, r6]
	add r0, r1, r0
	strh r0, [r2, #4]
	ldrsh r6, [r2, r6]
	cmp r6, #0
	blt _022409AC
	ldrsh r1, [r2, r7]
	lsl r0, r7, #0xa
	cmp r1, r0
	blt _022409AC
	strh r0, [r2, #4]
	mov r4, #1
	b _022409BE
_022409AC:
	cmp r6, #0
	bge _022409BE
	mov r0, #4
	ldrsh r0, [r2, r0]
	cmp r0, #0
	bgt _022409BE
	mov r0, #0
	strh r0, [r2, #4]
	mov r4, #1
_022409BE:
	mov r0, #4
	ldrsh r0, [r2, r0]
	mov r1, #1
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _022409F0 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r2, #9]
	add r0, r3, #0
	mov r3, #0x10
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl sub_020039B0
	cmp r4, #1
	bne _022409E8
	add r0, r5, #0
	bl ov17_02240910
_022409E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022409EC: .word 0xFFFFFB00
_022409F0: .word 0x00007FFF
	thumb_func_end ov17_02240950

	thumb_func_start ov17_022409F4
ov17_022409F4: ; 0x022409F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x69
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r5, r1
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x50
	add r1, #0xa0
	add r4, r5, #0
	add r7, r5, r0
	add r6, r5, r1
_02240A12:
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A22
	ldr r0, [sp]
	bl sub_0201A8FC
_02240A22:
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A32
	add r0, r7, #0
	bl sub_0201A8FC
_02240A32:
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A42
	add r0, r6, #0
	bl sub_0201A8FC
_02240A42:
	ldr r0, [sp]
	add r4, #0x14
	add r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _02240A12
	mov r0, #0xa5
	lsl r0, r0, #2
	add r7, r0, #0
	mov r6, #0
	add r4, r5, r0
	add r7, #0xc
_02240A64:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02240A70
	add r0, r4, #0
	bl sub_0201A8FC
_02240A70:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #3
	blt _02240A64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_022409F4

	thumb_func_start ov17_02240A80
ov17_02240A80: ; 0x02240A80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x50
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0xa0
	add r7, r1, #0
	str r6, [sp, #0x1c]
	str r0, [sp, #0x14]
_02240AA4:
	ldrh r0, [r7]
	cmp r0, #0
	beq _02240ACA
	ldr r1, [sp, #0x20]
	add r4, r6, r1
	mov r1, #0xa
	bl sub_020790C4
	mov r1, #0x4b
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldrh r0, [r7]
	mov r1, #0xb
	bl sub_020790C4
	mov r1, #0x13
	lsl r1, r1, #4
	strb r0, [r4, r1]
	b _02240ADA
_02240ACA:
	ldr r0, [sp, #0x20]
	mov r1, #0
	add r4, r6, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r0, #4
	strb r1, [r4, r0]
_02240ADA:
	ldrh r0, [r7]
	mov r1, #0x15
	bl sub_0200B2EC
	str r0, [sp, #0x24]
	ldr r0, _02240BE4 ; =0x00010708
	ldr r1, [sp, #0x24]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	mov r2, #2
	bl ov17_02240BF4
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl sub_02095750
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x40]
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0x40]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _02240BE8 ; =0x00010200
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl ov17_02240BF4
	ldr r0, _02240BE8 ; =0x00010200
	ldr r3, [sp, #0x14]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov17_02240BF4
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	add r7, r7, #2
	add r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _02240AA4
	mov r7, #0
	add r4, r7, #0
	add r6, #0xf0
_02240B70:
	ldr r0, [r5, #4]
	mov r1, #0x15
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0xd0
	ldrh r0, [r0]
	bl ov17_0223F310
	str r0, [sp, #0x2c]
	ldr r0, _02240BEC ; =0x0001090A
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, r6, #0
	bl ov17_02240BF4
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r7, r7, #1
	add r4, #8
	add r6, #0x14
	cmp r7, #3
	blt _02240B70
	ldr r3, _02240BF0 ; =0x000080F1
	ldr r2, [r5, #4]
	add r0, r3, #7
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x50]
	add r3, #0xc
	bl ov17_02252AB0
	ldr r3, _02240BF0 ; =0x000080F1
	ldr r1, [r5, #4]
	add r0, r3, #7
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r2, #0x15
	add r3, #0xc
	bl ov17_02252B48
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240BE4: .word 0x00010708
_02240BE8: .word 0x00010200
_02240BEC: .word 0x0001090A
_02240BF0: .word 0x000080F1
	thumb_func_end ov17_02240A80

	thumb_func_start ov17_02240BF4
ov17_02240BF4: ; 0x02240BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x1c
	add r3, sp, #0x18
	bl ov17_02240C60
	ldr r0, [sp, #0x1c]
	strh r0, [r4, #0x12]
	ldr r0, [sp, #0x18]
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02240C20
	add r0, r4, #0
	bl sub_0201A8FC
_02240C20:
	add r0, r4, #0
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0x24]
	lsl r2, r2, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, r4, #0
	add r2, r6, #0
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240BF4

	thumb_func_start ov17_02240C60
ov17_02240C60: ; 0x02240C60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_02002D7C
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _02240C88
	add r5, r5, #1
_02240C88:
	str r4, [r6, #0]
	str r5, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_02240C60

	thumb_func_start ov17_02240C90
ov17_02240C90: ; 0x02240C90
	push {r4, r5, r6, lr}
	mov r6, #0xc6
	lsl r6, r6, #2
	add r2, r6, #0
	add r5, r0, #0
	sub r2, #0x38
	ldrsb r2, [r5, r2]
	ldr r1, _02240CF4 ; =0x02253558
	mov r3, #0x30
	add r4, r2, #0
	mul r4, r3
	add r4, r1, r4
	ldr r2, [r4, #0x20]
	cmp r2, #0
	bne _02240CB4
	sub r3, #0x31
	add r0, r3, #0
	pop {r4, r5, r6, pc}
_02240CB4:
	ldrb r1, [r5, r6]
	cmp r1, #0
	bne _02240CEE
	add r0, r6, #4
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _02240CCC
	ldr r1, _02240CF8 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	ldr r1, _02240CFC ; =0x00000CF3
	tst r1, r2
	beq _02240CE8
_02240CCC:
	cmp r0, #0
	bne _02240CD6
	ldr r0, _02240D00 ; =0x000005DC
	bl sub_02005748
_02240CD6:
	mov r1, #1
	mov r0, #0xc7
	strb r1, [r5, r6]
	mov r2, #0
	lsl r0, r0, #2
	strb r2, [r5, r0]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	blx r2
_02240CE8:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02240CEE:
	mov r1, #0
	blx r2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02240CF4: .word 0x02253558
_02240CF8: .word 0x021BF67C
_02240CFC: .word 0x00000CF3
_02240D00: .word 0x000005DC
	thumb_func_end ov17_02240C90

	thumb_func_start ov17_02240D04
ov17_02240D04: ; 0x02240D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #8]
	mov r1, #0x31
	add r5, r0, #0
	lsl r1, r1, #4
	add r0, r5, r1
	str r0, [sp, #0xc]
	add r0, r1, #0
	sub r1, #0x30
	add r0, #8
	add r6, r5, r0
	ldrsb r1, [r5, r1]
	mov r0, #0x30
	ldr r2, _02240E5C ; =0x02253558
	mul r0, r1
	add r7, r2, r0
	mov r4, #0
	b _02240D48
_02240D2A:
	ldr r0, [r5, #4]
	ldr r1, _02240E60 ; =0x00000123
	ldr r0, [r0, #0]
	mov r2, #0
	ldrb r1, [r0, r1]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x36
	bl sub_02074470
	lsl r2, r4, #1
	add r1, sp, #0x10
	strh r0, [r1, r2]
	add r4, r4, #1
_02240D48:
	cmp r4, #4
	blt _02240D2A
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02240DC6
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldrsb r0, [r0, r1]
	mov r4, #1
	strb r0, [r6, #2]
	ldr r0, [sp, #0xc]
	ldrsb r0, [r0, r4]
	strb r0, [r6, #1]
	ldrsb r0, [r6, r4]
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r2, [r6, r0]
	ldr r0, _02240E64 ; =0x0225323C
	add r0, r0, r3
	ldrb r3, [r2, r0]
	add r0, sp, #0x10
	lsl r2, r3, #1
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _02240D92
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r6, #2]
	strb r1, [r6, #1]
	ldrsb r0, [r6, r4]
	lsl r2, r0, #1
	mov r0, #2
	ldrsb r1, [r6, r0]
	ldr r0, _02240E64 ; =0x0225323C
	add r0, r0, r2
	ldrb r3, [r1, r0]
_02240D92:
	ldr r0, [r7, #0x14]
	lsl r3, r3, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	mov r0, #0xc5
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	mov r0, #0
	add sp, #0x1c
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02240DC6:
	ldr r0, _02240E64 ; =0x0225323C
	add r1, sp, #0x18
	mov r2, #4
	bl sub_020C4DB0
	mov r1, #2
	add r0, r6, #0
	add r2, r1, #0
	add r3, sp, #0x18
	bl ov17_02241004
	cmp r0, #0x20
	bhi _02240DF6
	bhs _02240E02
	cmp r0, #2
	bhi _02240DF0
	cmp r0, #1
	blo _02240E54
	beq _02240E40
	cmp r0, #2
	b _02240E54
_02240DF0:
	cmp r0, #0x10
	beq _02240E02
	b _02240E54
_02240DF6:
	cmp r0, #0x40
	bhi _02240DFE
	beq _02240E02
	b _02240E54
_02240DFE:
	cmp r0, #0x80
	bne _02240E54
_02240E02:
	mov r0, #1
	ldrsb r0, [r6, r0]
	ldr r2, _02240E64 ; =0x0225323C
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r6, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	mov r0, #0xc5
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	b _02240E54
_02240E40:
	mov r0, #1
	ldrsb r0, [r6, r0]
	ldr r2, _02240E64 ; =0x0225323C
	add sp, #0x1c
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r6, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_02240E54:
	mov r0, #0
	mvn r0, r0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240E5C: .word 0x02253558
_02240E60: .word 0x00000123
_02240E64: .word 0x0225323C
	thumb_func_end ov17_02240D04

	thumb_func_start ov17_02240E68
ov17_02240E68: ; 0x02240E68
	push {r4, r5, r6, r7}
	mov r2, #0x31
	lsl r2, r2, #4
	mov r4, #0
	add r2, r0, r2
	ldr r7, _02240EA0 ; =0x0225323C
	add r0, r4, #0
	b _02240E96
_02240E78:
	lsl r5, r4, #1
	add r3, r0, #0
	add r6, r7, r5
	b _02240E90
_02240E80:
	ldrb r5, [r3, r6]
	cmp r1, r5
	bne _02240E8E
	strb r3, [r2]
	strb r4, [r2, #1]
	pop {r4, r5, r6, r7}
	bx lr
_02240E8E:
	add r3, r3, #1
_02240E90:
	cmp r3, #2
	blt _02240E80
	add r4, r4, #1
_02240E96:
	cmp r4, #2
	blt _02240E78
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02240EA0: .word 0x0225323C
	thumb_func_end ov17_02240E68

	thumb_func_start ov17_02240EA4
ov17_02240EA4: ; 0x02240EA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0x31
	lsl r7, r7, #4
	add r3, r7, #0
	add r6, r0, #0
	sub r3, #0x30
	add r0, r7, #0
	ldrsb r5, [r6, r3]
	add r0, #8
	add r4, r6, r0
	mov r3, #0x30
	add r2, r1, #0
	ldr r0, _02240FBC ; =0x02253558
	mul r3, r5
	add r1, r6, r7
	add r5, r0, r3
	cmp r2, #1
	bne _02240F18
	mov r0, #2
	ldrsb r2, [r1, r0]
	strb r2, [r4, #2]
	mov r2, #3
	ldrsb r1, [r1, r2]
	strb r1, [r4, #1]
	mov r1, #1
	ldrsb r2, [r4, r1]
	ldrsb r3, [r4, r0]
	lsl r1, r2, #1
	add r2, r2, r1
	ldr r1, _02240FC0 ; =0x02253240
	add r0, r1, r2
	ldrb r1, [r3, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	add r0, r7, #4
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02240F18:
	ldr r0, _02240FC0 ; =0x02253240
	add r1, sp, #8
	mov r2, #6
	bl sub_020C4DB0
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	add r3, sp, #8
	bl ov17_02241004
	cmp r0, #0x20
	bhi _02240F4A
	bhs _02240F56
	cmp r0, #2
	bhi _02240F44
	cmp r0, #1
	blo _02240FB2
	beq _02240F96
	cmp r0, #2
	beq _02240FAC
	b _02240FB2
_02240F44:
	cmp r0, #0x10
	beq _02240F56
	b _02240FB2
_02240F4A:
	cmp r0, #0x40
	bhi _02240F52
	beq _02240F56
	b _02240FB2
_02240F52:
	cmp r0, #0x80
	bne _02240FB2
_02240F56:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _02240FC0 ; =0x02253240
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	mov r0, #0xc5
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov17_02252C78
	b _02240FB2
_02240F96:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _02240FC0 ; =0x02253240
	add sp, #0x10
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02240FAC:
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02240FB2:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240FBC: .word 0x02253558
_02240FC0: .word 0x02253240
	thumb_func_end ov17_02240EA4

	thumb_func_start ov17_02240FC4
ov17_02240FC4: ; 0x02240FC4
	push {r4, r5, r6, r7}
	cmp r1, #3
	beq _02240FFC
	mov r2, #0x31
	lsl r2, r2, #4
	add r3, r0, r2
	mov r5, #0
	ldr r0, _02241000 ; =0x02253240
	add r2, r5, #0
	b _02240FF8
_02240FD8:
	lsl r6, r5, #1
	add r6, r5, r6
	add r4, r2, #0
	add r7, r0, r6
	b _02240FF2
_02240FE2:
	ldrb r6, [r4, r7]
	cmp r1, r6
	bne _02240FF0
	strb r4, [r3, #2]
	strb r5, [r3, #3]
	pop {r4, r5, r6, r7}
	bx lr
_02240FF0:
	add r4, r4, #1
_02240FF2:
	cmp r4, #3
	blt _02240FE2
	add r5, r5, #1
_02240FF8:
	cmp r5, #2
	blt _02240FD8
_02240FFC:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02241000: .word 0x02253240
	thumb_func_end ov17_02240FC4

	thumb_func_start ov17_02241004
ov17_02241004: ; 0x02241004
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	add r4, r1, #0
	ldrsb r1, [r0, r7]
	mov r5, #1
	add r6, r2, #0
	str r1, [sp]
	ldrsb r1, [r0, r5]
	add r2, r3, #0
	mov r3, #0x40
	mov ip, r1
	ldr r1, _022411DC ; =0x021BF67C
	ldr r1, [r1, #0x48]
	tst r3, r1
	beq _02241072
	mov r1, ip
	sub r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, #0
	bge _02241032
	mov r1, #0
	strb r1, [r0, #1]
_02241032:
	cmp r2, #0
	beq _0224106E
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0224106E
	add r1, r0, #1
	mov r7, #0
	mov r6, #1
_0224104E:
	ldrsb r3, [r1, r7]
	sub r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _02241060
	mov r1, ip
	strb r1, [r0, #1]
	b _0224106E
_02241060:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0224104E
_0224106E:
	mov r5, #0x40
	b _02241186
_02241072:
	mov r3, #0x80
	tst r3, r1
	beq _022410C8
	mov r1, ip
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, r6
	blt _02241088
	sub r1, r6, #1
	strb r1, [r0, #1]
_02241088:
	cmp r2, #0
	beq _022410C4
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _022410C4
	add r1, r0, #1
	mov r7, #1
_022410A2:
	mov r3, #0
	ldrsb r3, [r1, r3]
	add r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r7]
	cmp r3, r6
	blt _022410B6
	mov r1, ip
	strb r1, [r0, #1]
	b _022410C4
_022410B6:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _022410A2
_022410C4:
	mov r5, #0x80
	b _02241186
_022410C8:
	mov r3, #0x20
	tst r3, r1
	beq _0224111E
	ldr r1, [sp]
	sub r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, #0
	bge _022410DE
	mov r1, #0
	strb r1, [r0, #2]
_022410DE:
	cmp r2, #0
	beq _0224111A
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0224111A
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_022410FA:
	ldrsb r1, [r5, r7]
	sub r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0224110C
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0224111A
_0224110C:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _022410FA
_0224111A:
	mov r5, #0x20
	b _02241186
_0224111E:
	mov r3, #0x10
	tst r3, r1
	beq _02241174
	ldr r1, [sp]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, r4
	blt _02241134
	sub r1, r4, #1
	strb r1, [r0, #2]
_02241134:
	cmp r2, #0
	beq _02241170
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _02241170
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_02241150:
	ldrsb r1, [r5, r7]
	add r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, r4
	blt _02241162
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _02241170
_02241162:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _02241150
_02241170:
	mov r5, #0x10
	b _02241186
_02241174:
	add r3, r1, #0
	tst r3, r5
	bne _02241186
	tst r1, r7
	beq _02241182
	add r5, r7, #0
	b _02241186
_02241182:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241186:
	cmp r2, #0
	beq _022411B0
	mov r1, ip
	add r3, r4, #0
	mul r3, r1
	ldr r1, [sp]
	add r1, r1, r3
	mov r3, #2
	ldrsb r6, [r0, r3]
	mov r3, #1
	ldrsb r3, [r0, r3]
	ldrb r1, [r2, r1]
	mul r3, r4
	add r3, r6, r3
	ldrb r2, [r2, r3]
	cmp r1, r2
	bne _022411B0
	ldr r1, [sp]
	strb r1, [r0, #2]
	mov r1, ip
	strb r1, [r0, #1]
_022411B0:
	mov r1, #2
	ldrsb r2, [r0, r1]
	ldr r1, [sp]
	cmp r2, r1
	bne _022411C4
	mov r1, #1
	ldrsb r1, [r0, r1]
	mov r0, ip
	cmp r1, r0
	beq _022411CC
_022411C4:
	ldr r0, _022411E0 ; =0x000005DC
	bl sub_02005748
	b _022411D6
_022411CC:
	mov r0, #0xf0
	tst r0, r5
	beq _022411D6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022411D6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022411DC: .word 0x021BF67C
_022411E0: .word 0x000005DC
	thumb_func_end ov17_02241004

	thumb_func_start ov17_022411E4
ov17_022411E4: ; 0x022411E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mov r2, #0xb7
	add r4, r1, #0
	str r0, [sp]
	lsl r2, r2, #2
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	mov r3, #6
	ldr r0, [r0, #0x24]
	ldr r2, [r2, #0x14]
	mov r1, #4
	lsl r3, r3, #0xc
	bl sub_0201958C
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xb6
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_022411E4

	thumb_func_start ov17_02241220
ov17_02241220: ; 0x02241220
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	mov r4, #0
	ldr r2, _02241268 ; =0x02253558
	mul r0, r1
	ldr r6, _0224126C ; =0x0000FFFF
	add r5, r2, r0
	add r7, r4, #0
_02241238:
	ldrh r0, [r5, #4]
	cmp r0, r6
	bne _0224124C
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02019120
	b _02241258
_0224124C:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_02241258:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02241238
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241268: .word 0x02253558
_0224126C: .word 0x0000FFFF
	thumb_func_end ov17_02241220

	.rodata


	.global Unk_ov17_02253230
Unk_ov17_02253230: ; 0x02253230
	.incbin "incbin/overlay17_rodata.bin", 0x4A4, 0x4A8 - 0x4A4

	.global Unk_ov17_02253234
Unk_ov17_02253234: ; 0x02253234
	.incbin "incbin/overlay17_rodata.bin", 0x4A8, 0x4AC - 0x4A8

	.global Unk_ov17_02253238
Unk_ov17_02253238: ; 0x02253238
	.incbin "incbin/overlay17_rodata.bin", 0x4AC, 0x4B0 - 0x4AC

	.global Unk_ov17_0225323C
Unk_ov17_0225323C: ; 0x0225323C
	.incbin "incbin/overlay17_rodata.bin", 0x4B0, 0x4B4 - 0x4B0

	.global Unk_ov17_02253240
Unk_ov17_02253240: ; 0x02253240
	.incbin "incbin/overlay17_rodata.bin", 0x4B4, 0x4BC - 0x4B4

	.global Unk_ov17_02253248
Unk_ov17_02253248: ; 0x02253248
	.incbin "incbin/overlay17_rodata.bin", 0x4BC, 0x4C4 - 0x4BC

	.global Unk_ov17_02253250
Unk_ov17_02253250: ; 0x02253250
	.incbin "incbin/overlay17_rodata.bin", 0x4C4, 0x4D0 - 0x4C4

	.global Unk_ov17_0225325C
Unk_ov17_0225325C: ; 0x0225325C
	.incbin "incbin/overlay17_rodata.bin", 0x4D0, 0x4DC - 0x4D0

	.global Unk_ov17_02253268
Unk_ov17_02253268: ; 0x02253268
	.incbin "incbin/overlay17_rodata.bin", 0x4DC, 0x4EC - 0x4DC

	.global Unk_ov17_02253278
Unk_ov17_02253278: ; 0x02253278
	.incbin "incbin/overlay17_rodata.bin", 0x4EC, 0x4FC - 0x4EC

	.global Unk_ov17_02253288
Unk_ov17_02253288: ; 0x02253288
	.incbin "incbin/overlay17_rodata.bin", 0x4FC, 0x50C - 0x4FC

	.global Unk_ov17_02253298
Unk_ov17_02253298: ; 0x02253298
	.incbin "incbin/overlay17_rodata.bin", 0x50C, 0x51C - 0x50C

	.global Unk_ov17_022532A8
Unk_ov17_022532A8: ; 0x022532A8
	.incbin "incbin/overlay17_rodata.bin", 0x51C, 0x530 - 0x51C

	.global Unk_ov17_022532BC
Unk_ov17_022532BC: ; 0x022532BC
	.incbin "incbin/overlay17_rodata.bin", 0x530, 0x544 - 0x530

	.global Unk_ov17_022532D0
Unk_ov17_022532D0: ; 0x022532D0
	.incbin "incbin/overlay17_rodata.bin", 0x544, 0x558 - 0x544

	.global Unk_ov17_022532E4
Unk_ov17_022532E4: ; 0x022532E4
	.incbin "incbin/overlay17_rodata.bin", 0x558, 0x570 - 0x558

	.global Unk_ov17_022532FC
Unk_ov17_022532FC: ; 0x022532FC
	.incbin "incbin/overlay17_rodata.bin", 0x570, 0x588 - 0x570

	.global Unk_ov17_02253314
Unk_ov17_02253314: ; 0x02253314
	.incbin "incbin/overlay17_rodata.bin", 0x588, 0x5A8 - 0x588

	.global Unk_ov17_02253334
Unk_ov17_02253334: ; 0x02253334
	.incbin "incbin/overlay17_rodata.bin", 0x5A8, 0x5C8 - 0x5A8

	.global Unk_ov17_02253354
Unk_ov17_02253354: ; 0x02253354
	.incbin "incbin/overlay17_rodata.bin", 0x5C8, 0x5FC - 0x5C8

	.global Unk_ov17_02253388
Unk_ov17_02253388: ; 0x02253388
	.incbin "incbin/overlay17_rodata.bin", 0x5FC, 0x63C - 0x5FC

	.global Unk_ov17_022533C8
Unk_ov17_022533C8: ; 0x022533C8
	.incbin "incbin/overlay17_rodata.bin", 0x63C, 0x67C - 0x63C

	.global Unk_ov17_02253408
Unk_ov17_02253408: ; 0x02253408
	.incbin "incbin/overlay17_rodata.bin", 0x67C, 0x6BC - 0x67C

	.global Unk_ov17_02253448
Unk_ov17_02253448: ; 0x02253448
	.incbin "incbin/overlay17_rodata.bin", 0x6BC, 0x72C - 0x6BC

	.global Unk_ov17_022534B8
Unk_ov17_022534B8: ; 0x022534B8
	.incbin "incbin/overlay17_rodata.bin", 0x72C, 0x7CC - 0x72C

	.global Unk_ov17_02253558
Unk_ov17_02253558: ; 0x02253558
	.incbin "incbin/overlay17_rodata.bin", 0x7CC, 0xC0

