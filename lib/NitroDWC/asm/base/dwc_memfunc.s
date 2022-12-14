	.include "macros/function.inc"
	.include "include/dwc_memfunc.inc"

	

	.text


	arm_func_start ov4_021D773C
ov4_021D773C: ; 0x021D773C
	sub r0, r0, #0x20
	bx lr
	arm_func_end ov4_021D773C

	arm_func_start ov4_021D7744
ov4_021D7744: ; 0x021D7744
	ldr r2, _021D7758 ; =0x4457434D
	str r2, [r0, #0]
	str r1, [r0, #4]
	add r0, r0, #0x20
	bx lr
	; .align 2, 0
_021D7758: .word 0x4457434D
	arm_func_end ov4_021D7744

	arm_func_start ov4_021D775C
ov4_021D775C: ; 0x021D775C
	stmfd sp!, {r3, lr}
	bl ov4_021D773C
	ldr r0, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021D775C

	arm_func_start DWC_SetMemFunc
DWC_SetMemFunc: ; 0x021D776C
	ldr r2, _021D777C ; =0x0221A4D4
	str r0, [r2, #4]
	str r1, [r2, #0]
	bx lr
	; .align 2, 0
_021D777C: .word Unk_ov4_0221A4D4
	arm_func_end DWC_SetMemFunc

	arm_func_start DWC_Alloc
DWC_Alloc: ; 0x021D7780
	ldr ip, _021D778C ; =DWC_AllocEx
	mov r2, #0x20
	bx ip
	; .align 2, 0
_021D778C: .word DWC_AllocEx
	arm_func_end DWC_Alloc

	arm_func_start DWC_AllocEx
DWC_AllocEx: ; 0x021D7790
	stmfd sp!, {r4, lr}
	ldr r3, _021D77C0 ; =0x0221A4D4
	mov r4, r1
	ldr r3, [r3, #4]
	add r1, r4, #0x20
	blx r3
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl ov4_021D7744
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D77C0: .word Unk_ov4_0221A4D4
	arm_func_end DWC_AllocEx

	arm_func_start DWC_Free
DWC_Free: ; 0x021D77C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r1
	bl ov4_021D773C
	mov r1, r0
	ldr r0, _021D77FC ; =0x0221A4D4
	ldr r2, [r1, #4]
	ldr r3, [r0, #0]
	mov r0, r4
	add r2, r2, #0x20
	blx r3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D77FC: .word Unk_ov4_0221A4D4
	arm_func_end DWC_Free

	arm_func_start DWC_Realloc
DWC_Realloc: ; 0x021D7800
	stmfd sp!, {r3, lr}
	mov ip, #0x20
	str ip, [sp]
	bl DWC_ReallocEx
	ldmia sp!, {r3, pc}
	arm_func_end DWC_Realloc

	arm_func_start DWC_ReallocEx
DWC_ReallocEx: ; 0x021D7814
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r7, r1
	ldr r2, [sp, #0x18]
	mov r1, r5
	mov r8, r0
	bl DWC_AllocEx
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	beq _021D7878
	mov r0, r7
	bl ov4_021D775C
	mov r6, r0
	cmp r6, r5
	movls r5, r6
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl DWC_Free
_021D7878:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWC_ReallocEx

	arm_func_start ov4_021D7880
ov4_021D7880: ; 0x021D7880
	ldr ip, _021D7890 ; =DWC_Alloc
	mov r1, r0
	mov r0, #5
	bx ip
	; .align 2, 0
_021D7890: .word DWC_Alloc
	arm_func_end ov4_021D7880

	arm_func_start ov4_021D7894
ov4_021D7894: ; 0x021D7894
	ldr ip, _021D78AC ; =DWC_Realloc
	mov r2, r1
	mov r1, r0
	mov r3, r2
	mov r0, #5
	bx ip
	; .align 2, 0
_021D78AC: .word DWC_Realloc
	arm_func_end ov4_021D7894

	arm_func_start ov4_021D78B0
ov4_021D78B0: ; 0x021D78B0
	ldr ip, _021D78C4 ; =DWC_Free
	mov r1, r0
	mov r0, #5
	mov r2, #0
	bx ip
	; .align 2, 0
_021D78C4: .word DWC_Free
	arm_func_end ov4_021D78B0

	.bss


	.global Unk_ov4_0221A4D4
Unk_ov4_0221A4D4: ; 0x0221A4D4
	.space 0x4

	.global Unk_ov4_0221A4D8
Unk_ov4_0221A4D8: ; 0x0221A4D8
	.space 0x4

