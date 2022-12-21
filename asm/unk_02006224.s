	.include "macros/function.inc"
	.include "include/unk_02006224.inc"

	

	.text


	thumb_func_start sub_02006224
sub_02006224: ; 0x02006224
	push {r4, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02003D5C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0200625A
	ldrb r0, [r4]
	cmp r0, #1
	bne _02006252
	mov r0, #0xe
	bl sub_02004D04
	cmp r0, #0
	bne _0200625A
	bl sub_02006350
	mov r0, #1
	pop {r4, pc}
_02006252:
	bl sub_02006350
	mov r0, #1
	pop {r4, pc}
_0200625A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006224

	thumb_func_start sub_02006260
sub_02006260: ; 0x02006260
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x1f
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x36
	bl sub_02003D5C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202CCA4
	cmp r0, #0
	bne _02006282
	mov r0, #0
	pop {r4, r5, r6, pc}
_02006282:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0200628C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0200628C:
	ldrb r0, [r5]
	cmp r0, #1
	beq _02006296
	mov r0, #1
	pop {r4, r5, r6, pc}
_02006296:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02006260

	thumb_func_start sub_0200629C
sub_0200629C: ; 0x0200629C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02005014
	str r0, [sp]
	mov r0, #0x1e
	bl sub_02003D5C
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02006260
	cmp r0, #0
	bne _020062C4
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020062C4:
	mov r0, #0
	bl sub_0200592C
	bl sub_02006350
	mov r0, #0xe
	bl sub_02004BCC
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x13
	sub r1, r1, r2
	mov r0, #0x13
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl sub_0202CCB0
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0202CCB4
	mov r0, #0xe
	bl sub_02004B78
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	bl sub_02005014
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r4, r0
	str r0, [sp, #0x28]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	add r0, #0x40
	str r0, [sp, #0x2c]
	add r0, sp, #8
	mov r1, #0xe
	str r5, [sp, #0x24]
	bl sub_02004CB4
	add r4, r0, #0
	mov r0, #0xe
	add r1, r5, #0
	bl sub_02004D40
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0]
	mov r0, #0
	bl sub_020063D4
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200629C

	thumb_func_start sub_02006350
sub_02006350: ; 0x02006350
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x1e
	bl sub_02003D5C
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	bne _02006374
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02006374:
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006350

	thumb_func_start sub_0200637C
sub_0200637C: ; 0x0200637C
	push {lr}
	sub sp, #0x1c
	mov r0, #2
	str r0, [sp]
	bl sub_02005014
	mov r1, #0x7d
	str r0, [sp, #4]
	lsl r1, r1, #4
	mov r0, #0x1f
	str r1, [sp, #8]
	tst r0, r1
	beq _0200639C
	mov r0, #0x1f
	bic r1, r0
	str r1, [sp, #8]
_0200639C:
	ldr r0, _020063B4 ; =0x00004174
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0
	bl sub_02004B5C
	add sp, #0x1c
	pop {pc}
	nop
_020063B4: .word 0x00004174
	thumb_func_end sub_0200637C

	thumb_func_start sub_020063B8
sub_020063B8: ; 0x020063B8
	ldr r3, _020063BC ; =sub_02004B64
	bx r3
	; .align 2, 0
_020063BC: .word sub_02004B64
	thumb_func_end sub_020063B8

	thumb_func_start sub_020063C0
sub_020063C0: ; 0x020063C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005014
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202CCEC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020063C0

	thumb_func_start sub_020063D4
sub_020063D4: ; 0x020063D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020063D4

	thumb_func_start sub_020063E4
sub_020063E4: ; 0x020063E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x24
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02003D5C
	cmp r5, #0
	bne _02006408
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
	b _02006414
_02006408:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
_02006414:
	cmp r0, #0
	bne _02006430
	mov r0, #1
	bl sub_020063D4
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	ldr r1, _02006434 ; =0x000001B9
	add r2, r6, #0
	add r3, r4, #0
	str r0, [sp, #4]
	bl sub_020059D0
_02006430:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02006434: .word 0x000001B9
	thumb_func_end sub_020063E4

	thumb_func_start sub_02006438
sub_02006438: ; 0x02006438
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x24
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02003D5C
	cmp r5, #0
	bne _0200645C
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
	b _02006468
_0200645C:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
_02006468:
	cmp r0, #0
	bne _0200648C
	mov r0, #1
	bl sub_020063D4
	mov r0, #0xb
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, _02006490 ; =0x000001B9
	add r2, r6, #0
	str r0, [sp, #4]
	mov r0, #0
	add r3, r4, #0
	str r0, [sp, #8]
	bl sub_02005F4C
	mov r0, #1
_0200648C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02006490: .word 0x000001B9
	thumb_func_end sub_02006438

	thumb_func_start sub_02006494
sub_02006494: ; 0x02006494
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202CCA4
	cmp r0, #0
	bne _020064A4
	mov r0, #0
	pop {r4, pc}
_020064A4:
	add r0, r4, #0
	bl sub_0202CCB0
	mov r1, #0xf
	ldrsb r0, [r0, r1]
	sub r1, #0x2d
	cmp r0, r1
	bge _020064B8
	mov r0, #1
	pop {r4, pc}
_020064B8:
	cmp r0, #0x1e
	blt _020064C4
	cmp r0, #0x80
	bge _020064C4
	mov r0, #2
	pop {r4, pc}
_020064C4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02006494

	thumb_func_start sub_020064C8
sub_020064C8: ; 0x020064C8
	cmp r0, #0xb
	bgt _020064E2
	bge _020064E6
	cmp r0, #5
	bgt _020064EA
	cmp r0, #0
	blt _020064EA
	beq _020064E6
	cmp r0, #1
	beq _020064E6
	cmp r0, #5
	beq _020064E6
	b _020064EA
_020064E2:
	cmp r0, #0xc
	bne _020064EA
_020064E6:
	mov r0, #1
	bx lr
_020064EA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020064C8