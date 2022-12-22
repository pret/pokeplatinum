	.include "macros/function.inc"
	.include "include/ov62_02234A10.inc"

	

	.text


	thumb_func_start ov62_02234A10
ov62_02234A10: ; 0x02234A10
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02234A88 ; =0x000008A4
	add r5, r0, #0
	add r0, r5, r4
	bl sub_0201A7A0
	mov r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r4
	mov r3, #8
	bl sub_0201A7E8
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0xc0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02234A8C ; =0x00010E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02234A88: .word 0x000008A4
_02234A8C: .word 0x00010E00
	thumb_func_end ov62_02234A10

	thumb_func_start ov62_02234A90
ov62_02234A90: ; 0x02234A90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02234AB0 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02234AB0 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	nop
_02234AB0: .word 0x000008A4
	thumb_func_end ov62_02234A90

	thumb_func_start ov62_02234AB4
ov62_02234AB4: ; 0x02234AB4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02234AC2
	b _02234CB6
_02234AC2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02234ACE: ; jump table
	.short _02234ADC - _02234ACE - 2 ; case 0
	.short _02234B7E - _02234ACE - 2 ; case 1
	.short _02234BC2 - _02234ACE - 2 ; case 2
	.short _02234C0E - _02234ACE - 2 ; case 3
	.short _02234C32 - _02234ACE - 2 ; case 4
	.short _02234C5A - _02234ACE - 2 ; case 5
	.short _02234C82 - _02234ACE - 2 ; case 6
_02234ADC:
	bl ov62_022300BC
	cmp r0, #1
	bne _02234AEE
	add r0, r4, #0
	mov r1, #1
	bl ov62_0222FB60
	b _02234CBE
_02234AEE:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CC4 ; =0x0000FFFE
	mov r1, #2
	mov r3, #0x10
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CC8 ; =0x0000BFFF
	mov r1, #0
	mov r3, #0x10
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CCC ; =0x00003FFE
	mov r1, #3
	mov r3, #0x10
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CD0 ; =0x0000FFFF
	mov r1, #1
	mov r3, #0x10
	bl sub_02003A2C
	ldr r0, _02234CD4 ; =0x000006F4
	ldr r0, [r4, r0]
	bl sub_0208BA30
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0208BA30
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234B7E:
	bl sub_0200F2AC
	cmp r0, #0
	bne _02234B88
	b _02234CBE
_02234B88:
	ldr r0, _02234CD4 ; =0x000006F4
	mov r1, #0x80
	ldr r0, [r4, r0]
	mov r2, #0x10
	bl sub_0208B948
	ldr r0, _02234CD4 ; =0x000006F4
	mov r1, #0x80
	ldr r0, [r4, r0]
	mov r2, #0xd8
	bl sub_0208B8B8
	ldr r0, _02234CD4 ; =0x000006F4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	ldr r0, _02234CD4 ; =0x000006F4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0208B8B0
	ldr r0, _02234CD8 ; =0x0000055E
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234BC2:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x19
	blt _02234CBE
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x80
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x90
	bl sub_0208B948
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x60
	bl sub_0208B8B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B8B0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C0E:
	ldr r1, [r4, #0xc]
	add r1, r1, #1
	str r1, [r4, #0xc]
	cmp r1, #0x12
	blt _02234CBE
	bl ov62_02234A10
	ldr r0, _02234CD4 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C32:
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bge _02234C54
	add r0, r0, #4
	str r0, [r4, #0xc]
	ldr r0, _02234CD0 ; =0x0000FFFF
	mov r2, #0xf
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsl r2, r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02234CBE
_02234C54:
	add r0, r1, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C5A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _02234C7C
	sub r0, r0, #4
	str r0, [r4, #0xc]
	ldr r0, _02234CD0 ; =0x0000FFFF
	mov r2, #0xf
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #0
	lsl r2, r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02234CBE
_02234C7C:
	add r0, r1, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C82:
	bl sub_0202278C
	cmp r0, #1
	bne _02234CBE
	add r0, r4, #0
	bl ov62_02234A90
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, _02234CD4 ; =0x000006F4
	ldr r0, [r4, r0]
	bl sub_0208BA54
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0208BA54
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234CB6:
	add r0, r4, #0
	mov r1, #1
	bl ov62_0222FB60
_02234CBE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02234CC4: .word 0x0000FFFE
_02234CC8: .word 0x0000BFFF
_02234CCC: .word 0x00003FFE
_02234CD0: .word 0x0000FFFF
_02234CD4: .word 0x000006F4
_02234CD8: .word 0x0000055E
	thumb_func_end ov62_02234AB4

	thumb_func_start ov62_02234CDC
ov62_02234CDC: ; 0x02234CDC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02234CF4
	cmp r1, #1
	beq _02234DC4
	cmp r1, #2
	bne _02234CF2
	b _02234E8A
_02234CF2:
	b _02234ECA
_02234CF4:
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02230330
	add r0, r4, #0
	bl ov62_02230464
	add r0, r4, #0
	bl ov62_022306B8
	add r0, r4, #0
	bl ov62_0223088C
	add r0, r4, #0
	bl ov62_02230E80
	add r0, r4, #0
	bl ov62_02230A5C
	add r0, r4, #0
	bl ov62_02230AF0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02234DB2
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02234D56
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x45
	mov r3, #5
	bl sub_0200710C
	b _02234D6E
_02234D56:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x37
	mov r3, #5
	bl sub_0200710C
_02234D6E:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xe0
	bl sub_0208B948
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xe0
	bl sub_0208B8B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B8B0
	ldr r1, _02234EE0 ; =0x0000083C
	ldr r3, [r4, #0x10]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov62_0222FB44
	b _02234ED8
_02234DB2:
	ldr r0, _02234EE4 ; =0x0000055B
	bl sub_02005748
	mov r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234DC4:
	bl ov62_022300BC
	cmp r0, #1
	bne _02234DDE
	bl sub_0200F2AC
	cmp r0, #1
	beq _02234DD6
	b _02234ED8
_02234DD6:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234DDE:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02234E5A
	sub r0, r0, #2
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _02234EE8 ; =0x0000FFFE
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _02234EEC ; =0x0000FFFF
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _02234EF0 ; =0x00003FFE
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add r0, r4, #0
	bl ov62_022316D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	ldr r2, _02234EEC ; =0x0000FFFF
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02234ED8
_02234E5A:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #2
	mov r3, #0x10
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234E8A:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02234EAA
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x45
	mov r3, #5
	bl sub_0200710C
	b _02234EC2
_02234EAA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x37
	mov r3, #5
	bl sub_0200710C
_02234EC2:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234ECA:
	ldr r1, _02234EF4 ; =0x00000724
	ldr r1, [r4, r1]
	cmp r1, #3
	blt _02234ED8
	mov r1, #2
	bl ov62_0222FB60
_02234ED8:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_02234EE0: .word 0x0000083C
_02234EE4: .word 0x0000055B
_02234EE8: .word 0x0000FFFE
_02234EEC: .word 0x0000FFFF
_02234EF0: .word 0x00003FFE
_02234EF4: .word 0x00000724
	thumb_func_end ov62_02234CDC

	thumb_func_start ov62_02234EF8
ov62_02234EF8: ; 0x02234EF8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02234F0C
	cmp r1, #1
	beq _02234F74
	cmp r1, #2
	beq _02234F94
	b _02234FC0
_02234F0C:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x60
	bl sub_0208B948
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x60
	bl sub_0208B8B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B8B0
	ldr r0, [r4, #0xc]
	mov r3, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r5, [r4, #0xc]
	ldr r0, [r4, #0x28]
	sub r3, r3, r5
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _02234FC6
	mov r0, #0xf
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234FC6
_02234F74:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234FC6
_02234F94:
	ldr r0, [r4, #0xc]
	mov r1, #1
	sub r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x58]
	mov r2, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02234FC6
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234FC6
_02234FC0:
	mov r1, #3
	bl ov62_0222FB60
_02234FC6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02234EF8

	thumb_func_start ov62_02234FCC
ov62_02234FCC: ; 0x02234FCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov62_02235008
	add r4, r0, #0
	ldr r0, _02235004 ; =0x000005FC
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ov62_02230E74
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	bl sub_0208B8B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02235004: .word 0x000005FC
	thumb_func_end ov62_02234FCC

	thumb_func_start ov62_02235008
ov62_02235008: ; 0x02235008
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223501A
	cmp r0, #1
	beq _02235106
	b _022351F6
_0223501A:
	mov r0, #0x66
	mov r1, #0x54
	bl sub_02018144
	mov r1, #0
	mov r2, #0x54
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	add r0, r4, #0
	add r3, r4, #0
	mov r1, #0x10
	add r0, #0x50
	strb r1, [r0]
	ldr r0, [r5, #0x58]
	add r3, #0x50
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrb r3, [r3]
	ldr r0, [r5, #0x28]
	mov r1, #2
	mov r2, #0xc
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _022350FE
	ldr r0, [sp, #0x14]
	mov r7, #0x19
	str r0, [sp, #4]
	add r6, r5, #0
_02235068:
	ldr r0, [sp, #4]
	mov r2, #0x6e
	str r0, [r4, #0]
	mov r0, #0x5a
	str r0, [r4, #4]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #5
	sub r0, r0, r1
	lsl r0, r0, #4
	add r0, r7, r0
	strh r0, [r4, #8]
	lsl r2, r2, #4
	ldr r3, [r5, r2]
	mov r2, #5
	sub r2, r2, r3
	ldr r0, _0223526C ; =0x000005FC
	lsl r2, r2, #4
	add r2, #0xa9
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x2a
	asr r2, r2, #0x10
	bl ov62_02230E68
	ldr r0, _0223526C ; =0x000005FC
	add r1, r4, #0
	ldr r0, [r6, r0]
	add r1, #0xc
	add r2, sp, #0x20
	bl sub_0200D638
	mov r2, #0x6e
	lsl r2, r2, #4
	ldr r3, [r5, r2]
	mov r2, #5
	ldr r0, _0223526C ; =0x000005FC
	sub r2, r2, r3
	lsl r2, r2, #4
	add r2, #0xa9
	ldr r0, [r6, r0]
	ldr r1, [r4, #0xc]
	lsl r2, r2, #0xc
	bl sub_0200D614
	mov r0, #0x61
	lsl r0, r0, #4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r6, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [sp, #4]
	add r4, #0x10
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r7, #0x24
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add r6, #0x28
	cmp r0, r1
	blt _02235068
_022350FE:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02235266
_02235106:
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223513C
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x50
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x50
	strb r1, [r0]
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrb r3, [r3]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	bl sub_02003A2C
_0223513C:
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _022351E8
	add r6, r5, #0
	add r7, sp, #0x18
_02235150:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223515C
	sub r0, r0, #1
	str r0, [r4, #0]
	b _022351D2
_0223515C:
	ldr r0, _0223526C ; =0x000005FC
	add r1, sp, #0x1c
	ldr r0, [r6, r0]
	add r1, #2
	add r2, sp, #0x1c
	bl ov62_02230E74
	mov r0, #8
	mov r1, #4
	ldrsh r0, [r4, r0]
	ldrsh r2, [r7, r1]
	cmp r2, r0
	bne _0223517E
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _022351D2
_0223517E:
	add r1, r2, #0
	sub r1, #8
	cmp r1, r0
	ble _0223518C
	sub r2, #8
	strh r2, [r7, #4]
	b _0223518E
_0223518C:
	strh r0, [r7, #4]
_0223518E:
	mov r0, #4
	ldrsh r0, [r7, r0]
	ldr r1, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, _02235270 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	lsl r1, r0, #4
	ldr r0, [r4, #4]
	ldr r2, [r4, #0xc]
	sub r0, r0, #4
	str r0, [r4, #4]
	ldr r0, _0223526C ; =0x000005FC
	add r1, r2, r1
	ldr r0, [r6, r0]
	ldr r2, [sp, #8]
	bl sub_0200D614
	mov r0, #0x61
	lsl r0, r0, #4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r6, r0]
	sub r2, #0x2c
	bl sub_020128C4
_022351D2:
	ldr r0, [sp, #0x10]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	add r6, #0x28
	cmp r0, r1
	blt _02235150
_022351E8:
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _02235266
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02235266
_022351F6:
	ldr r1, _02235274 ; =0x000006E4
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r2, [r5, r1]
	ldr r4, [r5, r0]
	mov r0, #0x28
	mul r0, r2
	add r0, r5, r0
	sub r1, #0xe8
	ldr r0, [r0, r1]
	add r1, sp, #0x18
	add r1, #2
	add r2, sp, #0x18
	bl ov62_02230E74
	mov r0, #0x6f
	lsl r0, r0, #4
	add r2, sp, #0x18
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	bl sub_0208B948
	mov r0, #0x6f
	lsl r0, r0, #4
	add r2, sp, #0x18
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	bl sub_0208B8B8
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	add r0, r5, #0
	bl ov62_0222FF7C
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02235266:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223526C: .word 0x000005FC
_02235270: .word 0x0000FFFF
_02235274: .word 0x000006E4
	thumb_func_end ov62_02235008

	.rodata


	.global Unk_ov62_02248BD8
Unk_ov62_02248BD8: ; 0x02248BD8
	.incbin "incbin/overlay62_rodata.bin", 0x4AC, 0x10

