	.include "macros/function.inc"
	.include "include/unk_0209AA74.inc"

	

	.text


	thumb_func_start sub_0209AA74
sub_0209AA74: ; 0x0209AA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	cmp r1, #0
	bne _0209AA82
	mov r6, #1
	b _0209AA84
_0209AA82:
	mov r6, #0
_0209AA84:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	bl sub_0201777C
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
	ldr r0, _0209ABE4 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209ABE8 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209ABEC ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209ABF0 ; =0x04000050
	mov r1, #0
	strh r1, [r3]
	ldr r0, _0209ABF4 ; =0x04001050
	sub r3, #0x50
	strh r1, [r0]
	ldr r2, [r3, #0]
	ldr r1, _0209ABF8 ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r1
	str r2, [r3, #0]
	ldr r2, [r0, #0]
	and r1, r2
	str r1, [r0, #0]
	ldr r0, _0209ABFC ; =0x020F8B54
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0209AC00 ; =0x020F8B28
	bl sub_02018368
	mov r1, #0
	ldr r2, _0209AC04 ; =0x020F8B38
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _0209AC08 ; =0x000001F7
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
	ldr r1, _0209AC0C ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209AC0C ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #6
	add r3, r4, #0
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r2, _0209AC10 ; =0x020F8B20
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
	ldr r2, _0209AC08 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r7, #0
	add r1, r6, #0
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
_0209ABD6:
	bl sub_0200106C
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209ABD6
	; .align 2, 0
_0209ABE4: .word 0xFFFFE0FF
_0209ABE8: .word 0x04001000
_0209ABEC: .word 0x021BF6DC
_0209ABF0: .word 0x04000050
_0209ABF4: .word 0x04001050
_0209ABF8: .word 0xFFFF1FFF
_0209ABFC: .word 0x020F8B54
_0209AC00: .word 0x020F8B28
_0209AC04: .word 0x020F8B38
_0209AC08: .word 0x000001F7
_0209AC0C: .word 0x00006C21
_0209AC10: .word 0x020F8B20
	thumb_func_end sub_0209AA74

	.rodata


	.global Unk_020F8B20
Unk_020F8B20: ; 0x020F8B20
	.incbin "incbin/arm9_rodata.bin", 0x13EE0, 0x13EE8 - 0x13EE0

	.global Unk_020F8B28
Unk_020F8B28: ; 0x020F8B28
	.incbin "incbin/arm9_rodata.bin", 0x13EE8, 0x13EF8 - 0x13EE8

	.global Unk_020F8B38
Unk_020F8B38: ; 0x020F8B38
	.incbin "incbin/arm9_rodata.bin", 0x13EF8, 0x13F14 - 0x13EF8

	.global Unk_020F8B54
Unk_020F8B54: ; 0x020F8B54
	.incbin "incbin/arm9_rodata.bin", 0x13F14, 0x28

