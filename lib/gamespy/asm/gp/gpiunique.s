	.include "macros/function.inc"
	.include "include/gpiunique.inc"

	

	.text


	arm_func_start ov4_021F571C
ov4_021F571C: ; 0x021F571C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r2
	mov r5, r1
	mov r1, r4
	mov r2, #1
	mov r6, r0
	bl ov4_021F58A0
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021F5814 ; =0x02219174
	mov r0, r4
	mov r2, #4
	bl strncmp
	cmp r0, #0
	beq _021F5790
	ldr r2, _021F5818 ; =0x0221917C
	mov r0, r6
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F5790:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _021F57FC
	mov r0, #4
	bl DWCi_GsMalloc
	movs r3, r0
	bne _021F57D0
	ldr r1, _021F581C ; =0x022191AC
	mov r0, r6
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F57D0:
	mov r2, #0
	str r2, [r3, #0]
	str r5, [sp]
	add r1, sp, #8
	str r2, [sp, #4]
	mov r0, r6
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, pc}
_021F57FC:
	mov r0, r6
	mov r1, r5
	bl ov4_021F1BA8
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F5814: .word Unk_ov4_02219174
_021F5818: .word Unk_ov4_0221917C
_021F581C: .word Unk_ov4_022191AC
	arm_func_end ov4_021F571C

	.data


	.global Unk_ov4_02219174
Unk_ov4_02219174: ; 0x02219174
	.incbin "incbin/overlay4_data.bin", 0x32F4, 0x32FC - 0x32F4

	.global Unk_ov4_0221917C
Unk_ov4_0221917C: ; 0x0221917C
	.incbin "incbin/overlay4_data.bin", 0x32FC, 0x332C - 0x32FC

	.global Unk_ov4_022191AC
Unk_ov4_022191AC: ; 0x022191AC
	.incbin "incbin/overlay4_data.bin", 0x332C, 0xF

