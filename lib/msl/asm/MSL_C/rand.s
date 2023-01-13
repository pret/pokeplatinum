	.include "macros/function.inc"

	

	.text


	arm_func_start rand
rand: ; 0x020D76A0
	ldr r2, _020D76C8 ; =0x02101818
	ldr r0, _020D76CC ; =0x41C64E6D
	ldr r3, [r2, #0]
	ldr r1, _020D76D0 ; =0x00007FFF
	mul r0, r3, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [r2, #0]
	and r0, r1, r0, lsr #16
	bx lr
	; .align 2, 0
_020D76C8: .word Unk_02101818
_020D76CC: .word 0x41C64E6D
_020D76D0: .word 0x00007FFF
	arm_func_end rand

	arm_func_start srand
srand: ; 0x020D76D4
	ldr r1, _020D76E0 ; =0x02101818
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020D76E0: .word Unk_02101818
	arm_func_end srand

	.data


	.global Unk_02101818
Unk_02101818: ; 0x02101818
	.incbin "incbin/arm9_data.bin", 0x2B38, 0x4

