	.include "macros/function.inc"
	.include "include/dwci_lobbynewha.inc"

	.extern Unk_ov66_0225B6E4

	.text


	arm_func_start ov66_022462DC
ov66_022462DC: ; 0x022462DC
	stmfd sp!, {r3, lr}
	ldr r0, _02246300 ; =0x0225B6E8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_022543DC
	ldr r0, _02246304 ; =0x0225B6E4
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02246300: .word Unk_ov66_0225B6E8
_02246304: .word Unk_ov66_0225B6E4
	arm_func_end ov66_022462DC

	arm_func_start ov66_02246308
ov66_02246308: ; 0x02246308
	stmfd sp!, {r3, lr}
	ldr r0, _0224635C ; =0x0225B6E8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02246334
	mov r0, #0
	mov r2, r0
	bl DWC_Free
	ldr r0, _0224635C ; =0x0225B6E8
	mov r1, #0
	str r1, [r0, #4]
_02246334:
	ldr r0, _0224635C ; =0x0225B6E8
	mov r1, #2
	ldr r3, [r0, #0]
	mov r2, #5
	str r1, [r3, #0x58]
	ldr r1, _02246360 ; =ov66_022462DC
	ldr r0, _02246364 ; =0x0225B6E4
	str r2, [r3, #4]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0224635C: .word Unk_ov66_0225B6E8
_02246360: .word ov66_022462DC
_02246364: .word Unk_ov66_0225B6E4
	arm_func_end ov66_02246308

	arm_func_start ov66_02246368
ov66_02246368: ; 0x02246368
	stmfd sp!, {r3, lr}
	ldr r1, _022463CC ; =0x0225B6E8
	str r0, [r1, #0]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02246398
	mov r0, #0
	mov r2, r0
	bl DWC_Free
	ldr r0, _022463CC ; =0x0225B6E8
	mov r1, #0
	str r1, [r0, #4]
_02246398:
	mov r0, #0
	mov r1, #0x400
	bl DWC_Alloc
	ldr r1, _022463CC ; =0x0225B6E8
	cmp r0, #0
	str r0, [r1, #4]
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _022463D0 ; =ov66_02246308
	ldr r1, _022463D4 ; =0x0225B6E4
	mov r0, #1
	str r2, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022463CC: .word Unk_ov66_0225B6E8
_022463D0: .word ov66_02246308
_022463D4: .word Unk_ov66_0225B6E4
	arm_func_end ov66_02246368

	arm_func_start ov66_022463D8
ov66_022463D8: ; 0x022463D8
	stmfd sp!, {r3, lr}
	ldr r0, _02246408 ; =0x0225B6E8
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	mov r2, r0
	bl DWC_Free
	ldr r0, _02246408 ; =0x0225B6E8
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02246408: .word Unk_ov66_0225B6E8
	arm_func_end ov66_022463D8
	.bss


	.global Unk_ov66_0225B6E8
Unk_ov66_0225B6E8: ; 0x0225B6E8
	.space 0x4

	.global Unk_ov66_0225B6EC
Unk_ov66_0225B6EC: ; 0x0225B6EC
	.space 0x4

