	.include "macros/function.inc"
	.include "overlay018/ov18_0223A1D0.inc"

	

	.text


	arm_func_start ov18_0223A1D0
ov18_0223A1D0: ; 0x0223A1D0
	stmfd sp!, {r3, lr}
	ldr r0, _0223A230 ; =0x02253348
	mov r1, #0
	strh r1, [r0, #2]
	strb r1, [r0]
	bl ov18_0223A238
	mov r0, #0x33
	sub r1, r0, #0x34
	mov r2, #0
	bl ov18_0222B594
	bl ov18_0222BC1C
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0x33
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	bl ov18_0223D8DC
	bl ov18_0223D944
	mov r0, #0xa
	bl ov18_0223E994
	ldr r0, _0223A234 ; =ov18_0223A2E0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A230: .word 0x02253348
_0223A234: .word ov18_0223A2E0
	arm_func_end ov18_0223A1D0

	arm_func_start ov18_0223A238
ov18_0223A238: ; 0x0223A238
	stmfd sp!, {r3, lr}
	ldr r0, _0223A2C0 ; =0x0224A3A8
	ldr r1, _0223A2C4 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223A2C8 ; =0x0224A3C0
	ldr r1, _0223A2CC ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _0223A2D0 ; =0x0224A3D8
	ldr r1, _0223A2D4 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _0223A2D8 ; =0x04001008
	ldr r1, _0223A2DC ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
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
_0223A2C0: .word 0x0224A3A8
_0223A2C4: .word 0x020C07EC
_0223A2C8: .word 0x0224A3C0
_0223A2CC: .word GX_LoadBGPltt
_0223A2D0: .word 0x0224A3D8
_0223A2D4: .word GX_LoadBG2Scr
_0223A2D8: .word 0x04001008
_0223A2DC: .word 0x0400000A
	arm_func_end ov18_0223A238

	arm_func_start ov18_0223A2E0
ov18_0223A2E0: ; 0x0223A2E0
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223A330 ; =ov18_0223A334
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A330: .word ov18_0223A334
	arm_func_end ov18_0223A2E0

	arm_func_start ov18_0223A334
ov18_0223A334: ; 0x0223A334
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _0223A36C ; =ov18_0223A370
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A36C: .word ov18_0223A370
	arm_func_end ov18_0223A334

	arm_func_start ov18_0223A370
ov18_0223A370: ; 0x0223A370
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223A394 ; =ov18_0223A398
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A394: .word ov18_0223A398
	arm_func_end ov18_0223A370

	arm_func_start ov18_0223A398
ov18_0223A398: ; 0x0223A398
	stmfd sp!, {r3, lr}
	bl ov18_0223A4D8
	bl ov18_0223A4FC
	bl ov18_0223A500
	bl ov18_0223A3B0
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223A398

	arm_func_start ov18_0223A3B0
ov18_0223A3B0: ; 0x0223A3B0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _0223A4CC ; =0x02253348
	ldrh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	ldrh r0, [r0, #2]
	cmp r0, #0x12c
	addlo sp, sp, #8
	ldmloia sp!, {r3, pc}
	bl ov18_0223E9FC
	add r0, sp, #4
	bl ov18_0223DAE0
	cmp r0, #0
	bne _0223A430
	ldr r0, _0223A4CC ; =0x02253348
	mov r1, #1
	mov r3, #2
	strb r3, [r0]
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xf
	str ip, [sp]
	bl ov18_0223FC48
	mov r0, #0x12
	bl ov18_0223E994
	bl ov18_0222B0C0
	ldr r0, _0223A4D0 ; =ov18_0223A668
	bl ov18_0222F6C4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0223A430:
	cmp r0, #0
	mov r2, #0
	ble _0223A45C
	ldr r3, [sp, #4]
_0223A440:
	ldrb r1, [r3, #0x28]
	cmp r1, #2
	bne _0223A45C
	add r2, r2, #1
	cmp r2, r0
	add r3, r3, #0x2a
	blt _0223A440
_0223A45C:
	cmp r2, r0
	bne _0223A4A8
	ldr r0, _0223A4CC ; =0x02253348
	mov r1, #1
	mov r3, #3
	strb r3, [r0]
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str ip, [sp]
	bl ov18_0223FC48
	mov r0, #0x12
	bl ov18_0223E994
	bl ov18_0222B0C0
	ldr r0, _0223A4D0 ; =ov18_0223A668
	bl ov18_0222F6C4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0223A4A8:
	ldr r1, _0223A4CC ; =0x02253348
	mov r2, #1
	mov r0, #0xf
	strb r2, [r1]
	bl ov18_0223E994
	ldr r0, _0223A4D4 ; =ov18_0223A52C
	bl ov18_0222F6C4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A4CC: .word 0x02253348
_0223A4D0: .word ov18_0223A668
_0223A4D4: .word ov18_0223A52C
	arm_func_end ov18_0223A3B0

	arm_func_start ov18_0223A4D8
ov18_0223A4D8: ; 0x0223A4D8
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223A4D8

	arm_func_start ov18_0223A4FC
ov18_0223A4FC: ; 0x0223A4FC
	bx lr
	arm_func_end ov18_0223A4FC

	arm_func_start ov18_0223A500
ov18_0223A500: ; 0x0223A500
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223A528 ; =ov18_0223A52C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A528: .word ov18_0223A52C
	arm_func_end ov18_0223A500

	arm_func_start ov18_0223A52C
ov18_0223A52C: ; 0x0223A52C
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223A548 ; =ov18_0223A54C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A548: .word ov18_0223A54C
	arm_func_end ov18_0223A52C

	arm_func_start ov18_0223A54C
ov18_0223A54C: ; 0x0223A54C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
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
	ldr r0, _0223A598 ; =ov18_0223A59C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A598: .word ov18_0223A59C
	arm_func_end ov18_0223A54C

	arm_func_start ov18_0223A59C
ov18_0223A59C: ; 0x0223A59C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_0223A5CC:
	bl ov18_0223DA44
	cmp r0, #0
	beq _0223A5CC
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223A65C ; =0x02253348
	ldrb r0, [r0]
	cmp r0, #1
	beq _0223A638
	bl ov18_0223D910
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	bl ov18_0223E1F0
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223A660 ; =ov18_0223B3F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223A638:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _0223A664 ; =ov18_02233818
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A65C: .word 0x02253348
_0223A660: .word ov18_0223B3F4
_0223A664: .word ov18_02233818
	arm_func_end ov18_0223A59C

	arm_func_start ov18_0223A668
ov18_0223A668: ; 0x0223A668
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _0223A690 ; =ov18_0223A694
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A690: .word ov18_0223A694
	arm_func_end ov18_0223A668

	arm_func_start ov18_0223A694
ov18_0223A694: ; 0x0223A694
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223A6B0 ; =ov18_0223A52C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A6B0: .word ov18_0223A52C
	arm_func_end ov18_0223A694

	.data


	.global Unk_ov18_0224A3A8
Unk_ov18_0224A3A8: ; 0x0224A3A8
	.incbin "incbin/overlay18_data.bin", 0xC48, 0xC60 - 0xC48

	.global Unk_ov18_0224A3C0
Unk_ov18_0224A3C0: ; 0x0224A3C0
	.incbin "incbin/overlay18_data.bin", 0xC60, 0xC78 - 0xC60

	.global Unk_ov18_0224A3D8
Unk_ov18_0224A3D8: ; 0x0224A3D8
	.incbin "incbin/overlay18_data.bin", 0xC78, 0x14



	.bss


	.global Unk_ov18_02253348
Unk_ov18_02253348: ; 0x02253348
	.space 0x4

	.global Unk_ov18_0225334A
Unk_ov18_0225334A: ; 0x0225334A
	.space 0x2

