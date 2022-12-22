	.include "macros/function.inc"
	.include "include/ov4_021EA7B4.inc"

	

	.text


	arm_func_start ov4_021EA7B4
ov4_021EA7B4: ; 0x021EA7B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	ldr r4, _021EA7F0 ; =0x022178D0
	mov r8, r0
	mov r7, r1
	mov r6, r5
_021EA7CC:
	ldrb r2, [r8, r5]
	mov r1, r4
	add r0, r7, r6
	bl sprintf
	add r5, r5, #1
	cmp r5, #0x10
	add r6, r6, #2
	blo _021EA7CC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021EA7F0: .word 0x022178D0
	arm_func_end ov4_021EA7B4

	arm_func_start ov4_021EA7F4
ov4_021EA7F4: ; 0x021EA7F4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0x10
	mov r5, r1
	mov r4, r2
	bl ov4_02215844
	add r0, sp, #0x10
	mov r1, r6
	mov r2, r5
	bl ov4_02215850
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov4_0221585C
	add r0, sp, #0
	mov r1, r4
	bl ov4_021EA7B4
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021EA7F4

	.data


	.global Unk_ov4_022178D0
Unk_ov4_022178D0: ; 0x022178D0
	.incbin "incbin/overlay4_data.bin", 0x1A50, 0x8

