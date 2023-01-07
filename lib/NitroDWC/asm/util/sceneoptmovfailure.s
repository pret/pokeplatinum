	.include "macros/function.inc"
	.include "include/sceneoptmovfailure.inc"

	

	.text


	arm_func_start ov18_02232530
ov18_02232530: ; 0x02232530
	stmfd sp!, {r3, lr}
	bl ov18_0223256C
	mov r0, #0x20
	bl ov18_0222B7C8
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl ov18_0222B594
	ldr r1, _02232564 ; =0x02253300
	strb r0, [r1]
	ldr r0, _02232568 ; =ov18_022325EC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232564: .word Unk_ov18_02253300
_02232568: .word ov18_022325EC
	arm_func_end ov18_02232530

	arm_func_start ov18_0223256C
ov18_0223256C: ; 0x0223256C
	stmfd sp!, {r3, lr}
	ldr r0, _022325DC ; =0x0224A0A4
	ldr r1, _022325E0 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _022325E4 ; =0x04001008
	ldr r1, _022325E8 ; =0x0400000A
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
_022325DC: .word Unk_ov18_0224A0A4
_022325E0: .word GX_LoadBG2Scr
_022325E4: .word 0x04001008
_022325E8: .word 0x0400000A
	arm_func_end ov18_0223256C

	arm_func_start ov18_022325EC
ov18_022325EC: ; 0x022325EC
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _0223264C ; =0x02253300
	ldrb r0, [r0]
	cmp r0, #0
	beq _02232640
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
_02232640:
	ldr r0, _02232650 ; =ov18_02232654
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223264C: .word Unk_ov18_02253300
_02232650: .word ov18_02232654
	arm_func_end ov18_022325EC

	arm_func_start ov18_02232654
ov18_02232654: ; 0x02232654
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
	ldr r0, _0223268C ; =ov18_02232690
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223268C: .word ov18_02232690
	arm_func_end ov18_02232654

	arm_func_start ov18_02232690
ov18_02232690: ; 0x02232690
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222FA44
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _022326C0 ; =ov18_022326C4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022326C0: .word ov18_022326C4
	arm_func_end ov18_02232690

	arm_func_start ov18_022326C4
ov18_022326C4: ; 0x022326C4
	stmfd sp!, {r3, lr}
	bl ov18_022326D8
	bl ov18_02232710
	bl ov18_02232714
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022326C4

	arm_func_start ov18_022326D8
ov18_022326D8: ; 0x022326D8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022326F4
	mov r0, #1
	bl ov18_0222B048
_022326F4:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022326D8

	arm_func_start ov18_02232710
ov18_02232710: ; 0x02232710
	bx lr
	arm_func_end ov18_02232710

	arm_func_start ov18_02232714
ov18_02232714: ; 0x02232714
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _02232744
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	ldr r1, _02232764 ; =0x02253300
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #1]
	bl ov18_0223E994
	b _02232758
_02232744:
	ldr r1, _02232764 ; =0x02253300
	mov r2, #0
	mov r0, #7
	strb r2, [r1, #1]
	bl ov18_0223E994
_02232758:
	ldr r0, _02232768 ; =ov18_0223276C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232764: .word Unk_ov18_02253300
_02232768: .word ov18_0223276C
	arm_func_end ov18_02232714

	arm_func_start ov18_0223276C
ov18_0223276C: ; 0x0223276C
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02232788 ; =ov18_0223278C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232788: .word ov18_0223278C
	arm_func_end ov18_0223276C

	arm_func_start ov18_0223278C
ov18_0223278C: ; 0x0223278C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _022327E8 ; =0x02253300
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _022327C8
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_022327C8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _022327EC ; =ov18_022327F0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022327E8: .word Unk_ov18_02253300
_022327EC: .word ov18_022327F0
	arm_func_end ov18_0223278C

	arm_func_start ov18_022327F0
ov18_022327F0: ; 0x022327F0
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
	ldr r0, _0223288C ; =0x02253300
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02232848
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02232848:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223288C ; =0x02253300
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	mov r0, #0
	bne _0223287C
	bl ov18_0222F6D4
	ldr r0, _02232890 ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223287C:
	bl ov18_0222F6D4
	ldr r0, _02232894 ; =ov18_02232C90
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223288C: .word Unk_ov18_02253300
_02232890: .word ov18_02231230
_02232894: .word ov18_02232C90
	arm_func_end ov18_022327F0

	.data


	.global Unk_ov18_0224A0A4
Unk_ov18_0224A0A4: ; 0x0224A0A4
	.incbin "incbin/overlay18_data.bin", 0x944, 0x14



	.bss


	.global Unk_ov18_02253300
Unk_ov18_02253300: ; 0x02253300
	.space 0x1

	.global Unk_ov18_02253301
Unk_ov18_02253301: ; 0x02253301
	.space 0x3

