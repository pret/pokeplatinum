	.include "macros/function.inc"
	.include "overlay018/ov18_022307A0.inc"

	

	.text


	arm_func_start ov18_022307A0
ov18_022307A0: ; 0x022307A0
	stmfd sp!, {r3, lr}
	ldr r0, _022307E0 ; =0x022532E4
	mov r1, #0
	strb r1, [r0]
	bl ov18_022307E8
	mov r0, #0x12
	bl ov18_0222BBC0
	mov r0, #0x3b
	sub r1, r0, #0x3c
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0x17
	bl ov18_0222B7C8
	ldr r0, _022307E4 ; =ov18_02230868
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022307E0: .word Unk_ov18_022532E4
_022307E4: .word ov18_02230868
	arm_func_end ov18_022307A0

	arm_func_start ov18_022307E8
ov18_022307E8: ; 0x022307E8
	stmfd sp!, {r3, lr}
	ldr r0, _02230858 ; =0x02249F70
	ldr r1, _0223085C ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02230860 ; =0x04001008
	ldr r1, _02230864 ; =0x0400000A
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
_02230858: .word Unk_ov18_02249F70
_0223085C: .word GX_LoadBG2Scr
_02230860: .word 0x04001008
_02230864: .word 0x0400000A
	arm_func_end ov18_022307E8

	arm_func_start ov18_02230868
ov18_02230868: ; 0x02230868
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
	ldr r0, _022308B8 ; =ov18_022308BC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022308B8: .word ov18_022308BC
	arm_func_end ov18_02230868

	arm_func_start ov18_022308BC
ov18_022308BC: ; 0x022308BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #3
	bl ov18_0222B790
	ldr r0, _022308F4 ; =ov18_022308F8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022308F4: .word ov18_022308F8
	arm_func_end ov18_022308BC

	arm_func_start ov18_022308F8
ov18_022308F8: ; 0x022308F8
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223091C ; =ov18_02230920
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223091C: .word ov18_02230920
	arm_func_end ov18_022308F8

	arm_func_start ov18_02230920
ov18_02230920: ; 0x02230920
	stmfd sp!, {r3, lr}
	bl ov18_02230934
	bl ov18_0223096C
	bl ov18_02230970
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02230920

	arm_func_start ov18_02230934
ov18_02230934: ; 0x02230934
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _02230950
	mov r0, #1
	bl ov18_0222B048
_02230950:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02230934

	arm_func_start ov18_0223096C
ov18_0223096C: ; 0x0223096C
	bx lr
	arm_func_end ov18_0223096C

	arm_func_start ov18_02230970
ov18_02230970: ; 0x02230970
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _0223098C
	cmp r0, #1
	beq _022309A0
	ldmia sp!, {r3, pc}
_0223098C:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022309D0 ; =ov18_022309D8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022309A0:
	mov r0, #6
	bl ov18_0223E994
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x18
	str r1, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _022309D4 ; =ov18_02230B14
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022309D0: .word ov18_022309D8
_022309D4: .word ov18_02230B14
	arm_func_end ov18_02230970

	arm_func_start ov18_022309D8
ov18_022309D8: ; 0x022309D8
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022309F4 ; =ov18_022309F8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022309F4: .word ov18_022309F8
	arm_func_end ov18_022309D8

	arm_func_start ov18_022309F8
ov18_022309F8: ; 0x022309F8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _02230A54 ; =0x022532E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02230A34
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02230A34:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02230A58 ; =ov18_02230A5C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230A54: .word Unk_ov18_022532E4
_02230A58: .word ov18_02230A5C
	arm_func_end ov18_022309F8

	arm_func_start ov18_02230A5C
ov18_02230A5C: ; 0x02230A5C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02230B08 ; =0x022532E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02230A90
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_02230A90:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02230B08 ; =0x022532E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02230AC4
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02230AC4:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02230B08 ; =0x022532E4
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #0
	bne _02230AF8
	bl ov18_0222F6D4
	ldr r0, _02230B0C ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02230AF8:
	bl ov18_0222F6D4
	ldr r0, _02230B10 ; =ov18_02230B84
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230B08: .word Unk_ov18_022532E4
_02230B0C: .word ov18_02231230
_02230B10: .word ov18_02230B84
	arm_func_end ov18_02230A5C

	arm_func_start ov18_02230B14
ov18_02230B14: ; 0x02230B14
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	beq _02230B44
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	mov r0, #0xe
	bl ov18_0223E994
	ldr r0, _02230B5C ; =0x022532E4
	mov r1, #1
	strb r1, [r0]
	b _02230B4C
_02230B44:
	mov r0, #7
	bl ov18_0223E994
_02230B4C:
	bl ov18_0223FF74
	ldr r0, _02230B60 ; =ov18_02230B64
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230B5C: .word Unk_ov18_022532E4
_02230B60: .word ov18_02230B64
	arm_func_end ov18_02230B14

	arm_func_start ov18_02230B64
ov18_02230B64: ; 0x02230B64
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02230B80 ; =ov18_022309D8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230B80: .word ov18_022309D8
	arm_func_end ov18_02230B64

	.data


	.global Unk_ov18_02249F70
Unk_ov18_02249F70: ; 0x02249F70
	.incbin "incbin/overlay18_data.bin", 0x810, 0x14



	.bss


	.global Unk_ov18_022532E4
Unk_ov18_022532E4: ; 0x022532E4
	.space 0x4

