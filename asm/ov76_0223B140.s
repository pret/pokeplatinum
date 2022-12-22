	.include "macros/function.inc"
	.include "include/ov76_0223B140.inc"

	

	.text


	thumb_func_start ov76_0223B140
ov76_0223B140: ; 0x0223B140
	push {r3, lr}
	ldr r0, _0223B154 ; =0x0000000B
	mov r1, #2
	bl sub_02006590
	ldr r0, _0223B158 ; =0x0000000C
	mov r1, #2
	bl sub_02006590
	pop {r3, pc}
	; .align 2, 0
_0223B154: .word 0x0000000B
_0223B158: .word 0x0000000C
	thumb_func_end ov76_0223B140

	thumb_func_start ov76_0223B15C
ov76_0223B15C: ; 0x0223B15C
	add r3, r2, #0
	sub r3, #0xa
	strb r3, [r0]
	add r3, r1, #0
	sub r3, #0xa
	strb r3, [r0, #2]
	add r2, #0xa
	strb r2, [r0, #1]
	add r1, #0xa
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov76_0223B15C

	thumb_func_start ov76_0223B174
ov76_0223B174: ; 0x0223B174
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	mov r1, #0xc0
	strb r1, [r0, #1]
	mov r1, #0xff
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov76_0223B174

	thumb_func_start ov76_0223B184
ov76_0223B184: ; 0x0223B184
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0223B1D8
	cmp r2, #1
	bne _0223B1B4
	ldr r3, _0223B1DC ; =0x021BF6BC
	mov r1, #0x1c
	mov r2, #0x1e
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	bl sub_0200D4C4
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r0, r5, #0
	bl ov76_0223B174
	pop {r3, r4, r5, pc}
_0223B1B4:
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov76_0223B15C
_0223B1D8:
	pop {r3, r4, r5, pc}
	nop
_0223B1DC: .word 0x021BF6BC
	thumb_func_end ov76_0223B184

	thumb_func_start ov76_0223B1E0
ov76_0223B1E0: ; 0x0223B1E0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r7, r4, #0
	mov r6, #0xcb
	add r5, r0, #0
	sub r7, #0x38
	lsl r6, r6, #2
_0223B1EE:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0223B1FC
	add r1, r7, #0
	mov r2, #0x10
	bl sub_0200D5DC
_0223B1FC:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0223B1EE
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B1E0

	thumb_func_start ov76_0223B208
ov76_0223B208: ; 0x0223B208
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r6, #0
	lsl r0, r0, #3
	add r0, r7, r0
	ldr r4, [r0, #8]
	add r5, r7, #0
_0223B21C:
	ldrb r1, [r4]
	cmp r1, #0
	beq _0223B25A
	mov r0, #0xca
	lsl r0, r0, #2
	strb r1, [r5, r0]
	ldrb r1, [r4, #1]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldrb r1, [r4, #2]
	ldr r0, _0223B274 ; =0x0000032A
	strb r1, [r5, r0]
	lsl r1, r6, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ov76_0223B52C
	mov r0, #0x33
	mov r1, #0xcb
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0
	bl ov76_0223B184
	mov r0, #0xc9
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _0223B266
_0223B25A:
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	strb r1, [r5, r0]
_0223B266:
	add r6, r6, #1
	add r4, r4, #3
	add r5, #0x10
	cmp r6, #8
	blt _0223B21C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B274: .word 0x0000032A
	thumb_func_end ov76_0223B208

	thumb_func_start ov76_0223B278
ov76_0223B278: ; 0x0223B278
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #0xc9
	mov r4, #0
	add r3, r6, #0
	lsl r0, r0, #2
_0223B286:
	ldr r2, [r3, r0]
	cmp r2, #1
	beq _0223B2E8
	add r0, r6, r1
	mov r1, #0x42
	lsl r1, r1, #4
	ldrb r3, [r0, r1]
	lsl r5, r4, #4
	add r0, r1, #0
	add r2, r6, r5
	sub r0, #0xf8
	strb r3, [r2, r0]
	add r0, r1, #0
	sub r0, #0xf7
	add r7, r6, r0
	mov r0, #0xbe
	sub r1, #0xf6
	strb r0, [r7, r5]
	add r0, r6, r1
	mov r1, #0x46
	strb r1, [r0, r5]
	str r0, [sp]
	add r0, sp, #8
	add r1, sp, #4
	bl sub_020227A4
	ldr r0, [sp, #8]
	strb r0, [r7, r5]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, r5]
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov76_0223B52C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov76_0223B314
	mov r0, #0xc9
	mov r2, #1
	add r1, r6, r5
	lsl r0, r0, #2
	str r2, [r1, r0]
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0223B2E8:
	add r4, r4, #1
	add r3, #0x10
	cmp r4, #8
	blt _0223B286
	mov r0, #0xff
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B278

	thumb_func_start ov76_0223B2F8
ov76_0223B2F8: ; 0x0223B2F8
	mov r1, #0xc9
	mov r3, #0
	lsl r1, r1, #2
_0223B2FE:
	ldr r2, [r0, r1]
	cmp r2, #1
	beq _0223B308
	mov r0, #1
	bx lr
_0223B308:
	add r3, r3, #1
	add r0, #0x10
	cmp r3, #8
	blt _0223B2FE
	mov r0, #0
	bx lr
	thumb_func_end ov76_0223B2F8

	thumb_func_start ov76_0223B314
ov76_0223B314: ; 0x0223B314
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc9
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_0223B320:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _0223B360
	cmp r4, r6
	bne _0223B338
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D474
	b _0223B360
_0223B338:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D488
	add r1, r0, #0
	bne _0223B354
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl sub_0200D474
	b _0223B360
_0223B354:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #2
	bl sub_0200D474
_0223B360:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0223B320
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B314

	thumb_func_start ov76_0223B36C
ov76_0223B36C: ; 0x0223B36C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xdc
	ldr r4, [r1, #0]
	add r1, r0, #0
	add r1, #0xe0
	ldr r5, [r1, #0]
	mov r1, #0x5b
	str r1, [sp]
	add r1, #0xca
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0223B3F0 ; =0x0000532D
	add r6, r2, #0
	str r1, [sp, #0x14]
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #3
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0200CD7C
	add r0, r7, #0
	bl sub_02098140
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223B3F4 ; =0x00004E20
	add r1, r5, #0
	add r0, r6, r0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x5b
	bl sub_0200CBDC
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223B3F8 ; =0x0000564D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x5b
	mov r3, #0x5d
	bl sub_0200CE0C
	mov r3, #1
	ldr r0, _0223B3FC ; =0x000059D9
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x5b
	bl sub_0200CE3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B3F0: .word 0x0000532D
_0223B3F4: .word 0x00004E20
_0223B3F8: .word 0x0000564D
_0223B3FC: .word 0x000059D9
	thumb_func_end ov76_0223B36C

	thumb_func_start ov76_0223B400
ov76_0223B400: ; 0x0223B400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	mov r1, #0x26
	lsl r1, r1, #4
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0223B412
	b _0223B520
_0223B412:
	ldr r0, [sp]
	mov r7, #0
	str r7, [r0, r1]
	add r4, sp, #0x54
	add r5, sp, #0x34
	add r6, r0, #0
_0223B41E:
	mov r0, #0xff
	str r0, [r4, #0]
	str r0, [r5, #0]
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223B436
	bl sub_0200D488
	str r0, [r4, #0]
	str r7, [r5, #0]
_0223B436:
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	add r6, #0x10
	cmp r7, #8
	blt _0223B41E
	mov r0, #0
	mov ip, r0
_0223B446:
	mov r0, ip
	mov r3, #7
	cmp r0, #7
	bge _0223B476
	add r4, sp, #0x70
	add r5, sp, #0x50
_0223B452:
	sub r7, r4, #4
	ldr r2, [r4, #0]
	ldr r0, [r7, #0]
	cmp r0, r2
	blt _0223B46A
	ldr r1, [r5, #0]
	sub r6, r5, #4
	str r0, [r4, #0]
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	str r2, [r7, #0]
	str r1, [r6, #0]
_0223B46A:
	sub r3, r3, #1
	mov r0, ip
	sub r4, r4, #4
	sub r5, r5, #4
	cmp r3, r0
	bgt _0223B452
_0223B476:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #7
	blt _0223B446
	mov r3, #0xca
	lsl r3, r3, #2
	ldr r0, [sp]
	mov r2, #0
	add r1, sp, #0x1c
	add r4, r3, #1
	add r5, r3, #2
_0223B48E:
	ldrb r6, [r0, r3]
	add r2, r2, #1
	strb r6, [r1]
	ldrb r6, [r0, r4]
	strb r6, [r1, #1]
	ldrb r6, [r0, r5]
	add r0, #0x10
	strb r6, [r1, #2]
	add r1, r1, #3
	cmp r2, #8
	blt _0223B48E
	add r3, sp, #0x1c
	add r2, sp, #4
	mov r1, #0x18
_0223B4AA:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223B4AA
	ldr r5, [sp]
	mov r6, #0
	add r4, sp, #0x34
	add r7, sp, #4
_0223B4BE:
	ldr r1, [r4, #0]
	cmp r1, #0xff
	bne _0223B4D6
	mov r0, #0xca
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, _0223B524 ; =0x0000032A
	strb r1, [r5, r0]
	b _0223B516
_0223B4D6:
	lsl r0, r1, #1
	add r0, r1, r0
	ldrb r1, [r7, r0]
	mov r0, #0xca
	lsl r0, r0, #2
	strb r1, [r5, r0]
	ldr r1, [r4, #0]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r7, r0
	ldrb r1, [r0, #1]
	ldr r0, _0223B528 ; =0x00000329
	strb r1, [r5, r0]
	ldr r1, [r4, #0]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r7, r0
	ldrb r1, [r0, #2]
	ldr r0, _0223B524 ; =0x0000032A
	strb r1, [r5, r0]
	ldr r0, [r4, #0]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223B516
	add r1, r6, #0
	bl sub_0200D474
_0223B516:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #8
	blt _0223B4BE
_0223B520:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B524: .word 0x0000032A
_0223B528: .word 0x00000329
	thumb_func_end ov76_0223B400

	thumb_func_start ov76_0223B52C
ov76_0223B52C: ; 0x0223B52C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xdc
	ldr r7, [r1, #0]
	add r1, r0, #0
	add r1, #0xe0
	ldr r6, [r1, #0]
	mov r1, #0xc9
	lsl r1, r1, #2
	add r2, r0, r1
	lsl r1, r5, #4
	add r4, r2, r1
	ldr r1, [r2, r1]
	cmp r1, #1
	bne _0223B558
	bl GF_AssertFail
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223B558:
	ldrb r1, [r4, #4]
	add r2, r5, #0
	bl ov76_0223B36C
	ldrb r1, [r4, #5]
	add r0, sp, #0
	strh r1, [r0]
	ldrb r1, [r4, #6]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x2c]
	sub r0, r0, #2
	str r1, [sp, #0xc]
	str r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldrb r0, [r4, #4]
	bl sub_02098140
	ldr r0, _0223B5B4 ; =0x00004E20
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _0223B5B8 ; =0x0000532D
	add r2, sp, #0
	str r0, [sp, #0x18]
	ldr r0, _0223B5BC ; =0x0000564D
	str r0, [sp, #0x1c]
	ldr r0, _0223B5C0 ; =0x000059D9
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_0200CE6C
	str r0, [r4, #8]
	bl sub_0200D330
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223B5B4: .word 0x00004E20
_0223B5B8: .word 0x0000532D
_0223B5BC: .word 0x0000564D
_0223B5C0: .word 0x000059D9
	thumb_func_end ov76_0223B52C

	thumb_func_start ov76_0223B5C4
ov76_0223B5C4: ; 0x0223B5C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r1, #0
	mov r1, #0xc9
	add r4, r0, #0
	lsl r7, r5, #4
	add r3, r4, r7
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, #0
	bne _0223B5DE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B5DE:
	cmp r6, #3
	bhi _0223B66E
	add r2, r6, r6
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223B5EE: ; jump table
	.short _0223B5F6 - _0223B5EE - 2 ; case 0
	.short _0223B636 - _0223B5EE - 2 ; case 1
	.short _0223B60C - _0223B5EE - 2 ; case 2
	.short _0223B636 - _0223B5EE - 2 ; case 3
_0223B5F6:
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	cmp r1, #0xff
	bne _0223B672
	add r4, #0xd4
	add r1, r5, #0
	str r5, [r4, #0]
	bl ov76_0223B314
	b _0223B672
_0223B60C:
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, r5
	bne _0223B672
	add r0, r1, #0
	add r0, #0xc
	add r1, #8
	ldr r0, [r3, r0]
	ldr r1, [r3, r1]
	mov r2, #1
	bl ov76_0223B184
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B758
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B7D4
	b _0223B672
_0223B636:
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	cmp r1, #0xff
	bne _0223B672
	add r1, r5, #0
	bl ov76_0223B6C4
	mov r1, #0x33
	add r2, r4, r7
	lsl r1, r1, #4
	add r6, r0, #0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	mov r2, #0
	bl ov76_0223B184
	cmp r6, #0
	bne _0223B666
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B704
_0223B666:
	mov r0, #0xff
	add r4, #0xd4
	str r0, [r4, #0]
	b _0223B672
_0223B66E:
	bl GF_AssertFail
_0223B672:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B5C4

	thumb_func_start ov76_0223B678
ov76_0223B678: ; 0x0223B678
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0xc9
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0223B684:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _0223B692
	add r0, r6, #0
	add r1, r4, #0
	bl ov76_0223B704
_0223B692:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0223B684
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223B678

	thumb_func_start ov76_0223B69C
ov76_0223B69C: ; 0x0223B69C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc9
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_0223B6A8:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _0223B6BA
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200D3F4
_0223B6BA:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0223B6A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223B69C

	thumb_func_start ov76_0223B6C4
ov76_0223B6C4: ; 0x0223B6C4
	push {r3, lr}
	lsl r1, r1, #4
	add r2, r0, r1
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0223B6D8
	mov r0, #1
	pop {r3, pc}
_0223B6D8:
	add r0, #8
	ldr r0, [r2, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r2, sp, #0
	mov r0, #2
	mov r1, #0
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xbe
	mov r3, #0x46
	bl ov12_02237E54
	cmp r0, #0x3c
	bgt _0223B700
	mov r0, #1
	pop {r3, pc}
_0223B700:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223B6C4

	thumb_func_start ov76_0223B704
ov76_0223B704: ; 0x0223B704
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xca
	add r7, r1, #0
	lsl r0, r0, #2
	lsl r4, r7, #4
	add r6, r5, r0
	ldrb r0, [r6, r4]
	bl sub_02098140
	add r0, r5, #0
	add r0, #0xe0
	ldr r1, _0223B754 ; =0x00004E20
	ldr r0, [r0, #0]
	add r1, r7, r1
	bl sub_0200D070
	mov r0, #0xcb
	lsl r0, r0, #2
	add r7, r5, r0
	ldr r0, [r7, r4]
	bl sub_0200D0F4
	mov r1, #0
	mov r2, #0xc9
	lsl r2, r2, #2
	str r1, [r7, r4]
	add r3, r5, r4
	str r1, [r3, r2]
	strb r1, [r6, r4]
	add r0, r2, #5
	strb r1, [r3, r0]
	add r0, r2, #6
	add r2, #0xc
	strb r1, [r3, r0]
	ldr r0, [r3, r2]
	add r2, r1, #0
	bl ov76_0223B15C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B754: .word 0x00004E20
	thumb_func_end ov76_0223B704

	thumb_func_start ov76_0223B758
ov76_0223B758: ; 0x0223B758
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov76_0223B6C4
	cmp r0, #0
	bne _0223B778
	lsl r0, r5, #4
	add r1, r4, r0
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0200D810
	pop {r3, r4, r5, pc}
_0223B778:
	lsl r0, r5, #4
	add r1, r4, r0
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D810
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B758

	thumb_func_start ov76_0223B78C
ov76_0223B78C: ; 0x0223B78C
	push {r4, r5, r6, r7}
	mov r2, #0xf1
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r4, _0223B7D0 ; =0x00000329
	lsl r2, r2, #3
	add r2, r0, r2
	ldr r2, [r2, #8]
	mov r1, #0
	add r3, r4, #1
	sub r5, r4, #1
_0223B7A2:
	ldrb r7, [r0, r5]
	ldrb r6, [r2]
	cmp r7, r6
	bne _0223B7BA
	ldrb r7, [r0, r4]
	ldrb r6, [r2, #1]
	cmp r7, r6
	bne _0223B7BA
	ldrb r7, [r0, r3]
	ldrb r6, [r2, #2]
	cmp r7, r6
	beq _0223B7C0
_0223B7BA:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0223B7C0:
	add r1, r1, #1
	add r2, r2, #3
	add r0, #0x10
	cmp r1, #8
	blt _0223B7A2
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0223B7D0: .word 0x00000329
	thumb_func_end ov76_0223B78C

	thumb_func_start ov76_0223B7D4
ov76_0223B7D4: ; 0x0223B7D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #4
	mov r0, #0xcb
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r2, sp, #0
	mov r0, #2
	ldrsh r1, [r2, r0]
	ldr r0, _0223B804 ; =0x00000329
	add r3, r5, r4
	strb r1, [r3, r0]
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r0, r0, #1
	strb r1, [r3, r0]
	pop {r3, r4, r5, pc}
	nop
_0223B804: .word 0x00000329
	thumb_func_end ov76_0223B7D4

	thumb_func_start ov76_0223B808
ov76_0223B808: ; 0x0223B808
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #0xca
	add r7, r0, #0
	lsl r3, r3, #2
	mov r0, #0
	add r1, r7, #0
	add r2, sp, #0
	add r4, r3, #1
	add r5, r3, #2
_0223B81C:
	ldrb r6, [r1, r3]
	add r0, r0, #1
	strb r6, [r2]
	ldrb r6, [r1, r4]
	strb r6, [r2, #1]
	ldrb r6, [r1, r5]
	add r1, #0x10
	strb r6, [r2, #2]
	add r2, r2, #3
	cmp r0, #8
	blt _0223B81C
	ldr r0, [r7, #0]
	mov r2, #0xf1
	lsl r2, r2, #2
	ldr r0, [r0, #0x20]
	ldr r2, [r7, r2]
	add r1, sp, #0
	bl sub_0202CA40
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223B808

	thumb_func_start ov76_0223B848
ov76_0223B848: ; 0x0223B848
	push {r3, r4, r5, r6}
	mov r3, #0xca
	lsl r3, r3, #2
	mov r2, #0
	add r4, r3, #1
	add r5, r3, #2
_0223B854:
	ldrb r6, [r1, r3]
	add r2, r2, #1
	strb r6, [r0]
	ldrb r6, [r1, r4]
	strb r6, [r0, #1]
	ldrb r6, [r1, r5]
	add r1, #0x10
	strb r6, [r0, #2]
	add r0, r0, #3
	cmp r2, #8
	blt _0223B854
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov76_0223B848

	.section .sinit, 4
	.word ov76_0223B140
