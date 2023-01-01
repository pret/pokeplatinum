	.include "macros/function.inc"

	

	.text


	arm_func_start DWC_GetLastError
DWC_GetLastError: ; 0x021D75D4
	cmp r0, #0
	ldrne r1, _021D75F0 ; =0x0221A4CC
	ldrne r1, [r1, #4]
	strne r1, [r0]
	ldr r0, _021D75F0 ; =0x0221A4CC
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_021D75F0: .word 0x0221A4CC
	arm_func_end DWC_GetLastError

	arm_func_start DWC_GetLastErrorEx
DWC_GetLastErrorEx: ; 0x021D75F4
	cmp r0, #0
	ldrne r2, _021D76E4 ; =0x0221A4CC
	ldrne r2, [r2, #4]
	strne r2, [r0]
	cmp r1, #0
	beq _021D76D8
	ldr r0, _021D76E4 ; =0x0221A4CC
	ldr r0, [r0, #0]
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _021D76D0
_021D7620: ; jump table
	b _021D76D0 ; case 0
	b _021D76A0 ; case 1
	b _021D7670 ; case 2
	b _021D7670 ; case 3
	b _021D7670 ; case 4
	b _021D7670 ; case 5
	b _021D767C ; case 6
	b _021D7688 ; case 7
	b _021D7670 ; case 8
	b _021D76A0 ; case 9
	b _021D7694 ; case 10
	b _021D7694 ; case 11
	b _021D7694 ; case 12
	b _021D7694 ; case 13
	b _021D76AC ; case 14
	b _021D76B8 ; case 15
	b _021D76C4 ; case 16
	b _021D76B8 ; case 17
	b _021D76C4 ; case 18
	b _021D76B8 ; case 19
_021D7670:
	mov r0, #6
	str r0, [r1, #0]
	b _021D76D8
_021D767C:
	mov r0, #3
	str r0, [r1, #0]
	b _021D76D8
_021D7688:
	mov r0, #4
	str r0, [r1, #0]
	b _021D76D8
_021D7694:
	mov r0, #1
	str r0, [r1, #0]
	b _021D76D8
_021D76A0:
	mov r0, #7
	str r0, [r1, #0]
	b _021D76D8
_021D76AC:
	mov r0, #5
	str r0, [r1, #0]
	b _021D76D8
_021D76B8:
	mov r0, #6
	str r0, [r1, #0]
	b _021D76D8
_021D76C4:
	mov r0, #2
	str r0, [r1, #0]
	b _021D76D8
_021D76D0:
	mov r0, #0
	str r0, [r1, #0]
_021D76D8:
	ldr r0, _021D76E4 ; =0x0221A4CC
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_021D76E4: .word 0x0221A4CC
	arm_func_end DWC_GetLastErrorEx

	arm_func_start DWC_ClearError
DWC_ClearError: ; 0x021D76E8
	ldr r0, _021D7704 ; =0x0221A4CC
	ldr r1, [r0, #0]
	cmp r1, #9
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	bx lr
	; .align 2, 0
_021D7704: .word 0x0221A4CC
	arm_func_end DWC_ClearError

	arm_func_start ov4_021D7708
ov4_021D7708: ; 0x021D7708
	ldr r0, _021D7720 ; =0x0221A4CC
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_021D7720: .word 0x0221A4CC
	arm_func_end ov4_021D7708

	arm_func_start ov4_021D7724
ov4_021D7724: ; 0x021D7724
	ldr r2, _021D7738 ; =0x0221A4CC
	ldr r3, [r2, #0]
	cmp r3, #9
	stmneia r2, {r0, r1}
	bx lr
	; .align 2, 0
_021D7738: .word 0x0221A4CC
	arm_func_end ov4_021D7724

	.bss


	.global Unk_ov4_0221A4CC
Unk_ov4_0221A4CC: ; 0x0221A4CC
	.space 0x4

	.global Unk_ov4_0221A4D0
Unk_ov4_0221A4D0: ; 0x0221A4D0
	.space 0x4

