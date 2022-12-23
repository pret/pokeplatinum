	.include "macros/function.inc"
	.include "overlay004/ov4_02208214.inc"

	

	.text


	arm_func_start ov4_02208214
ov4_02208214: ; 0x02208214
	ldr ip, _02208224 ; =ov4_0220822C
	mov r1, r0
	ldr r0, _02208228 ; =0x0221DC5C
	bx ip
	; .align 2, 0
_02208224: .word ov4_0220822C
_02208228: .word 0x0221DC5C
	arm_func_end ov4_02208214

	arm_func_start ov4_0220822C
ov4_0220822C: ; 0x0220822C
	ldr r2, [r0, #0]
	str r2, [r1, #0x7c]
	str r1, [r0, #0]
	bx lr
	arm_func_end ov4_0220822C

	arm_func_start ov4_0220823C
ov4_0220823C: ; 0x0220823C
	ldr ip, _0220824C ; =ov4_0220822C
	mov r1, r0
	ldr r0, _02208250 ; =0x0221DC60
	bx ip
	; .align 2, 0
_0220824C: .word ov4_0220822C
_02208250: .word 0x0221DC60
	arm_func_end ov4_0220823C

	arm_func_start ov4_02208254
ov4_02208254: ; 0x02208254
	ldr ip, _02208264 ; =ov4_0220826C
	mov r1, r0
	ldr r0, _02208268 ; =0x0221DC5C
	bx ip
	; .align 2, 0
_02208264: .word ov4_0220826C
_02208268: .word 0x0221DC5C
	arm_func_end ov4_02208254

	arm_func_start ov4_0220826C
ov4_0220826C: ; 0x0220826C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl ov4_02208288
	cmp r0, #0
	ldrne r1, [r4, #0x7c]
	strne r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220826C

	arm_func_start ov4_02208288
ov4_02208288: ; 0x02208288
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _022082AC
_02208294:
	cmp r2, r1
	bxeq lr
	add r0, r2, #0x7c
	ldr r2, [r2, #0x7c]
	cmp r2, #0
	bne _02208294
_022082AC:
	mov r0, #0
	bx lr
	arm_func_end ov4_02208288

	arm_func_start ov4_022082B4
ov4_022082B4: ; 0x022082B4
	ldr ip, _022082C4 ; =ov4_0220826C
	mov r1, r0
	ldr r0, _022082C8 ; =0x0221DC60
	bx ip
	; .align 2, 0
_022082C4: .word ov4_0220826C
_022082C8: .word 0x0221DC60
	arm_func_end ov4_022082B4

	arm_func_start ov4_022082CC
ov4_022082CC: ; 0x022082CC
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0
	ble _022082EC
	ldr r0, _022082FC ; =0x0221DC5C
	bl ov4_02208288
	cmp r0, #0
	bne _022082F4
_022082EC:
	mov r0, #1
	ldmia sp!, {r3, pc}
_022082F4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022082FC: .word 0x0221DC5C
	arm_func_end ov4_022082CC

	arm_func_start ov4_02208300
ov4_02208300: ; 0x02208300
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, _02208320 ; =0x0221DC60
	bl ov4_02208288
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02208320: .word 0x0221DC60
	arm_func_end ov4_02208300

	.bss


	.global Unk_ov4_0221DC5C
Unk_ov4_0221DC5C: ; 0x0221DC5C
	.space 0x4

	.global Unk_ov4_0221DC60
Unk_ov4_0221DC60: ; 0x0221DC60
	.space 0x4

