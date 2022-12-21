	.include "macros/function.inc"
	.include "include/unk_02039A64.inc"

	

	.text


	thumb_func_start sub_02039A64
sub_02039A64: ; 0x02039A64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
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
	ldr r0, _02039C40 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02039C44 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _02039C48 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _02039C4C ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _02039C50 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _02039C54 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _02039C58 ; =0x020E5F7C
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	str r0, [sp, #0x10]
	ldr r0, _02039C5C ; =0x020E5F50
	bl sub_02018368
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, _02039C60 ; =0x020E5F60
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _02039C64 ; =0x000001F7
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
	ldr r1, _02039C68 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _02039C68 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	ldr r2, _02039C6C ; =0x000002B7
	mov r0, #1
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r0, [sp, #0x10]
	ldr r2, _02039C70 ; =0x020E5F48
	add r1, sp, #0x14
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _02039C64 ; =0x000001F7
	add r0, sp, #0x14
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0x14
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
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
	ldr r4, _02039C74 ; =0x04000130
	ldr r6, _02039C78 ; =0x027FFFA8
	mov r7, #1
_02039BBC:
	ldrh r1, [r4]
	ldrh r0, [r6]
	orr r1, r0
	ldr r0, _02039C7C ; =0x00002FFF
	eor r1, r0
	and r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	bl sub_0200106C
	add r0, r5, #0
	tst r0, r7
	bne _02039BE0
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	b _02039BBC
_02039BE0:
	add r0, sp, #0x14
	bl sub_0201A8FC
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_02019044
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02039C40: .word 0xFFFFE0FF
_02039C44: .word 0x04001000
_02039C48: .word 0x021BF6DC
_02039C4C: .word 0x04000050
_02039C50: .word 0x04001050
_02039C54: .word 0xFFFF1FFF
_02039C58: .word 0x020E5F7C
_02039C5C: .word 0x020E5F50
_02039C60: .word 0x020E5F60
_02039C64: .word 0x000001F7
_02039C68: .word 0x00006C21
_02039C6C: .word 0x000002B7
_02039C70: .word 0x020E5F48
_02039C74: .word 0x04000130
_02039C78: .word 0x027FFFA8
_02039C7C: .word 0x00002FFF
	thumb_func_end sub_02039A64

	.rodata


	.global Unk_020E5F48
Unk_020E5F48: ; 0x020E5F48
	.incbin "incbin/arm9_rodata.bin", 0x1308, 0x1310 - 0x1308

	.global Unk_020E5F50
Unk_020E5F50: ; 0x020E5F50
	.incbin "incbin/arm9_rodata.bin", 0x1310, 0x1320 - 0x1310

	.global Unk_020E5F60
Unk_020E5F60: ; 0x020E5F60
	.incbin "incbin/arm9_rodata.bin", 0x1320, 0x133C - 0x1320

	.global Unk_020E5F7C
Unk_020E5F7C: ; 0x020E5F7C
	.incbin "incbin/arm9_rodata.bin", 0x133C, 0x28

