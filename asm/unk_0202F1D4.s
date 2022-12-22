	.include "macros/function.inc"
	.include "include/unk_0202F1D4.inc"

	

	.text


	thumb_func_start sub_0202F1D4
sub_0202F1D4: ; 0x0202F1D4
	ldr r0, _0202F1D8 ; =0x00001D50
	bx lr
	; .align 2, 0
_0202F1D8: .word 0x00001D50
	thumb_func_end sub_0202F1D4

	thumb_func_start sub_0202F1DC
sub_0202F1DC: ; 0x0202F1DC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _0202F1F4 ; =0x00001D50
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClear32
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_0202F1F4: .word 0x00001D50
	thumb_func_end sub_0202F1DC

	thumb_func_start sub_0202F1F8
sub_0202F1F8: ; 0x0202F1F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0202F228 ; =0x021C07A4
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	beq _0202F212
	bl sub_020181C4
	ldr r0, _0202F228 ; =0x021C07A4
	mov r1, #0
	str r1, [r0, #0]
_0202F212:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_02024464
	ldr r1, _0202F228 ; =0x021C07A4
	str r0, [r1, #0]
	bl sub_0202F1DC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202F228: .word 0x021C07A4
	thumb_func_end sub_0202F1F8

	thumb_func_start sub_0202F22C
sub_0202F22C: ; 0x0202F22C
	push {r3, lr}
	ldr r0, _0202F24C ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F23A
	bl GF_AssertFail
_0202F23A:
	ldr r0, _0202F24C ; =0x021C07A4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0202F24C ; =0x021C07A4
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0202F24C: .word 0x021C07A4
	thumb_func_end sub_0202F22C

	thumb_func_start sub_0202F250
sub_0202F250: ; 0x0202F250
	ldr r0, _0202F260 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0202F25C
	mov r0, #1
	bx lr
_0202F25C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0202F260: .word 0x021C07A4
	thumb_func_end sub_0202F250

	thumb_func_start sub_0202F264
sub_0202F264: ; 0x0202F264
	push {r3, lr}
	ldr r0, _0202F278 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F272
	bl GF_AssertFail
_0202F272:
	ldr r0, _0202F278 ; =0x021C07A4
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0202F278: .word 0x021C07A4
	thumb_func_end sub_0202F264

	thumb_func_start sub_0202F27C
sub_0202F27C: ; 0x0202F27C
	push {r3, lr}
	ldr r0, _0202F294 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F28A
	bl GF_AssertFail
_0202F28A:
	ldr r0, _0202F294 ; =0x021C07A4
	ldr r0, [r0, #0]
	add r0, r0, #4
	pop {r3, pc}
	nop
_0202F294: .word 0x021C07A4
	thumb_func_end sub_0202F27C

	thumb_func_start sub_0202F298
sub_0202F298: ; 0x0202F298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0202F324 ; =0x021C07A4
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0202F2B4
	bl sub_020181C4
	ldr r0, _0202F324 ; =0x021C07A4
	mov r1, #0
	str r1, [r0, #0]
_0202F2B4:
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02024464
	ldr r1, _0202F324 ; =0x021C07A4
	str r0, [r1, #0]
	ldr r1, [r4, #0]
	cmp r1, #1
	beq _0202F2D2
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202F2D2:
	ldr r1, _0202F328 ; =0x00001C64
	add r0, #0xe8
	ldrh r2, [r0, r1]
	ldr r3, _0202F32C ; =0x0000FFFF
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F860
	ldr r1, _0202F324 ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0202F75C
	cmp r0, #1
	bne _0202F2FA
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202F2FA:
	ldr r1, _0202F324 ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0202F794
	cmp r0, #0
	bne _0202F310
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202F310:
	cmp r6, #0
	beq _0202F31C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202FAFC
_0202F31C:
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202F324: .word 0x021C07A4
_0202F328: .word 0x00001C64
_0202F32C: .word 0x0000FFFF
	thumb_func_end sub_0202F298

	thumb_func_start sub_0202F330
sub_0202F330: ; 0x0202F330
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	bl sub_02024464
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #1
	beq _0202F34E
	mov r1, #3
	str r1, [r5, #0]
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202F34E:
	ldr r1, _0202F3A4 ; =0x00001C64
	add r0, #0xe8
	ldrh r2, [r0, r1]
	ldr r3, _0202F3A8 ; =0x0000FFFF
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F860
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202F75C
	cmp r0, #1
	bne _0202F37A
	mov r0, #0
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202F37A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202F794
	cmp r0, #0
	bne _0202F394
	mov r0, #2
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202F394:
	mov r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0202F3A4: .word 0x00001C64
_0202F3A8: .word 0x0000FFFF
	thumb_func_end sub_0202F330

	thumb_func_start sub_0202F3AC
sub_0202F3AC: ; 0x0202F3AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	add r7, r2, #0
	cmp r1, #0
	beq _0202F3C2
	cmp r1, #1
	beq _0202F3FA
	b _0202F418
_0202F3C2:
	mov r0, #8
	bl sub_02017DE0
	mov r0, #0xb
	bl sub_02017E00
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0202447C
	add r6, r0, #0
	cmp r6, #2
	bne _0202F3F0
	add r0, r5, #0
	mov r1, #2
	bl sub_02024814
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F3F0:
	mov r0, #8
	bl sub_02017DF0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F3FA:
	bl sub_02024828
	add r5, r0, #0
	sub r0, r5, #2
	cmp r0, #1
	bhi _0202F414
	mov r0, #0
	strh r0, [r4]
	bl sub_02017E2C
	mov r0, #8
	bl sub_02017DF0
_0202F414:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F418:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202F3AC

	thumb_func_start sub_0202F41C
sub_0202F41C: ; 0x0202F41C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	mov ip, r1
	add r1, r2, #0
	ldrh r2, [r6]
	add r7, r0, #0
	cmp r2, #0
	beq _0202F432
	cmp r2, #1
	beq _0202F498
	b _0202F4A6
_0202F432:
	ldr r2, _0202F4AC ; =0x021C07A4
	ldr r4, [r2, #0]
	cmp r4, #0
	bne _0202F43E
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0202F43E:
	add r5, r4, #0
	add r4, #0xe8
	add r5, #0x84
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, ip
	bl sub_0202F510
	add r0, r5, #0
	ldr r1, _0202F4B0 ; =0x0000E281
	add r0, #0x48
	strh r1, [r0]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x58
	bl sub_0202486C
	add r5, #0x60
	strh r0, [r5]
	ldr r0, _0202F4B0 ; =0x0000E281
	ldr r2, _0202F4B4 ; =0x00001C62
	add r1, r4, #0
	strh r0, [r4, r2]
	add r0, r7, #0
	add r2, r2, #2
	bl sub_0202486C
	ldr r1, _0202F4B8 ; =0x00001C64
	ldr r3, _0202F4BC ; =0x0000FFFF
	strh r0, [r4, r1]
	ldrh r2, [r4, r1]
	add r0, r4, #0
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F858
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strh r1, [r0]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	b _0202F4A6
_0202F498:
	ldr r1, _0202F4AC ; =0x021C07A4
	add r2, r3, #0
	ldr r1, [r1, #0]
	ldr r3, [sp, #0x1c]
	bl sub_0202F3AC
	pop {r3, r4, r5, r6, r7, pc}
_0202F4A6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202F4AC: .word 0x021C07A4
_0202F4B0: .word 0x0000E281
_0202F4B4: .word 0x00001C62
_0202F4B8: .word 0x00001C64
_0202F4BC: .word 0x0000FFFF
	thumb_func_end sub_0202F41C

	thumb_func_start sub_0202F4C0
sub_0202F4C0: ; 0x0202F4C0
	cmp r0, #0x1a
	bgt _0202F4EE
	bge _0202F4FA
	add r3, r0, #0
	sub r3, #0xe
	cmp r3, #9
	bhi _0202F504
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0202F4DA: ; jump table
	.short _0202F4FA - _0202F4DA - 2 ; case 0
	.short _0202F504 - _0202F4DA - 2 ; case 1
	.short _0202F504 - _0202F4DA - 2 ; case 2
	.short _0202F4FA - _0202F4DA - 2 ; case 3
	.short _0202F504 - _0202F4DA - 2 ; case 4
	.short _0202F504 - _0202F4DA - 2 ; case 5
	.short _0202F4FA - _0202F4DA - 2 ; case 6
	.short _0202F504 - _0202F4DA - 2 ; case 7
	.short _0202F504 - _0202F4DA - 2 ; case 8
	.short _0202F4FA - _0202F4DA - 2 ; case 9
_0202F4EE:
	cmp r0, #0x1d
	bgt _0202F4F6
	beq _0202F4FA
	b _0202F504
_0202F4F6:
	cmp r0, #0x20
	bne _0202F504
_0202F4FA:
	mov r0, #4
	str r0, [r1, #0]
	mov r0, #3
	str r0, [r2, #0]
	bx lr
_0202F504:
	mov r0, #2
	str r0, [r1, #0]
	mov r0, #6
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202F4C0

	thumb_func_start sub_0202F510
sub_0202F510: ; 0x0202F510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r3, [sp, #8]
	add r7, r1, #0
	str r2, [sp, #4]
	ldr r3, _0202F750 ; =0x020E5D10
	str r0, [sp]
	add r2, sp, #0x1c
	mov r1, #8
_0202F522:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0202F522
	ldr r1, _0202F754 ; =0x020E5D0C
	add r0, sp, #0x18
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x64
	bl MI_CpuFill8
	ldr r0, [sp, #8]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl sub_0202F4C0
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r3, [r0, #0]
	mov r0, #4
	tst r0, r3
	beq _0202F57C
	mov r1, #0x80
	add r0, r3, #0
	tst r0, r1
	beq _0202F574
	ldr r0, [sp, #4]
	add r1, #0xc4
	ldrh r0, [r0, r1]
	lsl r4, r0, #1
	b _0202F57E
_0202F574:
	ldr r0, [sp, #4]
	add r1, #0xc4
	ldrh r4, [r0, r1]
	b _0202F57E
_0202F57C:
	add r4, r2, #0
_0202F57E:
	ldr r5, [sp, #0x28]
	mov r0, #0
	mov ip, r0
	cmp r5, #0
	ble _0202F656
	add r0, sp, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #1
	and r0, r4
	add r3, r7, #0
	str r0, [sp, #0xc]
_0202F59C:
	ldr r0, [sp, #4]
	mov r1, #8
	ldr r0, [r0, #0]
	add r6, r0, #0
	and r6, r1
	beq _0202F5DE
	mov r4, #0x80
	add r1, r0, #0
	tst r1, r4
	bne _0202F5DE
	mov r6, #0
	cmp r5, #0
	ble _0202F5FE
	ldr r1, [sp, #0x10]
	add r4, #0xb4
	ldr r1, [r1, r4]
	ldr r0, [sp, #4]
	lsl r1, r1, #0x1f
	lsr r4, r1, #0x1d
	add r1, sp, #0x1c
	add r4, r1, r4
	mov r1, ip
	ldrb r1, [r1, r4]
_0202F5CA:
	mov r4, #0x4d
	lsl r4, r4, #2
	ldr r4, [r0, r4]
	cmp r4, r1
	beq _0202F5FE
	add r6, r6, #1
	add r0, r0, #4
	cmp r6, r5
	blt _0202F5CA
	b _0202F5FE
_0202F5DE:
	cmp r6, #0
	beq _0202F5EE
	mov r1, #0x80
	tst r0, r1
	beq _0202F5EE
	ldr r0, [sp, #0x14]
	ldrb r6, [r0]
	b _0202F5FE
_0202F5EE:
	ldr r0, [sp, #0xc]
	mov r6, ip
	cmp r0, #0
	beq _0202F5FE
	mov r0, ip
	mov r1, #1
	add r6, r0, #0
	eor r6, r1
_0202F5FE:
	ldr r0, [sp, #0x24]
	mov r5, #0
	cmp r0, #0
	ble _0202F644
	ldr r1, _0202F758 ; =0x00001154
	ldr r0, [sp, #4]
	add r1, r0, r1
	mov r0, #0xa9
	lsl r0, r0, #2
	mul r0, r6
	add r4, r1, r0
_0202F614:
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	bne _0202F636
	ldrh r0, [r4, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0202F636
	ldrh r0, [r4, #6]
	strh r0, [r3]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1b
	add r0, r7, r2
	strb r1, [r0, #0x18]
_0202F636:
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	add r3, r3, #2
	add r2, r2, #1
	add r4, #0x70
	cmp r5, r0
	blt _0202F614
_0202F644:
	ldr r0, [sp, #0x14]
	ldr r5, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, r5
	blt _0202F59C
_0202F656:
	ldr r0, [sp, #8]
	cmp r0, #0xd
	bhi _0202F72C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202F668: ; jump table
	.short _0202F72C - _0202F668 - 2 ; case 0
	.short _0202F684 - _0202F668 - 2 ; case 1
	.short _0202F6A0 - _0202F668 - 2 ; case 2
	.short _0202F6BC - _0202F668 - 2 ; case 3
	.short _0202F6D8 - _0202F668 - 2 ; case 4
	.short _0202F6F4 - _0202F668 - 2 ; case 5
	.short _0202F710 - _0202F668 - 2 ; case 6
	.short _0202F72C - _0202F668 - 2 ; case 7
	.short _0202F684 - _0202F668 - 2 ; case 8
	.short _0202F6A0 - _0202F668 - 2 ; case 9
	.short _0202F6BC - _0202F668 - 2 ; case 10
	.short _0202F6D8 - _0202F668 - 2 ; case 11
	.short _0202F6F4 - _0202F668 - 2 ; case 12
	.short _0202F710 - _0202F668 - 2 ; case 13
_0202F684:
	ldr r0, [sp]
	mov r1, #0
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F692:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F692
	b _0202F742
_0202F6A0:
	ldr r0, [sp]
	mov r1, #1
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F6AE:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F6AE
	b _0202F742
_0202F6BC:
	ldr r0, [sp]
	mov r1, #2
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F6CA:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F6CA
	b _0202F742
_0202F6D8:
	ldr r0, [sp]
	mov r1, #3
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F6E6:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F6E6
	b _0202F742
_0202F6F4:
	ldr r0, [sp]
	mov r1, #4
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F702:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F702
	b _0202F742
_0202F710:
	ldr r0, [sp]
	mov r1, #5
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F71E:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F71E
	b _0202F742
_0202F72C:
	bl sub_020261A8
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F736:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F736
_0202F742:
	ldr r0, [sp, #0x40]
	strh r0, [r7, #0x24]
	ldr r0, [sp, #8]
	add r7, #0x26
	strb r0, [r7]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202F750: .word 0x020E5D10
_0202F754: .word 0x020E5D0C
_0202F758: .word 0x00001154
	thumb_func_end sub_0202F510

	thumb_func_start sub_0202F75C
sub_0202F75C: ; 0x0202F75C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r1, #0
	add r4, #0xe8
	add r5, #0x84
	bl sub_020247C8
	cmp r0, #0
	bne _0202F772
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202F772:
	ldr r0, _0202F78C ; =0x00001C62
	ldrh r1, [r4, r0]
	ldr r0, _0202F790 ; =0x0000E281
	cmp r1, r0
	bne _0202F784
	add r5, #0x48
	ldrh r1, [r5]
	cmp r1, r0
	beq _0202F788
_0202F784:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202F788:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202F78C: .word 0x00001C62
_0202F790: .word 0x0000E281
	thumb_func_end sub_0202F75C

	thumb_func_start sub_0202F794
sub_0202F794: ; 0x0202F794
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r1, #0
	ldr r1, _0202F844 ; =0x00001C62
	add r4, #0xe8
	ldrh r1, [r4, r1]
	ldr r2, _0202F848 ; =0x0000E281
	add r6, r0, #0
	add r5, #0x84
	cmp r1, r2
	bne _0202F7B4
	add r1, r5, #0
	add r1, #0x48
	ldrh r1, [r1]
	cmp r1, r2
	beq _0202F7B8
_0202F7B4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F7B8:
	add r1, r5, #0
	mov r2, #0x58
	bl sub_0202486C
	add r5, #0x60
	ldrh r1, [r5]
	cmp r0, r1
	beq _0202F7CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F7CC:
	ldr r2, _0202F84C ; =0x00001C64
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202486C
	ldr r1, _0202F84C ; =0x00001C64
	ldrh r1, [r4, r1]
	cmp r0, r1
	beq _0202F7E2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F7E2:
	mov r0, #0
	mov ip, r0
	ldr r0, _0202F850 ; =0x00001154
	add r0, r4, r0
	str r0, [sp]
	ldr r0, _0202F854 ; =0x000001D3
	add r6, r0, #0
	add r7, r0, #0
	add r6, #0x1c
_0202F7F4:
	ldr r4, [sp]
	mov r2, #0
_0202F7F8:
	ldrh r1, [r4, #6]
	cmp r1, r6
	bls _0202F802
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F802:
	ldrh r1, [r4, #8]
	cmp r1, r7
	bls _0202F80C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F80C:
	mov r3, #0
	add r5, r4, #0
_0202F810:
	ldrh r1, [r5, #0x1c]
	cmp r1, r0
	bls _0202F81A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F81A:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #4
	blt _0202F810
	add r2, r2, #1
	add r4, #0x70
	cmp r2, #6
	blt _0202F7F8
	mov r1, #0xa9
	ldr r2, [sp]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [sp]
	mov r1, ip
	add r1, r1, #1
	mov ip, r1
	cmp r1, #4
	blt _0202F7F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202F844: .word 0x00001C62
_0202F848: .word 0x0000E281
_0202F84C: .word 0x00001C64
_0202F850: .word 0x00001154
_0202F854: .word 0x000001D3
	thumb_func_end sub_0202F794

	thumb_func_start sub_0202F858
sub_0202F858: ; 0x0202F858
	ldr r3, _0202F85C ; =sub_0201D5D4
	bx r3
	; .align 2, 0
_0202F85C: .word sub_0201D5D4
	thumb_func_end sub_0202F858

	thumb_func_start sub_0202F860
sub_0202F860: ; 0x0202F860
	ldr r3, _0202F864 ; =sub_0201D600
	bx r3
	; .align 2, 0
_0202F864: .word sub_0201D600
	thumb_func_end sub_0202F860

	thumb_func_start sub_0202F868
sub_0202F868: ; 0x0202F868
	ldr r3, _0202F880 ; =0x021C07A4
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0202F87C
	lsl r0, r0, #0xa
	add r0, r3, r0
	add r1, r0, r1
	mov r0, #0x8e
	lsl r0, r0, #2
	strb r2, [r1, r0]
_0202F87C:
	bx lr
	nop
_0202F880: .word 0x021C07A4
	thumb_func_end sub_0202F868

	thumb_func_start sub_0202F884
sub_0202F884: ; 0x0202F884
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0202F8A8 ; =0x021C07A4
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F896
	bl GF_AssertFail
_0202F896:
	ldr r0, _0202F8A8 ; =0x021C07A4
	ldr r1, [r0, #0]
	lsl r0, r5, #0xa
	add r0, r1, r0
	add r1, r0, r4
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202F8A8: .word 0x021C07A4
	thumb_func_end sub_0202F884

	thumb_func_start sub_0202F8AC
sub_0202F8AC: ; 0x0202F8AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, _0202FA98 ; =0x021C07A4
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0202F8BC
	b _0202FA92
_0202F8BC:
	ldr r0, [sp]
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r1, #0xe8
	str r0, [r1, #0]
	ldr r0, [sp]
	add r7, #0xe8
	ldr r0, [r0, #0x14]
	ldr r1, [sp]
	str r0, [r7, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	add r1, r7, #0
	add r1, #0xe8
	str r2, [r1, #0]
	ldr r1, [sp]
	add r2, r0, #4
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xec
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #8
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xf0
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0xc
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xf4
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x10
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xf8
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x14
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xfc
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x18
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x50
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x1c
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x4c
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x20
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x48
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x24
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x44
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x28
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x40
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x3c
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x2c
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x40
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x28
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x44
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x24
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x4c
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x20
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x60
	ldrh r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0xc
	strh r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x63
	ldrb r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0xa
	strh r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x64
	ldr r1, [r1, r2]
	sub r0, #8
	ldr r4, [sp]
	str r1, [r7, r0]
	add r0, r4, #0
	mov r3, #0
	add r5, r7, #0
	str r0, [sp, #8]
	str r7, [sp, #4]
_0202F9D2:
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #8]
	ldr r6, [sp, #4]
	str r0, [r5, #8]
	mov r0, #6
	add r2, #0x28
	add r6, #0x18
	mov ip, r0
_0202F9E2:
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _0202F9E2
	ldr r0, [r2, #0]
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r6, #0]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0202FA04
	mov r0, #5
	sub r1, #0x68
	lsl r0, r0, #6
	b _0202FA06
_0202FA04:
	sub r1, #0x68
_0202FA06:
	str r0, [r5, r1]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	add r1, r0, #0
	sub r1, #0x6c
	str r2, [r5, r1]
	ldr r1, [sp]
	add r4, r4, #4
	add r2, r1, r3
	add r1, r0, #0
	add r1, #0x1c
	ldrb r2, [r2, r1]
	add r1, r7, r3
	sub r0, #0x54
	strb r2, [r1, r0]
	ldr r0, [sp, #8]
	add r3, r3, #1
	add r0, #0x34
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, #0x34
	str r0, [sp, #4]
	cmp r3, #4
	blt _0202F9D2
	ldr r0, _0202FA9C ; =0x00001150
	ldr r4, [sp]
	add r0, r7, r0
	str r0, [sp, #0xc]
	ldr r0, _0202FAA0 ; =0x00001BE0
	mov r5, #0
	add r6, r7, r0
_0202FA48:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	bl sub_0202FCE8
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02025E80
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006494
	mov r1, #0x53
	add r2, r7, r5
	lsl r1, r1, #2
	strb r0, [r2, r1]
	mov r0, #0xa9
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	add r5, r5, #1
	str r0, [sp, #0xc]
	add r4, r4, #4
	add r6, #0x20
	cmp r5, #4
	blt _0202FA48
	mov r1, #0x13
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, _0202FAA4 ; =0x00001C60
	add r1, r7, r1
	bl sub_02027A10
_0202FA92:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202FA98: .word 0x021C07A4
_0202FA9C: .word 0x00001150
_0202FAA0: .word 0x00001BE0
_0202FAA4: .word 0x00001C60
	thumb_func_end sub_0202F8AC

	thumb_func_start sub_0202FAA8
sub_0202FAA8: ; 0x0202FAA8
	ldr r2, _0202FABC ; =0x021C07A4
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0202FABA
	lsl r0, r0, #2
	add r2, r2, r0
	mov r0, #0x7f
	lsl r0, r0, #2
	str r1, [r2, r0]
_0202FABA:
	bx lr
	; .align 2, 0
_0202FABC: .word 0x021C07A4
	thumb_func_end sub_0202FAA8

	thumb_func_start sub_0202FAC0
sub_0202FAC0: ; 0x0202FAC0
	push {r3, r4}
	ldr r0, _0202FAF8 ; =0x021C07A4
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0202FAD0
	mov r0, #1
	pop {r3, r4}
	bx lr
_0202FAD0:
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r0, #0
	mov r3, #0
	add r4, #0xe8
	add r1, #0x2c
_0202FADC:
	ldr r2, [r4, r0]
	cmp r2, r1
	bls _0202FAE8
	mov r0, #0
	pop {r3, r4}
	bx lr
_0202FAE8:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #4
	blt _0202FADC
	mov r0, #1
	pop {r3, r4}
	bx lr
	nop
_0202FAF8: .word 0x021C07A4
	thumb_func_end sub_0202FAC0

	thumb_func_start sub_0202FAFC
sub_0202FAFC: ; 0x0202FAFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, _0202FCD4 ; =0x021C07A4
	str r1, [sp]
	ldr r1, [r0, #0]
	add r0, r1, #0
	str r0, [sp, #0x14]
	add r0, #0xe8
	add r1, #0xe8
	str r0, [sp, #0x14]
	ldr r0, [r1, #0]
	str r0, [r6, #0]
	ldr r0, [sp, #0x14]
	add r0, #0xe8
	ldr r1, [r0, #0]
	mov r0, #0x15
	lsl r0, r0, #4
	str r1, [r6, r0]
	ldr r1, [sp, #0x14]
	add r1, #0xec
	ldr r2, [r1, #0]
	add r1, r0, #4
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xf0
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #8
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xf4
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xf8
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x10
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xfc
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x14
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x50
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x18
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x4c
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x1c
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x48
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x20
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x44
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x24
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x2c
	ldr r2, [r1, r2]
	mov r1, #0x10
	orr r2, r1
	add r1, r0, #0
	add r1, #0x3c
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x28
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x40
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x24
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x44
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x20
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x4c
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0xc
	ldrh r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x60
	strh r2, [r6, r1]
	mov r1, #0
	str r1, [r6, #0x14]
	add r0, #0x28
	str r1, [r6, r0]
	ldr r0, [sp]
	bl sub_02027560
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	bl sub_02026338
	ldr r5, [sp, #0x14]
	ldr r1, _0202FCD8 ; =0x00001150
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r1, _0202FCDC ; =0x00001BE0
	add r0, r5, #0
	add r0, r0, r1
	mov r7, #0
	add r4, r6, #0
	str r6, [sp, #0xc]
	str r0, [sp, #4]
_0202FC10:
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [r4, #0x18]
	mov r0, #6
	add r3, #0x18
	add r2, #0x28
	mov ip, r0
_0202FC20:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _0202FC20
	ldr r0, [r3, #0]
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r2, #0]
	add r0, r1, #0
	ldr r2, [r5, r1]
	add r0, #0x68
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	add r1, #0x8c
	str r0, [r4, r1]
	ldr r0, [sp, #8]
	ldr r1, [r4, #4]
	bl sub_0202FD30
	add r1, r4, #0
	add r1, #0xf8
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl sub_02025E80
	ldr r0, [sp, #0x14]
	add r5, r5, #4
	add r1, r0, r7
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	add r1, r6, r7
	add r0, #0x70
	strb r2, [r1, r0]
	ldr r0, [sp, #0x10]
	mov r1, #0xa9
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, #0x20
	str r0, [sp, #4]
	cmp r7, #4
	blt _0202FC10
	ldr r0, [sp]
	bl sub_02025E44
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	bl sub_02027A10
	mov r5, #0x13
	lsl r5, r5, #4
	ldr r1, [r6, r5]
	ldr r4, _0202FCE0 ; =0x00001C60
	ldr r2, [sp, #0x14]
	ldrh r0, [r1]
	ldrh r2, [r2, r4]
	ldr r3, _0202FCE4 ; =0xFFFF83FF
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1b
	lsl r2, r2, #0x1b
	and r0, r3
	lsr r2, r2, #0x11
	orr r0, r2
	strh r0, [r1]
	ldr r2, [r6, r5]
	ldrh r0, [r2]
	lsl r1, r0, #0x11
	lsr r1, r1, #0x1b
	cmp r1, #0x14
	blo _0202FCCE
	and r0, r3
	strh r0, [r2]
_0202FCCE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202FCD4: .word 0x021C07A4
_0202FCD8: .word 0x00001150
_0202FCDC: .word 0x00001BE0
_0202FCE0: .word 0x00001C60
_0202FCE4: .word 0xFFFF83FF
	thumb_func_end sub_0202FAFC

	thumb_func_start sub_0202FCE8
sub_0202FCE8: ; 0x0202FCE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r2, #0xa9
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	add r0, r7, #0
	bl sub_0207A0F4
	strh r0, [r6]
	add r0, r7, #0
	bl sub_0207A0F8
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	mov r4, #0
	cmp r0, #0
	ble _0202FD2C
	add r5, r6, #4
_0202FD14:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r5, #0
	bl sub_02078B40
	ldrh r0, [r6, #2]
	add r4, r4, #1
	add r5, #0x70
	cmp r4, r0
	blt _0202FD14
_0202FD2C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202FCE8

	thumb_func_start sub_0202FD30
sub_0202FD30: ; 0x0202FD30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0xb
	bl sub_02073C74
	add r4, r0, #0
	ldrh r1, [r7]
	ldr r0, [sp]
	bl sub_0207A014
	ldrh r0, [r7, #2]
	mov r6, #0
	cmp r0, #0
	ble _0202FD7C
	add r5, r7, #4
_0202FD58:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02078E0C
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #4
	bl sub_02074B30
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A048
	ldrh r0, [r7, #2]
	add r6, r6, #1
	add r5, #0x70
	cmp r6, r0
	blt _0202FD58
_0202FD7C:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202FD30

	thumb_func_start sub_0202FD88
sub_0202FD88: ; 0x0202FD88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0202FDB4 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FD98
	bl GF_AssertFail
_0202FD98:
	add r0, r4, #0
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _0202FDB4 ; =0x021C07A4
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0x64
	add r0, #0x84
	bl MIi_CpuCopy32
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0202FDB4: .word 0x021C07A4
	thumb_func_end sub_0202FD88

	thumb_func_start sub_0202FDB8
sub_0202FDB8: ; 0x0202FDB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0202FDE4 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FDC8
	bl GF_AssertFail
_0202FDC8:
	add r0, r4, #0
	mov r1, #0x80
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _0202FDE4 ; =0x021C07A4
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0x80
	add r0, r0, #4
	bl MIi_CpuCopy32
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0202FDE4: .word 0x021C07A4
	thumb_func_end sub_0202FDB8

	thumb_func_start sub_0202FDE8
sub_0202FDE8: ; 0x0202FDE8
	push {r3, lr}
	ldr r0, _0202FE00 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FDF6
	bl GF_AssertFail
_0202FDF6:
	ldr r0, _0202FE00 ; =0x021C07A4
	ldr r0, [r0, #0]
	add r0, r0, #4
	pop {r3, pc}
	nop
_0202FE00: .word 0x021C07A4
	thumb_func_end sub_0202FDE8

	thumb_func_start sub_0202FE04
sub_0202FE04: ; 0x0202FE04
	push {r3, lr}
	ldr r0, _0202FE1C ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FE12
	bl GF_AssertFail
_0202FE12:
	ldr r0, _0202FE1C ; =0x021C07A4
	ldr r0, [r0, #0]
	add r0, #0x84
	pop {r3, pc}
	nop
_0202FE1C: .word 0x021C07A4
	thumb_func_end sub_0202FE04

	thumb_func_start sub_0202FE20
sub_0202FE20: ; 0x0202FE20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0202FE88 ; =0x021C07A4
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0202FE36
	bl GF_AssertFail
_0202FE36:
	ldr r1, _0202FE88 ; =0x021C07A4
	add r0, r6, #0
	ldr r1, [r1, #0]
	mov r2, #0x64
	add r1, #0x84
	bl MI_CpuCopy8
	ldr r1, _0202FE88 ; =0x021C07A4
	ldr r2, _0202FE8C ; =0x00001C68
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r1, #0xe8
	bl MI_CpuCopy8
	ldr r1, _0202FE88 ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	mov r2, #0x80
	add r1, r1, #4
	bl MI_CpuCopy8
	ldr r0, _0202FE88 ; =0x021C07A4
	ldr r1, _0202FE90 ; =0x00001D4C
	ldr r0, [r0, #0]
	ldr r2, _0202FE94 ; =0x0000FFFF
	ldrh r3, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r2, r3
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_0202F860
	cmp r4, #0
	beq _0202FE84
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl sub_0202FAFC
_0202FE84:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202FE88: .word 0x021C07A4
_0202FE8C: .word 0x00001C68
_0202FE90: .word 0x00001D4C
_0202FE94: .word 0x0000FFFF
	thumb_func_end sub_0202FE20

	thumb_func_start sub_0202FE98
sub_0202FE98: ; 0x0202FE98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #5
	bhi _0202FF18
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202FEAE: ; jump table
	.short _0202FEBA - _0202FEAE - 2 ; case 0
	.short _0202FED6 - _0202FEAE - 2 ; case 1
	.short _0202FEE6 - _0202FEAE - 2 ; case 2
	.short _0202FEF8 - _0202FEAE - 2 ; case 3
	.short _0202FF0A - _0202FEAE - 2 ; case 4
	.short _0202FF10 - _0202FEAE - 2 ; case 5
_0202FEBA:
	cmp r5, #0xc
	blt _0202FEC2
	bl GF_AssertFail
_0202FEC2:
	lsl r0, r5, #1
	ldrh r0, [r4, r0]
	ldr r1, _0202FF24 ; =0x000001ED
	cmp r0, r1
	bls _0202FED2
	mov r0, #0
	add r1, r0, #0
	pop {r3, r4, r5, pc}
_0202FED2:
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FED6:
	cmp r5, #0xc
	blt _0202FEDE
	bl GF_AssertFail
_0202FEDE:
	add r0, r4, r5
	ldrb r0, [r0, #0x18]
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FEE6:
	ldrh r1, [r4, #0x24]
	ldr r0, _0202FF28 ; =0x0000270F
	cmp r1, r0
	bls _0202FEF2
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FEF2:
	add r0, r1, #0
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FEF8:
	add r4, #0x26
	ldrb r0, [r4]
	cmp r0, #0x21
	blo _0202FF06
	mov r0, #0
	add r1, r0, #0
	pop {r3, r4, r5, pc}
_0202FF06:
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FF0A:
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_0202FF10:
	add r4, #0x27
	ldrb r0, [r4]
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FF18:
	bl GF_AssertFail
	mov r0, #0
	add r1, r0, #0
	pop {r3, r4, r5, pc}
	nop
_0202FF24: .word 0x000001ED
_0202FF28: .word 0x0000270F
	thumb_func_end sub_0202FE98

	thumb_func_start sub_0202FF2C
sub_0202FF2C: ; 0x0202FF2C
	push {r4, lr}
	mov r1, #0x64
	bl sub_02018144
	mov r1, #0
	mov r2, #0x64
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202FF2C

	thumb_func_start sub_0202FF44
sub_0202FF44: ; 0x0202FF44
	ldr r3, _0202FF48 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0202FF48: .word sub_020181C4
	thumb_func_end sub_0202FF44

	.rodata


	.global Unk_020E5D0C
Unk_020E5D0C: ; 0x020E5D0C
	.incbin "incbin/arm9_rodata.bin", 0x10CC, 0x10D0 - 0x10CC

	.global Unk_020E5D10
Unk_020E5D10: ; 0x020E5D10
	.incbin "incbin/arm9_rodata.bin", 0x10D0, 0x8



	.bss


	.global Unk_021C07A4
Unk_021C07A4: ; 0x021C07A4
	.space 0x4

