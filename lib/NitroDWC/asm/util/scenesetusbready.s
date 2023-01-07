	.include "macros/function.inc"
	.include "include/scenesetusbready.inc"

	

	.text


	arm_func_start ov18_0223C67C
ov18_0223C67C: ; 0x0223C67C
	stmfd sp!, {r3, lr}
	ldr r0, _0223C6C4 ; =0x02253368
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223C6CC
	mov r0, #8
	bl ov18_0222BBC0
	mov r0, #0x38
	sub r1, r0, #0x39
	mov r2, #0
	bl ov18_0222B594
	mov r0, #1
	bl ov18_0222B740
	mov r0, #0x27
	bl ov18_0222B7C8
	ldr r0, _0223C6C8 ; =ov18_0223C774
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C6C4: .word Unk_ov18_02253368
_0223C6C8: .word ov18_0223C774
	arm_func_end ov18_0223C67C

	arm_func_start ov18_0223C6CC
ov18_0223C6CC: ; 0x0223C6CC
	stmfd sp!, {r3, lr}
	ldr r0, _0223C754 ; =0x0224A520
	ldr r1, _0223C758 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223C75C ; =0x0224A538
	ldr r1, _0223C760 ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _0223C764 ; =0x0224A550
	ldr r1, _0223C768 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _0223C76C ; =0x04001008
	ldr r1, _0223C770 ; =0x0400000A
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
_0223C754: .word Unk_ov18_0224A520
_0223C758: .word 0x020C07EC
_0223C75C: .word Unk_ov18_0224A538
_0223C760: .word GX_LoadBGPltt
_0223C764: .word Unk_ov18_0224A550
_0223C768: .word GX_LoadBG2Scr
_0223C76C: .word 0x04001008
_0223C770: .word 0x0400000A
	arm_func_end ov18_0223C6CC

	arm_func_start ov18_0223C774
ov18_0223C774: ; 0x0223C774
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
	ldr r0, _0223C7C4 ; =ov18_0223C7C8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C7C4: .word ov18_0223C7C8
	arm_func_end ov18_0223C774

	arm_func_start ov18_0223C7C8
ov18_0223C7C8: ; 0x0223C7C8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0222B790
	ldr r0, _0223C800 ; =ov18_0223C804
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C800: .word ov18_0223C804
	arm_func_end ov18_0223C7C8

	arm_func_start ov18_0223C804
ov18_0223C804: ; 0x0223C804
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223C828 ; =ov18_0223C82C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C828: .word ov18_0223C82C
	arm_func_end ov18_0223C804

	arm_func_start ov18_0223C82C
ov18_0223C82C: ; 0x0223C82C
	stmfd sp!, {r3, lr}
	bl ov18_0223C840
	bl ov18_0223C878
	bl ov18_0223C87C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223C82C

	arm_func_start ov18_0223C840
ov18_0223C840: ; 0x0223C840
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223C85C
	mov r0, #1
	bl ov18_0222B048
_0223C85C:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223C840

	arm_func_start ov18_0223C878
ov18_0223C878: ; 0x0223C878
	bx lr
	arm_func_end ov18_0223C878

	arm_func_start ov18_0223C87C
ov18_0223C87C: ; 0x0223C87C
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _0223C898
	cmp r0, #1
	beq _0223C8A4
	ldmia sp!, {r3, pc}
_0223C898:
	mov r0, #7
	bl ov18_0223E994
	b _0223C8B8
_0223C8A4:
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _0223C8C4 ; =0x02253368
	mov r1, #1
	strb r1, [r0]
_0223C8B8:
	ldr r0, _0223C8C8 ; =ov18_0223C8CC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C8C4: .word Unk_ov18_02253368
_0223C8C8: .word ov18_0223C8CC
	arm_func_end ov18_0223C87C

	arm_func_start ov18_0223C8CC
ov18_0223C8CC: ; 0x0223C8CC
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223C8E8 ; =ov18_0223C8EC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C8E8: .word ov18_0223C8EC
	arm_func_end ov18_0223C8CC

	arm_func_start ov18_0223C8EC
ov18_0223C8EC: ; 0x0223C8EC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223C948 ; =0x02253368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223C928
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223C928:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223C94C ; =ov18_0223C950
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C948: .word Unk_ov18_02253368
_0223C94C: .word ov18_0223C950
	arm_func_end ov18_0223C8EC

	arm_func_start ov18_0223C950
ov18_0223C950: ; 0x0223C950
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223C9FC ; =0x02253368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223C984
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_0223C984:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223C9FC ; =0x02253368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223C9B8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_0223C9B8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223C9FC ; =0x02253368
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #2
	bne _0223C9EC
	bl ov18_0222F6D4
	ldr r0, _0223CA00 ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223C9EC:
	bl ov18_0222F6D4
	ldr r0, _0223CA04 ; =ov18_0223CA28
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223C9FC: .word Unk_ov18_02253368
_0223CA00: .word ov18_0223A6B4
_0223CA04: .word ov18_0223CA28
	arm_func_end ov18_0223C950

	arm_func_start ov18_0223CA08
ov18_0223CA08: ; 0x0223CA08
	ldr r0, _0223CA24 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_0223CA24: .word 0x027FFFA8
	arm_func_end ov18_0223CA08

	arm_func_start ov18_0223CA28
ov18_0223CA28: ; 0x0223CA28
	stmdb sp!, {lr}
	sub sp, sp, #0x6c
	ldr r0, _0223CAB0 ; =0x0225336C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223CABC
	mov r0, #8
	bl ov18_0222BBC0
	mov r0, #2
	bl ov18_0222B740
	add r0, sp, #0x16
	bl OS_GetOwnerInfo
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x16
	bl MIi_CpuClear16
	ldrh r2, [sp, #0x30]
	add r0, sp, #0x1a
	add r1, sp, #0
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	add r0, sp, #0
	mov r1, #0x28
	bl ov18_0222B83C
	mov r0, #0
	bl ov18_0222AD34
	ldr r0, _0223CAB4 ; =ov18_0223CE08
	bl ov18_0223F564
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _0223CAB8 ; =ov18_0223CB64
	bl ov18_0222F6C4
	add sp, sp, #0x6c
	ldmia sp!, {pc}
	; .align 2, 0
_0223CAB0: .word Unk_ov18_0225336C
_0223CAB4: .word ov18_0223CE08
_0223CAB8: .word ov18_0223CB64
	arm_func_end ov18_0223CA28

	arm_func_start ov18_0223CABC
ov18_0223CABC: ; 0x0223CABC
	stmfd sp!, {r3, lr}
	ldr r0, _0223CB44 ; =0x0224A564
	ldr r1, _0223CB48 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223CB4C ; =0x0224A57C
	ldr r1, _0223CB50 ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _0223CB54 ; =0x0224A594
	ldr r1, _0223CB58 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _0223CB5C ; =0x04001008
	ldr r1, _0223CB60 ; =0x0400000A
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
_0223CB44: .word Unk_ov18_0224A564
_0223CB48: .word 0x020C07EC
_0223CB4C: .word Unk_ov18_0224A57C
_0223CB50: .word GX_LoadBGPltt
_0223CB54: .word Unk_ov18_0224A594
_0223CB58: .word GX_LoadBG2Scr
_0223CB5C: .word 0x04001008
_0223CB60: .word 0x0400000A
	arm_func_end ov18_0223CABC

	arm_func_start ov18_0223CB64
ov18_0223CB64: ; 0x0223CB64
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223CB94 ; =ov18_0223CB98
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CB94: .word ov18_0223CB98
	arm_func_end ov18_0223CB64

	arm_func_start ov18_0223CB98
ov18_0223CB98: ; 0x0223CB98
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #2
	bl ov18_0222B790
	ldr r0, _0223CBC0 ; =ov18_0223CBC4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CBC0: .word ov18_0223CBC4
	arm_func_end ov18_0223CB98

	arm_func_start ov18_0223CBC4
ov18_0223CBC4: ; 0x0223CBC4
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223CBE8 ; =ov18_0223CBEC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CBE8: .word ov18_0223CBEC
	arm_func_end ov18_0223CBC4

	arm_func_start ov18_0223CBEC
ov18_0223CBEC: ; 0x0223CBEC
	stmfd sp!, {r3, lr}
	bl ov18_0223CC00
	bl ov18_0223CC38
	bl ov18_0223CC3C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223CBEC

	arm_func_start ov18_0223CC00
ov18_0223CC00: ; 0x0223CC00
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223CC20
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
_0223CC20:
	bl ov18_0223CA08
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223CC00

	arm_func_start ov18_0223CC38
ov18_0223CC38: ; 0x0223CC38
	bx lr
	arm_func_end ov18_0223CC38

	arm_func_start ov18_0223CC3C
ov18_0223CC3C: ; 0x0223CC3C
	stmfd sp!, {r3, lr}
	ldr r0, _0223CC80 ; =0x0225336C
	ldrb r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223CC80 ; =0x0225336C
	mov r1, #2
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223CC84 ; =ov18_0223CC88
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CC80: .word Unk_ov18_0225336C
_0223CC84: .word ov18_0223CC88
	arm_func_end ov18_0223CC3C

	arm_func_start ov18_0223CC88
ov18_0223CC88: ; 0x0223CC88
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223CCA4 ; =ov18_0223CCA8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CCA4: .word ov18_0223CCA8
	arm_func_end ov18_0223CC88

	arm_func_start ov18_0223CCA8
ov18_0223CCA8: ; 0x0223CCA8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223CD0C ; =0x0225336C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0223CCEC
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223CCEC:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223CD10 ; =ov18_0223CD14
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CD0C: .word Unk_ov18_0225336C
_0223CD10: .word ov18_0223CD14
	arm_func_end ov18_0223CCA8

	arm_func_start ov18_0223CD14
ov18_0223CD14: ; 0x0223CD14
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223CDF8 ; =0x0225336C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223CD48
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_0223CD48:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0223F71C
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223CDF8 ; =0x0225336C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0223CD8C
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_0223CD8C:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223CDF8 ; =0x0225336C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223CDC0
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223CDFC ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223CDC0:
	cmp r0, #3
	bne _0223CDE0
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223CE00 ; =ov18_0223C67C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223CDE0:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223CE04 ; =ov18_0223C470
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CDF8: .word Unk_ov18_0225336C
_0223CDFC: .word ov18_0223A6B4
_0223CE00: .word ov18_0223C67C
_0223CE04: .word ov18_0223C470
	arm_func_end ov18_0223CD14

	arm_func_start ov18_0223CE08
ov18_0223CE08: ; 0x0223CE08
	stmfd sp!, {r3, lr}
	ldr r1, _0223CEE4 ; =0x0225336C
	ldrb r2, [r1]
	cmp r2, #0
	ldmneia sp!, {r3, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_0223CE28: ; jump table
	b _0223CE38 ; case 0
	b _0223CE78 ; case 1
	b _0223CE90 ; case 2
	b _0223CEC4 ; case 3
_0223CE38:
	mov r0, #3
	strb r0, [r1]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0x10
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _0223CEE8 ; =ov18_0223CEF4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223CE78:
	mov r0, #1
	strb r0, [r1]
	bl ov18_0223E9FC
	ldr r0, _0223CEEC ; =ov18_0223CC88
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223CE90:
	bl ov18_0223E9FC
	mov r0, #0
	bl ov18_0223F800
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x11
	str r1, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _0223CEF0 ; =ov18_0223CF40
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223CEC4:
	mov r0, #2
	strb r0, [r1]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0223CEEC ; =ov18_0223CC88
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CEE4: .word Unk_ov18_0225336C
_0223CEE8: .word ov18_0223CEF4
_0223CEEC: .word ov18_0223CC88
_0223CEF0: .word ov18_0223CF40
	arm_func_end ov18_0223CE08

	arm_func_start ov18_0223CEF4
ov18_0223CEF4: ; 0x0223CEF4
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _0223CF1C ; =ov18_0223CF20
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CF1C: .word ov18_0223CF20
	arm_func_end ov18_0223CEF4

	arm_func_start ov18_0223CF20
ov18_0223CF20: ; 0x0223CF20
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223CF3C ; =ov18_0223CC88
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CF3C: .word ov18_0223CC88
	arm_func_end ov18_0223CF20

	arm_func_start ov18_0223CF40
ov18_0223CF40: ; 0x0223CF40
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	beq _0223CF70
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	ldr r1, _0223CF94 ; =0x0225336C
	mov r2, #3
	mov r0, #6
	strb r2, [r1]
	bl ov18_0223E994
	b _0223CF84
_0223CF70:
	ldr r1, _0223CF94 ; =0x0225336C
	mov r2, #1
	mov r0, #7
	strb r2, [r1]
	bl ov18_0223E994
_0223CF84:
	bl ov18_0223FF74
	ldr r0, _0223CF98 ; =ov18_0223CF9C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CF94: .word Unk_ov18_0225336C
_0223CF98: .word ov18_0223CF9C
	arm_func_end ov18_0223CF40

	arm_func_start ov18_0223CF9C
ov18_0223CF9C: ; 0x0223CF9C
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223CFF4 ; =0x0225336C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0223CFC8
	ldr r0, _0223CFF8 ; =ov18_0223CC88
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223CFC8:
	mov r0, #0xb
	bl ov18_0223E994
	bl ov18_0222B0A8
	ldr r1, _0223CFF4 ; =0x0225336C
	mov r2, #0
	ldr r0, _0223CFFC ; =ov18_0223CE08
	strb r2, [r1]
	bl ov18_0223F800
	ldr r0, _0223D000 ; =ov18_0223CBEC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223CFF4: .word Unk_ov18_0225336C
_0223CFF8: .word ov18_0223CC88
_0223CFFC: .word ov18_0223CE08
_0223D000: .word ov18_0223CBEC
	arm_func_end ov18_0223CF9C

	.data


	.global Unk_ov18_0224A520
Unk_ov18_0224A520: ; 0x0224A520
	.incbin "incbin/overlay18_data.bin", 0xDC0, 0xDD8 - 0xDC0

	.global Unk_ov18_0224A538
Unk_ov18_0224A538: ; 0x0224A538
	.incbin "incbin/overlay18_data.bin", 0xDD8, 0xDF0 - 0xDD8

	.global Unk_ov18_0224A550
Unk_ov18_0224A550: ; 0x0224A550
	.incbin "incbin/overlay18_data.bin", 0xDF0, 0xE04 - 0xDF0

	.global Unk_ov18_0224A564
Unk_ov18_0224A564: ; 0x0224A564
	.incbin "incbin/overlay18_data.bin", 0xE04, 0xE1C - 0xE04

	.global Unk_ov18_0224A57C
Unk_ov18_0224A57C: ; 0x0224A57C
	.incbin "incbin/overlay18_data.bin", 0xE1C, 0xE34 - 0xE1C

	.global Unk_ov18_0224A594
Unk_ov18_0224A594: ; 0x0224A594
	.incbin "incbin/overlay18_data.bin", 0xE34, 0x12



	.bss


	.global Unk_ov18_02253368
Unk_ov18_02253368: ; 0x02253368
	.space 0x4

	.global Unk_ov18_0225336C
Unk_ov18_0225336C: ; 0x0225336C
	.space 0x4

