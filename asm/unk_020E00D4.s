	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020E00D4
sub_020E00D4: ; 0x020E00D4
	tst r1, #-0x80000000
	bne _020E010C
	ldr r2, _020E0128 ; =0x0000041E
	subs r2, r2, r1, lsr #20
	blt _020E0120
	cmp r2, #0x20
	bge _020E0104
	mov r3, r1, lsl #0xb
	orr r3, r3, #0x80000000
	orr r3, r3, r0, lsr #21
	mov r0, r3, lsr r2
	bx lr
_020E0104:
	mov r0, #0
	bx lr
_020E010C:
	cmn r1, #0x100000
	cmpeq r0, #0
	movls r0, #0
	mvnhi r0, #0
	bx lr
_020E0120:
	mvn r0, #0
	bx lr
	; .align 2, 0
_020E0128: .word 0x0000041E
	arm_func_end sub_020E00D4