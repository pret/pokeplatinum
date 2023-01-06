	.include "macros/function.inc"
	.include "include/util.inc"

	

	.text


	arm_func_start ov4_022156C0
ov4_022156C0: ; 0x022156C0
	mov ip, #0
_022156C4:
	ldrb r3, [r0, ip]
	ldrb r2, [r1, ip]
	cmp r3, r2
	movne r0, #0
	bxne lr
	add ip, ip, #1
	cmp ip, #6
	blt _022156C4
	mov r0, #1
	bx lr
	arm_func_end ov4_022156C0

	arm_func_start ov4_022156EC
ov4_022156EC: ; 0x022156EC
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov4_02213964
	cmp r0, #0
	mov r5, #0
	beq _02215720
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #9
	bne _02215720
	bl ov4_022157B0
	mov r5, r0
_02215720:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_022156EC

	arm_func_start ov4_02215730
ov4_02215730: ; 0x02215730
	stmfd sp!, {r3, lr}
	ldr r1, _022157A8 ; =0x0221F7DC
	mov r0, #0
	ldrb r1, [r1]
	cmp r1, #0x10
	bls _02215774
	ldr r3, _022157AC ; =0x0221F7E0
	mov r2, r0
_02215750:
	ldrb r1, [r3], #1
	add r2, r2, #1
	cmp r2, #0x10
	add r0, r0, r1
	blt _02215750
	mov r1, r0, asr #3
	add r0, r0, r1, lsr #28
	mov r0, r0, asr #4
	b _022157A0
_02215774:
	cmp r1, #0
	beq _022157A0
	mov ip, r0
	ble _0221579C
	ldr r3, _022157AC ; =0x0221F7E0
_02215788:
	ldrb r2, [r3], #1
	add ip, ip, #1
	cmp ip, r1
	add r0, r0, r2
	blt _02215788
_0221579C:
	bl _s32_div_f
_022157A0:
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022157A8: .word Unk_ov4_0221F7DC
_022157AC: .word Unk_ov4_0221F7E0
	arm_func_end ov4_02215730

	arm_func_start ov4_022157B0
ov4_022157B0: ; 0x022157B0
	stmfd sp!, {r3, lr}
	bl ov4_02215730
	mov r1, #0
	cmp r0, #0x1c
	movhs r1, #3
	bhs _022157DC
	cmp r0, #0x16
	movhs r1, #2
	bhs _022157DC
	cmp r0, #0x10
	movhs r1, #1
_022157DC:
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022157B0

	arm_func_start ov4_022157E4
ov4_022157E4: ; 0x022157E4
	stmfd sp!, {r3, lr}
	ldr r2, _0221583C ; =0x0221F7DC
	tst r0, #2
	ldrb ip, [r2]
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	mov r1, ip, lsr #0x1f
	and lr, r0, #0xff
	rsb r0, r1, ip, lsl #28
	ldr r3, _02215840 ; =0x0221F7E0
	add r0, r1, r0, ror #28
	strb lr, [r3, r0]
	add r0, ip, #1
	cmp ip, #0x10
	strlob r0, [r2]
	ldmloia sp!, {r3, pc}
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	add r0, r0, #0x10
	strb r0, [r2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0221583C: .word Unk_ov4_0221F7DC
_02215840: .word Unk_ov4_0221F7E0
	arm_func_end ov4_022157E4

	.bss


	.global Unk_ov4_0221F7DC
Unk_ov4_0221F7DC: ; 0x0221F7DC
	.space 0x4

	.global Unk_ov4_0221F7E0
Unk_ov4_0221F7E0: ; 0x0221F7E0
	.space 0x20

