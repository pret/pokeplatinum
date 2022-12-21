	.include "macros/function.inc"
	.include "include/unk_0203D178.inc"

	

	.text


	thumb_func_start sub_0203D178
sub_0203D178: ; 0x0203D178
	ldr r2, _0203D18C ; =0x020EA12C
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	nop
_0203D18C: .word 0x020EA12C
	thumb_func_end sub_0203D178

	thumb_func_start sub_0203D190
sub_0203D190: ; 0x0203D190
	ldr r2, _0203D1A4 ; =0x020EA140
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	nop
_0203D1A4: .word 0x020EA140
	thumb_func_end sub_0203D190

	thumb_func_start sub_0203D1A8
sub_0203D1A8: ; 0x0203D1A8
	push {r3, lr}
	bl sub_0203A790
	bl sub_0203A720
	bl sub_0203D178
	pop {r3, pc}
	thumb_func_end sub_0203D1A8

	.rodata


	.global Unk_020EA12C
Unk_020EA12C: ; 0x020EA12C
	.incbin "incbin/arm9_rodata.bin", 0x54EC, 0x5500 - 0x54EC

	.global Unk_020EA140
Unk_020EA140: ; 0x020EA140
	.incbin "incbin/arm9_rodata.bin", 0x5500, 0x14

