	.include "macros/function.inc"
	.include "include/unk_02051B50.inc"

	

	.text


	thumb_func_start sub_02051B50
sub_02051B50: ; 0x02051B50
	push {r4, lr}
	add r2, r0, #0
	ldr r4, [r2, #0]
	mov r0, #1
	tst r0, r4
	beq _02051BA0
	add r2, #0x5d
	ldrb r0, [r2]
	bl sub_02051C20
	mov r1, #0x80
	tst r1, r4
	beq _02051B7C
	cmp r0, #0x1f
	beq _02051BB8
	mov r0, #2
	tst r0, r4
	beq _02051B78
	mov r0, #0x1d
	pop {r4, pc}
_02051B78:
	mov r0, #0x1b
	pop {r4, pc}
_02051B7C:
	add r1, r0, #0
	sub r1, #0x18
	cmp r1, #2
	bls _02051BB8
	mov r1, #2
	tst r1, r4
	beq _02051B96
	cmp r0, #7
	bne _02051B92
	mov r0, #0x20
	pop {r4, pc}
_02051B92:
	mov r0, #0x1d
	pop {r4, pc}
_02051B96:
	mov r1, #4
	tst r1, r4
	beq _02051BB8
	mov r0, #0x1c
	pop {r4, pc}
_02051BA0:
	mov r1, #0x57
	lsl r1, r1, #2
	ldr r0, [r2, #8]
	ldr r1, [r2, r1]
	bl sub_02051CD0
	cmp r0, #0x22
	blo _02051BB8
	mov r1, #2
	tst r1, r4
	beq _02051BB8
	mov r0, #0x1e
_02051BB8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02051B50

	thumb_func_start sub_02051BBC
sub_02051BBC: ; 0x02051BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x23
	blo _02051BCA
	bl GF_AssertFail
_02051BCA:
	ldr r0, _02051BE0 ; =0x020EC208
	lsl r1, r5, #2
	ldrh r0, [r0, r1]
	ldr r1, _02051BE4 ; =0x0000FFFF
	cmp r0, r1
	bne _02051BDC
	add r0, r4, #0
	bl ov5_021DEEC8
_02051BDC:
	pop {r3, r4, r5, pc}
	nop
_02051BE0: .word 0x020EC208
_02051BE4: .word 0x0000FFFF
	thumb_func_end sub_02051BBC

	thumb_func_start sub_02051BE8
sub_02051BE8: ; 0x02051BE8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x23
	blo _02051BF4
	bl GF_AssertFail
_02051BF4:
	ldr r0, _02051BFC ; =0x020EC20A
	lsl r1, r4, #2
	ldrh r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02051BFC: .word 0x020EC20A
	thumb_func_end sub_02051BE8

	thumb_func_start sub_02051C00
sub_02051C00: ; 0x02051C00
	push {r4, lr}
	add r4, r0, #0
	bl sub_02051B50
	add r1, r4, #0
	bl sub_02051BBC
	pop {r4, pc}
	thumb_func_end sub_02051C00

	thumb_func_start sub_02051C10
sub_02051C10: ; 0x02051C10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02051B50
	add r1, r4, #0
	bl sub_02051BE8
	pop {r4, pc}
	thumb_func_end sub_02051C10

	thumb_func_start sub_02051C20
sub_02051C20: ; 0x02051C20
	sub r0, #0x3e
	mov r1, #0x21
	cmp r0, #0x28
	bhi _02051CCC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02051C34: ; jump table
	.short _02051C86 - _02051C34 - 2 ; case 0
	.short _02051CBA - _02051C34 - 2 ; case 1
	.short _02051C9E - _02051C34 - 2 ; case 2
	.short _02051CA6 - _02051C34 - 2 ; case 3
	.short _02051CAA - _02051C34 - 2 ; case 4
	.short _02051CAE - _02051C34 - 2 ; case 5
	.short _02051CB2 - _02051C34 - 2 ; case 6
	.short _02051CB6 - _02051C34 - 2 ; case 7
	.short _02051CCC - _02051C34 - 2 ; case 8
	.short _02051CCC - _02051C34 - 2 ; case 9
	.short _02051CC2 - _02051C34 - 2 ; case 10
	.short _02051CC6 - _02051C34 - 2 ; case 11
	.short _02051C8A - _02051C34 - 2 ; case 12
	.short _02051C8E - _02051C34 - 2 ; case 13
	.short _02051C92 - _02051C34 - 2 ; case 14
	.short _02051C96 - _02051C34 - 2 ; case 15
	.short _02051C9A - _02051C34 - 2 ; case 16
	.short _02051CA2 - _02051C34 - 2 ; case 17
	.short _02051CCC - _02051C34 - 2 ; case 18
	.short _02051CCC - _02051C34 - 2 ; case 19
	.short _02051CCC - _02051C34 - 2 ; case 20
	.short _02051CCC - _02051C34 - 2 ; case 21
	.short _02051CCC - _02051C34 - 2 ; case 22
	.short _02051CCC - _02051C34 - 2 ; case 23
	.short _02051CBE - _02051C34 - 2 ; case 24
	.short _02051CC2 - _02051C34 - 2 ; case 25
	.short _02051CC2 - _02051C34 - 2 ; case 26
	.short _02051CC6 - _02051C34 - 2 ; case 27
	.short _02051CCC - _02051C34 - 2 ; case 28
	.short _02051CCC - _02051C34 - 2 ; case 29
	.short _02051CCC - _02051C34 - 2 ; case 30
	.short _02051CCC - _02051C34 - 2 ; case 31
	.short _02051CCC - _02051C34 - 2 ; case 32
	.short _02051CCC - _02051C34 - 2 ; case 33
	.short _02051CCC - _02051C34 - 2 ; case 34
	.short _02051CCA - _02051C34 - 2 ; case 35
	.short _02051CCC - _02051C34 - 2 ; case 36
	.short _02051CCA - _02051C34 - 2 ; case 37
	.short _02051CCA - _02051C34 - 2 ; case 38
	.short _02051CCA - _02051C34 - 2 ; case 39
	.short _02051CCA - _02051C34 - 2 ; case 40
_02051C86:
	mov r1, #0
	b _02051CCC
_02051C8A:
	mov r1, #1
	b _02051CCC
_02051C8E:
	mov r1, #2
	b _02051CCC
_02051C92:
	mov r1, #3
	b _02051CCC
_02051C96:
	mov r1, #4
	b _02051CCC
_02051C9A:
	mov r1, #5
	b _02051CCC
_02051C9E:
	mov r1, #6
	b _02051CCC
_02051CA2:
	mov r1, #7
	b _02051CCC
_02051CA6:
	mov r1, #8
	b _02051CCC
_02051CAA:
	mov r1, #9
	b _02051CCC
_02051CAE:
	mov r1, #0xa
	b _02051CCC
_02051CB2:
	mov r1, #0xb
	b _02051CCC
_02051CB6:
	mov r1, #0xc
	b _02051CCC
_02051CBA:
	mov r1, #0xd
	b _02051CCC
_02051CBE:
	mov r1, #0x1a
	b _02051CCC
_02051CC2:
	mov r1, #0x19
	b _02051CCC
_02051CC6:
	mov r1, #0x18
	b _02051CCC
_02051CCA:
	mov r1, #0x1f
_02051CCC:
	add r0, r1, #0
	bx lr
	thumb_func_end sub_02051C20

	thumb_func_start sub_02051CD0
sub_02051CD0: ; 0x02051CD0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0x22
	bl sub_02054A40
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r2, _02051D88 ; =0x0000017B
	cmp r0, r2
	bhi _02051D0E
	bhs _02051D60
	sub r1, r2, #2
	cmp r0, r1
	bhi _02051D06
	bhs _02051D60
	cmp r0, #0x92
	bhi _02051D82
	cmp r0, #0x90
	blo _02051D82
	beq _02051D7C
	cmp r0, #0x91
	beq _02051D7C
	cmp r0, #0x92
	beq _02051D7C
	b _02051D82
_02051D06:
	sub r1, r2, #1
	cmp r0, r1
	beq _02051D60
	b _02051D82
_02051D0E:
	add r1, r2, #0
	add r1, #0x65
	cmp r0, r1
	bhi _02051D26
	add r1, r2, #0
	add r1, #0x65
	cmp r0, r1
	bhs _02051D70
	add r2, #0x64
	cmp r0, r2
	beq _02051D68
	b _02051D82
_02051D26:
	add r2, #0x66
	sub r0, r0, r2
	cmp r0, #0xc
	bhi _02051D82
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02051D3A: ; jump table
	.short _02051D6C - _02051D3A - 2 ; case 0
	.short _02051D70 - _02051D3A - 2 ; case 1
	.short _02051D74 - _02051D3A - 2 ; case 2
	.short _02051D74 - _02051D3A - 2 ; case 3
	.short _02051D68 - _02051D3A - 2 ; case 4
	.short _02051D68 - _02051D3A - 2 ; case 5
	.short _02051D5C - _02051D3A - 2 ; case 6
	.short _02051D58 - _02051D3A - 2 ; case 7
	.short _02051D82 - _02051D3A - 2 ; case 8
	.short _02051D82 - _02051D3A - 2 ; case 9
	.short _02051D68 - _02051D3A - 2 ; case 10
	.short _02051D54 - _02051D3A - 2 ; case 11
	.short _02051D78 - _02051D3A - 2 ; case 12
_02051D54:
	mov r4, #0xe
	b _02051D82
_02051D58:
	mov r4, #0x14
	b _02051D82
_02051D5C:
	mov r4, #0x16
	b _02051D82
_02051D60:
	cmp r5, #0xfb
	beq _02051D82
	mov r4, #0x17
	b _02051D82
_02051D68:
	mov r4, #0x13
	b _02051D82
_02051D6C:
	mov r4, #0x11
	b _02051D82
_02051D70:
	mov r4, #0x10
	b _02051D82
_02051D74:
	mov r4, #0xf
	b _02051D82
_02051D78:
	mov r4, #0x12
	b _02051D82
_02051D7C:
	cmp r5, #0xfb
	beq _02051D82
	mov r4, #0x15
_02051D82:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02051D88: .word 0x0000017B
	thumb_func_end sub_02051CD0

	.rodata


	.global Unk_020EC208
Unk_020EC208: ; 0x020EC208
	.incbin "incbin/arm9_rodata.bin", 0x75C8, 0x8C

