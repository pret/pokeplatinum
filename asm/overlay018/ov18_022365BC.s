	.include "macros/function.inc"
	.include "overlay018/ov18_022365BC.inc"

	

	.text


	arm_func_start ov18_022365BC
ov18_022365BC: ; 0x022365BC
	stmfd sp!, {r3, lr}
	bl ov18_022365D8
	bl ov18_02236658
	ldr r0, _022365D4 ; =ov18_022369B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022365D4: .word ov18_022369B4
	arm_func_end ov18_022365BC

	arm_func_start ov18_022365D8
ov18_022365D8: ; 0x022365D8
	stmfd sp!, {r3, lr}
	ldr r0, _02236648 ; =0x0224A238
	ldr r1, _0223664C ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02236650 ; =0x04001008
	ldr r1, _02236654 ; =0x0400000A
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
_02236648: .word 0x0224A238
_0223664C: .word GX_LoadBG2Scr
_02236650: .word 0x04001008
_02236654: .word 0x0400000A
	arm_func_end ov18_022365D8

	arm_func_start ov18_02236658
ov18_02236658: ; 0x02236658
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	add r1, sp, #0x10
	mov r0, #0
	bl ov18_0222F724
	ldr r0, _02236988 ; =0x02253328
	ldr r2, _0223698C ; =0xFFFFB17D
	ldr r1, [r0, #0]
	cmp r1, r2
	movge r4, #0
	bge _022368B4
	sub r0, r2, #1
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #2
	cmp r1, r0
	movge r4, #0x13
	bge _022368B4
	sub r0, r2, #8
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #9
	cmp r1, r0
	movge r4, #0x12
	bge _022368B4
	sub r0, r2, #0xa
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #0xb
	cmp r1, r0
	movge r4, #3
	bge _022368B4
	sub r0, r2, #0x384
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	ldr r0, _02236990 ; =0xFFFFA629
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r0, #0x3e8
	cmp r1, r0
	movge r4, #0x13
	bge _022368B4
	ldr r0, _02236994 ; =0xFFFF3CB1
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r2, r0, #3
	cmp r1, r2
	movge r4, #7
	bge _022368B4
	sub r2, r0, #4
	cmp r1, r2
	movge r4, #5
	bge _022368B4
	sub r2, r0, #0x63
	cmp r1, r2
	movge r4, #0
	bge _022368B4
	sub r2, r0, #0x64
	cmp r1, r2
	blt _02236774
	ldr r0, [sp, #0x10]
	cmp r0, #2
	moveq r4, #5
	movne r4, #7
	b _022368B4
_02236774:
	ldr r3, _02236998 ; =0xFFFF3866
	cmp r1, r3
	movge r4, #0
	bge _022368B4
	sub r2, r3, #1
	cmp r1, r2
	blt _022367A4
	ldr r0, [sp, #0x10]
	cmp r0, #2
	moveq r4, #5
	movne r4, #8
	b _022368B4
_022367A4:
	sub r2, r3, #4
	cmp r1, r2
	movge r4, #9
	bge _022368B4
	sub r2, r3, #5
	cmp r1, r2
	movge r4, #5
	bge _022368B4
	sub r2, r3, #0x65
	cmp r1, r2
	movge r4, #0
	bge _022368B4
	sub r2, r3, #0xc9
	cmp r1, r2
	movge r4, #0x14
	bge _022368B4
	sub r2, r3, #0xcc
	cmp r1, r2
	movge r4, #0x15
	bge _022368B4
	sub r2, r3, #0xcd
	cmp r1, r2
	movge r4, #4
	bge _022368B4
	sub r0, r0, #0x7d0
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r3, #0x388
	cmp r1, r0
	movge r4, #0xa
	bge _022368B4
	ldr r2, _0223699C ; =0xFFFF34DD
	cmp r1, r2
	movge r4, #0x16
	bge _022368B4
	sub r0, r2, #0x60
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0x64
	cmp r1, r0
	movge r4, #0xb
	bge _022368B4
	sub r0, r2, #0xc4
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0xc8
	cmp r1, r0
	movge r4, #0xb
	bge _022368B4
	sub r0, r2, #0x128
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0x18c
	cmp r1, r0
	movge r4, #2
	bge _022368B4
	sub r0, r2, #0x3e4
	cmp r1, r0
	movge r4, #0
	bge _022368B4
	sub r0, r2, #0x510
	cmp r1, r0
	movge r4, #2
	movlt r4, #0
_022368B4:
	bl ov18_0222F74C
	mov r2, r0
	ldr r1, _022369A0 ; =0x022492A8
	mov r0, #0
	ldrb r1, [r1, r2]
	bl ov18_0224467C
	ldr r1, _022369A4 ; =0x022532D8
	mov r5, r0
	ldr r0, [r1, #0]
	mov r1, r4
	bl ov18_0222F8B8
	ldr r1, _02236988 ; =0x02253328
	mov r4, r0
	ldr r1, [r1, #0]
	ldr r2, _022369A8 ; =0x0224A24C
	rsb r3, r1, #0
	add r0, sp, #0x14
	mov r1, #8
	bl swprintf
	bl ov18_0222F74C
	mov r1, r0, lsl #2
	ldr r0, _022369AC ; =0x022492BA
	ldrh r6, [r0, r1]
	bl ov18_0222F74C
	mov r3, r0, lsl #2
	ldr r1, _022369B0 ; =0x022492B8
	mov r0, #0xa
	ldrh r1, [r1, r3]
	str r0, [sp]
	add r3, sp, #0x14
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r2, r6
	mov r0, r5
	mov r3, #2
	bl ov18_022449F0
	bl ov18_0222B8F8
	mov r1, #0x5e
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r4, [sp, #0xc]
	bl ov18_02244A9C
	mov r0, r5
	bl ov18_02244C08
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02236988: .word 0x02253328
_0223698C: .word 0xFFFFB17D
_02236990: .word 0xFFFFA629
_02236994: .word 0xFFFF3CB1
_02236998: .word 0xFFFF3866
_0223699C: .word 0xFFFF34DD
_022369A0: .word 0x022492A8
_022369A4: .word 0x022532D8
_022369A8: .word 0x0224A24C
_022369AC: .word 0x022492BA
_022369B0: .word 0x022492B8
	arm_func_end ov18_02236658

	arm_func_start ov18_022369B4
ov18_022369B4: ; 0x022369B4
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022369E4 ; =ov18_022369E8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022369E4: .word ov18_022369E8
	arm_func_end ov18_022369B4

	arm_func_start ov18_022369E8
ov18_022369E8: ; 0x022369E8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #4
	bl ov18_0222B790
	ldr r0, _02236A20 ; =ov18_02236A24
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236A20: .word ov18_02236A24
	arm_func_end ov18_022369E8

	arm_func_start ov18_02236A24
ov18_02236A24: ; 0x02236A24
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02236A48 ; =ov18_02236A4C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236A48: .word ov18_02236A4C
	arm_func_end ov18_02236A24

	arm_func_start ov18_02236A4C
ov18_02236A4C: ; 0x02236A4C
	stmfd sp!, {r3, lr}
	bl ov18_02236A60
	bl ov18_02236A80
	bl ov18_02236A84
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02236A4C

	arm_func_start ov18_02236A60
ov18_02236A60: ; 0x02236A60
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02236A60

	arm_func_start ov18_02236A80
ov18_02236A80: ; 0x02236A80
	bx lr
	arm_func_end ov18_02236A80

	arm_func_start ov18_02236A84
ov18_02236A84: ; 0x02236A84
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02236AA8 ; =ov18_02236AAC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236AA8: .word ov18_02236AAC
	arm_func_end ov18_02236A84

	arm_func_start ov18_02236AAC
ov18_02236AAC: ; 0x02236AAC
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02236AC8 ; =ov18_02236ACC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236AC8: .word ov18_02236ACC
	arm_func_end ov18_02236AAC

	arm_func_start ov18_02236ACC
ov18_02236ACC: ; 0x02236ACC
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
	ldr r0, _02236B18 ; =ov18_02236B1C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236B18: .word ov18_02236B1C
	arm_func_end ov18_02236ACC

	arm_func_start ov18_02236B1C
ov18_02236B1C: ; 0x02236B1C
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
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #2
	beq _02236BA0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02236BC8 ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02236BA0:
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	mov r0, #0
	bl ov18_0223909C
	ldr r0, _02236BCC ; =ov18_02236BE0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236BC8: .word ov18_0223A6B4
_02236BCC: .word ov18_02236BE0
	arm_func_end ov18_02236B1C

	arm_func_start ov18_02236BD0
ov18_02236BD0: ; 0x02236BD0
	ldr r1, _02236BDC ; =0x02253328
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_02236BDC: .word 0x02253328
	arm_func_end ov18_02236BD0

	.rodata


	.global Unk_ov18_022492A8
Unk_ov18_022492A8: ; 0x022492A8
	.incbin "incbin/overlay18_rodata.bin", 0x2E74, 0x2E7C - 0x2E74

	.global Unk_ov18_022492B0
Unk_ov18_022492B0: ; 0x022492B0
	.incbin "incbin/overlay18_rodata.bin", 0x2E7C, 0x2E84 - 0x2E7C

	.global Unk_ov18_022492B8
Unk_ov18_022492B8: ; 0x022492B8
	.incbin "incbin/overlay18_rodata.bin", 0x2E84, 0x1C



	.data


	.global Unk_ov18_0224A238
Unk_ov18_0224A238: ; 0x0224A238
	.incbin "incbin/overlay18_data.bin", 0xAD8, 0xAEC - 0xAD8

	.global Unk_ov18_0224A24C
Unk_ov18_0224A24C: ; 0x0224A24C
	.incbin "incbin/overlay18_data.bin", 0xAEC, 0x6



	.bss


	.global Unk_ov18_02253328
Unk_ov18_02253328: ; 0x02253328
	.space 0x4

