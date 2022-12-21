	.include "macros/function.inc"
	.include "include/unk_0202D05C.inc"

	

	.text


	thumb_func_start sub_0202D05C
sub_0202D05C: ; 0x0202D05C
	mov r0, #0xe4
	bx lr
	thumb_func_end sub_0202D05C

	thumb_func_start sub_0202D060
sub_0202D060: ; 0x0202D060
	ldr r3, _0202D068 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x3c
	bx r3
	; .align 2, 0
_0202D068: .word sub_020C4CF4
	thumb_func_end sub_0202D060

	thumb_func_start sub_0202D06C
sub_0202D06C: ; 0x0202D06C
	push {r4, lr}
	mov r2, #0x5a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #1
	strb r0, [r4, #3]
	pop {r4, pc}
	thumb_func_end sub_0202D06C

	thumb_func_start sub_0202D080
sub_0202D080: ; 0x0202D080
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_02014AC4
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_02014AC4
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	bl sub_02014AC4
	add r4, #0x18
	add r0, r4, #0
	mov r1, #3
	bl sub_02014AC4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202D080

	thumb_func_start sub_0202D0AC
sub_0202D0AC: ; 0x0202D0AC
	ldr r3, _0202D0B4 ; =sub_020C4CF4
	mov r1, #0
	ldr r2, _0202D0B8 ; =0x00000B3C
	bx r3
	; .align 2, 0
_0202D0B4: .word sub_020C4CF4
_0202D0B8: .word 0x00000B3C
	thumb_func_end sub_0202D0AC

	thumb_func_start sub_0202D0BC
sub_0202D0BC: ; 0x0202D0BC
	push {r3, lr}
	cmp r1, #0xa
	bhi _0202D13A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202D0CE: ; jump table
	.short _0202D0E4 - _0202D0CE - 2 ; case 0
	.short _0202D0EC - _0202D0CE - 2 ; case 1
	.short _0202D0F0 - _0202D0CE - 2 ; case 2
	.short _0202D0F4 - _0202D0CE - 2 ; case 3
	.short _0202D0F8 - _0202D0CE - 2 ; case 4
	.short _0202D0FC - _0202D0CE - 2 ; case 5
	.short _0202D10A - _0202D0CE - 2 ; case 6
	.short _0202D118 - _0202D0CE - 2 ; case 7
	.short _0202D120 - _0202D0CE - 2 ; case 8
	.short _0202D12E - _0202D0CE - 2 ; case 9
	.short _0202D136 - _0202D0CE - 2 ; case 10
_0202D0E4:
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1d
	pop {r3, pc}
_0202D0EC:
	ldrb r0, [r0, #2]
	pop {r3, pc}
_0202D0F0:
	ldrb r0, [r0, #3]
	pop {r3, pc}
_0202D0F4:
	ldrh r0, [r0, #4]
	pop {r3, pc}
_0202D0F8:
	ldrh r0, [r0, #6]
	pop {r3, pc}
_0202D0FC:
	add r1, r2, #0
	add r0, #8
	mov r2, #4
	bl sub_020C4DB0
	mov r0, #0
	pop {r3, pc}
_0202D10A:
	add r1, r2, #0
	add r0, #0x2c
	mov r2, #0x10
	bl sub_020C4DB0
	mov r0, #0
	pop {r3, pc}
_0202D118:
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0202D120:
	add r1, r2, #0
	add r0, #0xc
	mov r2, #0x1c
	bl sub_020C4DB0
	mov r0, #0
	pop {r3, pc}
_0202D12E:
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	pop {r3, pc}
_0202D136:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
_0202D13A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202D0BC

	thumb_func_start sub_0202D140
sub_0202D140: ; 0x0202D140
	push {r4, lr}
	add r3, r0, #0
	cmp r1, #0xa
	bhi _0202D1E6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202D154: ; jump table
	.short _0202D16A - _0202D154 - 2 ; case 0
	.short _0202D17C - _0202D154 - 2 ; case 1
	.short _0202D182 - _0202D154 - 2 ; case 2
	.short _0202D188 - _0202D154 - 2 ; case 3
	.short _0202D18E - _0202D154 - 2 ; case 4
	.short _0202D194 - _0202D154 - 2 ; case 5
	.short _0202D1A2 - _0202D154 - 2 ; case 6
	.short _0202D1B0 - _0202D154 - 2 ; case 7
	.short _0202D1C2 - _0202D154 - 2 ; case 8
	.short _0202D1D6 - _0202D154 - 2 ; case 9
	.short _0202D1D0 - _0202D154 - 2 ; case 10
_0202D16A:
	ldrb r1, [r3]
	mov r0, #0x1c
	bic r1, r0
	ldrb r0, [r2]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r3]
	pop {r4, pc}
_0202D17C:
	ldrb r0, [r2]
	strb r0, [r3, #2]
	pop {r4, pc}
_0202D182:
	ldrb r0, [r2]
	strb r0, [r3, #3]
	pop {r4, pc}
_0202D188:
	ldrh r0, [r2]
	strh r0, [r3, #4]
	pop {r4, pc}
_0202D18E:
	ldrh r0, [r2]
	strh r0, [r3, #6]
	pop {r4, pc}
_0202D194:
	add r3, #8
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_020C4DB0
	pop {r4, pc}
_0202D1A2:
	add r3, #0x2c
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0x10
	bl sub_020C4DB0
	pop {r4, pc}
_0202D1B0:
	ldrb r4, [r3]
	ldrb r1, [r2]
	mov r0, #1
	bic r4, r0
	mov r0, #1
	and r0, r1
	orr r0, r4
	strb r0, [r3]
	pop {r4, pc}
_0202D1C2:
	add r3, #0xc
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0x1c
	bl sub_020C4DB0
	pop {r4, pc}
_0202D1D0:
	ldr r0, [r2, #0]
	str r0, [r3, #0x28]
	pop {r4, pc}
_0202D1D6:
	ldrb r1, [r3]
	mov r0, #0xe0
	bic r1, r0
	ldrb r0, [r2]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r3]
_0202D1E6:
	pop {r4, pc}
	thumb_func_end sub_0202D140

	thumb_func_start sub_0202D1E8
sub_0202D1E8: ; 0x0202D1E8
	push {r3, r4}
	ldrb r4, [r0, #3]
	add r1, r4, r1
	cmp r1, #0xff
	bge _0202D1F4
	strb r1, [r0, #3]
_0202D1F4:
	ldrh r1, [r0, #4]
	add r2, r1, r2
	ldr r1, _0202D210 ; =0x0000FFFF
	cmp r2, r1
	bge _0202D200
	strh r2, [r0, #4]
_0202D200:
	ldrh r1, [r0, #6]
	add r2, r1, r3
	ldr r1, _0202D210 ; =0x0000FFFF
	cmp r2, r1
	bge _0202D20C
	strh r2, [r0, #6]
_0202D20C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0202D210: .word 0x0000FFFF
	thumb_func_end sub_0202D1E8

	thumb_func_start sub_0202D214
sub_0202D214: ; 0x0202D214
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0202D214

	thumb_func_start sub_0202D21C
sub_0202D21C: ; 0x0202D21C
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #2
	lsr r1, r1, #0x1e
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0202D21C

	thumb_func_start sub_0202D230
sub_0202D230: ; 0x0202D230
	cmp r2, #6
	bhi _0202D27E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202D240: ; jump table
	.short _0202D27E - _0202D240 - 2 ; case 0
	.short _0202D24E - _0202D240 - 2 ; case 1
	.short _0202D27E - _0202D240 - 2 ; case 2
	.short _0202D27E - _0202D240 - 2 ; case 3
	.short _0202D27E - _0202D240 - 2 ; case 4
	.short _0202D25C - _0202D240 - 2 ; case 5
	.short _0202D26E - _0202D240 - 2 ; case 6
_0202D24E:
	ldr r2, _0202D284 ; =0x0000270F
	cmp r1, r2
	bls _0202D258
	strh r2, [r0]
	b _0202D27E
_0202D258:
	strh r1, [r0]
	b _0202D27E
_0202D25C:
	ldrh r2, [r0]
	add r2, r2, r1
	ldr r1, _0202D284 ; =0x0000270F
	cmp r2, r1
	ble _0202D26A
	strh r1, [r0]
	b _0202D27E
_0202D26A:
	strh r2, [r0]
	b _0202D27E
_0202D26E:
	ldrh r2, [r0]
	cmp r2, r1
	bhs _0202D27A
	mov r1, #0
	strh r1, [r0]
	b _0202D27E
_0202D27A:
	sub r1, r2, r1
	strh r1, [r0]
_0202D27E:
	ldrh r0, [r0]
	bx lr
	nop
_0202D284: .word 0x0000270F
	thumb_func_end sub_0202D230

	thumb_func_start sub_0202D288
sub_0202D288: ; 0x0202D288
	cmp r1, #2
	beq _0202D292
	cmp r1, #3
	beq _0202D2A0
	b _0202D2BC
_0202D292:
	mov r1, #0
	strb r1, [r0, #2]
	ldrh r2, [r0, #8]
	mov r1, #0x10
	bic r2, r1
	strh r2, [r0, #8]
	b _0202D2BC
_0202D2A0:
	ldrh r1, [r0, #8]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _0202D2B0
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	b _0202D2BC
_0202D2B0:
	mov r1, #1
	strb r1, [r0, #2]
	ldrh r2, [r0, #8]
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0, #8]
_0202D2BC:
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202D288

	thumb_func_start sub_0202D2C0
sub_0202D2C0: ; 0x0202D2C0
	cmp r1, #2
	beq _0202D2CE
	cmp r1, #3
	beq _0202D2D4
	cmp r1, #4
	beq _0202D2E0
	b _0202D2EA
_0202D2CE:
	mov r1, #1
	strb r1, [r0, #3]
	b _0202D2EA
_0202D2D4:
	ldrb r1, [r0, #3]
	cmp r1, #0xa
	bhs _0202D2EA
	add r1, r1, #1
	strb r1, [r0, #3]
	b _0202D2EA
_0202D2E0:
	ldrb r1, [r0, #3]
	cmp r1, #1
	bls _0202D2EA
	sub r1, r1, #1
	strb r1, [r0, #3]
_0202D2EA:
	ldrb r0, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D2C0

	thumb_func_start sub_0202D2F0
sub_0202D2F0: ; 0x0202D2F0
	push {r3, lr}
	add r3, r0, #0
	cmp r1, #0
	bne _0202D306
	add r3, #0xc0
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
_0202D306:
	add r3, #0x18
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
	thumb_func_end sub_0202D2F0

	thumb_func_start sub_0202D314
sub_0202D314: ; 0x0202D314
	push {r3, lr}
	cmp r1, #0
	bne _0202D326
	add r1, r2, #0
	add r0, #0xc0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
_0202D326:
	add r1, r2, #0
	add r0, #0x18
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202D314

	thumb_func_start sub_0202D334
sub_0202D334: ; 0x0202D334
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrb r0, [r1, #2]
	mov r2, #0xfa
	lsl r2, r2, #2
	sub r0, r0, #1
	add r3, r0, #0
	mul r3, r2
	lsl r0, r3, #0x10
	lsr r4, r0, #0x10
	ldrh r3, [r1, #4]
	mov r0, #0xa
	ldrb r5, [r1, #3]
	mul r0, r3
	mov r3, #0x14
	mul r3, r5
	lsl r0, r0, #0x10
	lsl r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r3, r3, #0x10
	add r3, r0, r3
	add r0, r2, #0
	sub r0, #0x32
	cmp r3, r0
	ble _0202D36A
	mov r5, #0
	b _0202D372
_0202D36A:
	sub r2, #0x32
	sub r0, r2, r3
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0202D372:
	ldrh r1, [r1, #6]
	ldr r0, _0202D398 ; =0x000003CA
	cmp r1, r0
	bls _0202D37E
	mov r1, #0
	b _0202D38C
_0202D37E:
	add r0, #0x1e
	sub r0, r0, r1
	mov r1, #0x1e
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0202D38C:
	add r0, r4, r5
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r6, #0x16]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202D398: .word 0x000003CA
	thumb_func_end sub_0202D334

	thumb_func_start sub_0202D39C
sub_0202D39C: ; 0x0202D39C
	ldrh r0, [r0, #0x16]
	bx lr
	thumb_func_end sub_0202D39C

	thumb_func_start sub_0202D3A0
sub_0202D3A0: ; 0x0202D3A0
	push {r3, lr}
	ldrh r0, [r0, #0x16]
	mov r1, #0xfa
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202D3A0

	thumb_func_start sub_0202D3B4
sub_0202D3B4: ; 0x0202D3B4
	push {r4, r5}
	cmp r1, #5
	bne _0202D3C0
	mov r0, #0
	pop {r4, r5}
	bx lr
_0202D3C0:
	cmp r1, #6
	bne _0202D3C6
	mov r1, #5
_0202D3C6:
	cmp r2, #2
	beq _0202D3D0
	cmp r2, #3
	beq _0202D3DA
	b _0202D3EC
_0202D3D0:
	lsl r2, r1, #1
	mov r3, #0
	add r2, r0, r2
	strh r3, [r2, #0xa]
	b _0202D3EC
_0202D3DA:
	add r5, r0, #0
	add r5, #0xa
	lsl r4, r1, #1
	ldrh r3, [r5, r4]
	ldr r2, _0202D3F8 ; =0x0000FFFE
	cmp r3, r2
	bhs _0202D3EC
	add r2, r3, #1
	strh r2, [r5, r4]
_0202D3EC:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0xa]
	pop {r4, r5}
	bx lr
	nop
_0202D3F8: .word 0x0000FFFE
	thumb_func_end sub_0202D3B4

	thumb_func_start sub_0202D3FC
sub_0202D3FC: ; 0x0202D3FC
	cmp r1, #5
	bne _0202D404
	mov r0, #0
	bx lr
_0202D404:
	cmp r1, #6
	bne _0202D40A
	mov r1, #5
_0202D40A:
	add r0, #0xa
	lsl r1, r1, #1
	strh r2, [r0, r1]
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end sub_0202D3FC

	thumb_func_start sub_0202D414
sub_0202D414: ; 0x0202D414
	push {r4, lr}
	mov r3, #1
	cmp r1, #0x10
	blo _0202D424
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_0202D424:
	mov r4, #0
	cmp r1, #0
	bls _0202D438
_0202D42A:
	add r4, r4, #1
	lsl r4, r4, #0x10
	lsl r3, r3, #0x11
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r1
	blo _0202D42A
_0202D438:
	cmp r2, #0
	beq _0202D45C
	cmp r2, #1
	beq _0202D454
	cmp r2, #2
	bne _0202D468
	ldr r1, _0202D46C ; =0x0000FFFF
	eor r1, r3
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldrh r1, [r0, #8]
	and r1, r2
	strh r1, [r0, #8]
	b _0202D468
_0202D454:
	ldrh r1, [r0, #8]
	orr r1, r3
	strh r1, [r0, #8]
	b _0202D468
_0202D45C:
	ldrh r0, [r0, #8]
	add r2, r0, #0
	asr r2, r1
	mov r0, #1
	and r0, r2
	pop {r4, pc}
_0202D468:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0202D46C: .word 0x0000FFFF
	thumb_func_end sub_0202D414

	thumb_func_start sub_0202D470
sub_0202D470: ; 0x0202D470
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0202D470

	thumb_func_start sub_0202D474
sub_0202D474: ; 0x0202D474
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0202D474

	thumb_func_start sub_0202D478
sub_0202D478: ; 0x0202D478
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x17
	add r4, r2, #0
	bl sub_020245BC
	ldr r1, _0202D494 ; =0x00000ABC
	add r1, r0, r1
	lsl r0, r5, #3
	add r0, r1, r0
	add r1, r4, #0
	bl sub_02014CC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202D494: .word 0x00000ABC
	thumb_func_end sub_0202D478

	thumb_func_start sub_0202D498
sub_0202D498: ; 0x0202D498
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0202D4AC ; =0x00000ABC
	add r1, r0, r1
	lsl r0, r4, #3
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_0202D4AC: .word 0x00000ABC
	thumb_func_end sub_0202D498

	thumb_func_start sub_0202D4B0
sub_0202D4B0: ; 0x0202D4B0
	push {r3, r4, r5, r6}
	add r4, r3, #0
	mov r3, #1
	cmp r2, #0
	beq _0202D510
	cmp r2, #0xc8
	bhi _0202D510
	cmp r1, #0
	beq _0202D510
	cmp r1, #0xa
	bhi _0202D510
	sub r5, r2, #1
	sub r2, r1, #1
	mov r1, #0xc8
	mul r1, r2
	add r1, r5, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsr r6, r1, #0x1f
	lsl r5, r1, #0x1d
	sub r5, r5, r6
	mov r2, #0x1d
	ror r5, r2
	add r2, r6, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r3, r2
	lsl r2, r3, #0x18
	lsl r1, r1, #0x15
	lsr r5, r2, #0x18
	add r3, r0, #4
	lsr r2, r1, #0x18
	ldrb r1, [r3, r2]
	orr r1, r5
	strb r1, [r3, r2]
	ldr r3, [r4, #0]
	ldr r1, [r4, #8]
	lsl r5, r3, #0x18
	ldr r3, [r4, #4]
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r3, r3, #8
	ldr r2, [r4, #0xc]
	lsr r1, r1, #0x10
	orr r3, r5
	orr r1, r3
	orr r1, r2
	str r1, [r0, #0]
_0202D510:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0202D4B0

	thumb_func_start sub_0202D514
sub_0202D514: ; 0x0202D514
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #0
	mov r2, #0xfa
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202D514

	thumb_func_start sub_0202D530
sub_0202D530: ; 0x0202D530
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	cmp r3, r2
	bls _0202D53C
	mov r0, #1
	bx lr
_0202D53C:
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	cmp r3, r2
	bls _0202D548
	mov r0, #1
	bx lr
_0202D548:
	ldr r2, [r0, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bls _0202D554
	mov r0, #1
	bx lr
_0202D554:
	mov r0, #0
	bx lr
	thumb_func_end sub_0202D530

	thumb_func_start sub_0202D558
sub_0202D558: ; 0x0202D558
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	mov r7, #1
	cmp r6, #0xc8
	bhi _0202D56C
	cmp r4, #0xa
	bls _0202D572
_0202D56C:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202D572:
	ldr r0, [r5, #0]
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r1, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r3, #0
	add r1, sp, #0
	bl sub_0202D530
	cmp r0, #0
	beq _0202D5AA
	add r0, r5, #0
	bl sub_0202D514
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202D5AA:
	sub r1, r4, #1
	mov r0, #0xc8
	mul r0, r1
	sub r2, r6, #1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	add r0, r5, r0
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	lsl r2, r1
	lsl r1, r2, #0x18
	ldrb r0, [r0, #4]
	lsr r1, r1, #0x18
	tst r0, r1
	beq _0202D5E2
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202D5E2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202D558

	thumb_func_start sub_0202D5E8
sub_0202D5E8: ; 0x0202D5E8
	add r0, #0xfe
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D5E8

	thumb_func_start sub_0202D5F0
sub_0202D5F0: ; 0x0202D5F0
	add r0, #0xff
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D5F0

	thumb_func_start sub_0202D5F8
sub_0202D5F8: ; 0x0202D5F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x41
	add r4, r2, #0
	lsl r1, r1, #2
	ldr r2, _0202D620 ; =0x0000063C
	add r1, r5, r1
	add r6, r3, #0
	bl sub_020C4DB0
	ldr r0, _0202D624 ; =0x00000101
	strb r4, [r5, r0]
	sub r0, r0, #1
	strb r6, [r5, r0]
	mov r0, #1
	add r5, #0xfe
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_0202D620: .word 0x0000063C
_0202D624: .word 0x00000101
	thumb_func_end sub_0202D5F8

	thumb_func_start sub_0202D628
sub_0202D628: ; 0x0202D628
	ldr r2, _0202D638 ; =0x00000101
	ldrb r3, [r0, r2]
	sub r2, r2, #1
	strb r3, [r1]
	ldrb r0, [r0, r2]
	strb r0, [r1, #1]
	bx lr
	nop
_0202D638: .word 0x00000101
	thumb_func_end sub_0202D628

	thumb_func_start sub_0202D63C
sub_0202D63C: ; 0x0202D63C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x41
	lsl r1, r1, #2
	add r5, r0, r1
	mov r0, #0xe4
	add r4, r2, #0
	mul r4, r0
	ldr r0, _0202D6D8 ; =0x00002710
	add r7, r6, #0
	str r0, [r6, #0]
	add r0, r5, r4
	add r0, #0xc9
	ldrb r0, [r0]
	add r7, #0x30
	strh r0, [r6, #4]
	add r0, r5, r4
	add r0, #0xc8
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0202D692
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0x16
	mov r3, #0xb
	bl sub_0200B144
	add r1, r5, r4
	add r1, #0xc8
	ldrb r1, [r1]
	add r2, r6, #0
	str r0, [sp]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	add r1, #0x16
	add r2, #8
	bl sub_0200B240
	ldr r0, [sp]
	bl sub_0200B190
	b _0202D6A0
_0202D692:
	add r0, r5, r4
	add r1, r6, #0
	add r0, #0xa8
	add r1, #8
	mov r2, #0x10
	bl sub_020C4DB0
_0202D6A0:
	add r0, r5, r4
	add r1, r6, #0
	add r0, #0xca
	add r1, #0x18
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, r4
	add r1, r6, #0
	add r0, #0xd2
	add r1, #0x20
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, r4
	add r6, #0x28
	add r0, #0xda
	add r1, r6, #0
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, r4
	add r1, r7, #0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202D6D8: .word 0x00002710
	thumb_func_end sub_0202D63C

	thumb_func_start sub_0202D6DC
sub_0202D6DC: ; 0x0202D6DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1d
	add r4, r2, #0
	lsl r1, r1, #6
	mov r2, #0xff
	add r1, r5, r1
	lsl r2, r2, #2
	add r6, r3, #0
	bl sub_020C4DB0
	ldr r0, _0202D704 ; =0x00000103
	strb r4, [r5, r0]
	sub r0, r0, #1
	strb r6, [r5, r0]
	mov r0, #1
	add r5, #0xff
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202D704: .word 0x00000103
	thumb_func_end sub_0202D6DC

	thumb_func_start sub_0202D708
sub_0202D708: ; 0x0202D708
	ldr r2, _0202D718 ; =0x00000103
	ldrb r3, [r0, r2]
	sub r2, r2, #1
	strb r3, [r1]
	ldrb r0, [r0, r2]
	strb r0, [r1, #1]
	bx lr
	nop
_0202D718: .word 0x00000103
	thumb_func_end sub_0202D708

	thumb_func_start sub_0202D71C
sub_0202D71C: ; 0x0202D71C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0xff
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #6
	mov r2, #0xff
	add r0, r5, r0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020C4DB0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202D71C

	thumb_func_start sub_0202D740
sub_0202D740: ; 0x0202D740
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_0202D740

	thumb_func_start sub_0202D750
sub_0202D750: ; 0x0202D750
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0202D760 ; =0x00000954
	add r0, r0, r1
	pop {r3, pc}
	nop
_0202D760: .word 0x00000954
	thumb_func_end sub_0202D750

	thumb_func_start sub_0202D764
sub_0202D764: ; 0x0202D764
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0202D774 ; =0x00000ADC
	add r0, r0, r1
	pop {r3, pc}
	nop
_0202D774: .word 0x00000ADC
	thumb_func_end sub_0202D764