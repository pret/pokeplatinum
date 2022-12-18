	.include "macros/function.inc"
	.include "include/ov18_0223C21C.inc"

	

	.text


	arm_func_start ov18_0223C21C
ov18_0223C21C: ; 0x0223C21C
	stmfd sp!, {r3, lr}
	bl ov18_0223D910
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	bl ov18_0223C274
	mov r0, #0x31
	sub r1, r0, #0x32
	mov r2, #0
	bl ov18_0222B594
	ldr r0, [sp]
	cmp r0, #2
	beq _0223C254
	bl ov18_0222BC1C
_0223C254:
	ldr r0, [sp]
	cmp r0, #1
	bne _0223C264
	bl ov18_0223E2D0
_0223C264:
	ldr r0, _0223C270 ; =ov18_0223C2E0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C270: .word ov18_0223C2E0
	arm_func_end ov18_0223C21C

	arm_func_start ov18_0223C274
ov18_0223C274: ; 0x0223C274
	stmfd sp!, {r3, lr}
	ldr r0, _0223C2D0 ; =0x0224A4F8
	ldr r1, _0223C2D4 ; =sub_020C04EC
	bl ov18_0222B700
	ldr r2, _0223C2D8 ; =0x04001008
	ldr r1, _0223C2DC ; =0x0400000A
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
_0223C2D0: .word 0x0224A4F8
_0223C2D4: .word sub_020C04EC
_0223C2D8: .word 0x04001008
_0223C2DC: .word 0x0400000A
	arm_func_end ov18_0223C274

	arm_func_start ov18_0223C2E0
ov18_0223C2E0: ; 0x0223C2E0
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _0223C330 ; =ov18_0223C334
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C330: .word ov18_0223C334
	arm_func_end ov18_0223C2E0

	arm_func_start ov18_0223C334
ov18_0223C334: ; 0x0223C334
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r0, _0223C3B4 ; =0x02249560
	add r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	add r1, sp, #4
	mov r0, #0
	bl ov18_0222F724
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r3, [sp, #4]
	add r0, sp, #8
	ldr r0, [r0, r3, lsl #2]
	mov r2, r1
	sub r3, r1, #2
	bl ov18_0223FC48
	ldr r0, _0223C3B8 ; =ov18_0223C3BC
	bl ov18_0222F6C4
	add sp, sp, #0x14
	ldmia sp!, {pc}
	; .align 2, 0
_0223C3B4: .word 0x02249560
_0223C3B8: .word ov18_0223C3BC
	arm_func_end ov18_0223C334

	arm_func_start ov18_0223C3BC
ov18_0223C3BC: ; 0x0223C3BC
	stmfd sp!, {r3, lr}
	bl ov18_0223C3F8
	bl ov18_0223C3FC
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _0223C3F4 ; =ov18_0223C400
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C3F4: .word ov18_0223C400
	arm_func_end ov18_0223C3BC

	arm_func_start ov18_0223C3F8
ov18_0223C3F8: ; 0x0223C3F8
	bx lr
	arm_func_end ov18_0223C3F8

	arm_func_start ov18_0223C3FC
ov18_0223C3FC: ; 0x0223C3FC
	bx lr
	arm_func_end ov18_0223C3FC

	arm_func_start ov18_0223C400
ov18_0223C400: ; 0x0223C400
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C430 ; =ov18_0223C434
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C430: .word ov18_0223C434
	arm_func_end ov18_0223C400

	arm_func_start ov18_0223C434
ov18_0223C434: ; 0x0223C434
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223C46C ; =ov18_0223BBAC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C46C: .word ov18_0223BBAC
	arm_func_end ov18_0223C434

	.rodata


	.global Unk_ov18_02249560
Unk_ov18_02249560: ; 0x02249560
	.incbin "incbin/overlay18_rodata.bin", 0x312C, 0xC



	.data


	.global Unk_ov18_0224A4F8
Unk_ov18_0224A4F8: ; 0x0224A4F8
	.incbin "incbin/overlay18_data.bin", 0xD98, 0x13

