	.include "macros/function.inc"
	.include "include/unk_020C3790.inc"

	.extern Unk_021CCFB4
	

	.text


	arm_func_start OS_InitTick
OS_InitTick: ; 0x020C3790
	stmfd sp!, {r3, lr}
	ldr r1, _020C37FC ; =0x021CCFB4
	ldrh r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	mov r0, #0
	strh r2, [r1]
	bl OSi_SetTimerReserved
	ldr r0, _020C37FC ; =0x021CCFB4
	mov r2, #0
	str r2, [r0, #8]
	ldr r3, _020C3800 ; =0x04000102
	str r2, [r0, #0xc]
	strh r2, [r3]
	ldr r1, _020C3804 ; =OSi_CountUpTick
	strh r2, [r3, #-2]
	mov r2, #0xc1
	mov r0, #8
	strh r2, [r3]
	bl OS_SetIrqFunction
	mov r0, #8
	bl OS_EnableIrqMask
	ldr r0, _020C37FC ; =0x021CCFB4
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C37FC: .word Unk_021CCFB4
_020C3800: .word 0x04000102
_020C3804: .word OSi_CountUpTick
	arm_func_end OS_InitTick

	arm_func_start OS_IsTickAvailable
OS_IsTickAvailable: ; 0x020C3808
	ldr r0, _020C3814 ; =0x021CCFB4
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020C3814: .word Unk_021CCFB4
	arm_func_end OS_IsTickAvailable

	arm_func_start OSi_CountUpTick
OSi_CountUpTick: ; 0x020C3818
	ldr r0, _020C3870 ; =0x021CCFB4
	mov r3, #0
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	adds r2, r2, #1
	str r2, [r0, #8]
	adc r1, r1, #0
	str r1, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C385C
	ldr r2, _020C3874 ; =0x04000102
	mov r1, #0xc1
	strh r3, [r2]
	strh r3, [r2, #-2]
	strh r1, [r2]
	str r3, [r0, #4]
_020C385C:
	ldr ip, _020C3878 ; =OSi_EnterTimerCallback
	mov r0, #0
	ldr r1, _020C387C ; =OSi_CountUpTick
	mov r2, r0
	bx ip
	; .align 2, 0
_020C3870: .word Unk_021CCFB4
_020C3874: .word 0x04000102
_020C3878: .word OSi_EnterTimerCallback
_020C387C: .word OSi_CountUpTick
	arm_func_end OSi_CountUpTick

	arm_func_start OS_GetTick
OS_GetTick: ; 0x020C3880
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	bl OS_DisableInterrupts
	ldr lr, _020C3914 ; =0x04000100
	ldr r2, _020C3918 ; =0x0000FFFF
	ldrh ip, [lr]
	ldr r3, _020C391C ; =0x021CCFB4
	sub r1, r2, #0x10000
	strh ip, [sp]
	ldr ip, [r3, #8]
	ldr r3, [r3, #0xc]
	and ip, ip, r1
	and r1, r3, r2
	str ip, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [lr, #0x114]
	tst r1, #8
	beq _020C38EC
	ldrh r1, [sp]
	tst r1, #0x8000
	bne _020C38EC
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r2, #1
	adc r1, r1, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
_020C38EC:
	bl OS_RestoreInterrupts
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldrh r0, [sp]
	mov r1, r1, lsl #0x10
	orr r1, r1, r2, lsr #16
	orr r1, r1, r0, asr #31
	orr r0, r0, r2, lsl #16
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020C3914: .word 0x04000100
_020C3918: .word 0x0000FFFF
_020C391C: .word Unk_021CCFB4
	arm_func_end OS_GetTick

	arm_func_start OS_GetTickLo
OS_GetTickLo: ; 0x020C3920
	ldr r0, _020C392C ; =0x04000100
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020C392C: .word 0x04000100
	arm_func_end OS_GetTickLo

	.bss


	.global Unk_021CCFB4
Unk_021CCFB4: ; 0x021CCFB4
	.space 0x2

	.global Unk_021CCFB8
Unk_021CCFB8: ; 0x021CCFB8
	.space 0x4

	.global Unk_021CCFBC
Unk_021CCFBC: ; 0x021CCFBC
	.space 0x8

