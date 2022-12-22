	.include "macros/function.inc"
	.include "include/unk_02015064.inc"

	

	.text


	thumb_func_start sub_02015064
sub_02015064: ; 0x02015064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	bne _02015078
	bl GF_AssertFail
_02015078:
	ldr r0, [r5, #0]
	ldr r1, [r5, #0xc]
	bl sub_020152F8
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	bl sub_02015328
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_02015358
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015064

	thumb_func_start sub_020150A8
sub_020150A8: ; 0x020150A8
	push {r4, lr}
	add r4, r0, #0
	bne _020150B2
	bl GF_AssertFail
_020150B2:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020150BC
	bl GF_AssertFail
_020150BC:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020150C6
	bl GF_AssertFail
_020150C6:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _020150D0
	bl GF_AssertFail
_020150D0:
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020150A8

	thumb_func_start sub_020150EC
sub_020150EC: ; 0x020150EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02015120 ; =0x04000444
	mov r6, #0
	str r6, [r0, #0]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02015116
	add r4, r6, #0
_020150FE:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0201510C
	bl sub_02015468
_0201510C:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x40
	cmp r6, r0
	blt _020150FE
_02015116:
	ldr r0, _02015124 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	nop
_02015120: .word 0x04000444
_02015124: .word 0x04000448
	thumb_func_end sub_020150EC

	thumb_func_start sub_02015128
sub_02015128: ; 0x02015128
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_020153B4
	add r4, r0, #0
	bne _0201513A
	bl GF_AssertFail
_0201513A:
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02015146
	bl GF_AssertFail
_02015146:
	ldr r0, [r5, #4]
	bl sub_0201540C
	str r0, [r4, #0]
	cmp r0, #0
	bne _02015156
	bl GF_AssertFail
_02015156:
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	add r2, r4, #4
	bl sub_02015434
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015128

	thumb_func_start sub_02015164
sub_02015164: ; 0x02015164
	push {r4, lr}
	ldr r1, _02015178 ; =0x02100DF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	blx r1
	add r0, r4, #0
	bl sub_020152E0
	pop {r4, pc}
	; .align 2, 0
_02015178: .word 0x02100DF0
	thumb_func_end sub_02015164

	thumb_func_start sub_0201517C
sub_0201517C: ; 0x0201517C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _020151A2
	add r4, r6, #0
_0201518A:
	ldr r1, [r5, #8]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015198
	add r0, r1, r4
	bl sub_02015164
_02015198:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _0201518A
_020151A2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201517C

	thumb_func_start sub_020151A4
sub_020151A4: ; 0x020151A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_020153E0
	add r4, r0, #0
	bne _020151B6
	bl GF_AssertFail
_020151B6:
	ldr r0, [r5, #8]
	bl sub_02015420
	str r0, [r4, #0]
	cmp r0, #0
	bne _020151C6
	bl GF_AssertFail
_020151C6:
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	add r2, r4, #4
	bl sub_02015444
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020151A4

	thumb_func_start sub_020151D4
sub_020151D4: ; 0x020151D4
	push {r4, lr}
	ldr r1, _020151E8 ; =0x02100DF8
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	blx r1
	add r0, r4, #0
	bl sub_020152EC
	pop {r4, pc}
	; .align 2, 0
_020151E8: .word 0x02100DF8
	thumb_func_end sub_020151D4

	thumb_func_start sub_020151EC
sub_020151EC: ; 0x020151EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _02015212
	add r4, r6, #0
_020151FA:
	ldr r1, [r5, #0x10]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015208
	add r0, r1, r4
	bl sub_020151D4
_02015208:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, r0
	blt _020151FA
_02015212:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020151EC

	thumb_func_start sub_02015214
sub_02015214: ; 0x02015214
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02015388
	add r4, r0, #0
	bne _02015226
	bl GF_AssertFail
_02015226:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020155A8
	mov r0, #1
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015214

	thumb_func_start sub_02015238
sub_02015238: ; 0x02015238
	ldr r3, _0201523C ; =sub_020152C0
	bx r3
	; .align 2, 0
_0201523C: .word sub_020152C0
	thumb_func_end sub_02015238

	thumb_func_start sub_02015240
sub_02015240: ; 0x02015240
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0201524E
	bl GF_AssertFail
_0201524E:
	str r4, [r5, #0x20]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015240

	thumb_func_start sub_02015254
sub_02015254: ; 0x02015254
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015254

	thumb_func_start sub_0201525C
sub_0201525C: ; 0x0201525C
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201525C

	thumb_func_start sub_02015268
sub_02015268: ; 0x02015268
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015268

	thumb_func_start sub_02015270
sub_02015270: ; 0x02015270
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015270

	thumb_func_start sub_02015278
sub_02015278: ; 0x02015278
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015278

	thumb_func_start sub_02015280
sub_02015280: ; 0x02015280
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015280

	thumb_func_start sub_0201528C
sub_0201528C: ; 0x0201528C
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0201528C

	thumb_func_start sub_02015290
sub_02015290: ; 0x02015290
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02015290

	thumb_func_start sub_02015294
sub_02015294: ; 0x02015294
	add r0, #0x3e
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015294

	thumb_func_start sub_0201529C
sub_0201529C: ; 0x0201529C
	strh r1, [r0, #0x3c]
	bx lr
	thumb_func_end sub_0201529C

	thumb_func_start sub_020152A0
sub_020152A0: ; 0x020152A0
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_020152A0

	thumb_func_start sub_020152A4
sub_020152A4: ; 0x020152A4
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_020152A4

	thumb_func_start sub_020152A8
sub_020152A8: ; 0x020152A8
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_020152A8

	thumb_func_start sub_020152AC
sub_020152AC: ; 0x020152AC
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_020152AC

	thumb_func_start sub_020152B0
sub_020152B0: ; 0x020152B0
	cmp r1, #0
	bne _020152B8
	str r2, [r0, #0x34]
	bx lr
_020152B8:
	str r2, [r0, #0x38]
	bx lr
	thumb_func_end sub_020152B0

	thumb_func_start sub_020152BC
sub_020152BC: ; 0x020152BC
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_020152BC

	thumb_func_start sub_020152C0
sub_020152C0: ; 0x020152C0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl memset
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x3e
	strb r1, [r0]
	ldr r0, _020152DC ; =0x00007FFF
	strh r0, [r4, #0x3c]
	pop {r4, pc}
	nop
_020152DC: .word 0x00007FFF
	thumb_func_end sub_020152C0

	thumb_func_start sub_020152E0
sub_020152E0: ; 0x020152E0
	ldr r3, _020152E8 ; =NNS_G2dInitImageProxy
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	; .align 2, 0
_020152E8: .word NNS_G2dInitImageProxy
	thumb_func_end sub_020152E0

	thumb_func_start sub_020152EC
sub_020152EC: ; 0x020152EC
	ldr r3, _020152F4 ; =NNS_G2dInitImagePaletteProxy
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	; .align 2, 0
_020152F4: .word NNS_G2dInitImagePaletteProxy
	thumb_func_end sub_020152EC

	thumb_func_start sub_020152F8
sub_020152F8: ; 0x020152F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	lsl r1, r6, #6
	bl sub_02018144
	add r7, r0, #0
	bne _0201530C
	bl GF_AssertFail
_0201530C:
	mov r4, #0
	cmp r6, #0
	ble _02015322
	add r5, r7, #0
_02015314:
	add r0, r5, #0
	bl sub_020152C0
	add r4, r4, #1
	add r5, #0x40
	cmp r4, r6
	blt _02015314
_02015322:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020152F8

	thumb_func_start sub_02015328
sub_02015328: ; 0x02015328
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x28
	mul r1, r6
	bl sub_02018144
	add r7, r0, #0
	bne _0201533E
	bl GF_AssertFail
_0201533E:
	mov r4, #0
	cmp r6, #0
	ble _02015354
	add r5, r7, #0
_02015346:
	add r0, r5, #0
	bl sub_020152E0
	add r4, r4, #1
	add r5, #0x28
	cmp r4, r6
	blt _02015346
_02015354:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015328

	thumb_func_start sub_02015358
sub_02015358: ; 0x02015358
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	mul r1, r6
	bl sub_02018144
	add r7, r0, #0
	bne _0201536E
	bl GF_AssertFail
_0201536E:
	mov r4, #0
	cmp r6, #0
	ble _02015384
	add r5, r7, #0
_02015376:
	add r0, r5, #0
	bl sub_020152EC
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r6
	blt _02015376
_02015384:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015358

	thumb_func_start sub_02015388
sub_02015388: ; 0x02015388
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _020153AC
	ldr r3, [r0, #0]
	add r2, r3, #0
_02015396:
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _020153A4
	lsl r0, r1, #6
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_020153A4:
	add r1, r1, #1
	add r2, #0x40
	cmp r1, r4
	blt _02015396
_020153AC:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015388

	thumb_func_start sub_020153B4
sub_020153B4: ; 0x020153B4
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _020153DA
	ldr r3, [r0, #8]
	add r2, r3, #0
_020153C2:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020153D2
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_020153D2:
	add r1, r1, #1
	add r2, #0x28
	cmp r1, r4
	blt _020153C2
_020153DA:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020153B4

	thumb_func_start sub_020153E0
sub_020153E0: ; 0x020153E0
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _02015406
	ldr r3, [r0, #0x10]
	add r2, r3, #0
_020153EE:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020153FE
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_020153FE:
	add r1, r1, #1
	add r2, #0x18
	cmp r1, r4
	blt _020153EE
_02015406:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020153E0

	thumb_func_start sub_0201540C
sub_0201540C: ; 0x0201540C
	push {r3, lr}
	ldr r3, _0201541C ; =0x02100DEC
	mov r1, #0
	ldr r0, [r0, #0x10]
	ldr r3, [r3, #0]
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	; .align 2, 0
_0201541C: .word 0x02100DEC
	thumb_func_end sub_0201540C

	thumb_func_start sub_02015420
sub_02015420: ; 0x02015420
	push {r3, lr}
	ldr r3, _02015430 ; =0x02100DF4
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #5
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	; .align 2, 0
_02015430: .word 0x02100DF4
	thumb_func_end sub_02015420

	thumb_func_start sub_02015434
sub_02015434: ; 0x02015434
	push {r3, lr}
	lsl r1, r1, #0x10
	add r3, r2, #0
	lsr r1, r1, #0xd
	mov r2, #0
	bl NNS_G2dLoadImage2DMapping
	pop {r3, pc}
	thumb_func_end sub_02015434

	thumb_func_start sub_02015444
sub_02015444: ; 0x02015444
	push {r3, r4, r5, lr}
	add r3, r2, #0
	ldr r2, _02015464 ; =0xFFFF0000
	add r5, r0, #0
	and r2, r1
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r4, [r5, #8]
	lsl r2, r2, #3
	str r2, [r5, #8]
	lsr r1, r1, #0xd
	mov r2, #0
	bl NNS_G2dLoadPalette
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02015464: .word 0xFFFF0000
	thumb_func_end sub_02015444

	thumb_func_start sub_02015468
sub_02015468: ; 0x02015468
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r7, _02015588 ; =0x04000444
	mov r6, #0
	add r5, r0, #0
	str r6, [r7, #0]
	ldrh r1, [r5, #0x3c]
	ldr r0, _0201558C ; =0x7FFF8000
	orr r0, r1
	str r0, [r7, #0x7c]
	add r0, r7, #0
	ldr r1, _02015590 ; =0x00004210
	add r0, #0x80
	str r1, [r0, #0]
	ldr r3, [r5, #0x24]
	ldr r4, [r3, #8]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #4]
	ldr r0, [r3, #0]
	lsl r3, r2, #0x1d
	lsl r2, r1, #0x17
	lsl r1, r0, #0x14
	ldr r0, [r5, #0x28]
	lsl r4, r4, #0x1a
	lsr r0, r0, #3
	orr r4, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r7, #0x64]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _020154B4
	mov r6, #1
_020154B4:
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #4
	sub r0, r0, r6
	lsr r1, r0
	ldr r2, _02015594 ; =0x040004AC
	add r0, r5, #0
	str r1, [r2, #0]
	add r0, #0x3e
	ldrb r0, [r0]
	sub r2, #8
	lsl r1, r0, #0x10
	mov r0, #0xc0
	orr r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020154E6
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r7, #0
	str r0, [sp, #0x14]
	b _020154EE
_020154E6:
	mov r0, #8
	ldrsh r7, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
_020154EE:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _020154FC
	mov r0, #0xa
	ldrsh r6, [r5, r0]
	mov r4, #0
	b _02015502
_020154FC:
	mov r0, #0xa
	ldrsh r4, [r5, r0]
	mov r6, #0
_02015502:
	ldr r0, [r5, #0x14]
	mov r1, #6
	lsl r2, r0, #0xc
	mov r0, #2
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	mov r3, #4
	ldrsh r3, [r5, r3]
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r0, r0, r3
	ldr r3, _02015598 ; =0x04000470
	lsl r0, r0, #0xc
	str r0, [r3, #0]
	str r1, [r3, #0]
	str r2, [r3, #0]
	ldr r0, [r5, #0x18]
	ldr r1, _0201559C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, _020155A0 ; =0x0400046C
	mov r3, #8
	str r0, [r1, #0]
	str r2, [r1, #0]
	lsr r0, r1, #0xe
	str r0, [r1, #0]
	mov r2, #4
	mov r0, #6
	ldrsh r2, [r5, r2]
	ldrsh r0, [r5, r0]
	neg r2, r2
	neg r0, r0
	lsl r2, r2, #0xc
	lsl r0, r0, #0xc
	str r2, [r1, #4]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #4]
	mov r1, #0xa
	ldrsh r1, [r5, r1]
	add r2, r0, #0
	str r1, [sp]
	ldr r1, [sp, #0x14]
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrsh r3, [r5, r3]
	add r1, r0, #0
	bl NNS_G2dDrawSpriteFast
	ldr r0, _020155A4 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02015588: .word 0x04000444
_0201558C: .word 0x7FFF8000
_02015590: .word 0x00004210
_02015594: .word 0x040004AC
_02015598: .word 0x04000470
_0201559C: .word 0x020F983C
_020155A0: .word 0x0400046C
_020155A4: .word 0x04000448
	thumb_func_end sub_02015468

	thumb_func_start sub_020155A8
sub_020155A8: ; 0x020155A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r7, r0, #0
	ldr r2, [r1, #0x10]
	mov r6, #8
	mov r0, #0
	cmp r2, #0
	ble _020155C6
_020155BA:
	ldr r2, [r5, #4]
	add r0, r0, #1
	ldr r2, [r2, #0x10]
	lsl r6, r6, #1
	cmp r0, r2
	blt _020155BA
_020155C6:
	ldr r1, [r1, #0x14]
	mov r4, #8
	mov r0, #0
	cmp r1, #0
	ble _020155DC
_020155D0:
	ldr r1, [r5, #4]
	add r0, r0, #1
	ldr r1, [r1, #0x14]
	lsl r4, r4, #1
	cmp r0, r1
	blt _020155D0
_020155DC:
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, r7, #0
	bl sub_02015254
	lsr r1, r6, #0x1f
	lsr r2, r4, #0x1f
	add r1, r6, r1
	add r2, r4, r2
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015268
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02015278
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl sub_0201528C
	ldr r1, [r5, #0x14]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02015294
	ldr r1, [r5, #4]
	add r0, r7, #0
	add r1, #0x10
	bl sub_020152A0
	ldr r0, [r5, #4]
	mov r1, #0
	add r0, r0, #4
	bl NNS_G2dGetImageLocation
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020152A4
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #4
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020152A8
	ldrh r1, [r5, #0x1c]
	add r0, r7, #0
	bl sub_020152AC
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_020152B0
	add r0, r7, #0
	mov r1, #1
	mov r2, #0
	bl sub_020152B0
	ldrh r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_020152BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020155A8