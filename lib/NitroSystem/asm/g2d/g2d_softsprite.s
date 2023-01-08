	.include "macros/function.inc"
	.include "include/g2d_softsprite.inc"

	

	.text


	arm_func_start DrawOneQuad_
DrawOneQuad_: ; 0x020A730C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov ip, r3, lsl #8
	mov r0, r0, lsl #8
	ldr r3, _020A73BC ; =0x04000500
	mov r4, ip, asr #0x10
	mov r0, r0, asr #0x10
	mov lr, r4, lsl #0x10
	mov r4, r0, lsl #0x10
	mov r0, r1, lsl #8
	mov ip, #1
	mov r0, r0, asr #0x10
	mov r5, r0, lsl #0x10
	mov r0, #0x10000000
	mov r1, r2, lsl #8
	mov r1, r1, asr #0x10
	mov r2, r1, lsl #0x10
	mov r7, lr, lsr #0x10
	mov r1, r4, lsr #0x10
	mov r5, r5, lsr #0x10
	mov r2, r2, lsr #0x10
	str ip, [r3]
	orr r4, r1, r7, lsl #16
	sub r6, r3, #0x78
	str r4, [r6, #0]
	sub lr, r3, #0x74
	str r0, [lr]
	mov ip, #0
	str ip, [lr]
	orr r4, r5, r7, lsl #16
	str r4, [r6, #0]
	add r0, r0, #0x1000
	str r0, [lr]
	str ip, [lr]
	orr r0, r5, r2, lsl #16
	str r0, [r6, #0]
	mov r0, #0x1000
	str r0, [lr]
	str ip, [lr]
	orr r0, r1, r2, lsl #16
	str r0, [r6, #0]
	str ip, [lr]
	str ip, [lr]
	str ip, [r3, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A73BC: .word 0x04000500
	arm_func_end DrawOneQuad_

	arm_func_start NNS_G2dSetupSoftwareSpriteCamera
NNS_G2dSetupSoftwareSpriteCamera: ; 0x020A73C0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	ldr r2, _020A7470 ; =0xBFFF0000
	ldr r1, _020A7474 ; =0x04000580
	mov r0, r2, lsl #6
	str r2, [r1, #0]
	str r0, [sp]
	mov r1, #0x400000
	str r1, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r2, r0
	mov r1, #0xc0000
	mov r3, #0x100000
	str r0, [sp, #0x10]
	bl G3i_OrthoW_
	ldr r1, _020A7478 ; =0x0400044C
	mov r5, #0
	ldr r0, _020A747C ; =0x020F9640
	str r5, [r1, #0]
	add r4, sp, #0x2c
	ldr ip, _020A7480 ; =0x020F964C
	add lr, sp, #0x20
	ldmia r0, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	add r3, sp, #0x14
	ldmia ip, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r2, r3
	str r5, [r4, #0]
	str r5, [r4, #4]
	str r5, [r4, #8]
	mov r0, r4
	mov r1, lr
	mov r3, #1
	str r5, [sp]
	bl G3i_LookAt_
	ldr r0, _020A7484 ; =0x04000440
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7470: .word 0xBFFF0000
_020A7474: .word 0x04000580
_020A7478: .word 0x0400044C
_020A747C: .word Unk_020F9640
_020A7480: .word Unk_020F964C
_020A7484: .word 0x04000440
	arm_func_end NNS_G2dSetupSoftwareSpriteCamera

	arm_func_start NNS_G2dDrawSpriteFast
NNS_G2dDrawSpriteFast: ; 0x020A7488
	stmfd sp!, {r4, lr}
	ldr lr, _020A74EC ; =0x04000470
	mov r0, r0, lsl #0xc
	str r0, [lr]
	mov r4, r1, lsl #0xc
	ldr ip, [sp, #8]
	str r4, [lr]
	mov r4, r2, lsl #0xc
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r4, [lr]
	mov r4, r3, lsl #0xc
	ldr r3, [sp, #0x18]
	mov ip, ip, lsl #0xc
	str r4, [lr, #-4]!
	str ip, [lr]
	mov ip, #0x1000
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r3, r3, lsl #0xc
	str ip, [lr]
	bl DrawOneQuad_
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A74EC: .word 0x04000470
	arm_func_end NNS_G2dDrawSpriteFast

	.rodata


	.global Unk_020F9630
Unk_020F9630: ; 0x020F9630
	.incbin "incbin/arm9_rodata.bin", 0x149F0, 0x149F4 - 0x149F0

	.global Unk_020F9634
Unk_020F9634: ; 0x020F9634
	.incbin "incbin/arm9_rodata.bin", 0x149F4, 0x149F8 - 0x149F4

	.global Unk_020F9638
Unk_020F9638: ; 0x020F9638
	.incbin "incbin/arm9_rodata.bin", 0x149F8, 0x149FC - 0x149F8

	.global Unk_020F963C
Unk_020F963C: ; 0x020F963C
	.incbin "incbin/arm9_rodata.bin", 0x149FC, 0x14A00 - 0x149FC

	.global Unk_020F9640
Unk_020F9640: ; 0x020F9640
	.incbin "incbin/arm9_rodata.bin", 0x14A00, 0x14A0C - 0x14A00

	.global Unk_020F964C
Unk_020F964C: ; 0x020F964C
	.incbin "incbin/arm9_rodata.bin", 0x14A0C, 0xC

