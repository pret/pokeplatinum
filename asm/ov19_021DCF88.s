	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov19_021DCF88
ov19_021DCF88: ; 0x021DCF88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r1, #0
	str r3, [sp]
	bl ov19_021D5E08
	cmp r0, #4
	bne _021DCFA4
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCFA4:
	mov r0, #0xa
	mov r1, #0xf4
	bl sub_02018144
	add r4, r0, #0
	beq _021DD020
	ldr r0, [sp]
	mov r1, #0xa
	str r0, [r4, #8]
	str r7, [r4, #0]
	ldr r0, [sp, #0x18]
	str r5, [r4, #4]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #0x20
	bl sub_02023790
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r5, #0x9c
	ldrb r0, [r5]
	mov r1, #0
	add r2, r1, #0
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0, #0]
	str r1, [r4, #0x2c]
	str r1, [r4, #0x30]
	add r0, r4, #0
_021DCFF6:
	add r1, r1, #1
	str r2, [r0, #0x34]
	add r0, r0, #4
	cmp r1, #8
	blt _021DCFF6
	add r0, r4, #0
	mov r1, #0
_021DD004:
	add r2, r2, #1
	str r1, [r0, #0x54]
	add r0, r0, #4
	cmp r2, #0xa
	blt _021DD004
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov19_021DD024
	str r4, [r6, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DD020:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DCF88

	thumb_func_start ov19_021DD024
ov19_021DD024: ; 0x021DD024
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r0, #0xd4
	strb r6, [r0]
	add r0, r5, #0
	mov r1, #0x10
	add r0, #0xe4
	strb r1, [r0]
	mov r4, #1
	add r7, r1, #0
_021DD03A:
	mov r0, #0x5a
	lsl r0, r0, #8
	add r6, r6, r0
	lsl r0, r6, #4
	lsr r0, r0, #0x10
	bl sub_0201D15C
	lsl r0, r0, #4
	asr r1, r0, #0xc
	add r0, r5, r4
	add r0, #0xd4
	strb r1, [r0]
	add r0, r5, r4
	add r0, #0xd4
	ldrb r0, [r0]
	sub r1, r7, r0
	add r0, r5, r4
	add r0, #0xe4
	add r4, r4, #1
	strb r1, [r0]
	cmp r4, #0xf
	blt _021DD03A
	add r0, r5, r4
	mov r1, #0x10
	add r0, #0xd4
	strb r1, [r0]
	add r0, r5, r4
	mov r1, #0
	add r0, #0xe4
	strb r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DD024

	thumb_func_start ov19_021DD078
ov19_021DD078: ; 0x021DD078
	push {r4, r5, r6, lr}
	add r6, r0, #0
	beq _021DD110
	add r0, #0x88
	bl sub_0201A8FC
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DD092
	bl sub_020181C4
_021DD092:
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DD0A0
	bl sub_020181C4
_021DD0A0:
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DD0AE
	bl sub_020181C4
_021DD0AE:
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DD0BC
	bl sub_020181C4
_021DD0BC:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _021DD0C6
	bl sub_02021BD4
_021DD0C6:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _021DD0D0
	bl sub_02021BD4
_021DD0D0:
	add r0, r6, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DD0DE
	bl sub_020237BC
_021DD0DE:
	mov r4, #0
	add r5, r6, #0
_021DD0E2:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DD0EC
	bl sub_02021BD4
_021DD0EC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021DD0E2
	mov r5, #0
	add r4, r6, #0
_021DD0F8:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _021DD102
	bl sub_02021BD4
_021DD102:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xa
	blt _021DD0F8
	add r0, r6, #0
	bl sub_020181C4
_021DD110:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD078

	thumb_func_start ov19_021DD114
ov19_021DD114: ; 0x021DD114
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _021DD21A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	mov r1, #0x7f
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	mov r1, #0x7c
	mov r3, #7
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	mov r1, #0x7d
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	mov r1, #0x7e
	mov r3, #5
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #8]
	mov r1, #4
	mov r3, #1
	bl sub_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r5, #8]
	mov r1, #4
	bl sub_02019448
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r6, r3, #2
	ldr r3, _021DD220 ; =0x021E0258
	mov r1, #5
	ldr r3, [r3, r6]
	mov r2, #0
	bl sub_02019184
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5, #8]
	add r1, #0x88
	mov r2, #4
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x88
	bl sub_0201A954
	add r0, r5, #0
	bl ov19_021DE324
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DD224
_021DD21A:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021DD220: .word 0x021E0258
	thumb_func_end ov19_021DD114

	thumb_func_start ov19_021DD224
ov19_021DD224: ; 0x021DD224
	push {r4, r5, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r4, r1, #0
	bl ov19_021DD2BC
	add r0, sp, #0x14
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x8a
	mov r2, #1
	bl sub_0200718C
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r3, r5, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r3, #0x9c
	add r2, r5, #0
	ldr r3, [r3, #0]
	add r0, sp, #0x38
	add r1, sp, #0x14
	add r2, #0x18
	bl ov19_021D783C
	mov r0, #0x31
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r3, #0x8e
	ldr r0, [r5, #0xc]
	add r1, sp, #0x38
	mov r2, #0
	lsl r3, r3, #2
	bl ov19_021D785C
	str r0, [r5, #0x2c]
	mov r0, #0x31
	mov r3, #0x8e
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x38
	add r2, #0xfe
	lsl r3, r3, #2
	bl ov19_021D785C
	str r0, [r5, #0x30]
	mov r1, #1
	bl sub_02021D0C
	ldr r0, [r5, #4]
	bl ov19_021D5E08
	cmp r0, #3
	bne _021DD2B8
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_02021D6C
_021DD2B8:
	add sp, #0x5c
	pop {r4, r5, pc}
	thumb_func_end ov19_021DD224

	thumb_func_start ov19_021DD2BC
ov19_021DD2BC: ; 0x021DD2BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x8b
	mov r2, #1
	add r3, #0x9c
	bl sub_02007204
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x8c
	mov r2, #1
	add r3, #0xa4
	bl sub_02007220
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1, #0]
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x8e
	mov r2, #1
	add r3, #0xac
	bl sub_02007204
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x8f
	mov r2, #1
	add r3, #0xb4
	bl sub_02007220
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x18
	bl sub_020A81D0
	mov r0, #0xa
	str r0, [sp]
	add r5, #0x18
	add r0, r4, #0
	mov r1, #0x90
	mov r2, #2
	mov r3, #0
	str r5, [sp, #4]
	bl sub_0200716C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DD2BC

	thumb_func_start ov19_021DD344
ov19_021DD344: ; 0x021DD344
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	bl ov19_021D77C8
	str r0, [r4, #0x14]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD344

	thumb_func_start ov19_021DD358
ov19_021DD358: ; 0x021DD358
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov19_021DD358

	thumb_func_start ov19_021DD368
ov19_021DD368: ; 0x021DD368
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021DD372
	mov r0, #1
	bx lr
_021DD372:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DD368

	thumb_func_start ov19_021DD378
ov19_021DD378: ; 0x021DD378
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	beq _021DD44A
	ldr r1, [r5, #4]
	add r1, #0x9c
	ldrb r6, [r1]
	ldr r1, [r5, #0x10]
	cmp r1, r6
	beq _021DD44A
	add r1, r5, #0
	add r4, r5, #0
	add r1, #0xb8
	str r5, [r1, #0]
	add r4, #0xb8
	mov r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	cmp r6, #0
	beq _021DD3A8
	cmp r6, #1
	beq _021DD3C0
	cmp r6, #2
	beq _021DD3E2
	b _021DD40A
_021DD3A8:
	mov r1, #8
	strh r1, [r4, #0xc]
	ldr r7, _021DD44C ; =ov19_021DD670
	bl ov19_021DD998
	add r0, r5, #0
	bl ov19_021DDA7C
	add r0, r5, #0
	bl ov19_021DE324
	b _021DD412
_021DD3C0:
	mov r0, #8
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021DD3CE
	ldr r7, _021DD450 ; =ov19_021DD46C
	b _021DD3D6
_021DD3CE:
	ldrh r0, [r4, #0xc]
	ldr r7, _021DD454 ; =ov19_021DD544
	add r0, #8
	strh r0, [r4, #0xc]
_021DD3D6:
	add r0, r5, #0
	bl ov19_021DDA7C
	ldr r0, [r5, #0x2c]
	str r0, [r4, #8]
	b _021DD412
_021DD3E2:
	mov r0, #8
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021DD3F0
	ldr r7, _021DD450 ; =ov19_021DD46C
	b _021DD3F8
_021DD3F0:
	ldrh r0, [r4, #0xc]
	ldr r7, _021DD454 ; =ov19_021DD544
	add r0, #8
	strh r0, [r4, #0xc]
_021DD3F8:
	ldr r0, [r5, #0x30]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov19_021DD998
	add r0, r5, #0
	bl ov19_021DE324
	b _021DD412
_021DD40A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_021DD412:
	str r6, [r5, #0x10]
	ldr r0, [r5, #8]
	mov r1, #5
	bl sub_020192EC
	lsl r0, r0, #0xc
	ldr r1, _021DD458 ; =0x021E0258
	lsl r2, r6, #2
	str r0, [r4, #0x10]
	ldr r6, [r1, r2]
	ldrh r1, [r4, #0xc]
	sub r0, r6, r0
	bl sub_020E1F6C
	str r0, [r4, #0x14]
	asr r0, r6, #0xc
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DD440
	mov r1, #1
	bl sub_02021D6C
_021DD440:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov19_021DD344
_021DD44A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD44C: .word ov19_021DD670
_021DD450: .word ov19_021DD46C
_021DD454: .word ov19_021DD544
_021DD458: .word 0x021E0258
	thumb_func_end ov19_021DD378

	thumb_func_start ov19_021DD45C
ov19_021DD45C: ; 0x021DD45C
	push {r3, lr}
	cmp r0, #0
	beq _021DD468
	bl ov19_021DD368
	pop {r3, pc}
_021DD468:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov19_021DD45C

	thumb_func_start ov19_021DD46C
ov19_021DD46C: ; 0x021DD46C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4, #0]
	cmp r0, #3
	bhi _021DD534
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DD484: ; jump table
	.short _021DD48C - _021DD484 - 2 ; case 0
	.short _021DD49E - _021DD484 - 2 ; case 1
	.short _021DD4E4 - _021DD484 - 2 ; case 2
	.short _021DD502 - _021DD484 - 2 ; case 3
_021DD48C:
	ldr r0, [r4, #8]
	bl sub_02021FD0
	cmp r0, #0
	bne _021DD534
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD49E:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _021DD4C0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	mov r2, #0
	add r3, r1, r0
	str r3, [r4, #0x10]
	ldr r0, [r5, #8]
	mov r1, #5
	asr r3, r3, #0xc
	bl sub_02019184
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DD4C0:
	ldr r0, [r5, #8]
	ldr r3, [r4, #0x18]
	mov r1, #5
	mov r2, #0
	bl sub_02019184
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021DD538 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD4E4:
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r5, r3, #2
	ldr r3, _021DD53C ; =0x021E024C
	mov r1, #6
	ldr r3, [r3, r5]
	mov r2, #0
	bl sub_02019184
	mov r0, #0
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD502:
	mov r1, #0xe
	ldrsh r3, [r4, r1]
	add r0, r5, r3
	add r0, #0xd4
	ldrb r2, [r0]
	add r0, r5, r3
	add r0, #0xe4
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r0
	ldr r0, _021DD540 ; =0x04001052
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	blt _021DD534
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021D6C
	add r0, r5, #0
	bl ov19_021DD358
_021DD534:
	pop {r3, r4, r5, pc}
	nop
_021DD538: .word 0x04001050
_021DD53C: .word 0x021E024C
_021DD540: .word 0x04001052
	thumb_func_end ov19_021DD46C

	thumb_func_start ov19_021DD544
ov19_021DD544: ; 0x021DD544
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4, #0]
	cmp r0, #4
	bls _021DD552
	b _021DD662
_021DD552:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DD55E: ; jump table
	.short _021DD568 - _021DD55E - 2 ; case 0
	.short _021DD58E - _021DD55E - 2 ; case 1
	.short _021DD5CC - _021DD55E - 2 ; case 2
	.short _021DD612 - _021DD55E - 2 ; case 3
	.short _021DD630 - _021DD55E - 2 ; case 4
_021DD568:
	ldr r0, [r4, #8]
	bl sub_02021FD0
	cmp r0, #0
	bne _021DD662
	mov r0, #0
	str r0, [sp]
	ldr r0, _021DD664 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #0x10
	bl sub_020BF55C
	mov r0, #0xf
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD58E:
	mov r1, #0xe
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4, #0xe]
	ldrsh r3, [r4, r1]
	add r0, r5, r3
	add r0, #0xd4
	ldrb r2, [r0]
	add r0, r5, r3
	add r0, #0xe4
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r0
	ldr r0, _021DD668 ; =0x04001052
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _021DD662
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r5, r3, #2
	ldr r3, _021DD66C ; =0x021E024C
	mov r1, #6
	ldr r3, [r3, r5]
	mov r2, #0
	bl sub_02019184
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD5CC:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _021DD5EE
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	mov r2, #0
	add r3, r1, r0
	str r3, [r4, #0x10]
	ldr r0, [r5, #8]
	mov r1, #5
	asr r3, r3, #0xc
	bl sub_02019184
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DD5EE:
	ldr r0, [r5, #8]
	ldr r3, [r4, #0x18]
	mov r1, #5
	mov r2, #0
	bl sub_02019184
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021DD664 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD612:
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r5, r3, #2
	ldr r3, _021DD66C ; =0x021E024C
	mov r1, #6
	ldr r3, [r3, r5]
	mov r2, #0
	bl sub_02019184
	mov r0, #0
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD630:
	mov r1, #0xe
	ldrsh r3, [r4, r1]
	add r0, r5, r3
	add r0, #0xd4
	ldrb r2, [r0]
	add r0, r5, r3
	add r0, #0xe4
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r0
	ldr r0, _021DD668 ; =0x04001052
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	blt _021DD662
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021D6C
	add r0, r5, #0
	bl ov19_021DD358
_021DD662:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DD664: .word 0x04001050
_021DD668: .word 0x04001052
_021DD66C: .word 0x021E024C
	thumb_func_end ov19_021DD544

	thumb_func_start ov19_021DD670
ov19_021DD670: ; 0x021DD670
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0]
	cmp r1, #3
	bhi _021DD70C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DD688: ; jump table
	.short _021DD690 - _021DD688 - 2 ; case 0
	.short _021DD69A - _021DD688 - 2 ; case 1
	.short _021DD6D2 - _021DD688 - 2 ; case 2
	.short _021DD708 - _021DD688 - 2 ; case 3
_021DD690:
	mov r1, #0xf
	strh r1, [r4, #0xe]
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
_021DD69A:
	mov r2, #0xe
	ldrsh r1, [r4, r2]
	sub r1, r1, #1
	strh r1, [r4, #0xe]
	ldrsh r5, [r4, r2]
	add r1, r0, r5
	add r1, #0xd4
	ldrb r3, [r1]
	add r1, r0, r5
	add r1, #0xe4
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r3, r1
	ldr r1, _021DD710 ; =0x04001052
	strh r3, [r1]
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bne _021DD70C
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD6D2:
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	beq _021DD6F4
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r3, r2, r1
	str r3, [r4, #0x10]
	ldr r0, [r0, #8]
	mov r1, #5
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_02019184
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DD6F4:
	ldr r0, [r0, #8]
	ldr r3, [r4, #0x18]
	mov r1, #5
	mov r2, #0
	bl sub_02019184
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD708:
	bl ov19_021DD358
_021DD70C:
	pop {r3, r4, r5, pc}
	nop
_021DD710: .word 0x04001052
	thumb_func_end ov19_021DD670

	thumb_func_start ov19_021DD714
ov19_021DD714: ; 0x021DD714
	push {r4, lr}
	add r4, r0, #0
	beq _021DD73C
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _021DD726
	cmp r1, #2
	beq _021DD732
	pop {r4, pc}
_021DD726:
	bl ov19_021DD854
	add r0, r4, #0
	bl ov19_021DDD80
	pop {r4, pc}
_021DD732:
	bl ov19_021DD9DC
	add r0, r4, #0
	bl ov19_021DE0A0
_021DD73C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD714

	thumb_func_start ov19_021DD740
ov19_021DD740: ; 0x021DD740
	push {r4, lr}
	add r4, r0, #0
	beq _021DD762
	bl ov19_021DD368
	cmp r0, #0
	beq _021DD75E
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021DD75A
	add r0, r4, #0
	bl ov19_021DE350
_021DD75A:
	mov r0, #1
	pop {r4, pc}
_021DD75E:
	mov r0, #0
	pop {r4, pc}
_021DD762:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD740

	thumb_func_start ov19_021DD768
ov19_021DD768: ; 0x021DD768
	push {r4, lr}
	add r4, r0, #0
	beq _021DD790
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _021DD77A
	cmp r1, #2
	beq _021DD78C
	pop {r4, pc}
_021DD77A:
	bl ov19_021DE324
	add r0, r4, #0
	bl ov19_021DD8F8
	add r0, r4, #0
	bl ov19_021DDFA8
	pop {r4, pc}
_021DD78C:
	bl ov19_021DE2A4
_021DD790:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD768

	thumb_func_start ov19_021DD794
ov19_021DD794: ; 0x021DD794
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov19_021D5EB0
	cmp r0, #0
	ble _021DD7C4
	add r2, r4, #0
	add r2, #0x80
	ldr r2, [r2, #0]
	add r1, r4, #0
	sub r2, r2, r0
	add r0, r4, #0
	add r0, #0x80
	add r4, #0x80
	str r2, [r0, #0]
	ldr r0, [r4, #0]
	add r1, #0x80
	cmp r0, #0
	bge _021DD7E4
	ldr r0, [r1, #0]
	add r0, #0xa
	str r0, [r1, #0]
	pop {r4, pc}
_021DD7C4:
	add r2, r4, #0
	add r2, #0x80
	ldr r2, [r2, #0]
	add r1, r4, #0
	sub r2, r2, r0
	add r0, r4, #0
	add r0, #0x80
	add r4, #0x80
	str r2, [r0, #0]
	ldr r0, [r4, #0]
	add r1, #0x80
	cmp r0, #0xa
	blt _021DD7E4
	ldr r0, [r1, #0]
	sub r0, #0xa
	str r0, [r1, #0]
_021DD7E4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD794

	thumb_func_start ov19_021DD7E8
ov19_021DD7E8: ; 0x021DD7E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov19_021D5EB0
	add r2, r4, #0
	add r2, #0x80
	ldr r2, [r2, #0]
	add r1, r4, #0
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x80
	add r4, #0x80
	str r2, [r0, #0]
	ldr r0, [r4, #0]
	add r1, #0x80
	cmp r0, #0
	bge _021DD814
	ldr r0, [r1, #0]
	add r0, #8
	str r0, [r1, #0]
	pop {r4, pc}
_021DD814:
	cmp r0, #8
	blt _021DD81E
	ldr r0, [r1, #0]
	sub r0, #8
	str r0, [r1, #0]
_021DD81E:
	pop {r4, pc}
	thumb_func_end ov19_021DD7E8

	thumb_func_start ov19_021DD820
ov19_021DD820: ; 0x021DD820
	push {r4, lr}
	add r4, r0, #0
	beq _021DD850
	bl ov19_021DD368
	cmp r0, #0
	beq _021DD84C
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021DD842
	add r0, r4, #0
	bl ov19_021DE350
	add r0, r4, #0
	bl ov19_021DD794
	b _021DD848
_021DD842:
	add r0, r4, #0
	bl ov19_021DD7E8
_021DD848:
	mov r0, #1
	pop {r4, pc}
_021DD84C:
	mov r0, #0
	pop {r4, pc}
_021DD850:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov19_021DD820

	thumb_func_start ov19_021DD854
ov19_021DD854: ; 0x021DD854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #8]
	ldr r0, [r0, #0]
	bl ov19_021D780C
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	bl ov19_021D5EB8
	add r4, r0, #3
	cmp r4, #0x12
	blt _021DD872
	sub r4, #0x12
_021DD872:
	ldr r5, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x18
	mov r6, #0xc0
	str r0, [sp, #0x10]
_021DD882:
	add r0, sp, #0x14
	bl sub_020A818C
	add r0, sp, #0x14
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl ov19_021DBBA8
	add r0, r7, #0
	bl ov19_021DBD3C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, sp, #0x38
	add r1, sp, #0x14
	bl ov19_021D783C
	mov r0, #0x30
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r3, #0x17
	ldr r0, [r0, #0xc]
	add r1, sp, #0x38
	mov r2, #0x10
	lsl r3, r3, #4
	bl ov19_021D785C
	str r0, [r5, #0x54]
	cmp r0, #0
	bne _021DD8D4
	bl sub_02022974
_021DD8D4:
	sub r4, r4, #1
	bpl _021DD8DA
	mov r4, #0x11
_021DD8DA:
	ldr r0, [sp, #0xc]
	add r6, #0x20
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #0xa
	blt _021DD882
	ldr r0, [sp, #8]
	mov r1, #0
	add r0, #0x80
	str r0, [sp, #8]
	str r1, [r0, #0]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD854

	thumb_func_start ov19_021DD8F8
ov19_021DD8F8: ; 0x021DD8F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov19_021D780C
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl ov19_021D5EB8
	ldr r1, [sp, #4]
	ldr r2, [r1, #4]
	mov r1, #0xa0
	ldrsh r7, [r2, r1]
	cmp r7, #0
	ble _021DD934
	sub r0, r0, r7
	add r5, r0, #4
	cmp r5, #0x12
	blt _021DD924
	sub r5, #0x12
_021DD924:
	ldr r0, [sp, #4]
	mov r6, #1
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r4, r0, #1
	bpl _021DD950
	add r4, #0xa
	b _021DD950
_021DD934:
	sub r0, r0, r7
	sub r5, r0, #3
	bpl _021DD93C
	add r5, #0x12
_021DD93C:
	ldr r0, [sp, #4]
	mov r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mvn r6, r6
	add r4, r0, #6
	cmp r4, #0xa
	blt _021DD94E
	sub r4, #0xa
_021DD94E:
	neg r7, r7
_021DD950:
	ldr r0, [sp, #4]
	str r7, [r0, #0x7c]
	mov r0, #0
	str r0, [sp, #8]
	cmp r7, #0
	ble _021DD994
_021DD95C:
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #5
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, #0xc0
	mov r3, #2
	bl ov19_021DBBA8
	add r5, r5, r6
	bpl _021DD976
	mov r5, #0x11
	b _021DD97C
_021DD976:
	cmp r5, #0x12
	blt _021DD97C
	mov r5, #0
_021DD97C:
	sub r4, r4, r6
	bpl _021DD984
	mov r4, #9
	b _021DD98A
_021DD984:
	cmp r4, #0xa
	blt _021DD98A
	mov r4, #0
_021DD98A:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r7
	blt _021DD95C
_021DD994:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DD8F8

	thumb_func_start ov19_021DD998
ov19_021DD998: ; 0x021DD998
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DD9A0:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021DD9AC
	bl sub_02021BD4
	str r6, [r5, #0x54]
_021DD9AC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _021DD9A0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD998

	thumb_func_start ov19_021DD9B8
ov19_021DD9B8: ; 0x021DD9B8
	cmp r0, #0
	bne _021DD9C8
	cmp r1, #0
	bne _021DD9C4
	mov r0, #1
	bx lr
_021DD9C4:
	mov r0, #0
	bx lr
_021DD9C8:
	mov r3, #1
	sub r2, r0, #1
	lsl r3, r2
	tst r1, r3
	beq _021DD9D8
	lsl r0, r0, #1
	add r0, r0, #1
	bx lr
_021DD9D8:
	lsl r0, r0, #1
	bx lr
	thumb_func_end ov19_021DD9B8

	thumb_func_start ov19_021DD9DC
ov19_021DD9DC: ; 0x021DD9DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ov19_021D5EC8
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x12
	mov r1, #0x8d
	mov r2, #1
	bl sub_02006F00
	add r7, r5, #0
	mov r6, #0
	add r4, r5, #0
	add r7, #0x18
_021DDA18:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r3, r5, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r3, #0xac
	ldr r3, [r3, #0]
	add r0, sp, #0x3c
	add r1, sp, #0x18
	add r2, r7, #0
	bl ov19_021D783C
	mov r0, #0x30
	str r0, [sp]
	mov r0, #2
	mov r2, #0xf0
	str r0, [sp, #4]
	add r3, r2, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #0x3c
	add r3, #0x80
	bl ov19_021D785C
	str r0, [r4, #0x34]
	cmp r0, #0
	bne _021DDA54
	bl sub_02022974
_021DDA54:
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov19_021DD9B8
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_02021D6C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blt _021DDA18
	ldr r0, [r5, #4]
	bl ov19_021D5EC0
	add r5, #0x80
	str r0, [r5, #0]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DD9DC

	thumb_func_start ov19_021DDA7C
ov19_021DDA7C: ; 0x021DDA7C
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DDA84:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DDA90
	bl sub_02021BD4
	str r6, [r5, #0x34]
_021DDA90:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021DDA84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DDA7C

	thumb_func_start ov19_021DDA9C
ov19_021DDA9C: ; 0x021DDA9C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021DDAB2
	sub r0, r0, #1
	add sp, #0xc
	strh r0, [r4, #0x16]
	pop {r4, r5, pc}
_021DDAB2:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DDAE8
	sub r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #8]
	asr r0, r0, #0xc
	lsl r1, r0, #2
	ldr r0, _021DDB18 ; =0x021E028C
	ldrsh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, _021DDB1C ; =0x021E028E
	ldrsh r0, [r0, r1]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
_021DDAE8:
	ldr r0, [r4, #0xc]
	asr r0, r0, #0xc
	lsl r1, r0, #2
	ldr r0, _021DDB18 ; =0x021E028C
	ldrsh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, _021DDB1C ; =0x021E028E
	ldrsh r0, [r0, r1]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DDBD0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021DDB18: .word 0x021E028C
_021DDB1C: .word 0x021E028E
	thumb_func_end ov19_021DDA9C

	thumb_func_start ov19_021DDB20
ov19_021DDB20: ; 0x021DDB20
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021DDB36
	sub r0, r0, #1
	add sp, #0xc
	strh r0, [r4, #0x16]
	pop {r4, r5, pc}
_021DDB36:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DDB72
	sub r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #8]
	asr r0, r0, #0xc
	ldr r1, _021DDBC8 ; =0x021E028C
	lsl r0, r0, #2
	ldrsh r2, [r1, r0]
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r1, r2
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, _021DDBCC ; =0x021E028E
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
_021DDB72:
	ldr r0, [r4, #0xc]
	ldr r1, _021DDBC8 ; =0x021E028C
	asr r0, r0, #0xc
	lsl r0, r0, #2
	ldrsh r2, [r1, r0]
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r1, r2
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, _021DDBCC ; =0x021E028E
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02021C50
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021DDBBC
	ldrh r0, [r4, #0x28]
	add sp, #0xc
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #8]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x16]
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021DDBBC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DDBD0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021DDBC8: .word 0x021E028C
_021DDBCC: .word 0x021E028E
	thumb_func_end ov19_021DDB20

	thumb_func_start ov19_021DDBD0
ov19_021DDBD0: ; 0x021DDBD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r1, #0]
	ldr r0, _021DDBF4 ; =0x000001CB
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021DDBE2
	bl sub_02022974
_021DDBE2:
	ldr r0, _021DDBF4 ; =0x000001CB
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_021DDBF4: .word 0x000001CB
	thumb_func_end ov19_021DDBD0

	thumb_func_start ov19_021DDBF8
ov19_021DDBF8: ; 0x021DDBF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	str r3, [sp]
	ldr r4, [sp, #0x20]
	cmp r7, #0
	bne _021DDC0C
	bl sub_02022974
_021DDC0C:
	cmp r4, #0
	beq _021DDC12
	sub r4, r4, #1
_021DDC12:
	str r6, [r5, #0]
	ldr r0, [sp, #0x1c]
	str r7, [r5, #4]
	strh r0, [r5, #0x14]
	ldr r0, [sp, #0x24]
	strh r4, [r5, #0x16]
	cmp r0, #0
	beq _021DDC26
	ldr r4, _021DDC64 ; =ov19_021DDB20
	b _021DDC28
_021DDC26:
	ldr r4, _021DDC68 ; =ov19_021DDA9C
_021DDC28:
	ldr r0, [sp]
	ldr r1, _021DDC6C ; =0x021E0264
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	lsl r1, r0, #0xc
	str r1, [r5, #0xc]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	ldr r1, [sp, #0x1c]
	bl sub_020E1F6C
	str r0, [r5, #0x10]
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #0
	str r2, [r5, #0x18]
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DDC62
	ldr r0, _021DDC70 ; =0x000001CB
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
_021DDC62:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DDC64: .word ov19_021DDB20
_021DDC68: .word ov19_021DDA9C
_021DDC6C: .word 0x021E0264
_021DDC70: .word 0x000001CB
	thumb_func_end ov19_021DDBF8

	thumb_func_start ov19_021DDC74
ov19_021DDC74: ; 0x021DDC74
	push {r4, lr}
	add r4, r1, #0
	mov r0, #1
	str r0, [r4, #0x18]
	strh r2, [r4, #0x2a]
	cmp r2, #0
	beq _021DDC88
	ldrh r0, [r4, #0x2a]
	sub r0, r0, #1
	strh r0, [r4, #0x2a]
_021DDC88:
	ldr r0, [sp, #8]
	sub r2, r0, r3
	bpl _021DDC94
	mov r0, #0
	mvn r0, r0
	mul r2, r0
_021DDC94:
	add r1, r2, #0
	mov r0, #6
	mul r1, r0
	ldr r2, _021DDCBC ; =0x021E0264
	lsl r0, r3, #1
	ldrh r0, [r2, r0]
	strh r1, [r4, #0x28]
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	lsl r2, r0, #0xc
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	sub r0, r2, r0
	bl sub_020E1F6C
	str r0, [r4, #0x24]
	pop {r4, pc}
	; .align 2, 0
_021DDCBC: .word 0x021E0264
	thumb_func_end ov19_021DDC74

	thumb_func_start ov19_021DDCC0
ov19_021DDCC0: ; 0x021DDCC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r0, #0x73
	add r4, r1, #0
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	ldr r2, [r4, #0]
	cmp r3, #0
	beq _021DDCDE
	cmp r3, #1
	beq _021DDD40
	cmp r3, #2
	beq _021DDD58
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021DDCDE:
	sub r1, r0, #2
	ldrb r1, [r4, r1]
	mov r6, #0x2c
	add r3, r1, #1
	sub r1, r0, #2
	strb r3, [r4, r1]
	sub r0, r0, #2
	ldrb r3, [r4, r0]
	mov r1, #6
	mov r0, #7
	sub r5, r1, r3
	sub r0, r0, r3
	str r0, [sp]
	add r0, r5, #1
	mul r1, r0
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsl r1, r5, #2
	add r1, r2, r1
	str r3, [sp, #0xc]
	add r2, r4, #0
	ldr r1, [r1, #0x54]
	add r2, #8
	mul r6, r5
	add r0, r4, #0
	add r2, r2, r6
	bl ov19_021DDBF8
	ldr r0, _021DDD70 ; =0x000001CD
	mov r1, #4
	strb r1, [r4, r0]
	sub r1, r0, #3
	ldrb r1, [r4, r1]
	cmp r1, #6
	blo _021DDD30
	mov r1, #2
	sub r0, r0, #1
	add sp, #0x10
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DDD30:
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021DDD6C
	mov r1, #1
	sub r0, r0, #1
	add sp, #0x10
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DDD40:
	add r1, r0, #1
	ldrb r1, [r4, r1]
	sub r2, r1, #2
	add r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021DDD6C
	mov r1, #0
	add sp, #0x10
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DDD58:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021DDD6C
	add r1, r3, #1
	strb r1, [r4, r0]
	ldr r1, _021DDD74 ; =ov19_021DDD78
	add r0, r4, #0
	bl ov19_021D79B8
_021DDD6C:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DDD70: .word 0x000001CD
_021DDD74: .word ov19_021DDD78
	thumb_func_end ov19_021DDCC0

	thumb_func_start ov19_021DDD78
ov19_021DDD78: ; 0x021DDD78
	ldr r3, _021DDD7C ; =ov19_021DD358
	bx r3
	; .align 2, 0
_021DDD7C: .word ov19_021DD358
	thumb_func_end ov19_021DDD78

	thumb_func_start ov19_021DDD80
ov19_021DDD80: ; 0x021DDD80
	push {r3, r4, r5, lr}
	mov r1, #0x1d
	add r4, r0, #0
	mov r0, #0xa
	lsl r1, r1, #4
	bl sub_02018144
	add r5, r0, #0
	beq _021DDDC8
	mov r1, #0x73
	mov r0, #0
	lsl r1, r1, #2
	str r4, [r5, #0]
	strb r0, [r5, r1]
	sub r2, r1, #2
	strb r0, [r5, r2]
	sub r1, r1, #1
	strb r0, [r5, r1]
	mov r1, #7
	add r3, r0, #0
	lsl r1, r1, #6
_021DDDAA:
	add r2, r5, r0
	add r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #8
	blt _021DDDAA
	ldr r1, _021DDDCC ; =ov19_021DDCC0
	add r0, r4, #0
	add r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DDDC8
	add r0, r5, #0
	bl sub_020181C4
_021DDDC8:
	pop {r3, r4, r5, pc}
	nop
_021DDDCC: .word ov19_021DDCC0
	thumb_func_end ov19_021DDD80

	thumb_func_start ov19_021DDDD0
ov19_021DDDD0: ; 0x021DDDD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	mov r2, #0x73
	lsl r2, r2, #2
	add r0, r1, #0
	ldrb r3, [r0, r2]
	str r1, [sp, #0x10]
	ldr r7, [r1, #0]
	cmp r3, #0
	beq _021DDDEE
	cmp r3, #1
	bne _021DDDEA
	b _021DDF86
_021DDDEA:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021DDDEE:
	ldr r1, [r7, #4]
	mov r0, #0xa0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021DDE12
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r4, r0, #5
	cmp r4, #0xa
	blt _021DDE06
	sub r4, #0xa
_021DDE06:
	mov r5, #0
	mov r0, #7
	mvn r5, r5
	mov r6, #6
	str r0, [sp, #0x24]
	b _021DDE20
_021DDE12:
	add r0, r7, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r5, #1
	mov r0, #0
	add r6, r5, #0
	str r0, [sp, #0x24]
_021DDE20:
	ldr r1, [r7, #0x7c]
	mov r0, #0
	str r0, [sp, #0x34]
	cmp r1, #0
	ble _021DDE82
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
_021DDE34:
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r0, #0
	ldr r2, [r1, #4]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	mov r2, #0x2c
	mul r3, r2
	ldr r2, [sp, #0x38]
	add r2, r2, r3
	add r3, r6, #0
	bl ov19_021DDBF8
	add r4, r4, r5
	add r6, r6, r5
	cmp r4, #0xa
	blt _021DDE6A
	mov r4, #0
	b _021DDE70
_021DDE6A:
	cmp r4, #0
	bge _021DDE70
	mov r4, #9
_021DDE70:
	ldr r0, [sp, #0x28]
	ldr r1, [r7, #0x7c]
	add r0, r0, #6
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, r1
	blt _021DDE34
_021DDE82:
	mov r0, #6
	sub r0, r0, r1
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ble _021DDEE8
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	add r0, #8
	str r0, [sp, #0x3c]
_021DDE9A:
	ldr r0, [r7, #0x7c]
	add r1, r5, #0
	mul r1, r0
	sub r1, r6, r1
	str r1, [sp]
	mov r1, #6
	mul r1, r0
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r4, #0
	add r1, r0, #0
	ldr r2, [r1, #4]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	mov r2, #0x2c
	mul r3, r2
	ldr r2, [sp, #0x3c]
	add r2, r2, r3
	add r3, r6, #0
	bl ov19_021DDBF8
	add r4, r4, r5
	add r6, r6, r5
	cmp r4, #0xa
	blt _021DDED6
	mov r4, #0
	b _021DDEDC
_021DDED6:
	cmp r4, #0
	bge _021DDEDC
	mov r4, #9
_021DDEDC:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _021DDE9A
_021DDEE8:
	ldr r1, [r7, #4]
	mov r0, #0xa0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021DDEFE
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x7c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x18]
	b _021DDF0C
_021DDEFE:
	mov r0, #7
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x7c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x18]
_021DDF0C:
	ldr r0, [sp, #0x20]
	mov r6, #0
	cmp r0, #0
	ble _021DDF74
	ldr r0, [sp, #0x10]
	str r6, [sp, #0x2c]
	str r0, [sp, #0x40]
	add r0, #8
	str r0, [sp, #0x40]
_021DDF1E:
	ldr r0, [sp, #0x18]
	add r3, r4, #0
	str r0, [sp]
	ldr r0, [r7, #0x7c]
	sub r1, r0, r6
	mov r0, #6
	mul r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r0, #0
	ldr r2, [r1, #4]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	mov r2, #0x2c
	mul r3, r2
	ldr r2, [sp, #0x40]
	add r2, r2, r3
	ldr r3, [sp, #0x1c]
	bl ov19_021DDBF8
	ldr r0, [sp, #0x18]
	add r4, r4, r5
	add r0, r0, r5
	str r0, [sp, #0x18]
	cmp r4, #0xa
	blt _021DDF60
	sub r4, #0xa
	b _021DDF66
_021DDF60:
	cmp r4, #0
	bge _021DDF66
	add r4, #0xa
_021DDF66:
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	add r0, r0, #6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	cmp r6, r0
	blt _021DDF1E
_021DDF74:
	mov r1, #0x73
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021DDF86:
	ldr r0, [sp, #0x10]
	sub r1, r2, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021DDF9E
	ldr r0, [sp, #0x10]
	add r1, r3, #1
	strb r1, [r0, r2]
	ldr r1, _021DDFA4 ; =ov19_021DDD78
	add r2, r7, #0
	bl ov19_021D79B8
_021DDF9E:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021DDFA4: .word ov19_021DDD78
	thumb_func_end ov19_021DDDD0

	thumb_func_start ov19_021DDFA8
ov19_021DDFA8: ; 0x021DDFA8
	push {r3, r4, r5, lr}
	mov r1, #0x1d
	add r4, r0, #0
	mov r0, #0xa
	lsl r1, r1, #4
	bl sub_02018144
	add r5, r0, #0
	beq _021DDFF6
	add r0, r4, #0
	mov r1, #0x73
	lsl r1, r1, #2
	str r4, [r5, #0]
	add r0, #0x54
	str r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, r1]
	sub r2, r1, #2
	strb r0, [r5, r2]
	sub r1, r1, #1
	strb r0, [r5, r1]
	mov r1, #7
	add r3, r0, #0
	lsl r1, r1, #6
_021DDFD8:
	add r2, r5, r0
	add r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #0xa
	blt _021DDFD8
	ldr r1, _021DDFF8 ; =ov19_021DDDD0
	add r0, r4, #0
	add r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DDFF6
	add r0, r5, #0
	bl sub_020181C4
_021DDFF6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DDFF8: .word ov19_021DDDD0
	thumb_func_end ov19_021DDFA8

	thumb_func_start ov19_021DDFFC
ov19_021DDFFC: ; 0x021DDFFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, [r1, #0]
	mov r2, #0x73
	str r0, [sp, #0x18]
	lsl r2, r2, #2
	add r0, r1, #0
	ldrb r3, [r0, r2]
	str r1, [sp, #0x10]
	cmp r3, #0
	beq _021DE01A
	cmp r3, #1
	beq _021DE07E
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DE01A:
	ldr r0, [sp, #0x18]
	mov r5, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	add r0, r1, #0
	str r0, [sp, #0x1c]
	add r0, #8
	mov r7, #6
	str r5, [sp, #0x14]
	mov r6, #0x24
	str r0, [sp, #0x1c]
_021DE030:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #0x18]
	lsl r2, r4, #2
	add r1, r1, r2
	str r5, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r2, #0x2c
	add r3, r4, #0
	mul r3, r2
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r2, r2, r3
	ldr r1, [r1, #0x34]
	mov r3, #0
	bl ov19_021DDBF8
	add r4, r4, #1
	sub r6, r6, #6
	sub r7, r7, #1
	cmp r4, #8
	blt _021DE060
	mov r4, #0
_021DE060:
	ldr r0, [sp, #0x14]
	add r5, r5, #6
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _021DE030
	mov r1, #0x73
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #0x10]
	add sp, #0x20
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021DE07E:
	ldr r0, [sp, #0x10]
	sub r1, r2, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021DE096
	ldr r0, [sp, #0x10]
	add r1, r3, #1
	strb r1, [r0, r2]
	ldr r1, _021DE09C ; =ov19_021DDD78
	ldr r2, [sp, #0x18]
	bl ov19_021D79B8
_021DE096:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DE09C: .word ov19_021DDD78
	thumb_func_end ov19_021DDFFC

	thumb_func_start ov19_021DE0A0
ov19_021DE0A0: ; 0x021DE0A0
	push {r3, r4, r5, lr}
	mov r1, #0x1d
	add r4, r0, #0
	mov r0, #0xa
	lsl r1, r1, #4
	bl sub_02018144
	add r5, r0, #0
	beq _021DE0E8
	mov r1, #0x73
	mov r0, #0
	lsl r1, r1, #2
	str r4, [r5, #0]
	strb r0, [r5, r1]
	sub r2, r1, #2
	strb r0, [r5, r2]
	sub r1, r1, #1
	strb r0, [r5, r1]
	mov r1, #7
	add r3, r0, #0
	lsl r1, r1, #6
_021DE0CA:
	add r2, r5, r0
	add r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #8
	blt _021DE0CA
	ldr r1, _021DE0EC ; =ov19_021DDFFC
	add r0, r4, #0
	add r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DE0E8
	add r0, r5, #0
	bl sub_020181C4
_021DE0E8:
	pop {r3, r4, r5, pc}
	nop
_021DE0EC: .word ov19_021DDFFC
	thumb_func_end ov19_021DE0A0

	thumb_func_start ov19_021DE0F0
ov19_021DE0F0: ; 0x021DE0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r0, [r1, #0]
	mov r2, #0x73
	str r0, [sp, #0x34]
	lsl r2, r2, #2
	add r0, r1, #0
	ldrb r3, [r0, r2]
	str r1, [sp, #0x10]
	cmp r3, #0
	beq _021DE110
	cmp r3, #1
	bne _021DE10C
	b _021DE282
_021DE10C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021DE110:
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #4]
	bl ov19_021D5EB0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _021DE140
	add r4, r4, #5
	cmp r4, #8
	blt _021DE12E
	sub r4, #8
_021DE12E:
	ldr r0, [sp, #0x30]
	mov r5, #0
	neg r0, r0
	str r0, [sp, #0x28]
	mov r0, #0
	mvn r5, r5
	mov r6, #1
	str r0, [sp, #0x18]
	b _021DE14A
_021DE140:
	str r0, [sp, #0x28]
	mov r0, #7
	mov r5, #1
	mov r6, #6
	str r0, [sp, #0x18]
_021DE14A:
	ldr r0, [sp, #0x28]
	mov r7, #0
	add r0, r0, #6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ble _021DE1AC
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x1c]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
_021DE162:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	lsl r2, r4, #2
	add r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	add r1, r1, r2
	str r0, [sp, #0xc]
	mov r2, #0x2c
	add r3, r4, #0
	mul r3, r2
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x10]
	add r2, r2, r3
	ldr r1, [r1, #0x34]
	add r3, r6, #0
	bl ov19_021DDBF8
	sub r6, r6, r5
	add r4, r4, r5
	bpl _021DE198
	add r4, #8
	b _021DE19E
_021DE198:
	cmp r4, #8
	blt _021DE19E
	sub r4, #8
_021DE19E:
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blt _021DE162
_021DE1AC:
	mov r0, #0
	str r0, [sp, #0x24]
	cmp r7, #8
	bge _021DE218
	ldr r0, [sp, #0x28]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r0, [sp, #0x3c]
	add r0, #8
	str r0, [sp, #0x3c]
_021DE1C4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x34]
	sub r0, r0, r5
	str r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r2, r4, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r1, r1, r2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r2, #0x2c
	add r3, r4, #0
	mul r3, r2
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x10]
	add r2, r2, r3
	ldr r1, [r1, #0x34]
	add r3, r6, #0
	bl ov19_021DDBF8
	cmp r6, #0
	beq _021DE1FE
	cmp r6, #7
	beq _021DE1FE
	sub r6, r6, r5
	b _021DE204
_021DE1FE:
	ldr r0, [sp, #0x24]
	add r0, r0, #6
	str r0, [sp, #0x24]
_021DE204:
	add r4, r4, r5
	bpl _021DE20C
	add r4, #8
	b _021DE212
_021DE20C:
	cmp r4, #8
	blt _021DE212
	sub r4, #8
_021DE212:
	add r7, r7, #1
	cmp r7, #8
	blt _021DE1C4
_021DE218:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _021DE22C
	mov r0, #7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	sub r1, r0, #2
	ldr r0, [sp, #0x14]
	sub r6, r0, r1
	b _021DE234
_021DE22C:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	sub r6, r0, #2
_021DE234:
	ldr r0, [sp, #0x2c]
	cmp r7, r0
	bge _021DE270
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x40]
	add r0, #8
	str r0, [sp, #0x40]
_021DE242:
	mov r1, #0x2c
	add r2, r4, #0
	mul r2, r1
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x10]
	add r1, r1, r2
	ldr r3, [sp, #0x14]
	mov r2, #6
	str r6, [sp]
	bl ov19_021DDC74
	sub r6, r6, r5
	add r4, r4, r5
	bpl _021DE262
	add r4, #8
	b _021DE268
_021DE262:
	cmp r4, #8
	blt _021DE268
	sub r4, #8
_021DE268:
	ldr r0, [sp, #0x2c]
	add r7, r7, #1
	cmp r7, r0
	blt _021DE242
_021DE270:
	mov r1, #0x73
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021DE282:
	ldr r0, [sp, #0x10]
	sub r1, r2, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021DE29A
	ldr r0, [sp, #0x10]
	add r1, r3, #1
	strb r1, [r0, r2]
	ldr r1, _021DE2A0 ; =ov19_021DDD78
	ldr r2, [sp, #0x34]
	bl ov19_021D79B8
_021DE29A:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021DE2A0: .word ov19_021DDD78
	thumb_func_end ov19_021DE0F0

	thumb_func_start ov19_021DE2A4
ov19_021DE2A4: ; 0x021DE2A4
	push {r3, r4, r5, lr}
	mov r1, #0x1d
	add r4, r0, #0
	mov r0, #0xa
	lsl r1, r1, #4
	bl sub_02018144
	add r5, r0, #0
	beq _021DE2EC
	mov r1, #0x73
	mov r0, #0
	lsl r1, r1, #2
	str r4, [r5, #0]
	strb r0, [r5, r1]
	sub r2, r1, #2
	strb r0, [r5, r2]
	sub r1, r1, #1
	strb r0, [r5, r1]
	mov r1, #7
	add r3, r0, #0
	lsl r1, r1, #6
_021DE2CE:
	add r2, r5, r0
	add r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #8
	blt _021DE2CE
	ldr r1, _021DE2F0 ; =ov19_021DE0F0
	add r0, r4, #0
	add r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DE2EC
	add r0, r5, #0
	bl sub_020181C4
_021DE2EC:
	pop {r3, r4, r5, pc}
	nop
_021DE2F0: .word ov19_021DE0F0
	thumb_func_end ov19_021DE2A4

	thumb_func_start ov19_021DE2F4
ov19_021DE2F4: ; 0x021DE2F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	beq _021DE322
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DE322
	ldr r0, [r5, #4]
	bl ov19_021D5EC8
	add r6, r0, #0
	mov r4, #0
_021DE30A:
	add r0, r4, #0
	add r1, r6, #0
	bl ov19_021DD9B8
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_02021D6C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021DE30A
_021DE322:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DE2F4

	thumb_func_start ov19_021DE324
ov19_021DE324: ; 0x021DE324
	ldr r3, _021DE32C ; =sub_02019120
	mov r0, #4
	mov r1, #0
	bx r3
	; .align 2, 0
_021DE32C: .word sub_02019120
	thumb_func_end ov19_021DE324

	thumb_func_start ov19_021DE330
ov19_021DE330: ; 0x021DE330
	push {r3, lr}
	mov r0, #2
	str r0, [sp]
	ldr r0, _021DE34C ; =0x04001050
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0xe
	bl sub_020BF55C
	mov r0, #4
	mov r1, #1
	bl sub_02019120
	pop {r3, pc}
	; .align 2, 0
_021DE34C: .word 0x04001050
	thumb_func_end ov19_021DE330

	thumb_func_start ov19_021DE350
ov19_021DE350: ; 0x021DE350
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [r6, #4]
	bl ov19_021D5EB8
	add r4, r0, #3
	cmp r4, #0x12
	blt _021DE364
	sub r4, #0x12
_021DE364:
	mov r0, #0
	add r7, r6, #0
	ldr r5, _021DE3E0 ; =0x021E0274
	str r0, [sp, #0x10]
	add r7, #0x88
_021DE36E:
	ldr r0, [r6, #4]
	add r2, r6, #0
	add r2, #0x84
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	add r1, r4, #0
	bl sub_02079AF4
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	add r0, r7, #0
	mov r1, #0
	bl sub_0201AE78
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	add r0, r0, #2
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DE3E4 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrsh r3, [r5, r3]
	add r2, #0x84
	ldr r2, [r2, #0]
	add r0, r7, #0
	add r3, r3, #4
	bl sub_0201D78C
	sub r4, r4, #1
	bpl _021DE3C0
	mov r4, #0x11
_021DE3C0:
	ldr r0, [sp, #0x10]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	blo _021DE36E
	add r0, r6, #0
	add r0, #0x88
	bl sub_0201ACCC
	add r0, r6, #0
	bl ov19_021DE330
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DE3E0: .word 0x021E0274
_021DE3E4: .word 0x00010200
	thumb_func_end ov19_021DE350

	.rodata


	.global Unk_ov19_021E024C
Unk_ov19_021E024C: ; 0x021E024C
	.incbin "incbin/overlay19_rodata.bin", 0x45C, 0x468 - 0x45C

	.global Unk_ov19_021E0258
Unk_ov19_021E0258: ; 0x021E0258
	.incbin "incbin/overlay19_rodata.bin", 0x468, 0x474 - 0x468

	.global Unk_ov19_021E0264
Unk_ov19_021E0264: ; 0x021E0264
	.incbin "incbin/overlay19_rodata.bin", 0x474, 0x484 - 0x474

	.global Unk_ov19_021E0274
Unk_ov19_021E0274: ; 0x021E0274
	.incbin "incbin/overlay19_rodata.bin", 0x484, 0x49C - 0x484

	.global Unk_ov19_021E028C
Unk_ov19_021E028C: ; 0x021E028C
	.incbin "incbin/overlay19_rodata.bin", 0x49C, 0x240

