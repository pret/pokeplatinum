	.include "macros/function.inc"
	.include "include/unk_020986CC.inc"

	

	.text


	thumb_func_start sub_020986CC
sub_020986CC: ; 0x020986CC
	ldr r3, _020986E4 ; =0x020F681C
	mov r2, #0
_020986D0:
	ldrb r1, [r3]
	cmp r0, r1
	beq _020986DE
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #6
	blt _020986D0
_020986DE:
	add r0, r2, #0
	bx lr
	nop
_020986E4: .word 0x020F681C
	thumb_func_end sub_020986CC

	thumb_func_start sub_020986E8
sub_020986E8: ; 0x020986E8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #6
	blt _020986F4
	bl sub_02022974
_020986F4:
	ldr r0, _020986FC ; =0x020F681C
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_020986FC: .word 0x020F681C
	thumb_func_end sub_020986E8

	.rodata


	.global Unk_020F681C
Unk_020F681C: ; 0x020F681C
	.incbin "incbin/arm9_rodata.bin", 0x11BDC, 0x6

