	.include "macros/function.inc"
	.include "include/unk_0202419C.inc"

	

	.text


	thumb_func_start sub_0202419C
sub_0202419C: ; 0x0202419C
	ldr r0, _020241AC ; =0x021C0788
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, _020241B0 ; =0x021C0788
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020241AC: .word 0x021C0788
_020241B0: .word 0x021C0788
	thumb_func_end sub_0202419C

	thumb_func_start sub_020241B4
sub_020241B4: ; 0x020241B4
	ldr r3, _020241B8 ; =G3X_Reset
	bx r3
	; .align 2, 0
_020241B8: .word G3X_Reset
	thumb_func_end sub_020241B4

	thumb_func_start sub_020241BC
sub_020241BC: ; 0x020241BC
	ldr r2, _020241C8 ; =0x021C0788
	str r0, [r2, #4]
	str r1, [r2, #8]
	mov r0, #1
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
_020241C8: .word 0x021C0788
	thumb_func_end sub_020241BC

	thumb_func_start sub_020241CC
sub_020241CC: ; 0x020241CC
	ldr r0, _020241E8 ; =0x021C0788
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _020241E4
	ldr r1, [r0, #8]
	ldr r2, [r0, #4]
	lsl r1, r1, #1
	orr r2, r1
	ldr r1, _020241EC ; =0x04000540
	str r2, [r1, #0]
	mov r1, #0
	str r1, [r0, #0]
_020241E4:
	bx lr
	nop
_020241E8: .word 0x021C0788
_020241EC: .word 0x04000540
	thumb_func_end sub_020241CC

	.bss


	.global Unk_021C0788
Unk_021C0788: ; 0x021C0788
	.space 0xC

