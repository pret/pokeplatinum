	.include "macros/function.inc"
	.include "global.inc"

	.text

    thumb_func_start ov119_021D191C
ov119_021D191C: ; 0x021D191C
	push {r3, lr}
	ldr r1, [r0, #0x5c]
	lsl r2, r1, #2
	ldr r1, _021D192C ; =0x021D26AC
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_021D192C: .word 0x021D26AC
	thumb_func_end ov119_021D191C

	thumb_func_start ov119_021D1930
ov119_021D1930: ; 0x021D1930
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r1, [r4, #0x60]
	mov r5, #1
	cmp r1, #0x11
	bls _021D1940
	b _021D1B96
_021D1940:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D194C: ; jump table
	.short _021D1970 - _021D194C - 2 ; case 0
	.short _021D19DE - _021D194C - 2 ; case 1
	.short _021D19E8 - _021D194C - 2 ; case 2
	.short _021D1A06 - _021D194C - 2 ; case 3
	.short _021D1A16 - _021D194C - 2 ; case 4
	.short _021D1A26 - _021D194C - 2 ; case 5
	.short _021D1A36 - _021D194C - 2 ; case 6
	.short _021D1A46 - _021D194C - 2 ; case 7
	.short _021D1A96 - _021D194C - 2 ; case 8
	.short _021D1AAA - _021D194C - 2 ; case 9
	.short _021D1ABA - _021D194C - 2 ; case 10
	.short _021D1AE0 - _021D194C - 2 ; case 11
	.short _021D1B32 - _021D194C - 2 ; case 12
	.short _021D1B6A - _021D194C - 2 ; case 13
	.short _021D1B76 - _021D194C - 2 ; case 14
	.short _021D1B7C - _021D194C - 2 ; case 15
	.short _021D1B86 - _021D194C - 2 ; case 16
	.short _021D1B96 - _021D194C - 2 ; case 17
_021D1970:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl ov119_021D1308
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl ov119_021D135C
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x14]
	bl ov119_021D1068
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x18
	add r2, r5, #0
	mov r3, #2
	bl ov119_021D10F0
	add r0, r4, #0
	bl ov119_021D1514
	add r0, r4, #0
	bl ov119_021D161C
	add r0, r4, #0
	bl ov119_021D1858
	add r0, r4, #0
	add r1, r5, #0
	bl ov119_021D190C
	mov r0, #0x47
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	bl ov119_021D14AC
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D19DE:
	bl ov119_021D1028
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D19E8:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1AB2
	bl sub_0200569C
	ldr r1, _021D1BC8 ; =0x00000475
	mov r0, #0xd
	mov r2, #1
	bl sub_02004550
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1A06:
	bl ov119_021D1E38
	cmp r0, #0
	bne _021D1AB2
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1A16:
	bl ov119_021D1E80
	cmp r0, #0
	bne _021D1AB2
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1A26:
	bl ov119_021D1EF0
	cmp r0, #0
	bne _021D1AB2
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1A36:
	bl ov119_021D1F48
	cmp r0, #0
	bne _021D1AB2
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1A46:
	bl ov119_021D1FAC
	cmp r0, #0
	bne _021D1AB2
	add r0, r4, #0
	bl ov119_021D18C0
	ldr r0, [r4, #0]
	mov r1, #5
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x70
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r6, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02005844
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	ldr r3, [r4, #0x10]
	add r0, #0x18
	mov r1, #0
	bl ov119_021D1158
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1A96:
	bl sub_0200598C
	cmp r0, #0
	bne _021D1AB2
	ldr r0, _021D1BCC ; =0x00000484
	bl sub_02006150
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1AAA:
	bl sub_020061E4
	cmp r0, #0
	beq _021D1AB4
_021D1AB2:
	b _021D1BBA
_021D1AB4:
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1ABA:
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D1BBA
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	ldr r3, [r4, #0x10]
	add r0, #0x18
	mov r1, #1
	bl ov119_021D1158
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1AE0:
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D1BBA
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _021D1BBA
	ldr r0, [r4, #0x70]
	bl sub_02007C24
	cmp r0, #0
	bne _021D1BBA
	mov r0, #0x19
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xa7
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp, #0x14]
	add r2, r4, #0
	ldr r1, [r4, #4]
	add r0, r4, #0
	add r2, #0x28
	mov r3, #1
	bl ov119_021D11E4
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1B32:
	ldr r0, [r4, #0x4c]
	bl sub_02001BE0
	sub r1, r5, #3
	cmp r0, r1
	beq _021D1B46
	add r1, r1, #1
	cmp r0, r1
	beq _021D1BBA
	b _021D1B54
_021D1B46:
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1B54:
	cmp r0, #0
	bne _021D1B5C
	add r1, r5, #0
	b _021D1B5E
_021D1B5C:
	mov r1, #0
_021D1B5E:
	ldr r0, [r4, #0]
	str r1, [r0, #4]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1B6A:
	bl ov119_021D12CC
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1B76:
	add r0, r1, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1B7C:
	bl ov119_021D1048
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1B86:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1BBA
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1BBA
_021D1B96:
	add r0, r4, #0
	bl ov119_021D1900
	add r0, r4, #0
	bl ov119_021D17A0
	add r0, r4, #0
	add r0, #0x18
	bl ov119_021D12F8
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0xc]
	bl ov119_021D145C
	ldr r0, [r4, #0x44]
	bl ov119_021D150C
	mov r5, #0
_021D1BBA:
	ldr r0, [r4, #0x50]
	bl sub_0200C7EC
	add r0, r5, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021D1BC8: .word 0x00000475
_021D1BCC: .word 0x00000484
	thumb_func_end ov119_021D1930

	thumb_func_start ov119_021D1BD0
ov119_021D1BD0: ; 0x021D1BD0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r1, [r4, #0x60]
	mov r5, #1
	cmp r1, #0x11
	bls _021D1BE0
	b _021D1DFE
_021D1BE0:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D1BEC: ; jump table
	.short _021D1C10 - _021D1BEC - 2 ; case 0
	.short _021D1C86 - _021D1BEC - 2 ; case 1
	.short _021D1C90 - _021D1BEC - 2 ; case 2
	.short _021D1CAA - _021D1BEC - 2 ; case 3
	.short _021D1CF8 - _021D1BEC - 2 ; case 4
	.short _021D1CF8 - _021D1BEC - 2 ; case 5
	.short _021D1CF8 - _021D1BEC - 2 ; case 6
	.short _021D1CF8 - _021D1BEC - 2 ; case 7
	.short _021D1CFE - _021D1BEC - 2 ; case 8
	.short _021D1D12 - _021D1BEC - 2 ; case 9
	.short _021D1D22 - _021D1BEC - 2 ; case 10
	.short _021D1D48 - _021D1BEC - 2 ; case 11
	.short _021D1D9A - _021D1BEC - 2 ; case 12
	.short _021D1DD2 - _021D1BEC - 2 ; case 13
	.short _021D1DDE - _021D1BEC - 2 ; case 14
	.short _021D1DE4 - _021D1BEC - 2 ; case 15
	.short _021D1DEE - _021D1BEC - 2 ; case 16
	.short _021D1DFE - _021D1BEC - 2 ; case 17
_021D1C10:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl ov119_021D1308
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl ov119_021D135C
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x14]
	bl ov119_021D1068
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x18
	add r2, r5, #0
	mov r3, #2
	bl ov119_021D10F0
	add r0, r4, #0
	bl ov119_021D1514
	add r0, r4, #0
	bl ov119_021D161C
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	bl ov119_021D1858
	add r0, r4, #0
	add r1, r5, #0
	bl ov119_021D190C
	mov r0, #0x47
	str r0, [sp, #0x18]
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	bl ov119_021D14AC
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1C86:
	bl ov119_021D1028
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1C90:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1D1A
	ldr r1, _021D1E30 ; =0x00000475
	mov r0, #0xd
	mov r2, #1
	bl sub_02004550
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1CAA:
	bl ov119_021D21BC
	cmp r0, #0
	bne _021D1D1A
	add r0, r4, #0
	bl ov119_021D18C0
	ldr r0, [r4, #0]
	mov r1, #5
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x70
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r6, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02005844
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	ldr r3, [r4, #0x10]
	add r0, #0x18
	mov r1, #0
	bl ov119_021D1158
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [r4, #0x60]
	b _021D1E22
_021D1CF8:
	bl sub_02022974
	b _021D1E22
_021D1CFE:
	bl sub_0200598C
	cmp r0, #0
	bne _021D1D1A
	ldr r0, _021D1E34 ; =0x00000484
	bl sub_02006150
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1D12:
	bl sub_020061E4
	cmp r0, #0
	beq _021D1D1C
_021D1D1A:
	b _021D1E22
_021D1D1C:
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1D22:
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D1E22
	ldr r2, [r4, #0]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	ldr r3, [r4, #0x10]
	add r0, #0x18
	mov r1, #1
	bl ov119_021D1158
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1D48:
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D1E22
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _021D1E22
	ldr r0, [r4, #0x70]
	bl sub_02007C24
	cmp r0, #0
	bne _021D1E22
	mov r0, #0x19
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xa7
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp, #0x14]
	add r2, r4, #0
	ldr r1, [r4, #4]
	add r0, r4, #0
	add r2, #0x28
	mov r3, #1
	bl ov119_021D11E4
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1D9A:
	ldr r0, [r4, #0x4c]
	bl sub_02001BE0
	sub r1, r5, #3
	cmp r0, r1
	beq _021D1DAE
	add r1, r1, #1
	cmp r0, r1
	beq _021D1E22
	b _021D1DBC
_021D1DAE:
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1DBC:
	cmp r0, #0
	bne _021D1DC4
	add r1, r5, #0
	b _021D1DC6
_021D1DC4:
	mov r1, #0
_021D1DC6:
	ldr r0, [r4, #0]
	str r1, [r0, #4]
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1DD2:
	bl ov119_021D12CC
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1DDE:
	add r0, r1, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1DE4:
	bl ov119_021D1048
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
_021D1DEE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1E22
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	b _021D1E22
_021D1DFE:
	add r0, r4, #0
	bl ov119_021D1900
	add r0, r4, #0
	bl ov119_021D17A0
	add r0, r4, #0
	add r0, #0x18
	bl ov119_021D12F8
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0xc]
	bl ov119_021D145C
	ldr r0, [r4, #0x44]
	bl ov119_021D150C
	mov r5, #0
_021D1E22:
	ldr r0, [r4, #0x50]
	bl sub_0200C7EC
	add r0, r5, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021D1E30: .word 0x00000475
_021D1E34: .word 0x00000484
	thumb_func_end ov119_021D1BD0

	thumb_func_start ov119_021D1E38
ov119_021D1E38: ; 0x021D1E38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021D1E48
	cmp r0, #1
	beq _021D1E58
	b _021D1E70
_021D1E48:
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D1E78
_021D1E58:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0x19
	blt _021D1E78
	ldr r0, _021D1E7C ; =0x00000714
	bl sub_02005748
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D1E78
_021D1E70:
	mov r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x64]
	pop {r4, pc}
_021D1E78:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D1E7C: .word 0x00000714
	thumb_func_end ov119_021D1E38

	thumb_func_start ov119_021D1E80
ov119_021D1E80: ; 0x021D1E80
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _021D1E90
	cmp r1, #1
	beq _021D1EAA
	b _021D1ECE
_021D1E90:
	ldr r0, [r4, #0x44]
	bl ov119_021D14F8
	cmp r0, #1
	beq _021D1EE8
	ldr r0, [r4, #0x74]
	mov r1, #1
	bl sub_0200D3CC
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D1EE8
_021D1EAA:
	mov r1, #0
	bl ov119_021D176C
	cmp r0, #2
	bne _021D1EE8
	ldr r0, _021D1EEC ; =0x00000714
	bl sub_02005748
	ldr r0, [r4, #0x74]
	mov r1, #2
	bl sub_0200D3CC
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	mov r0, #0
	str r0, [r4, #0x64]
	b _021D1EE8
_021D1ECE:
	mov r1, #0
	bl ov119_021D176C
	cmp r0, #2
	bne _021D1EE8
	ldr r0, [r4, #0x74]
	mov r1, #2
	bl sub_0200D3CC
	mov r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x64]
	pop {r4, pc}
_021D1EE8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D1EEC: .word 0x00000714
	thumb_func_end ov119_021D1E80

	thumb_func_start ov119_021D1EF0
ov119_021D1EF0: ; 0x021D1EF0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _021D1F00
	cmp r1, #1
	beq _021D1F06
	b _021D1F38
_021D1F00:
	add r0, r1, #1
	str r0, [r4, #0x68]
	b _021D1F40
_021D1F06:
	mov r1, #1
	bl ov119_021D176C
	add r5, r0, #0
	cmp r5, #1
	bne _021D1F28
	ldr r0, _021D1F44 ; =0x00000714
	bl sub_02005748
	ldr r0, [r4, #0x74]
	mov r1, #3
	bl sub_0200D3CC
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl ov119_021D14DC
_021D1F28:
	cmp r5, #2
	bne _021D1F40
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D1F40
_021D1F38:
	mov r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x64]
	pop {r3, r4, r5, pc}
_021D1F40:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1F44: .word 0x00000714
	thumb_func_end ov119_021D1EF0

	thumb_func_start ov119_021D1F48
ov119_021D1F48: ; 0x021D1F48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0
	beq _021D1F58
	cmp r1, #1
	beq _021D1F6A
	b _021D1F9C
_021D1F58:
	ldr r0, [r4, #0x44]
	bl ov119_021D14F8
	cmp r0, #1
	beq _021D1FA4
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D1FA4
_021D1F6A:
	mov r1, #2
	bl ov119_021D176C
	add r5, r0, #0
	cmp r5, #1
	bne _021D1F8C
	ldr r0, _021D1FA8 ; =0x00000714
	bl sub_02005748
	ldr r0, [r4, #0x74]
	mov r1, #4
	bl sub_0200D3CC
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl ov119_021D14DC
_021D1F8C:
	cmp r5, #2
	bne _021D1FA4
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D1FA4
_021D1F9C:
	mov r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x64]
	pop {r3, r4, r5, pc}
_021D1FA4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1FA8: .word 0x00000714
	thumb_func_end ov119_021D1F48

	thumb_func_start ov119_021D1FAC
ov119_021D1FAC: ; 0x021D1FAC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0x68]
	cmp r1, #5
	bls _021D1FBA
	b _021D2198
_021D1FBA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1FC6: ; jump table
	.short _021D1FD2 - _021D1FC6 - 2 ; case 0
	.short _021D1FF4 - _021D1FC6 - 2 ; case 1
	.short _021D2036 - _021D1FC6 - 2 ; case 2
	.short _021D209E - _021D1FC6 - 2 ; case 3
	.short _021D2130 - _021D1FC6 - 2 ; case 4
	.short _021D217C - _021D1FC6 - 2 ; case 5
_021D1FD2:
	ldr r0, [r4, #0x44]
	bl ov119_021D14F8
	cmp r0, #1
	beq _021D2040
	ldr r0, [r4, #0x74]
	mov r1, #4
	bl sub_0200D3CC
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D21AC
_021D1FF4:
	mov r1, #3
	bl ov119_021D176C
	add r5, r0, #0
	cmp r5, #1
	bne _021D201E
	ldr r0, [r4, #0x74]
	mov r1, #5
	bl sub_0200D3CC
	ldr r0, _021D21B4 ; =0x00000707
	bl sub_02005748
	ldr r0, [r4, #0x44]
	mov r1, #2
	bl ov119_021D14DC
	ldr r0, [r4, #0x44]
	mov r1, #3
	bl ov119_021D14DC
_021D201E:
	cmp r5, #2
	bne _021D2040
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D21AC
_021D2036:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0xa
	bge _021D2042
_021D2040:
	b _021D21AC
_021D2042:
	mov r3, #0
	str r3, [r4, #0x64]
	str r3, [sp]
	mov r0, #0x10
	ldr r2, _021D21B8 ; =0x0000FFFF
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02003178
	ldr r0, [r4, #0x78]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r5, r0, #0
	mov r3, #0
	mov r6, #1
	str r3, [sp]
	mov r0, #0x10
	ldr r2, _021D21B8 ; =0x0000FFFF
	str r0, [sp, #4]
	str r2, [sp, #8]
	lsl r6, r5
	eor r2, r6
	lsl r2, r2, #0x10
	ldr r0, [r4, #8]
	mov r1, #4
	lsr r2, r2, #0x10
	bl sub_02003178
	ldr r0, _021D21B8 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020086FC
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D21AC
_021D209E:
	add r1, sp, #0xc
	ldr r0, [r4, #0x78]
	mov r5, #0
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	add r0, sp, #0xc
	add r1, r5, #0
	ldrsh r2, [r0, r1]
	add r0, r1, #0
	sub r0, #0x30
	cmp r2, r0
	ble _021D20C4
	ldr r0, [r4, #0x78]
	sub r2, r1, #4
	bl sub_0200D5DC
	b _021D20C6
_021D20C4:
	add r5, r5, #1
_021D20C6:
	add r1, sp, #0xc
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	add r0, sp, #0xc
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xc0
	bge _021D20E6
	ldr r0, [r4, #0x7c]
	mov r2, #4
	bl sub_0200D5DC
	b _021D20E8
_021D20E6:
	add r5, r5, #1
_021D20E8:
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	bne _021D21AC
	cmp r5, #2
	bne _021D21AC
	ldr r0, [r4, #0x70]
	bl sub_020087B4
	cmp r0, #0
	bne _021D21AC
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #0
	bl ov119_021D190C
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x78]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x7c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D21AC
_021D2130:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0x19
	blt _021D21AC
	mov r2, #0
	ldr r0, _021D21B8 ; =0x0000FFFF
	str r2, [r4, #0x64]
	str r0, [sp]
	ldr r0, [r4, #0x70]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_020086FC
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r2, _021D21B8 ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r2, _021D21B8 ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02003178
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D21AC
_021D217C:
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	bne _021D21AC
	ldr r0, [r4, #0x70]
	bl sub_020087B4
	cmp r0, #0
	bne _021D21AC
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D21AC
_021D2198:
	ldr r0, [r4, #0x44]
	bl ov119_021D14F8
	cmp r0, #1
	beq _021D21AC
	mov r0, #0
	str r0, [r4, #0x68]
	add sp, #0x10
	str r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_021D21AC:
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D21B4: .word 0x00000707
_021D21B8: .word 0x0000FFFF
	thumb_func_end ov119_021D1FAC

	thumb_func_start ov119_021D21BC
ov119_021D21BC: ; 0x021D21BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #4
	bls _021D21CA
	b _021D2398
_021D21CA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D21D6: ; jump table
	.short _021D21E0 - _021D21D6 - 2 ; case 0
	.short _021D2210 - _021D21D6 - 2 ; case 1
	.short _021D229E - _021D21D6 - 2 ; case 2
	.short _021D2330 - _021D21D6 - 2 ; case 3
	.short _021D237C - _021D21D6 - 2 ; case 4
_021D21E0:
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl ov119_021D14DC
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl ov119_021D14DC
	ldr r0, [r4, #0x44]
	mov r1, #2
	bl ov119_021D14DC
	ldr r0, [r4, #0x44]
	mov r1, #3
	bl ov119_021D14DC
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D23A2
_021D2210:
	ldr r0, [r4, #0x64]
	cmp r0, #0x19
	beq _021D2220
	cmp r0, #0x50
	beq _021D2228
	cmp r0, #0x8e
	beq _021D2230
	b _021D2236
_021D2220:
	ldr r0, _021D23A8 ; =0x00000806
	bl sub_02005748
	b _021D2236
_021D2228:
	ldr r0, _021D23AC ; =0x000007AA
	bl sub_02005748
	b _021D2236
_021D2230:
	ldr r0, _021D23B0 ; =0x00000815
	bl sub_02005748
_021D2236:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0xa0
	bge _021D2242
	b _021D23A2
_021D2242:
	mov r3, #0
	str r3, [r4, #0x64]
	str r3, [sp]
	mov r0, #0x10
	ldr r2, _021D23B4 ; =0x0000FFFF
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02003178
	ldr r0, [r4, #0x78]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r5, r0, #0
	mov r3, #0
	mov r6, #1
	str r3, [sp]
	mov r0, #0x10
	ldr r2, _021D23B4 ; =0x0000FFFF
	str r0, [sp, #4]
	str r2, [sp, #8]
	lsl r6, r5
	eor r2, r6
	lsl r2, r2, #0x10
	ldr r0, [r4, #8]
	mov r1, #4
	lsr r2, r2, #0x10
	bl sub_02003178
	ldr r0, _021D23B4 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020086FC
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D23A2
_021D229E:
	add r1, sp, #0xc
	ldr r0, [r4, #0x78]
	mov r5, #0
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	add r0, sp, #0xc
	add r1, r5, #0
	ldrsh r2, [r0, r1]
	add r0, r1, #0
	sub r0, #0x30
	cmp r2, r0
	ble _021D22C4
	ldr r0, [r4, #0x78]
	sub r2, r1, #4
	bl sub_0200D5DC
	b _021D22C6
_021D22C4:
	add r5, r5, #1
_021D22C6:
	add r1, sp, #0xc
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	add r0, sp, #0xc
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xc0
	bge _021D22E6
	ldr r0, [r4, #0x7c]
	mov r2, #4
	bl sub_0200D5DC
	b _021D22E8
_021D22E6:
	add r5, r5, #1
_021D22E8:
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	bne _021D23A2
	cmp r5, #2
	bne _021D23A2
	ldr r0, [r4, #0x70]
	bl sub_020087B4
	cmp r0, #0
	bne _021D23A2
	add r0, r4, #0
	mov r1, #0
	bl ov119_021D190C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x78]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x7c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D23A2
_021D2330:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0x19
	blt _021D23A2
	mov r2, #0
	ldr r0, _021D23B4 ; =0x0000FFFF
	str r2, [r4, #0x64]
	str r0, [sp]
	ldr r0, [r4, #0x70]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_020086FC
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r2, _021D23B4 ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r2, _021D23B4 ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02003178
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D23A2
_021D237C:
	ldr r0, [r4, #8]
	bl sub_0200384C
	cmp r0, #0
	bne _021D23A2
	ldr r0, [r4, #0x70]
	bl sub_020087B4
	cmp r0, #0
	bne _021D23A2
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	b _021D23A2
_021D2398:
	mov r0, #0
	str r0, [r4, #0x68]
	add sp, #0x10
	str r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_021D23A2:
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D23A8: .word 0x00000806
_021D23AC: .word 0x000007AA
_021D23B0: .word 0x00000815
_021D23B4: .word 0x0000FFFF
	thumb_func_end ov119_021D21BC
	; 0x021D23B8

    .rodata

	.global Unk_ov119_021D26AC
Unk_ov119_021D26AC: ; 0x021D26AC
	.incbin "incbin/overlay119_rodata.bin", 0x2F4, 0x2FC - 0x2F4
