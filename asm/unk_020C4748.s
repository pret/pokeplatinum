	.include "macros/function.inc"
	.include "include/unk_020C4748.inc"

	

	.text


	arm_func_start sub_020C4748
sub_020C4748: ; 0x020C4748
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r4, r3
	mov r1, #0x10000000
	mov r5, r2
	bl sub_020C4670
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl sub_020C46F4
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl sub_020C458C
	ldr r3, _020C47A4 ; =0x96600000
	mov r0, r7
	mov r1, r6
	mov r2, r5
	orr r3, r3, r4, lsr #2
	bl sub_01FF8480
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C47A4: .word 0x96600000
	arm_func_end sub_020C4748

	arm_func_start sub_020C47A8
sub_020C47A8: ; 0x020C47A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r4, r3
	mov r1, #0x10000000
	mov r5, r2
	bl sub_020C4670
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl sub_020C46F4
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl sub_020C458C
	ldr r3, _020C4804 ; =0x92600000
	mov r0, r7
	mov r1, r6
	mov r2, r5
	orr r3, r3, r4, lsr #1
	bl sub_01FF8480
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C4804: .word 0x92600000
	arm_func_end sub_020C47A8