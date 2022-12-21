	.include "macros/function.inc"
	.include "include/unk_0208C010.inc"

	

	.text


	thumb_func_start sub_0208C010
sub_0208C010: ; 0x0208C010
	push {r3, lr}
	cmp r0, #7
	blt _0208C022
	blt _0208C01C
	bl sub_02022974
_0208C01C:
	ldr r0, _0208C02C ; =0x020F3EF0
	ldr r0, [r0, #0x64]
	pop {r3, pc}
_0208C022:
	mov r1, #0x24
	mul r1, r0
	ldr r0, _0208C030 ; =0x020F3F54
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0208C02C: .word 0x020F3EF0
_0208C030: .word 0x020F3F54
	thumb_func_end sub_0208C010

	thumb_func_start sub_0208C034
sub_0208C034: ; 0x0208C034
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0208C048
	bl sub_0208BE68
	cmp r0, #0
	bne _0208C048
	ldr r0, _0208C064 ; =0x020F3D18
	pop {r3, r4, r5, pc}
_0208C048:
	cmp r4, #3
	bne _0208C05A
	add r0, r5, #0
	bl sub_0208BE68
	cmp r0, #0
	bne _0208C05A
	ldr r0, _0208C068 ; =0x020F355C
	pop {r3, r4, r5, pc}
_0208C05A:
	add r0, r4, #0
	bl sub_0208C010
	pop {r3, r4, r5, pc}
	nop
_0208C064: .word 0x020F3D18
_0208C068: .word 0x020F355C
	thumb_func_end sub_0208C034

	thumb_func_start sub_0208C06C
sub_0208C06C: ; 0x0208C06C
	push {r3, r4}
	ldr r1, _0208C094 ; =0x00000818
	mov r3, #0
	ldr r4, [r0, r1]
	mov r1, #0x6e
	lsl r1, r1, #4
	str r3, [r0, r1]
_0208C07A:
	ldr r2, [r4, #0]
	cmp r2, #0
	beq _0208C086
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
_0208C086:
	add r3, r3, #1
	add r4, #0x24
	cmp r3, #5
	blt _0208C07A
	pop {r3, r4}
	bx lr
	nop
_0208C094: .word 0x00000818
	thumb_func_end sub_0208C06C

	.rodata


	.global Unk_020F3070
Unk_020F3070: ; 0x020F3070
	.incbin "incbin/arm9_rodata.bin", 0xE430, 0xE4E4 - 0xE430

	.global Unk_020F3124
Unk_020F3124: ; 0x020F3124
	.incbin "incbin/arm9_rodata.bin", 0xE4E4, 0xE598 - 0xE4E4

	.global Unk_020F31D8
Unk_020F31D8: ; 0x020F31D8
	.incbin "incbin/arm9_rodata.bin", 0xE598, 0xE64C - 0xE598

	.global Unk_020F328C
Unk_020F328C: ; 0x020F328C
	.incbin "incbin/arm9_rodata.bin", 0xE64C, 0xE700 - 0xE64C

	.global Unk_020F3340
Unk_020F3340: ; 0x020F3340
	.incbin "incbin/arm9_rodata.bin", 0xE700, 0xE7B4 - 0xE700

	.global Unk_020F33F4
Unk_020F33F4: ; 0x020F33F4
	.incbin "incbin/arm9_rodata.bin", 0xE7B4, 0xE868 - 0xE7B4

	.global Unk_020F34A8
Unk_020F34A8: ; 0x020F34A8
	.incbin "incbin/arm9_rodata.bin", 0xE868, 0xE91C - 0xE868

	.global Unk_020F355C
Unk_020F355C: ; 0x020F355C
	.incbin "incbin/arm9_rodata.bin", 0xE91C, 0xE9D0 - 0xE91C

	.global Unk_020F3610
Unk_020F3610: ; 0x020F3610
	.incbin "incbin/arm9_rodata.bin", 0xE9D0, 0xEA84 - 0xE9D0

	.global Unk_020F36C4
Unk_020F36C4: ; 0x020F36C4
	.incbin "incbin/arm9_rodata.bin", 0xEA84, 0xEB38 - 0xEA84

	.global Unk_020F3778
Unk_020F3778: ; 0x020F3778
	.incbin "incbin/arm9_rodata.bin", 0xEB38, 0xEBEC - 0xEB38

	.global Unk_020F382C
Unk_020F382C: ; 0x020F382C
	.incbin "incbin/arm9_rodata.bin", 0xEBEC, 0xECA0 - 0xEBEC

	.global Unk_020F38E0
Unk_020F38E0: ; 0x020F38E0
	.incbin "incbin/arm9_rodata.bin", 0xECA0, 0xED54 - 0xECA0

	.global Unk_020F3994
Unk_020F3994: ; 0x020F3994
	.incbin "incbin/arm9_rodata.bin", 0xED54, 0xEE08 - 0xED54

	.global Unk_020F3A48
Unk_020F3A48: ; 0x020F3A48
	.incbin "incbin/arm9_rodata.bin", 0xEE08, 0xEEBC - 0xEE08

	.global Unk_020F3AFC
Unk_020F3AFC: ; 0x020F3AFC
	.incbin "incbin/arm9_rodata.bin", 0xEEBC, 0xEF70 - 0xEEBC

	.global Unk_020F3BB0
Unk_020F3BB0: ; 0x020F3BB0
	.incbin "incbin/arm9_rodata.bin", 0xEF70, 0xF024 - 0xEF70

	.global Unk_020F3C64
Unk_020F3C64: ; 0x020F3C64
	.incbin "incbin/arm9_rodata.bin", 0xF024, 0xF0D8 - 0xF024

	.global Unk_020F3D18
Unk_020F3D18: ; 0x020F3D18
	.incbin "incbin/arm9_rodata.bin", 0xF0D8, 0xF18C - 0xF0D8

	.global Unk_020F3DCC
Unk_020F3DCC: ; 0x020F3DCC
	.incbin "incbin/arm9_rodata.bin", 0xF18C, 0xF240 - 0xF18C

	.global Unk_020F3E80
Unk_020F3E80: ; 0x020F3E80
	.incbin "incbin/arm9_rodata.bin", 0xF240, 0xF2F4 - 0xF240

	.global Unk_020F3F34
Unk_020F3F34: ; 0x020F3F34
	.incbin "incbin/arm9_rodata.bin", 0xF2F4, 0xFC

