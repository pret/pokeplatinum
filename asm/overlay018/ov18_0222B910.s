	.include "macros/function.inc"
	.include "overlay018/ov18_0222B910.inc"

	

	.text


	arm_func_start ov18_0222B910
ov18_0222B910: ; 0x0222B910
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0222B92C ; =0x02253290
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222B92C: .word Unk_ov18_02253290
	arm_func_end ov18_0222B910

	arm_func_start ov18_0222B930
ov18_0222B930: ; 0x0222B930
	stmfd sp!, {r3, lr}
	bl ov18_0222BAF4
	ldr r0, _0222B944 ; =0x02253290
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222B944: .word Unk_ov18_02253290
	arm_func_end ov18_0222B930

	arm_func_start ov18_0222B948
ov18_0222B948: ; 0x0222B948
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r4, r0
	str r1, [sp]
	str r2, [sp, #4]
	mov fp, r3
	bl ov18_0222BAF4
	ldr r0, _0222B9FC ; =0x02248D14
	mov sb, #0
	add sl, r0, r4, lsl #1
	mov r7, #1
	ldr r4, _0222BA00 ; =0x02253290
	mov r8, sb
	mvn r6, #0
	mov r5, r7
_0222B984:
	ldrb r1, [sl], #1
	mov r0, r8
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4, #0]
	mov r1, r6
	str r0, [r2, sb, lsl #2]
	ldr r0, [r4, #0]
	mov r2, r5
	ldr r0, [r0, sb, lsl #2]
	bl ov18_02243DE4
	add sb, sb, #1
	cmp sb, #2
	blt _0222B984
	ldr r0, _0222BA00 ; =0x02253290
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r3, fp
	ldr r0, [r0, #0]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BA00 ; =0x02253290
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	mov r3, fp
	ldr r0, [r0, #4]
	mvn r1, #0
	bl ov18_02243CF4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222B9FC: .word 0x02248D14
_0222BA00: .word Unk_ov18_02253290
	arm_func_end ov18_0222B948

	arm_func_start ov18_0222BA04
ov18_0222BA04: ; 0x0222BA04
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov fp, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov sb, #6
	bl ov18_0222BAF4
	mov sl, #0
	mov r7, #1
	ldr r4, _0222BAF0 ; =0x02253290
	mov r8, sl
	mvn r6, #0
	mov r5, r7
_0222BA3C:
	mov r0, r8
	mov r1, sb
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4, #0]
	mov r1, r6
	str r0, [r2, sl, lsl #2]
	ldr r0, [r4, #0]
	mov r2, r5
	ldr r0, [r0, sl, lsl #2]
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #4
	add sb, sb, #1
	blt _0222BA3C
	ldr r0, _0222BAF0 ; =0x02253290
	ldr r3, [sp, #4]
	ldr r0, [r0, #0]
	mov r2, fp
	ldr r0, [r0, #0]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BAF0 ; =0x02253290
	ldr r2, [sp]
	ldr r0, [r0, #0]
	ldr r3, [sp, #4]
	ldr r0, [r0, #4]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BAF0 ; =0x02253290
	ldr r3, [sp, #8]
	ldr r0, [r0, #0]
	mov r2, fp
	ldr r0, [r0, #8]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0222BAF0 ; =0x02253290
	ldr r2, [sp]
	ldr r0, [r0, #0]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0xc]
	mvn r1, #0
	bl ov18_02243CF4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222BAF0: .word Unk_ov18_02253290
	arm_func_end ov18_0222BA04

	arm_func_start ov18_0222BAF4
ov18_0222BAF4: ; 0x0222BAF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _0222BB30 ; =0x02253290
	mov r5, r6
_0222BB04:
	ldr r0, [r4, #0]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _0222BB20
	bl ov18_02243B3C
	ldr r0, [r4, #0]
	str r5, [r0, r6, lsl #2]
_0222BB20:
	add r6, r6, #1
	cmp r6, #4
	blt _0222BB04
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222BB30: .word Unk_ov18_02253290
	arm_func_end ov18_0222BAF4

	.rodata


	.global Unk_ov18_02248D14
Unk_ov18_02248D14: ; 0x02248D14
	.incbin "incbin/overlay18_rodata.bin", 0x28E0, 0x8



	.bss


	.global Unk_ov18_02253290
Unk_ov18_02253290: ; 0x02253290
	.space 0x4

