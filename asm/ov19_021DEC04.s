	.include "macros/function.inc"
	.include "include/ov19_021DEC04.inc"

	

	.text


	thumb_func_start ov19_021DEC04
ov19_021DEC04: ; 0x021DEC04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r5, r0, #0
	add r0, r7, #0
	add r6, r1, #0
	str r3, [sp, #4]
	bl ov19_021D5E08
	cmp r0, #4
	beq _021DEC24
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DEC24:
	mov r1, #0xe1
	mov r0, #0xa
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	beq _021DECA4
	str r6, [r4, #4]
	ldr r0, [sp, #4]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl ov19_021D77D8
	str r0, [r4, #0x14]
	mov r0, #0xa
	mov r3, #0xda
	str r0, [sp]
	lsl r3, r3, #2
	ldr r0, [sp, #0x28]
	mov r1, #7
	mov r2, #1
	add r3, r4, r3
	bl sub_020071D0
	mov r3, #0x37
	lsl r3, r3, #4
	str r0, [r4, r3]
	mov r0, #0xa
	str r0, [sp]
	sub r3, r3, #4
	ldr r0, [sp, #0x28]
	mov r1, #8
	mov r2, #1
	add r3, r4, r3
	bl sub_020071D0
	mov r2, #0xdd
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x1a
	str r0, [r4, #0x6c]
	mov r0, #1
	sub r2, #0xed
	mov r3, #0xa
	bl sub_0200B144
	str r0, [r4, #0x70]
	mov r0, #0x20
	mov r1, #0xa
	bl sub_02023790
	str r0, [r4, #0x74]
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	add sp, #8
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DECA4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEC04

	thumb_func_start ov19_021DECAC
ov19_021DECAC: ; 0x021DECAC
	push {r4, lr}
	add r4, r0, #0
	beq _021DECE4
	mov r0, #0x37
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [r4, #0x70]
	bl sub_0200B190
	add r0, r4, #0
	bl ov19_021DF7D0
	add r0, r4, #0
	bl ov19_021DF03C
	ldr r0, [r4, #0x74]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
_021DECE4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DECAC

	thumb_func_start ov19_021DECE8
ov19_021DECE8: ; 0x021DECE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _021DEDD6
	bl ov19_021DEEFC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x84
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x81
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x82
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x83
	mov r3, #7
	bl sub_0200710C
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x85
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	bl sub_02079FD0
	mov r3, #0x80
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x13
	mov r2, #5
	bl sub_02006E84
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl sub_02019690
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r5, #0
	bl ov19_021DEF64
	add r0, r5, #0
	bl ov19_021DEFC8
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	mov r1, #0xde
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_02019448
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DF5D0
_021DEDD6:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DECE8

	thumb_func_start ov19_021DEDDC
ov19_021DEDDC: ; 0x021DEDDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	beq _021DEE30
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	add r4, r0, #0
	cmp r6, #0
	beq _021DEE10
	mov r0, #1
	eor r0, r4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	mov r1, #2
	bl sub_02021D6C
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl sub_02021D6C
	b _021DEE2A
_021DEE10:
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	bl sub_02021D6C
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl sub_02021D6C
_021DEE2A:
	add r0, r5, #0
	bl ov19_021DEEFC
_021DEE30:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEDDC

	thumb_func_start ov19_021DEE34
ov19_021DEE34: ; 0x021DEE34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov19_021DF834
	cmp r5, #0
	beq _021DEE80
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DF8C8
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DEE64
	cmp r0, #1
	beq _021DEE6E
	cmp r0, #2
	beq _021DEE78
	pop {r3, r4, r5, pc}
_021DEE64:
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DF3AC
	pop {r3, r4, r5, pc}
_021DEE6E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DF178
	pop {r3, r4, r5, pc}
_021DEE78:
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DF4D0
_021DEE80:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEE34

	thumb_func_start ov19_021DEE84
ov19_021DEE84: ; 0x021DEE84
	mov r0, #1
	bx lr
	thumb_func_end ov19_021DEE84

	thumb_func_start ov19_021DEE88
ov19_021DEE88: ; 0x021DEE88
	push {r4, lr}
	add r4, r0, #0
	beq _021DEEA6
	mov r1, #0xdf
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl ov19_021DF0CC
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl sub_02019448
_021DEEA6:
	pop {r4, pc}
	thumb_func_end ov19_021DEE88

	thumb_func_start ov19_021DEEA8
ov19_021DEEA8: ; 0x021DEEA8
	push {r4, lr}
	add r4, r0, #0
	beq _021DEEF8
	mov r1, #0xdf
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021DEEC2
	cmp r1, #1
	beq _021DEED2
	cmp r1, #2
	beq _021DEEF0
	b _021DEEF4
_021DEEC2:
	bl ov19_021DEF64
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _021DEEF4
_021DEED2:
	bl ov19_021DF2E0
	add r0, r4, #0
	bl ov19_021DF064
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl sub_02019448
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _021DEEF4
_021DEEF0:
	mov r0, #1
	pop {r4, pc}
_021DEEF4:
	mov r0, #0
	pop {r4, pc}
_021DEEF8:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov19_021DEEA8

	thumb_func_start ov19_021DEEFC
ov19_021DEEFC: ; 0x021DEEFC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021DEF10
	mov r0, #0xda
	b _021DEF12
_021DEF10:
	mov r0, #0xdb
_021DEF12:
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r0, #6
	str r0, [sp]
	mov r1, #0x20
	add r0, r4, #0
	mov r2, #0
	str r1, [sp, #4]
	add r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #2
	add r3, r2, #0
	bl sub_020198E8
	mov r0, #6
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r4, #0xc
	str r4, [sp, #8]
	mov r2, #0x1a
	str r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_020198E8
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019448
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov19_021DEEFC

	thumb_func_start ov19_021DEF64
ov19_021DEF64: ; 0x021DEF64
	push {r3, lr}
	ldr r0, [r0, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DEF7A
	cmp r0, #1
	beq _021DEF94
	cmp r0, #2
	beq _021DEFAE
	pop {r3, pc}
_021DEF7A:
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	pop {r3, pc}
_021DEF94:
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	pop {r3, pc}
_021DEFAE:
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	pop {r3, pc}
	thumb_func_end ov19_021DEF64

	thumb_func_start ov19_021DEFC8
ov19_021DEFC8: ; 0x021DEFC8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r1, #0
	add r2, r7, #0
	add r5, r1, #0
_021DEFD2:
	add r0, r2, #0
	add r0, #0x84
	add r1, r1, #1
	add r2, #0x10
	str r5, [r0, #0]
	cmp r1, #7
	blt _021DEFD2
	add r4, r7, #0
	ldr r6, _021DF038 ; =0x021E0524
	add r4, #0x78
_021DEFE6:
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0201A8D4
	add r0, r4, #0
	bl sub_0201A9F4
	add r5, r5, #1
	add r6, #8
	add r4, #0x10
	cmp r5, #3
	blo _021DEFE6
	add r0, r7, #0
	bl ov19_021DF2E0
	add r0, r7, #0
	add r0, #0x78
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	add r0, #0x88
	mov r1, #0
	bl sub_0201ADA4
	add r4, r7, #0
	mov r5, #0
	add r4, #0x78
_021DF020:
	add r0, r4, #0
	bl sub_0201ACCC
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #3
	blo _021DF020
	add r0, r7, #0
	bl ov19_021DF064
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF038: .word 0x021E0524
	thumb_func_end ov19_021DEFC8

	thumb_func_start ov19_021DF03C
ov19_021DF03C: ; 0x021DF03C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r6, #0
	add r4, #0x78
_021DF046:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DF056
	add r0, r4, #0
	bl sub_0201A8FC
_021DF056:
	add r6, r6, #1
	add r5, #0x10
	add r4, #0x10
	cmp r6, #7
	blt _021DF046
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DF03C

	thumb_func_start ov19_021DF064
ov19_021DF064: ; 0x021DF064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DF084
	cmp r0, #1
	beq _021DF09C
	cmp r0, #2
	beq _021DF0AE
	b _021DF0C4
_021DF084:
	add r0, r5, #0
	bl ov19_021DF108
	add r0, r5, #0
	mov r1, #0
	bl ov19_021DF3AC
	add r0, r5, #0
	mov r1, #1
	bl ov19_021DF3AC
	b _021DF0C4
_021DF09C:
	add r0, r5, #0
	mov r1, #0
	bl ov19_021DF178
	add r0, r5, #0
	mov r1, #1
	bl ov19_021DF178
	b _021DF0C4
_021DF0AE:
	add r0, r5, #0
	bl ov19_021DF270
	add r0, r5, #0
	mov r1, #0
	bl ov19_021DF4D0
	add r0, r5, #0
	mov r1, #1
	bl ov19_021DF4D0
_021DF0C4:
	mov r0, #0xde
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DF064

	thumb_func_start ov19_021DF0CC
ov19_021DF0CC: ; 0x021DF0CC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021DF0DE
	cmp r1, #1
	beq _021DF0EA
	cmp r1, #2
	beq _021DF0FA
	pop {r4, pc}
_021DF0DE:
	bl ov19_021DF140
	add r0, r4, #0
	bl ov19_021DF394
	pop {r4, pc}
_021DF0EA:
	mov r1, #0
	bl ov19_021DF250
	add r0, r4, #0
	mov r1, #1
	bl ov19_021DF250
	pop {r4, pc}
_021DF0FA:
	bl ov19_021DF2A8
	add r0, r4, #0
	bl ov19_021DF394
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DF0CC

	thumb_func_start ov19_021DF108
ov19_021DF108: ; 0x021DF108
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021DF13C ; =0x021E0514
	str r0, [sp]
	mov r6, #0
	add r5, #0x78
_021DF114:
	add r0, r6, #3
	lsl r4, r0, #4
	ldr r0, [sp]
	add r1, r5, r4
	ldr r0, [r0, #0xc]
	add r2, r7, #0
	bl sub_0201A8D4
	add r0, r5, r4
	bl sub_0201A9F4
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	add r6, r6, #1
	add r7, #8
	cmp r6, #2
	blo _021DF114
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF13C: .word 0x021E0514
	thumb_func_end ov19_021DF108

	thumb_func_start ov19_021DF140
ov19_021DF140: ; 0x021DF140
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x78
	add r5, r0, #0
	mov r6, #3
	add r4, #0x30
	add r5, #0x30
	mov r7, #0
_021DF150:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DF16C
	add r0, r5, #0
	bl sub_0201AA3C
	add r0, r5, #0
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x84
	str r7, [r0, #0]
_021DF16C:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #4
	ble _021DF150
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF140

	thumb_func_start ov19_021DF178
ov19_021DF178: ; 0x021DF178
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [r7, #8]
	str r1, [sp]
	bl ov19_021D5FAC
	add r4, r0, #0
	ldr r0, [r7, #8]
	bl ov19_021D5E34
	add r6, r0, #0
	ldr r0, [r7, #8]
	bl ov19_021D5F9C
	ldr r1, [sp]
	cmp r1, r0
	bne _021DF1A0
	mov r5, #1
	b _021DF1A2
_021DF1A0:
	mov r5, #0
_021DF1A2:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov19_021D5FB8
	cmp r6, #1
	bne _021DF1B2
	cmp r5, #1
	beq _021DF1BA
_021DF1B2:
	cmp r5, #0
	bne _021DF23E
	cmp r0, #1
	bne _021DF23E
_021DF1BA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _021DF23E
	ldr r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	add r5, r7, r2
	mov r2, #1
	eor r1, r2
	mul r0, r1
	ldr r6, _021DF24C ; =0x021E053C
	add r4, #0x16
	add r7, r7, r0
_021DF1DC:
	ldr r3, [r6, #0]
	ldr r0, [r6, #8]
	ldrh r2, [r4]
	sub r1, r0, r3
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r0, r0, #8
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #8]
	ldr r3, [r6, #4]
	ldr r0, [r6, #0xc]
	ldrh r2, [r4]
	sub r1, r0, r3
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r0, r0, #8
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov19_021D78AC
	ldr r0, [r7, #0x34]
	mov r1, #1
	bl ov19_021D78AC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [sp, #4]
	add r4, r4, #2
	add r0, r0, #1
	add r6, #0x10
	add r5, r5, #4
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r0, #5
	blt _021DF1DC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DF23E:
	ldr r1, [sp]
	add r0, r7, #0
	bl ov19_021DF250
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DF24C: .word 0x021E053C
	thumb_func_end ov19_021DF178

	thumb_func_start ov19_021DF250
ov19_021DF250: ; 0x021DF250
	push {r4, r5, r6, lr}
	mov r2, #0x14
	mov r4, #0
	mul r2, r1
	add r5, r0, r2
	add r6, r4, #0
_021DF25C:
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021DF25C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DF250

	thumb_func_start ov19_021DF270
ov19_021DF270: ; 0x021DF270
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021DF2A4 ; =0x021E0504
	str r0, [sp]
	mov r6, #0
	add r5, #0x78
_021DF27C:
	add r0, r6, #5
	lsl r4, r0, #4
	ldr r0, [sp]
	add r1, r5, r4
	ldr r0, [r0, #0xc]
	add r2, r7, #0
	bl sub_0201A8D4
	add r0, r5, r4
	bl sub_0201A9F4
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	add r6, r6, #1
	add r7, #8
	cmp r6, #2
	blo _021DF27C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF2A4: .word 0x021E0504
	thumb_func_end ov19_021DF270

	thumb_func_start ov19_021DF2A8
ov19_021DF2A8: ; 0x021DF2A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x78
	add r5, r0, #0
	mov r6, #5
	add r4, #0x50
	add r5, #0x50
	mov r7, #0
_021DF2B8:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DF2D4
	add r0, r5, #0
	bl sub_0201AA3C
	add r0, r5, #0
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x84
	str r7, [r0, #0]
_021DF2D4:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #6
	ble _021DF2B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF2A8

	thumb_func_start ov19_021DF2E0
ov19_021DF2E0: ; 0x021DF2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x98
	add r0, r7, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DF302
	cmp r0, #2
	beq _021DF34E
	b _021DF380
_021DF302:
	mov r0, #0
	ldr r6, _021DF38C ; =0x021E04F4
	str r0, [sp, #0x10]
	add r4, r0, #0
_021DF30A:
	ldrh r1, [r6]
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r5, #0x74]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r7, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF390 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r7, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r4, #0x10
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _021DF30A
	b _021DF380
_021DF34E:
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	mov r1, #0x2b
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r5, #0x74]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r7, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF390 ; =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r7, #0
	bl sub_0201D78C
_021DF380:
	add r0, r7, #0
	bl sub_0201ACCC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DF38C: .word 0x021E04F4
_021DF390: .word 0x000F0E00
	thumb_func_end ov19_021DF2E0

	thumb_func_start ov19_021DF394
ov19_021DF394: ; 0x021DF394
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x98
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DF394

	thumb_func_start ov19_021DF3AC
ov19_021DF3AC: ; 0x021DF3AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	add r2, r5, #0
	add r0, r0, #3
	add r2, #0x78
	lsl r0, r0, #4
	add r4, r2, r0
	ldr r0, [r5, #8]
	str r1, [sp, #0x10]
	bl ov19_021D5FAC
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021DF3E0
	mov r7, #1
	b _021DF3E2
_021DF3E0:
	mov r7, #0
_021DF3E2:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	bl ov19_021D5FB8
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021DF3FE
	cmp r7, #1
	beq _021DF408
_021DF3FE:
	cmp r7, #0
	bne _021DF4C2
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _021DF4C2
_021DF408:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _021DF482
	mov r0, #0
	ldr r1, [r6, #0x2c]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF4CC ; =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x2c]
	add r0, r4, #0
	bl sub_0201D78C
	mov r7, #0
	add r6, #8
_021DF43A:
	mov r0, #1
	str r0, [sp]
	ldrh r1, [r6]
	ldr r0, [r5, #0x74]
	mov r2, #3
	mov r3, #0
	bl sub_020238A0
	mov r0, #0
	ldr r1, [r5, #0x74]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	add r0, r7, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF4CC ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	bl sub_0201D78C
	add r7, r7, #1
	add r6, r6, #2
	cmp r7, #7
	blt _021DF43A
	b _021DF4C2
_021DF482:
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	mov r1, #0x2c
	bl sub_0200B1B8
	mov r7, #0
	add r6, r7, #0
_021DF490:
	mov r0, #0
	ldr r1, [r5, #0x74]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF4CC ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	bl sub_0201D78C
	add r7, r7, #1
	add r6, #0x10
	cmp r7, #8
	blt _021DF490
_021DF4C2:
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF4CC: .word 0x000F0E00
	thumb_func_end ov19_021DF3AC

	thumb_func_start ov19_021DF4D0
ov19_021DF4D0: ; 0x021DF4D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r1, #0
	add r2, r5, #0
	add r0, r0, #5
	add r2, #0x78
	lsl r0, r0, #4
	add r4, r2, r0
	ldr r0, [r5, #8]
	str r1, [sp, #0x10]
	bl ov19_021D5FAC
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021DF504
	mov r7, #1
	b _021DF506
_021DF504:
	mov r7, #0
_021DF506:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	bl ov19_021D5FB8
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _021DF522
	cmp r7, #1
	beq _021DF52C
_021DF522:
	cmp r7, #0
	bne _021DF5C0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021DF5C0
_021DF52C:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _021DF580
	mov r0, #0
	str r0, [sp, #0x14]
	mov r7, #4
_021DF538:
	ldrh r1, [r6, #0x20]
	cmp r1, #0
	beq _021DF570
	ldr r0, [r5, #0x70]
	ldr r2, [r5, #0x74]
	bl sub_0200B1B8
	mov r0, #0
	ldr r1, [r5, #0x74]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF5CC ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	bl sub_0201D78C
_021DF570:
	ldr r0, [sp, #0x14]
	add r6, r6, #2
	add r0, r0, #1
	add r7, #0x18
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _021DF538
	b _021DF5C0
_021DF580:
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	mov r1, #0x2c
	bl sub_0200B1B8
	mov r7, #0
	mov r6, #4
_021DF58E:
	mov r0, #0
	ldr r1, [r5, #0x74]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF5CC ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	bl sub_0201D78C
	add r7, r7, #1
	add r6, #0x18
	cmp r7, #4
	blt _021DF58E
_021DF5C0:
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF5CC: .word 0x000F0E00
	thumb_func_end ov19_021DF4D0

	thumb_func_start ov19_021DF5D0
ov19_021DF5D0: ; 0x021DF5D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0xa
	add r3, r7, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x87
	mov r2, #1
	add r3, #0x60
	bl sub_02007204
	str r0, [r7, #0x5c]
	mov r0, #0xa
	add r3, r7, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x88
	mov r2, #1
	add r3, #0x68
	bl sub_02007220
	str r0, [r7, #0x64]
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x89
	mov r2, #5
	mov r3, #0
	bl sub_02007130
	add r0, sp, #0x48
	bl NNS_G2dInitImageProxy
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x48
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x86
	mov r2, #1
	bl sub_0200718C
	str r0, [sp, #0x20]
	ldr r0, [r7, #4]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r7, #0x68]
	add r1, sp, #0x48
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r7, #0x60]
	add r0, sp, #0x24
	bl ov19_021D783C
	ldr r0, _021DF728 ; =0x021E04E4
	mov r4, #0
	str r0, [sp, #0x1c]
	str r7, [sp, #0x18]
	str r7, [sp, #0x14]
_021DF65C:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	mov r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, [sp, #0x1c]
	mov r5, #2
	ldrsh r3, [r3, r5]
	ldr r0, [r7, #0x10]
	add r1, sp, #0x24
	bl ov19_021D785C
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x28]
	add r1, r4, #0
	bl sub_02021E90
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #0x28]
	bl sub_02021D6C
	ldr r5, [sp, #0x14]
	mov r6, #0
_021DF690:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [r7, #0x10]
	add r1, sp, #0x24
	add r3, r2, #0
	bl ov19_021D785C
	str r0, [r5, #0x34]
	add r1, r4, #5
	bl sub_02021D6C
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl sub_02021E90
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #5
	blo _021DF690
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	cmp r4, #2
	blo _021DF65C
	ldr r0, [r7, #0x2c]
	mov r1, #1
	bl sub_02021D0C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r3, #0x23
	ldr r0, [r7, #0x10]
	add r1, sp, #0x24
	mov r2, #0x80
	lsl r3, r3, #4
	bl ov19_021D785C
	str r0, [r7, #0x30]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r7, #0x30]
	mov r1, #2
	bl sub_02021E90
	ldr r0, _021DF72C ; =ov19_021DF930
	add r1, r7, #0
	mov r2, #1
	bl sub_0200D9E8
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r7, r1]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl ov19_021DF730
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021DF728: .word 0x021E04E4
_021DF72C: .word ov19_021DF930
	thumb_func_end ov19_021DF5D0

	thumb_func_start ov19_021DF730
ov19_021DF730: ; 0x021DF730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #8]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	bl ov19_021D77D0
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x14]
	bl ov19_021DA80C
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x14]
	bl ov19_021DA810
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x10
	add r1, sp, #0x34
	add r2, r5, #0
	add r3, r4, #0
	bl ov19_021D783C
	mov r7, #0
	ldr r4, [sp, #8]
	ldr r5, _021DF7C4 ; =0x021E04EC
	add r6, r7, #0
_021DF76C:
	ldr r0, [sp, #0xc]
	add r0, r0, r6
	str r0, [r4, #0x18]
	add r0, sp, #0x34
	bl NNS_G2dInitImageProxy
	ldr r2, [r4, #0x18]
	add r0, sp, #0x34
	mov r1, #2
	bl NNS_G2dSetImageLocation
	ldr r0, _021DF7C8 ; =0x04001000
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021DF7CC ; =0x00300010
	mov r3, #2
	and r0, r1
	str r0, [sp, #0x54]
	mov r0, #1
	sub r0, r0, r7
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r0, #0x10]
	add r1, sp, #0x10
	bl ov19_021D785C
	mov r1, #0
	str r0, [r4, #0x20]
	bl sub_02021CAC
	mov r0, #2
	lsl r0, r0, #8
	add r7, r7, #1
	add r6, r6, r0
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #2
	blt _021DF76C
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF7C4: .word 0x021E04EC
_021DF7C8: .word 0x04001000
_021DF7CC: .word 0x00300010
	thumb_func_end ov19_021DF730

	thumb_func_start ov19_021DF7D0
ov19_021DF7D0: ; 0x021DF7D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021DF7E4
	bl sub_0200DA58
_021DF7E4:
	ldr r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r7, r6, #0
_021DF7EC:
	ldr r0, [r6, #0x20]
	bl sub_02021BD4
	ldr r0, [r6, #0x28]
	bl sub_02021BD4
	mov r4, #0
	add r5, r7, #0
_021DF7FC:
	ldr r0, [r5, #0x34]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021DF7FC
	ldr r0, [sp, #4]
	add r6, r6, #4
	add r0, r0, #1
	add r7, #0x14
	str r0, [sp, #4]
	cmp r0, #2
	blt _021DF7EC
	ldr r0, [sp]
	ldr r0, [r0, #0x30]
	bl sub_02021BD4
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	bl sub_020181C4
	ldr r0, [sp]
	ldr r0, [r0, #0x64]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF7D0

	thumb_func_start ov19_021DF834
ov19_021DF834: ; 0x021DF834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl ov19_021D5FAC
	lsl r7, r4, #2
	add r6, r0, #0
	add r0, r5, r7
	ldr r4, [r0, #0x20]
	ldr r0, [r6, #0]
	str r0, [sp]
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	cmp r0, #0
	beq _021DF8BC
	ldrh r0, [r6, #4]
	ldrb r1, [r6, #7]
	ldrb r2, [r6, #6]
	bl sub_02079EDC
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02079D40
	add r2, r0, #0
	add r1, r5, #0
	mov r3, #0xa
	ldr r0, [r5, #0x14]
	add r1, #0xe8
	lsl r3, r3, #6
	bl ov19_021DA744
	add r0, r5, #0
	add r0, #0xe8
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #4]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #4]
	add r1, r5, r7
	mov r2, #2
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	lsl r2, r2, #8
	bl GXS_LoadOBJ
	add r0, r4, #0
	add r1, r6, #4
	bl sub_02021E90
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021DF8BC:
	add r0, r4, #0
	mov r1, #0
	bl sub_02021CAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF834

	thumb_func_start ov19_021DF8C8
ov19_021DF8C8: ; 0x021DF8C8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	add r6, r0, #0
	add r1, r5, #0
	add r1, #0x78
	lsl r0, r6, #4
	add r4, r1, r0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	cmp r0, #0
	beq _021DF922
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov19_021D5FAC
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF92C ; =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl sub_0201D78C
_021DF922:
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DF92C: .word 0x000F0E00
	thumb_func_end ov19_021DF8C8

	thumb_func_start ov19_021DF930
ov19_021DF930: ; 0x021DF930
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #8]
	bl ov19_021D5FC0
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_02021E24
	cmp r0, #3
	bne _021DF954
	cmp r4, #0
	beq _021DF960
	ldr r0, [r5, #0x30]
	mov r1, #4
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021DF954:
	cmp r4, #0
	bne _021DF960
	ldr r0, [r5, #0x30]
	mov r1, #3
	bl sub_02021D6C
_021DF960:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DF930

	.rodata


	.global Unk_ov19_021E04E4
Unk_ov19_021E04E4: ; 0x021E04E4
	.incbin "incbin/overlay19_rodata.bin", 0x6F4, 0x6FC - 0x6F4

	.global Unk_ov19_021E04EC
Unk_ov19_021E04EC: ; 0x021E04EC
	.incbin "incbin/overlay19_rodata.bin", 0x6FC, 0x704 - 0x6FC

	.global Unk_ov19_021E04F4
Unk_ov19_021E04F4: ; 0x021E04F4
	.incbin "incbin/overlay19_rodata.bin", 0x704, 0x714 - 0x704

	.global Unk_ov19_021E0504
Unk_ov19_021E0504: ; 0x021E0504
	.incbin "incbin/overlay19_rodata.bin", 0x714, 0x724 - 0x714

	.global Unk_ov19_021E0514
Unk_ov19_021E0514: ; 0x021E0514
	.incbin "incbin/overlay19_rodata.bin", 0x724, 0x734 - 0x724

	.global Unk_ov19_021E0524
Unk_ov19_021E0524: ; 0x021E0524
	.incbin "incbin/overlay19_rodata.bin", 0x734, 0x74C - 0x734

	.global Unk_ov19_021E053C
Unk_ov19_021E053C: ; 0x021E053C
	.incbin "incbin/overlay19_rodata.bin", 0x74C, 0x50

