	.include "macros/function.inc"
	.include "include/unk_02039814.inc"

	

	.text


	thumb_func_start sub_02039814
sub_02039814: ; 0x02039814
	ldr r3, _02039828 ; =0x027E0000
	ldr r1, _0203982C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _02039830 ; =sub_020C458C
	mov r0, #3
	bx r3
	nop
_02039828: .word 0x027E0000
_0203982C: .word 0x00003FF8
_02039830: .word sub_020C458C
	thumb_func_end sub_02039814

	thumb_func_start sub_02039834
sub_02039834: ; 0x02039834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r2, [sp, #0xc]
	cmp r1, #6
	bhi _0203985A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203984C: ; jump table
	.short _0203985A - _0203984C - 2 ; case 0
	.short _0203985E - _0203984C - 2 ; case 1
	.short _02039862 - _0203984C - 2 ; case 2
	.short _02039866 - _0203984C - 2 ; case 3
	.short _0203986A - _0203984C - 2 ; case 4
	.short _0203986E - _0203984C - 2 ; case 5
	.short _02039872 - _0203984C - 2 ; case 6
_0203985A:
	mov r5, #1
	b _02039874
_0203985E:
	mov r5, #2
	b _02039874
_02039862:
	mov r5, #3
	b _02039874
_02039866:
	mov r5, #4
	b _02039874
_0203986A:
	mov r5, #5
	b _02039874
_0203986E:
	mov r5, #6
	b _02039874
_02039872:
	mov r5, #7
_02039874:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #1
	bl sub_020C164C
	ldr r1, _02039A24 ; =sub_02039814
	mov r0, #1
	bl sub_020C144C
	mov r0, #1
	bl sub_020C161C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02039A28 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02039A2C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _02039A30 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _02039A34 ; =0x04000050
	mov r1, #0
	strh r1, [r3]
	ldr r0, _02039A38 ; =0x04001050
	sub r3, #0x50
	strh r1, [r0]
	ldr r2, [r3, #0]
	ldr r1, _02039A3C ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r1
	str r2, [r3, #0]
	ldr r2, [r0, #0]
	and r1, r2
	str r1, [r0, #0]
	ldr r0, _02039A40 ; =0x020E5EFC
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r6, r0, #0
	ldr r0, _02039A44 ; =0x020E5ED0
	bl sub_02018368
	mov r1, #0
	ldr r2, _02039A48 ; =0x020E5EE0
	add r0, r6, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r6, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _02039A4C ; =0x000001F7
	add r0, r6, #0
	mov r3, #2
	str r4, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r1, _02039A50 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _02039A50 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd6
	add r3, r4, #0
	bl sub_0200B144
	str r0, [sp, #0x10]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r7, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	str r0, [sp, #0x14]
	bl sub_0201D710
	add r0, r4, #0
	bl sub_0200B358
	add r4, r0, #0
	ldr r2, _02039A54 ; =0x020E5EC8
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x18
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _02039A4C ; =0x000001F7
	add r0, sp, #0x18
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r1, r5, #0
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0x18
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	add r0, sp, #0x18
	bl sub_0201A8FC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02039A24: .word sub_02039814
_02039A28: .word 0xFFFFE0FF
_02039A2C: .word 0x04001000
_02039A30: .word 0x021BF6DC
_02039A34: .word 0x04000050
_02039A38: .word 0x04001050
_02039A3C: .word 0xFFFF1FFF
_02039A40: .word 0x020E5EFC
_02039A44: .word 0x020E5ED0
_02039A48: .word 0x020E5EE0
_02039A4C: .word 0x000001F7
_02039A50: .word 0x00006C21
_02039A54: .word 0x020E5EC8
	thumb_func_end sub_02039834

	.rodata


	.global Unk_020E5EC8
Unk_020E5EC8: ; 0x020E5EC8
	.incbin "incbin/arm9_rodata.bin", 0x1288, 0x1290 - 0x1288

	.global Unk_020E5ED0
Unk_020E5ED0: ; 0x020E5ED0
	.incbin "incbin/arm9_rodata.bin", 0x1290, 0x12A0 - 0x1290

	.global Unk_020E5EE0
Unk_020E5EE0: ; 0x020E5EE0
	.incbin "incbin/arm9_rodata.bin", 0x12A0, 0x12BC - 0x12A0

	.global Unk_020E5EFC
Unk_020E5EFC: ; 0x020E5EFC
	.incbin "incbin/arm9_rodata.bin", 0x12BC, 0x28

