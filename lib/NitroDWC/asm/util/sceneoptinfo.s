	.include "macros/function.inc"
	.include "include/sceneoptinfo.inc"

	

	.text


	arm_func_start ov18_02230DB0
ov18_02230DB0: ; 0x02230DB0
	stmfd sp!, {r3, lr}
	bl ov18_02230DE4
	mov r0, #0x11
	bl ov18_0222BBC0
	mov r0, #0x3a
	sub r1, r0, #0x3b
	mov r2, #0
	bl ov18_0222B594
	bl ov18_02230E64
	ldr r0, _02230DE0 ; =ov18_02231038
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230DE0: .word ov18_02231038
	arm_func_end ov18_02230DB0

	arm_func_start ov18_02230DE4
ov18_02230DE4: ; 0x02230DE4
	stmfd sp!, {r3, lr}
	ldr r0, _02230E54 ; =0x02249F98
	ldr r1, _02230E58 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02230E5C ; =0x04001008
	ldr r1, _02230E60 ; =0x0400000A
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
_02230E54: .word Unk_ov18_02249F98
_02230E58: .word GX_LoadBG2Scr
_02230E5C: .word 0x04001008
_02230E60: .word 0x0400000A
	arm_func_end ov18_02230DE4

	arm_func_start ov18_02230E64
ov18_02230E64: ; 0x02230E64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	mov fp, r0
	add r0, sp, #0x14
	bl OS_GetMacAddress
	ldrb r1, [sp, #0x15]
	ldr r2, _02231028 ; =0x02249FAC
	add r0, sp, #0x1a
	str r1, [sp]
	ldrb r3, [sp, #0x16]
	mov r1, #0x14
	str r3, [sp, #4]
	ldrb r3, [sp, #0x17]
	str r3, [sp, #8]
	ldrb r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldrb r3, [sp, #0x19]
	str r3, [sp, #0x10]
	ldrb r3, [sp, #0x14]
	bl swprintf
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r1, sp, #0x1a
	str r1, [sp, #0xc]
	mov r0, fp
	mov r1, #8
	mov r2, #0x40
	mov r3, #0xf0
	bl ov18_02244A9C
	add r0, sp, #0x54
	bl sub_020A283C
	ldr sl, [sp, #0x58]
	ldr r8, [sp, #0x54]
	cmp sl, #0
	mov r3, #0
	cmpeq r8, #0
	beq _02230FD4
	mov r0, r8
	mov r1, sl
	mov r2, #0xa
	bl _ull_mod
	mov r1, #0x3e8
	umull r4, r1, r0, r1
	mov r0, r8
	mov r1, sl
	mov r3, #0
	mov r2, #0xa
	str r4, [sp, #0x50]
	bl _ull_div
	mov sb, #0
	ldr r7, _0223102C ; =0x00002710
	mov r8, r0
	mov sl, r1
	mov r6, sb
	add r5, sp, #0x44
	mov r4, sb
_02230F60:
	mov r0, r8
	mov r1, sl
	mov r2, r7
	mov r3, r6
	bl _ull_mod
	rsb r1, sb, #2
	str r0, [r5, r1, lsl #2]
	mov r0, r8
	mov r1, sl
	mov r2, r7
	mov r3, r4
	bl _ull_div
	mov r8, r0
	mov sl, r1
	add sb, sb, #1
	cmp sb, #3
	blt _02230F60
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r4, [sp, #0x50]
	ldr r3, [sp, #0x44]
	ldr r2, _02231030 ; =0x02249FE8
	add r0, sp, #0x1a
	mov r1, #0x14
	str r4, [sp, #8]
	bl swprintf
	b _02230FE4
_02230FD4:
	ldr r2, _02231034 ; =0x0224A010
	add r0, sp, #0x1a
	mov r1, #0x14
	bl swprintf
_02230FE4:
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r4, sp, #0x1a
	mov r0, fp
	mov r1, #8
	mov r2, #0x78
	mov r3, #0xf0
	str r4, [sp, #0xc]
	bl ov18_02244A9C
	mov r0, fp
	bl ov18_02244C08
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02231028: .word Unk_ov18_02249FAC
_0223102C: .word 0x00002710
_02231030: .word Unk_ov18_02249FE8
_02231034: .word Unk_ov18_0224A010
	arm_func_end ov18_02230E64

	arm_func_start ov18_02231038
ov18_02231038: ; 0x02231038
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
	ldr r0, _02231088 ; =ov18_0223108C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231088: .word ov18_0223108C
	arm_func_end ov18_02231038

	arm_func_start ov18_0223108C
ov18_0223108C: ; 0x0223108C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #2
	bl ov18_0222B790
	ldr r0, _022310C4 ; =ov18_022310C8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022310C4: .word ov18_022310C8
	arm_func_end ov18_0223108C

	arm_func_start ov18_022310C8
ov18_022310C8: ; 0x022310C8
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _022310EC ; =ov18_022310F0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022310EC: .word ov18_022310F0
	arm_func_end ov18_022310C8

	arm_func_start ov18_022310F0
ov18_022310F0: ; 0x022310F0
	stmfd sp!, {r3, lr}
	bl ov18_02231104
	bl ov18_02231124
	bl ov18_02231128
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022310F0

	arm_func_start ov18_02231104
ov18_02231104: ; 0x02231104
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231104

	arm_func_start ov18_02231124
ov18_02231124: ; 0x02231124
	bx lr
	arm_func_end ov18_02231124

	arm_func_start ov18_02231128
ov18_02231128: ; 0x02231128
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223114C ; =ov18_02231150
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223114C: .word ov18_02231150
	arm_func_end ov18_02231128

	arm_func_start ov18_02231150
ov18_02231150: ; 0x02231150
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223116C ; =ov18_02231170
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223116C: .word ov18_02231170
	arm_func_end ov18_02231150

	arm_func_start ov18_02231170
ov18_02231170: ; 0x02231170
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
	ldr r0, _022311BC ; =ov18_022311C0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022311BC: .word ov18_022311C0
	arm_func_end ov18_02231170

	arm_func_start ov18_022311C0
ov18_022311C0: ; 0x022311C0
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
	ldr r0, _0223122C ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223122C: .word ov18_02231230
	arm_func_end ov18_022311C0

	.data


	.global Unk_ov18_02249F98
Unk_ov18_02249F98: ; 0x02249F98
	.incbin "incbin/overlay18_data.bin", 0x838, 0x84C - 0x838

	.global Unk_ov18_02249FAC
Unk_ov18_02249FAC: ; 0x02249FAC
	.incbin "incbin/overlay18_data.bin", 0x84C, 0x888 - 0x84C

	.global Unk_ov18_02249FE8
Unk_ov18_02249FE8: ; 0x02249FE8
	.incbin "incbin/overlay18_data.bin", 0x888, 0x8B0 - 0x888

	.global Unk_ov18_0224A010
Unk_ov18_0224A010: ; 0x0224A010
	.incbin "incbin/overlay18_data.bin", 0x8B0, 0x28

