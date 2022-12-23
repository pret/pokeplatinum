	.include "macros/function.inc"
	.include "overlay018/ov18_02232348.inc"

	

	.text


	arm_func_start ov18_02232348
ov18_02232348: ; 0x02232348
	stmfd sp!, {r3, lr}
	ldr r0, _02232370 ; =0x022532FC
	mov r1, #0
	strb r1, [r0]
	bl ov18_02232378
	mov r0, #0x21
	bl ov18_0222B7C8
	ldr r0, _02232374 ; =ov18_022323E4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232370: .word 0x022532FC
_02232374: .word ov18_022323E4
	arm_func_end ov18_02232348

	arm_func_start ov18_02232378
ov18_02232378: ; 0x02232378
	stmfd sp!, {r3, lr}
	ldr r0, _022323D4 ; =0x0224A090
	ldr r1, _022323D8 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r2, _022323DC ; =0x04001008
	ldr r1, _022323E0 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022323D4: .word 0x0224A090
_022323D8: .word GX_LoadBG2Scr
_022323DC: .word 0x04001008
_022323E0: .word 0x0400000A
	arm_func_end ov18_02232378

	arm_func_start ov18_022323E4
ov18_022323E4: ; 0x022323E4
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232414 ; =ov18_02232418
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232414: .word ov18_02232418
	arm_func_end ov18_022323E4

	arm_func_start ov18_02232418
ov18_02232418: ; 0x02232418
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222FA44
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02232444 ; =ov18_02232448
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232444: .word ov18_02232448
	arm_func_end ov18_02232418

	arm_func_start ov18_02232448
ov18_02232448: ; 0x02232448
	stmfd sp!, {r3, lr}
	bl ov18_022324FC
	bl ov18_02232458
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02232448

	arm_func_start ov18_02232458
ov18_02232458: ; 0x02232458
	bx lr
	arm_func_end ov18_02232458

	arm_func_start ov18_0223245C
ov18_0223245C: ; 0x0223245C
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02232494 ; =ov18_02232498
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232494: .word ov18_02232498
	arm_func_end ov18_0223245C

	arm_func_start ov18_02232498
ov18_02232498: ; 0x02232498
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _022324F8 ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022324F8: .word ov18_02231230
	arm_func_end ov18_02232498

	arm_func_start ov18_022324FC
ov18_022324FC: ; 0x022324FC
	stmfd sp!, {r3, lr}
	ldr r0, _02232528 ; =0x022532FC
	ldrb r1, [r0]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0]
	cmp r1, #0x78
	ldmloia sp!, {r3, pc}
	ldr r0, _0223252C ; =ov18_0223245C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232528: .word 0x022532FC
_0223252C: .word ov18_0223245C
	arm_func_end ov18_022324FC

	.data


	.global Unk_ov18_0224A090
Unk_ov18_0224A090: ; 0x0224A090
	.incbin "incbin/overlay18_data.bin", 0x930, 0x14



	.bss


	.global Unk_ov18_022532FC
Unk_ov18_022532FC: ; 0x022532FC
	.space 0x4

