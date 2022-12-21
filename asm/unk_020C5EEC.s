	.include "macros/function.inc"
	.include "include/unk_020C5EEC.inc"

	

	.text


	arm_func_start sub_020C5EEC
sub_020C5EEC: ; 0x020C5EEC
	ldr r1, _020C5F54 ; =0xFFFFFD2D
	cmp r0, r1
	movlt r0, r1
	blt _020C5F04
	cmp r0, #0
	movgt r0, #0
_020C5F04:
	add r1, r0, #0xd3
	mvn r2, #0xef
	cmp r0, r2
	ldr r3, _020C5F58 ; =0x020FE1B0
	add r1, r1, #0x200
	ldrb r3, [r3, r1]
	movlt r0, #3
	blt _020C5F44
	add r1, r2, #0x78
	cmp r0, r1
	movlt r0, #2
	blt _020C5F44
	add r1, r2, #0xb4
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
_020C5F44:
	orr r0, r3, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_020C5F54: .word 0xFFFFFD2D
_020C5F58: .word 0x020FE1B0
	arm_func_end sub_020C5EEC

	.rodata


	.global Unk_020FD9B0
Unk_020FD9B0: ; 0x020FD9B0
	.incbin "incbin/arm9_rodata.bin", 0x18D70, 0x18E70 - 0x18D70

	.global Unk_020FDAB0
Unk_020FDAB0: ; 0x020FDAB0
	.incbin "incbin/arm9_rodata.bin", 0x18E70, 0x18F70 - 0x18E70

	.global Unk_020FDBB0
Unk_020FDBB0: ; 0x020FDBB0
	.incbin "incbin/arm9_rodata.bin", 0x18F70, 0x19570 - 0x18F70

	.global Unk_020FE1B0
Unk_020FE1B0: ; 0x020FE1B0
	.incbin "incbin/arm9_rodata.bin", 0x19570, 0x2D4

