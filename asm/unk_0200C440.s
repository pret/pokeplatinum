	.include "macros/function.inc"
	.include "include/unk_0200C440.inc"

	

	.text


	thumb_func_start sub_0200C440
sub_0200C440: ; 0x0200C440
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	mov r1, #0x2c
	str r2, [sp, #4]
	bl sub_02018144
	str r0, [sp, #8]
	cmp r0, #0
	beq _0200C55A
	ldr r3, [sp, #8]
	mov r0, #0xe
	mov r1, #4
	mov r2, #1
	add r3, r3, #4
	str r4, [sp]
	bl sub_02006F50
	ldr r1, [sp, #8]
	mov r3, #0
	str r0, [r1, #0]
	add r0, r1, #0
	ldr r0, [r0, #4]
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bls _0200C554
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	orr r1, r0
	str r1, [sp, #0xc]
	add r1, r0, #0
	orr r1, r5
	str r1, [sp, #0x10]
	orr r0, r6
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	lsl r0, r5, #4
	orr r1, r0
	str r1, [sp, #0x18]
	add r1, r5, #0
	orr r1, r0
	str r1, [sp, #0x1c]
	orr r0, r6
	lsl r2, r6, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	add r7, r2, #0
	orr r7, r1
	add r1, r2, #0
	orr r1, r5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r2, r6
	str r1, [sp, #0x28]
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	mov ip, r2
	str r1, [sp, #0x24]
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
_0200C4E4:
	ldrb r5, [r4, r3]
	cmp r5, #0x12
	bgt _0200C50C
	bge _0200C532
	cmp r5, #0x10
	bgt _0200C506
	bge _0200C52A
	cmp r5, #2
	bgt _0200C548
	cmp r5, #0
	blt _0200C548
	beq _0200C51E
	cmp r5, #1
	beq _0200C522
	cmp r5, #2
	beq _0200C526
	b _0200C548
_0200C506:
	cmp r5, #0x11
	beq _0200C52E
	b _0200C548
_0200C50C:
	cmp r5, #0x21
	bgt _0200C518
	bge _0200C53E
	cmp r5, #0x20
	beq _0200C538
	b _0200C548
_0200C518:
	cmp r5, #0x22
	beq _0200C544
	b _0200C548
_0200C51E:
	strb r2, [r4, r3]
	b _0200C548
_0200C522:
	strb r1, [r4, r3]
	b _0200C548
_0200C526:
	strb r0, [r4, r3]
	b _0200C548
_0200C52A:
	strb r6, [r4, r3]
	b _0200C548
_0200C52E:
	strb r7, [r4, r3]
	b _0200C548
_0200C532:
	ldr r5, [sp, #0x20]
	strb r5, [r4, r3]
	b _0200C548
_0200C538:
	ldr r5, [sp, #0x24]
	strb r5, [r4, r3]
	b _0200C548
_0200C53E:
	ldr r5, [sp, #0x28]
	strb r5, [r4, r3]
	b _0200C548
_0200C544:
	mov r5, ip
	strb r5, [r4, r3]
_0200C548:
	ldr r5, [sp, #8]
	add r3, r3, #1
	ldr r5, [r5, #4]
	ldr r5, [r5, #0x10]
	cmp r3, r5
	blo _0200C4E4
_0200C554:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r0, #0x28]
_0200C55A:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C440

	thumb_func_start sub_0200C560
sub_0200C560: ; 0x0200C560
	push {r4, lr}
	add r4, r0, #0
	beq _0200C576
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0200C570
	bl sub_020181C4
_0200C570:
	add r0, r4, #0
	bl sub_020181C4
_0200C576:
	pop {r4, pc}
	thumb_func_end sub_0200C560

	thumb_func_start sub_0200C578
sub_0200C578: ; 0x0200C578
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _0200C5B4 ; =0x020E4FEE
	lsl r5, r1, #2
	ldrh r1, [r0, r5]
	lsl r3, r3, #0x10
	mov r0, #8
	str r1, [sp]
	str r0, [sp, #4]
	lsr r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, [sp, #0x28]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r4, #4]
	add r0, r2, #0
	ldr r2, [r1, #0x14]
	ldr r1, _0200C5B8 ; =0x020E4FEC
	ldrh r1, [r1, r5]
	add r1, r2, r1
	mov r2, #0
	add r3, r2, #0
	bl sub_0201ADDC
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200C5B4: .word 0x020E4FEE
_0200C5B8: .word 0x020E4FEC
	thumb_func_end sub_0200C578

	thumb_func_start sub_0200C5BC
sub_0200C5BC: ; 0x0200C5BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r2, #0
	str r0, [sp, #0x30]
	add r0, r6, #0
	add r2, r3, #0
	add r0, #8
	add r3, r4, #0
	ldr r5, [sp, #0x34]
	ldr r7, [sp, #0x38]
	bl sub_020022A4
	ldrh r1, [r6, #8]
	ldr r0, _0200C644 ; =0x0000FFFF
	cmp r1, r0
	beq _0200C63E
	lsl r0, r7, #0x10
	add r4, r6, #0
	lsr r7, r0, #0x10
_0200C5E6:
	ldrh r2, [r4, #8]
	cmp r2, #0xa2
	blo _0200C61A
	cmp r2, #0xab
	bhi _0200C61A
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r6, #4]
	sub r2, #0xa2
	ldr r1, [r1, #0x14]
	lsl r2, r2, #5
	add r1, r1, r2
	mov r2, #0
	ldr r0, [sp, #0x30]
	add r3, r2, #0
	bl sub_0201ADDC
	b _0200C632
_0200C61A:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #0x28]
	lsl r2, r5, #0x10
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_0201AE78
_0200C632:
	add r4, r4, #2
	ldrh r1, [r4, #8]
	ldr r0, _0200C644 ; =0x0000FFFF
	add r5, #8
	cmp r1, r0
	bne _0200C5E6
_0200C63E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C644: .word 0x0000FFFF
	thumb_func_end sub_0200C5BC

	thumb_func_start sub_0200C648
sub_0200C648: ; 0x0200C648
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, [sp, #0x2c]
	add r6, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r5, r0, #0
	bl sub_0200C578
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0200C5BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200C648

	thumb_func_start sub_0200C67C
sub_0200C67C: ; 0x0200C67C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r2, #0
	ldr r2, [r7, #0x28]
	ldr r6, [sp, #0x18]
	lsl r0, r2, #4
	orr r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	add r2, r3, #0
	add r0, #8
	add r3, r4, #0
	bl sub_020022A4
	ldrh r1, [r7, #8]
	ldr r0, _0200C6E0 ; =0x0000FFFF
	cmp r1, r0
	beq _0200C6DC
	add r4, r7, #0
	mov r5, #0
_0200C6A8:
	ldrh r2, [r4, #8]
	cmp r2, #0xa2
	blo _0200C6C6
	cmp r2, #0xab
	bhi _0200C6C6
	ldr r0, [r7, #4]
	sub r2, #0xa2
	ldr r1, [r0, #0x14]
	lsl r0, r2, #5
	add r0, r1, r0
	add r1, r6, r5
	mov r2, #0x20
	bl MIi_CpuCopy32
	b _0200C6D0
_0200C6C6:
	ldr r1, [sp]
	add r0, r6, r5
	mov r2, #0x20
	bl MI_CpuFill8
_0200C6D0:
	add r4, r4, #2
	ldrh r1, [r4, #8]
	ldr r0, _0200C6E0 ; =0x0000FFFF
	add r5, #0x20
	cmp r1, r0
	bne _0200C6A8
_0200C6DC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C6E0: .word 0x0000FFFF
	thumb_func_end sub_0200C67C

	.rodata


	.global Unk_020E4FEC
Unk_020E4FEC: ; 0x020E4FEC
	.incbin "incbin/arm9_rodata.bin", 0x3AC, 0x1C

