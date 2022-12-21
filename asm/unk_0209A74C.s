	.include "macros/function.inc"
	.include "include/unk_0209A74C.inc"

	

	.text


	thumb_func_start sub_0209A74C
sub_0209A74C: ; 0x0209A74C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
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
	ldr r0, _0209A8B0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209A8B4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209A8B8 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209A8BC ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0209A8C0 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _0209A8C4 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _0209A8C8 ; =0x020F8AF8
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0209A8CC ; =0x020F8ACC
	bl sub_02018368
	mov r1, #0
	ldr r2, _0209A8D0 ; =0x020F8ADC
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _0209A8D4 ; =0x000001F7
	add r0, r5, #0
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
	ldr r1, _0209A8D8 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209A8D8 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #5
	add r3, r4, #0
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r2, _0209A8DC ; =0x020F8AC4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209A8D4 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0xc
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
	mov r4, #1
_0209A8A0:
	bl sub_0200106C
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209A8A0
	nop
_0209A8B0: .word 0xFFFFE0FF
_0209A8B4: .word 0x04001000
_0209A8B8: .word 0x021BF6DC
_0209A8BC: .word 0x04000050
_0209A8C0: .word 0x04001050
_0209A8C4: .word 0xFFFF1FFF
_0209A8C8: .word 0x020F8AF8
_0209A8CC: .word 0x020F8ACC
_0209A8D0: .word 0x020F8ADC
_0209A8D4: .word 0x000001F7
_0209A8D8: .word 0x00006C21
_0209A8DC: .word 0x020F8AC4
	thumb_func_end sub_0209A74C

	thumb_func_start sub_0209A8E0
sub_0209A8E0: ; 0x0209A8E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
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
	ldr r0, _0209AA44 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209AA48 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209AA4C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209AA50 ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0209AA54 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _0209AA58 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _0209AA5C ; =0x020F8AF8
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0209AA60 ; =0x020F8ACC
	bl sub_02018368
	mov r1, #0
	ldr r2, _0209AA64 ; =0x020F8ADC
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _0209AA68 ; =0x000001F7
	add r0, r5, #0
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
	ldr r1, _0209AA6C ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209AA6C ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #5
	add r3, r4, #0
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r2, _0209AA70 ; =0x020F8AC4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209AA68 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0xc
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
	mov r4, #1
_0209AA34:
	bl sub_0200106C
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209AA34
	nop
_0209AA44: .word 0xFFFFE0FF
_0209AA48: .word 0x04001000
_0209AA4C: .word 0x021BF6DC
_0209AA50: .word 0x04000050
_0209AA54: .word 0x04001050
_0209AA58: .word 0xFFFF1FFF
_0209AA5C: .word 0x020F8AF8
_0209AA60: .word 0x020F8ACC
_0209AA64: .word 0x020F8ADC
_0209AA68: .word 0x000001F7
_0209AA6C: .word 0x00006C21
_0209AA70: .word 0x020F8AC4
	thumb_func_end sub_0209A8E0

	.rodata


	.global Unk_020F8AC4
Unk_020F8AC4: ; 0x020F8AC4
	.incbin "incbin/arm9_rodata.bin", 0x13E84, 0x13E8C - 0x13E84

	.global Unk_020F8ACC
Unk_020F8ACC: ; 0x020F8ACC
	.incbin "incbin/arm9_rodata.bin", 0x13E8C, 0x13E9C - 0x13E8C

	.global Unk_020F8ADC
Unk_020F8ADC: ; 0x020F8ADC
	.incbin "incbin/arm9_rodata.bin", 0x13E9C, 0x13EB8 - 0x13E9C

	.global Unk_020F8AF8
Unk_020F8AF8: ; 0x020F8AF8
	.incbin "incbin/arm9_rodata.bin", 0x13EB8, 0x28

