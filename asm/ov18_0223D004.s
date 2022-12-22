	.include "macros/function.inc"
	.include "include/ov18_0223D004.inc"

	

	.text


	arm_func_start ov18_0223D004
ov18_0223D004: ; 0x0223D004
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0223D058 ; =0x00000608
	mov r1, #4
	bl ov18_02245068
	mov ip, r0
	ldr r3, _0223D05C ; =0x02253370
	mov r0, r4
	add r1, ip, #4
	mov r2, #0x600
	str ip, [r3]
	bl MIi_CpuCopyFast
	ldr r1, _0223D060 ; =ov18_0223D100
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223D05C ; =0x02253370
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223D058: .word 0x00000608
_0223D05C: .word 0x02253370
_0223D060: .word ov18_0223D100
	arm_func_end ov18_0223D004

	arm_func_start ov18_0223D064
ov18_0223D064: ; 0x0223D064
	stmfd sp!, {r3, lr}
	ldr r1, _0223D088 ; =0x02253370
	mov r0, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	bl ov18_022463CC
	ldr r0, _0223D08C ; =0x02253370
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D088: .word 0x02253370
_0223D08C: .word 0x02253370
	arm_func_end ov18_0223D064

	arm_func_start ov18_0223D090
ov18_0223D090: ; 0x0223D090
	ldr r0, _0223D0A4 ; =0x02253370
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x604]
	bx lr
	; .align 2, 0
_0223D0A4: .word 0x02253370
	arm_func_end ov18_0223D090

	arm_func_start ov18_0223D0A8
ov18_0223D0A8: ; 0x0223D0A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, _0223D0FC ; =0x02253370
	mov r7, r3
	ldr r3, [ip]
	mov r8, r0
	add r0, r3, #4
	add r4, r0, r1, lsl #1
	mov r5, #0
	cmp r7, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, r2, lsl #1
_0223D0D4:
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MIi_CpuCopy16
	add r5, r5, #1
	cmp r5, r7
	add r8, r8, #0x40
	add r4, r4, #0x40
	blt _0223D0D4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223D0FC: .word 0x02253370
	arm_func_end ov18_0223D0A8

	arm_func_start ov18_0223D100
ov18_0223D100: ; 0x0223D100
	stmfd sp!, {r3, lr}
	ldr r0, _0223D150 ; =0x02253370
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x604]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #4
	mov r1, #0x600
	bl DC_FlushRange
	ldr r0, _0223D150 ; =0x02253370
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x600
	add r0, r0, #4
	bl GX_LoadBG2Scr
	ldr r0, _0223D150 ; =0x02253370
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x604]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D150: .word 0x02253370
	arm_func_end ov18_0223D100

	arm_func_start ov18_0223D154
ov18_0223D154: ; 0x0223D154
	stmfd sp!, {r3, lr}
	ldr ip, _0223D188 ; =0x02253370
	add r3, r0, r1, lsl #5
	mov r0, r2, lsl #5
	ldr r1, _0223D18C ; =ov18_0223D190
	str r3, [ip, #4]
	add lr, r0, #0x5000000
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	str lr, [ip, #8]
	bl ov18_02246304
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D188: .word 0x02253370
_0223D18C: .word ov18_0223D190
	arm_func_end ov18_0223D154

	arm_func_start ov18_0223D190
ov18_0223D190: ; 0x0223D190
	stmfd sp!, {r4, lr}
	ldr r1, _0223D1B8 ; =0x02253370
	mov r4, r0
	mov r2, #0x20
	ldmib r1, {r0, r1}
	bl MIi_CpuCopy16
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223D1B8: .word 0x02253370
	arm_func_end ov18_0223D190

	arm_func_start ov18_0223D1BC
ov18_0223D1BC: ; 0x0223D1BC
	ldr r2, _0223D1DC ; =0x02253370
	ldr ip, _0223D1E0 ; =ov18_02246304
	str r0, [r2, #4]
	ldr r1, _0223D1E4 ; =ov18_0223D1E8
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bx ip
	; .align 2, 0
_0223D1DC: .word 0x02253370
_0223D1E0: .word ov18_02246304
_0223D1E4: .word ov18_0223D1E8
	arm_func_end ov18_0223D1BC

	arm_func_start ov18_0223D1E8
ov18_0223D1E8: ; 0x0223D1E8
	stmfd sp!, {r4, lr}
	ldr r1, _0223D214 ; =0x02253370
	mov r4, r0
	ldr r0, [r1, #4]
	mov r1, #0x5000000
	mov r2, #0x200
	bl MIi_CpuCopy16
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223D214: .word 0x02253370
	arm_func_end ov18_0223D1E8

	.bss


	.global Unk_ov18_02253370
Unk_ov18_02253370: ; 0x02253370
	.space 0x4

	.global Unk_ov18_02253374
Unk_ov18_02253374: ; 0x02253374
	.space 0x8

