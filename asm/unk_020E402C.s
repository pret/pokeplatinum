	.include "macros/function.inc"

	

	.text


	arm_func_start __call_static_initializers
__call_static_initializers: ; 0x020E402C
	stmfd sp!, {r4, lr}
	ldr r4, _020E4054 ; =0x020FECCC
	b _020E4040
_020E4038:
	blx r0
	add r4, r4, #4
_020E4040:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	bne _020E4038
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020E4054: .word 0x020FECCC
	arm_func_end __call_static_initializers

	arm_func_start __destroy_global_chain
__destroy_global_chain: ; 0x020E4058
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020E4098 ; =0x021D0D68
	ldr r2, [r4, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mvn r5, #0
_020E4070:
	ldr r0, [r2, #0]
	mov r1, r5
	str r0, [r4, #0]
	ldr r0, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [r4, #0]
	cmp r2, #0
	bne _020E4070
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020E4098: .word 0x021D0D68
	arm_func_end __destroy_global_chain

	.bss


	.global Unk_021D0D68
Unk_021D0D68: ; 0x021D0D68
	.space 0x4

