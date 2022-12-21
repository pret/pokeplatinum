	.include "macros/function.inc"
	.include "include/unk_020BDBC8.inc"

	

	.text


	arm_func_start sub_020BDBC8
sub_020BDBC8: ; 0x020BDBC8
	bx lr
	arm_func_end sub_020BDBC8

	arm_func_start sub_020BDBCC
sub_020BDBCC: ; 0x020BDBCC
	cmp r0, #0
	ldr r2, _020BDC04 ; =0x7FFFF000
	blt _020BDBE8
	and r3, r0, r2
	str r3, [r1, #0]
	and r0, r0, r2, lsr #19
	bx lr
_020BDBE8:
	rsb ip, r0, #0
	and r0, ip, r2
	rsb r3, r0, #0
	and r0, ip, r2, lsr #19
	str r3, [r1, #0]
	rsb r0, r0, #0
	bx lr
	; .align 2, 0
_020BDC04: .word 0x7FFFF000
	arm_func_end sub_020BDBCC