	.include "macros/function.inc"
	.include "include/unk_0200D9E8.inc"

	

	.text


	thumb_func_start sub_0200D9E8
sub_0200D9E8: ; 0x0200D9E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA00 ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x18]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA00: .word 0x021BF67C
	thumb_func_end sub_0200D9E8

	thumb_func_start sub_0200DA04
sub_0200DA04: ; 0x0200DA04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA1C ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x1c]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA1C: .word 0x021BF67C
	thumb_func_end sub_0200DA04

	thumb_func_start sub_0200DA20
sub_0200DA20: ; 0x0200DA20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA38 ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA38: .word 0x021BF67C
	thumb_func_end sub_0200DA20

	thumb_func_start sub_0200DA3C
sub_0200DA3C: ; 0x0200DA3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA54 ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA54: .word 0x021BF67C
	thumb_func_end sub_0200DA3C

	thumb_func_start sub_0200DA58
sub_0200DA58: ; 0x0200DA58
	ldr r3, _0200DA5C ; =sub_0201CEA8
	bx r3
	; .align 2, 0
_0200DA5C: .word sub_0201CEA8
	thumb_func_end sub_0200DA58