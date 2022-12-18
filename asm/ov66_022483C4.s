	.include "macros/function.inc"
	.include "include/ov66_022483C4.inc"

	

	.text


	arm_func_start ov66_022483C4
ov66_022483C4: ; 0x022483C4
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _022483E4
	ldr r0, _022483F0 ; =0x02259358
	ldr r1, _022483F4 ; =0x02259368
	ldr r2, _022483F8 ; =0x02259338
	mov r3, #0xa4
	bl sub_020D407C
_022483E4:
	ldr r0, [r4, #0x14]
	bl ov4_021D78B0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022483F0: .word 0x02259358
_022483F4: .word 0x02259368
_022483F8: .word 0x02259338
	arm_func_end ov66_022483C4

	arm_func_start ov66_022483FC
ov66_022483FC: ; 0x022483FC
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	bne _0224841C
	ldr r0, _02248A70 ; =0x02259358
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	mov r3, #0xab
	bl sub_020D407C
_0224841C:
	ldr r0, [r4, #0]
	cmp r0, #0
	bge _0224843C
	ldr r0, _02248A7C ; =0x02259378
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	mov r3, #0xab
	bl sub_020D407C
_0224843C:
	ldr r0, [r4, #0]
	cmp r0, #0x20
	blt _0224845C
	ldr r0, _02248A80 ; =0x02259388
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	mov r3, #0xab
	bl sub_020D407C
_0224845C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0224847C
	ldr r0, _02248A84 ; =0x022593A4
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	mov r3, #0xab
	bl sub_020D407C
_0224847C:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0224849C
	ldr r0, _02248A88 ; =0x022593BC
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	mov r3, #0xab
	bl sub_020D407C
_0224849C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bge _022484BC
	ldr r0, _02248A8C ; =0x022593DC
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	mov r3, #0xab
	bl sub_020D407C
_022484BC:
	ldr r0, [r4, #0]
	cmp r0, #0x1f
	addls pc, pc, r0, lsl #2
	b _02248A50
_022484CC: ; jump table
	b _0224854C ; case 0
	b _0224855C ; case 1
	b _0224856C ; case 2
	b _02248584 ; case 3
	b _0224859C ; case 4
	b _022485BC ; case 5
	b _022485DC ; case 6
	b _022485F4 ; case 7
	b _0224861C ; case 8
	b _0224863C ; case 9
	b _02248654 ; case 10
	b _0224866C ; case 11
	b _02248684 ; case 12
	b _02248694 ; case 13
	b _022486AC ; case 14
	b _02248704 ; case 15
	b _02248714 ; case 16
	b _0224872C ; case 17
	b _02248744 ; case 18
	b _0224875C ; case 19
	b _022487A8 ; case 20
	b _02248804 ; case 21
	b _02248824 ; case 22
	b _0224884C ; case 23
	b _02248864 ; case 24
	b _022488A8 ; case 25
	b _022488EC ; case 26
	b _02248904 ; case 27
	b _02248950 ; case 28
	b _02248978 ; case 29
	b _022489D8 ; case 30
	b _02248A40 ; case 31
_0224854C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	bl ov4_021D78B0
	b _02248A64
_0224855C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	bl ov4_021D78B0
	b _02248A64
_0224856C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	b _02248A64
_02248584:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	b _02248A64
_0224859C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_022485BC:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_022485DC:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	b _02248A64
_022485F4:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #0xc]
	bl ov4_021D78B0
	ldr r0, [r5, #0x10]
	bl ov4_021D78B0
	b _02248A64
_0224861C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_0224863C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	b _02248A64
_02248654:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	b _02248A64
_0224866C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	b _02248A64
_02248684:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	bl ov4_021D78B0
	b _02248A64
_02248694:
	ldr r5, [r4, #8]
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	ldr r0, [r5, #0xc]
	bl ov4_021D78B0
	b _02248A64
_022486AC:
	ldr r6, [r4, #8]
	mov r5, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _022486E8
_022486C0:
	ldr r0, [r6, #8]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _022486C0
_022486E8:
	ldr r0, [r6, #8]
	bl ov4_021D78B0
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	ldr r0, [r6, #0x10]
	bl ov4_021D78B0
	b _02248A64
_02248704:
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	bl ov4_021D78B0
	b _02248A64
_02248714:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_0224872C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_02248744:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #0xc]
	bl ov4_021D78B0
	b _02248A64
_0224875C:
	ldr r6, [r4, #8]
	ldr r0, [r6, #4]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #0
	ble _02248794
_02248778:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _02248778
_02248794:
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	ldr r0, [r6, #0x10]
	bl ov4_021D78B0
	b _02248A64
_022487A8:
	ldr r6, [r4, #8]
	ldr r0, [r6, #4]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	bl ov4_021D78B0
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	ldr r0, [r6, #0x10]
	bl ov4_021D78B0
	ldr r0, [r6, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _022487F8
_022487DC:
	ldr r0, [r6, #0x18]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blt _022487DC
_022487F8:
	ldr r0, [r6, #0x18]
	bl ov4_021D78B0
	b _02248A64
_02248804:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	ldr r0, [r5, #0xc]
	bl ov4_021D78B0
	b _02248A64
_02248824:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	ldr r0, [r5, #0xc]
	bl ov4_021D78B0
	ldr r0, [r5, #0x10]
	bl ov4_021D78B0
	b _02248A64
_0224884C:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_02248864:
	ldr r6, [r4, #8]
	ldr r0, [r6, #4]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #0
	ble _0224889C
_02248880:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _02248880
_0224889C:
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	b _02248A64
_022488A8:
	ldr r6, [r4, #8]
	ldr r0, [r6, #4]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #0
	ble _022488E0
_022488C4:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _022488C4
_022488E0:
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	b _02248A64
_022488EC:
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	b _02248A64
_02248904:
	ldr r6, [r4, #8]
	ldr r0, [r6, #0]
	bl ov4_021D78B0
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _0224893C
_02248920:
	ldr r0, [r6, #8]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _02248920
_0224893C:
	ldr r0, [r6, #8]
	bl ov4_021D78B0
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	b _02248A64
_02248950:
	ldr r5, [r4, #8]
	ldr r0, [r5, #0]
	bl ov4_021D78B0
	ldr r0, [r5, #4]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	ldr r0, [r5, #0xc]
	bl ov4_021D78B0
	b _02248A64
_02248978:
	ldr r6, [r4, #8]
	ldr r0, [r6, #4]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #0
	ble _022489C4
_02248994:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _022489B4
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
_022489B4:
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _02248994
_022489C4:
	ldr r0, [r6, #0xc]
	bl ov4_021D78B0
	ldr r0, [r6, #0x10]
	bl ov4_021D78B0
	b _02248A64
_022489D8:
	ldr r6, [r4, #8]
	ldr r0, [r6, #4]
	bl ov4_021D78B0
	ldr r0, [r6, #8]
	bl ov4_021D78B0
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _02248A2C
_022489FC:
	ldr r0, [r6, #0x10]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _02248A1C
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
_02248A1C:
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _022489FC
_02248A2C:
	ldr r0, [r6, #0x10]
	bl ov4_021D78B0
	ldr r0, [r6, #0x14]
	bl ov4_021D78B0
	b _02248A64
_02248A40:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl ov4_021D78B0
	b _02248A64
_02248A50:
	ldr r0, _02248A90 ; =0x022593EC
	ldr r1, _02248A74 ; =0x02259368
	ldr r2, _02248A78 ; =0x022592F8
	ldr r3, _02248A94 ; =0x000001E5
	bl sub_020D407C
_02248A64:
	ldr r0, [r4, #8]
	bl ov4_021D78B0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02248A70: .word 0x02259358
_02248A74: .word 0x02259368
_02248A78: .word 0x022592F8
_02248A7C: .word 0x02259378
_02248A80: .word 0x02259388
_02248A84: .word 0x022593A4
_02248A88: .word 0x022593BC
_02248A8C: .word 0x022593DC
_02248A90: .word 0x022593EC
_02248A94: .word 0x000001E5
	arm_func_end ov66_022483FC

	arm_func_start ov66_02248A98
ov66_02248A98: ; 0x02248A98
	stmfd sp!, {r4, lr}
	ldr r2, _02248AC4 ; =ov66_022483C4
	mov r4, r0
	mov r0, #0x18
	mov r1, #0x80
	bl ov4_021E9A8C
	str r0, [r4, #0x820]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02248AC4: .word ov66_022483C4
	arm_func_end ov66_02248A98

	arm_func_start ov66_02248AC8
ov66_02248AC8: ; 0x02248AC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	bne _02248AE8
	ldr r0, _02248C00 ; =0x022593F0
	ldr r1, _02248C04 ; =0x02259368
	ldr r2, _02248C08 ; =0x0225930C
	ldr r3, _02248C0C ; =0x000001FA
	bl sub_020D407C
_02248AE8:
	ldr r0, [sl, #0x820]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_021E9BBC
	mov r8, r0
	cmp r8, #0
	mov sb, #0
	ble _02248BF4
	ldr fp, _02248C10 ; =0x02259358
	ldr r6, _02248C04 ; =0x02259368
	ldr r5, _02248C08 ; =0x0225930C
	ldr r4, _02248C14 ; =0x0000020D
_02248B18:
	ldr r0, [sl, #0x820]
	mov r1, sb
	bl ov4_021E9BC4
	movs r7, r0
	bne _02248B40
	mov r0, fp
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_02248B40:
	ldr r0, [r7, #0]
	cmp r0, #0
	bge _02248B60
	ldr r0, _02248C18 ; =0x02259378
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_02248B60:
	ldr r0, [r7, #0]
	cmp r0, #0x20
	blt _02248B80
	ldr r0, _02248C1C ; =0x02259388
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_02248B80:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _02248BA0
	ldr r0, _02248C20 ; =0x022593A4
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_02248BA0:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _02248BC0
	ldr r0, _02248C24 ; =0x022593BC
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_02248BC0:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bge _02248BE0
	ldr r0, _02248C28 ; =0x022593DC
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_02248BE0:
	mov r0, r7
	bl ov66_022483FC
	add sb, sb, #1
	cmp sb, r8
	blt _02248B18
_02248BF4:
	ldr r0, [sl, #0x820]
	bl ov4_021E9B50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02248C00: .word 0x022593F0
_02248C04: .word 0x02259368
_02248C08: .word 0x0225930C
_02248C0C: .word 0x000001FA
_02248C10: .word 0x02259358
_02248C14: .word 0x0000020D
_02248C18: .word 0x02259378
_02248C1C: .word 0x02259388
_02248C20: .word 0x022593A4
_02248C24: .word 0x022593BC
_02248C28: .word 0x022593DC
	arm_func_end ov66_02248AC8

	arm_func_start ov66_02248C2C
ov66_02248C2C: ; 0x02248C2C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	movs r5, r0
	mov r7, r1
	mov r6, r2
	mov r4, r3
	bne _02248C5C
	ldr r0, _02249B5C ; =0x022593F0
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B68 ; =0x0000021F
	bl sub_020D407C
_02248C5C:
	cmp r7, #0
	bge _02248C78
	ldr r0, _02249B6C ; =0x02259400
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B70 ; =0x00000221
	bl sub_020D407C
_02248C78:
	cmp r7, #0x20
	blt _02248C94
	ldr r0, _02249B74 ; =0x0225940C
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B78 ; =0x00000222
	bl sub_020D407C
_02248C94:
	ldr r0, [r5, #0x820]
	cmp r0, #0
	bne _02248CB4
	ldr r0, _02249B7C ; =0x02259420
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B80 ; =0x00000223
	bl sub_020D407C
_02248CB4:
	cmp r6, #0
	bne _02248CD0
	ldr r0, _02249B84 ; =0x02259444
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	mov r3, #0x224
	bl sub_020D407C
_02248CD0:
	cmp r4, #0
	bne _02248CEC
	ldr r0, _02249B88 ; =0x02259458
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B8C ; =0x00000225
	bl sub_020D407C
_02248CEC:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _02248D0C
	ldr r0, _02249B90 ; =0x02259470
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B94 ; =0x00000226
	bl sub_020D407C
_02248D0C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bge _02248D2C
	ldr r0, _02249B98 ; =0x02259488
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249B9C ; =0x00000227
	bl sub_020D407C
_02248D2C:
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	ldr r0, [sp, #0x3c]
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r7, [sp]
	str r6, [sp, #4]
	bl ov4_021D7880
	str r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x3c]
	mov r1, r4
	bl sub_020D50B8
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	cmp r0, #0
	moveq r0, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	streq r0, [sp, #0x14]
	beq _02248DDC
	bl sub_020D8B60
	mov r6, r0
	add r0, r6, #1
	bl ov4_021D7880
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02248DD0
	ldr r0, [sp, #8]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248DD0:
	ldr r1, [sp, #0x38]
	add r2, r6, #1
	bl sub_020D50B8
_02248DDC:
	ldr r0, [sp]
	cmp r0, #0x1f
	addls pc, pc, r0, lsl #2
	b _0224AA48
_02248DEC: ; jump table
	b _02248E6C ; case 0
	b _02248EA8 ; case 1
	b _02248EE4 ; case 2
	b _02248F58 ; case 3
	b _02248FCC ; case 4
	b _02249078 ; case 5
	b _02249124 ; case 6
	b _02249198 ; case 7
	b _0224927C ; case 8
	b _02249328 ; case 9
	b _0224939C ; case 10
	b _02249424 ; case 11
	b _02249498 ; case 12
	b _022494D4 ; case 13
	b _02249548 ; case 14
	b _022497E0 ; case 15
	b _0224981C ; case 16
	b _02249890 ; case 17
	b _02249918 ; case 18
	b _0224998C ; case 19
	b _02249BC0 ; case 20
	b _02249DA8 ; case 21
	b _02249E54 ; case 22
	b _02249F38 ; case 23
	b _02249FAC ; case 24
	b _0224A0EC ; case 25
	b _0224A22C ; case 26
	b _0224A2A0 ; case 27
	b _0224A470 ; case 28
	b _0224A554 ; case 29
	b _0224A794 ; case 30
	b _0224AA0C ; case 31
_02248E6C:
	ldr r0, [r4, #0]
	ldr r4, [sp, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r4, #0]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r4
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248EA8:
	ldr r0, [r4, #0]
	ldr r4, [sp, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r4, #0]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r4
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248EE4:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02248F20
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _02248F20
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248F20:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248F58:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02248F94
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _02248F94
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248F94:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02248FCC:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249008
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _02249008
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249008:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02249040
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249040
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249040:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249078:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _022490B4
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _022490B4
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022490B4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022490EC
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _022490EC
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022490EC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249124:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249160
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _02249160
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249160:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249198:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _022491D4
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _022491D4
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022491D4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224920C
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224920C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224920C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249244
	bl ov4_021EA8AC
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _02249244
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249244:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #0x10]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224927C:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _022492B8
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _022492B8
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022492B8:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022492F0
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _022492F0
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022492F0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249328:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249364
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _02249364
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249364:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224939C:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _022493D8
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _022493D8
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022493D8:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224AA5C
	mov r0, #0x20
	bl ov4_021D7880
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249414
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249414:
	ldr r1, [r4, #4]
	mov r2, #0x20
	bl sub_020D50B8
	b _0224AA5C
_02249424:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249460
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _02249460
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249460:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249498:
	ldr r0, [r4, #0]
	ldr r4, [sp, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r4, #0]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r4
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022494D4:
	ldr r0, [r4, #8]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249510
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _02249510
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249510:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249548:
	ldr r0, [r4, #4]
	ldr r8, [sp, #8]
	cmp r0, #0
	bge _0224956C
	ldr r0, _02249BA0 ; =0x02259490
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249BA4 ; =0x000002D3
	bl sub_020D407C
_0224956C:
	ldr r0, [r4, #8]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r8, #8]
	beq _0224964C
	ldr r0, [r4, #4]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r8, #8]
	cmp r0, #0
	bne _022495B4
	mov r0, r8
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022495B4:
	ldr r0, [r4, #4]
	mov r7, #0
	cmp r0, #0
	ble _0224964C
	mov r6, r7
_022495C8:
	ldr r0, [r4, #8]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	ldreq r0, [r8, #8]
	streq r6, [r0, r7, lsl #2]
	beq _0224963C
	bl ov4_021EA8AC
	ldr r1, [r8, #8]
	str r0, [r1, r7, lsl #2]
	ldr r0, [r8, #8]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _0224963C
	subs r7, r7, #1
	bmi _02249618
_02249604:
	ldr r0, [r8, #8]
	ldr r0, [r0, r7, lsl #2]
	bl ov4_021D78B0
	subs r7, r7, #1
	bpl _02249604
_02249618:
	ldr r0, [r8, #8]
	bl ov4_021D78B0
	mov r0, r8
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224963C:
	ldr r0, [r4, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _022495C8
_0224964C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _0224966C
	ldr r0, _02249BA0 ; =0x02259490
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	mov r3, #0x2d4
	bl sub_020D407C
_0224966C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r8, #0xc]
	beq _0224974C
	ldr r0, [r4, #4]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r8, #0xc]
	cmp r0, #0
	bne _022496B4
	mov r0, r8
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022496B4:
	ldr r0, [r4, #4]
	mov r7, #0
	cmp r0, #0
	ble _0224974C
	mov r6, r7
_022496C8:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	ldreq r0, [r8, #0xc]
	streq r6, [r0, r7, lsl #2]
	beq _0224973C
	bl ov4_021EA8AC
	ldr r1, [r8, #0xc]
	str r0, [r1, r7, lsl #2]
	ldr r0, [r8, #0xc]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _0224973C
	subs r7, r7, #1
	bmi _02249718
_02249704:
	ldr r0, [r8, #0xc]
	ldr r0, [r0, r7, lsl #2]
	bl ov4_021D78B0
	subs r7, r7, #1
	bpl _02249704
_02249718:
	ldr r0, [r8, #0xc]
	bl ov4_021D78B0
	mov r0, r8
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224973C:
	ldr r0, [r4, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _022496C8
_0224974C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _0224976C
	ldr r0, _02249BA0 ; =0x02259490
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249BA8 ; =0x000002D5
	bl sub_020D407C
_0224976C:
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0224AA5C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02249798
	ldr r0, _02249BAC ; =0x022594B0
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249BA8 ; =0x000002D5
	bl sub_020D407C
_02249798:
	ldr r0, [r4, #4]
	mov r6, r0, lsl #2
	mov r0, r6
	bl ov4_021D7880
	str r0, [r8, #0x10]
	cmp r0, #0
	bne _022497D0
	mov r0, r8
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022497D0:
	ldr r1, [r4, #0x10]
	mov r2, r6
	bl sub_020D50B8
	b _0224AA5C
_022497E0:
	ldr r0, [r4, #8]
	ldr r4, [sp, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r4, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r4
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224981C:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249858
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249858
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249858:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249890:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _022498CC
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _022498CC
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022498CC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	mov r0, #0x20
	bl ov4_021D7880
	str r0, [r6, #8]
	cmp r0, #0
	bne _02249908
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249908:
	ldr r1, [r4, #8]
	mov r2, #0x20
	bl sub_020D50B8
	b _0224AA5C
_02249918:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249954
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249954
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249954:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224998C:
	ldr r0, [r4, #4]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _022499C8
	bl ov4_021EA8AC
	str r0, [r7, #4]
	cmp r0, #0
	bne _022499C8
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022499C8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _022499E8
	ldr r0, _02249BB0 ; =0x022594CC
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249BB4 ; =0x00000301
	bl sub_020D407C
_022499E8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0xc]
	beq _02249AC8
	ldr r0, [r4, #8]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _02249A30
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249A30:
	ldr r0, [r4, #8]
	mov r8, #0
	cmp r0, #0
	ble _02249AC8
	mov r6, r8
_02249A44:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0xc]
	streq r6, [r0, r8, lsl #2]
	beq _02249AB8
	bl ov4_021EA8AC
	ldr r1, [r7, #0xc]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _02249AB8
	subs r8, r8, #1
	bmi _02249A94
_02249A80:
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _02249A80
_02249A94:
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249AB8:
	ldr r0, [r4, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _02249A44
_02249AC8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _02249AE8
	ldr r0, _02249BB0 ; =0x022594CC
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249BB8 ; =0x00000302
	bl sub_020D407C
_02249AE8:
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _0224AA5C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02249B14
	ldr r0, _02249BBC ; =0x022594E8
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _02249BB8 ; =0x00000302
	bl sub_020D407C
_02249B14:
	ldr r0, [r4, #8]
	mov r6, r0, lsl #2
	mov r0, r6
	bl ov4_021D7880
	str r0, [r7, #0x10]
	cmp r0, #0
	bne _02249B4C
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249B4C:
	ldr r1, [r4, #0x10]
	mov r2, r6
	bl sub_020D50B8
	b _0224AA5C
	; .align 2, 0
_02249B5C: .word 0x022593F0
_02249B60: .word 0x02259368
_02249B64: .word 0x022592C8
_02249B68: .word 0x0000021F
_02249B6C: .word 0x02259400
_02249B70: .word 0x00000221
_02249B74: .word 0x0225940C
_02249B78: .word 0x00000222
_02249B7C: .word 0x02259420
_02249B80: .word 0x00000223
_02249B84: .word 0x02259444
_02249B88: .word 0x02259458
_02249B8C: .word 0x00000225
_02249B90: .word 0x02259470
_02249B94: .word 0x00000226
_02249B98: .word 0x02259488
_02249B9C: .word 0x00000227
_02249BA0: .word 0x02259490
_02249BA4: .word 0x000002D3
_02249BA8: .word 0x000002D5
_02249BAC: .word 0x022594B0
_02249BB0: .word 0x022594CC
_02249BB4: .word 0x00000301
_02249BB8: .word 0x00000302
_02249BBC: .word 0x022594E8
_02249BC0:
	ldr r0, [r4, #4]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _02249BFC
	bl ov4_021EA8AC
	str r0, [r7, #4]
	cmp r0, #0
	bne _02249BFC
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249BFC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02249C34
	bl ov4_021EA8AC
	str r0, [r7, #8]
	cmp r0, #0
	bne _02249C34
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249C34:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249C6C
	bl ov4_021EA8AC
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _02249C6C
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249C6C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02249CA4
	bl ov4_021EA8AC
	str r0, [r7, #0x10]
	cmp r0, #0
	bne _02249CA4
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249CA4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _02249CC4
	ldr r0, _02249BA0 ; =0x02259490
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA74 ; =0x0000030E
	bl sub_020D407C
_02249CC4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x18]
	beq _0224AA5C
	ldr r0, [r4, #0x14]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0x18]
	cmp r0, #0
	bne _02249D0C
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249D0C:
	ldr r0, [r4, #0x14]
	mov r8, #0
	cmp r0, #0
	ble _0224AA5C
	mov r6, r8
_02249D20:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0x18]
	streq r6, [r0, r8, lsl #2]
	beq _02249D94
	bl ov4_021EA8AC
	ldr r1, [r7, #0x18]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0x18]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _02249D94
	subs r8, r8, #1
	bmi _02249D70
_02249D5C:
	ldr r0, [r7, #0x18]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _02249D5C
_02249D70:
	ldr r0, [r7, #0x18]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249D94:
	ldr r0, [r4, #0x14]
	add r8, r8, #1
	cmp r8, r0
	blt _02249D20
	b _0224AA5C
_02249DA8:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249DE4
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249DE4
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249DE4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02249E1C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _02249E1C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249E1C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249E54:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249E90
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249E90
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249E90:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02249EC8
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _02249EC8
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249EC8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249F00
	bl ov4_021EA8AC
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _02249F00
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249F00:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #0x10]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249F38:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _02249F74
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _02249F74
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249F74:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249FAC:
	ldr r0, [r4, #4]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _02249FE8
	bl ov4_021EA8AC
	str r0, [r7, #4]
	cmp r0, #0
	bne _02249FE8
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02249FE8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _0224A008
	ldr r0, _0224AA78 ; =0x02259504
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA7C ; =0x00000335
	bl sub_020D407C
_0224A008:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0xc]
	beq _0224AA5C
	ldr r0, [r4, #8]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _0224A050
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A050:
	ldr r0, [r4, #8]
	mov r8, #0
	cmp r0, #0
	ble _0224AA5C
	mov r6, r8
_0224A064:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0xc]
	streq r6, [r0, r8, lsl #2]
	beq _0224A0D8
	bl ov4_021EA8AC
	ldr r1, [r7, #0xc]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A0D8
	subs r8, r8, #1
	bmi _0224A0B4
_0224A0A0:
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A0A0
_0224A0B4:
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A0D8:
	ldr r0, [r4, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A064
	b _0224AA5C
_0224A0EC:
	ldr r0, [r4, #4]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _0224A128
	bl ov4_021EA8AC
	str r0, [r7, #4]
	cmp r0, #0
	bne _0224A128
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A128:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _0224A148
	ldr r0, _0224AA80 ; =0x02259520
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA84 ; =0x0000033E
	bl sub_020D407C
_0224A148:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0xc]
	beq _0224AA5C
	ldr r0, [r4, #8]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _0224A190
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A190:
	ldr r0, [r4, #8]
	mov r8, #0
	cmp r0, #0
	ble _0224AA5C
	mov r6, r8
_0224A1A4:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0xc]
	streq r6, [r0, r8, lsl #2]
	beq _0224A218
	bl ov4_021EA8AC
	ldr r1, [r7, #0xc]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A218
	subs r8, r8, #1
	bmi _0224A1F4
_0224A1E0:
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A1E0
_0224A1F4:
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A218:
	ldr r0, [r4, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A1A4
	b _0224AA5C
_0224A22C:
	ldr r0, [r4, #4]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _0224A268
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224A268
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A268:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A2A0:
	ldr r0, [r4, #0]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _0224A2DC
	bl ov4_021EA8AC
	str r0, [r7, #0]
	cmp r0, #0
	bne _0224A2DC
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A2DC:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _0224A2FC
	ldr r0, _02249BB0 ; =0x022594CC
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	mov r3, #0x350
	bl sub_020D407C
_0224A2FC:
	ldr r0, [r4, #8]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #8]
	beq _0224A3DC
	ldr r0, [r4, #4]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #8]
	cmp r0, #0
	bne _0224A344
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A344:
	ldr r0, [r4, #4]
	mov r8, #0
	cmp r0, #0
	ble _0224A3DC
	mov r6, r8
_0224A358:
	ldr r0, [r4, #8]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #8]
	streq r6, [r0, r8, lsl #2]
	beq _0224A3CC
	bl ov4_021EA8AC
	ldr r1, [r7, #8]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #8]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A3CC
	subs r8, r8, #1
	bmi _0224A3A8
_0224A394:
	ldr r0, [r7, #8]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A394
_0224A3A8:
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A3CC:
	ldr r0, [r4, #4]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A358
_0224A3DC:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _0224A3FC
	ldr r0, _02249BB0 ; =0x022594CC
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA88 ; =0x00000351
	bl sub_020D407C
_0224A3FC:
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0224AA5C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0224A428
	ldr r0, _02249BBC ; =0x022594E8
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA88 ; =0x00000351
	bl sub_020D407C
_0224A428:
	ldr r0, [r4, #4]
	mov r6, r0, lsl #2
	mov r0, r6
	bl ov4_021D7880
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _0224A460
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A460:
	ldr r1, [r4, #0xc]
	mov r2, r6
	bl sub_020D50B8
	b _0224AA5C
_0224A470:
	ldr r0, [r4, #0]
	ldr r6, [sp, #8]
	cmp r0, #0
	beq _0224A4AC
	bl ov4_021EA8AC
	str r0, [r6, #0]
	cmp r0, #0
	bne _0224A4AC
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A4AC:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224A4E4
	bl ov4_021EA8AC
	str r0, [r6, #4]
	cmp r0, #0
	bne _0224A4E4
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A4E4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224A51C
	bl ov4_021EA8AC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0224A51C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A51C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r6
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A554:
	ldr r0, [r4, #4]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _0224A590
	bl ov4_021EA8AC
	str r0, [r7, #4]
	cmp r0, #0
	bne _0224A590
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A590:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _0224A5B0
	ldr r0, _0224AA8C ; =0x02259544
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA90 ; =0x00000365
	bl sub_020D407C
_0224A5B0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0xc]
	beq _0224A690
	ldr r0, [r4, #8]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _0224A5F8
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A5F8:
	ldr r0, [r4, #8]
	mov r8, #0
	cmp r0, #0
	ble _0224A690
	mov r6, r8
_0224A60C:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0xc]
	streq r6, [r0, r8, lsl #2]
	beq _0224A680
	bl ov4_021EA8AC
	ldr r1, [r7, #0xc]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A680
	subs r8, r8, #1
	bmi _0224A65C
_0224A648:
	ldr r0, [r7, #0xc]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A648
_0224A65C:
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A680:
	ldr r0, [r4, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A60C
_0224A690:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _0224A6B0
	ldr r0, _0224AA8C ; =0x02259544
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA94 ; =0x00000366
	bl sub_020D407C
_0224A6B0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x10]
	beq _0224AA5C
	ldr r0, [r4, #8]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0x10]
	cmp r0, #0
	bne _0224A6F8
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A6F8:
	ldr r0, [r4, #8]
	mov r8, #0
	cmp r0, #0
	ble _0224AA5C
	mov r6, r8
_0224A70C:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0x10]
	streq r6, [r0, r8, lsl #2]
	beq _0224A780
	bl ov4_021EA8AC
	ldr r1, [r7, #0x10]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0x10]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A780
	subs r8, r8, #1
	bmi _0224A75C
_0224A748:
	ldr r0, [r7, #0x10]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A748
_0224A75C:
	ldr r0, [r7, #0x10]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A780:
	ldr r0, [r4, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A70C
	b _0224AA5C
_0224A794:
	ldr r0, [r4, #4]
	ldr r7, [sp, #8]
	cmp r0, #0
	beq _0224A7D0
	bl ov4_021EA8AC
	str r0, [r7, #4]
	cmp r0, #0
	bne _0224A7D0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A7D0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224A808
	bl ov4_021EA8AC
	str r0, [r7, #8]
	cmp r0, #0
	bne _0224A808
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A808:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _0224A828
	ldr r0, _0224AA8C ; =0x02259544
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	mov r3, #0x370
	bl sub_020D407C
_0224A828:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x10]
	beq _0224A908
	ldr r0, [r4, #0xc]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0x10]
	cmp r0, #0
	bne _0224A870
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A870:
	ldr r0, [r4, #0xc]
	mov r8, #0
	cmp r0, #0
	ble _0224A908
	mov r6, r8
_0224A884:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0x10]
	streq r6, [r0, r8, lsl #2]
	beq _0224A8F8
	bl ov4_021EA8AC
	ldr r1, [r7, #0x10]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0x10]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A8F8
	subs r8, r8, #1
	bmi _0224A8D4
_0224A8C0:
	ldr r0, [r7, #0x10]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A8C0
_0224A8D4:
	ldr r0, [r7, #0x10]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A8F8:
	ldr r0, [r4, #0xc]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A884
_0224A908:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _0224A928
	ldr r0, _0224AA8C ; =0x02259544
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	ldr r3, _0224AA98 ; =0x00000371
	bl sub_020D407C
_0224A928:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x14]
	beq _0224AA5C
	ldr r0, [r4, #0xc]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #0x14]
	cmp r0, #0
	bne _0224A970
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A970:
	ldr r0, [r4, #0xc]
	mov r8, #0
	cmp r0, #0
	ble _0224AA5C
	mov r6, r8
_0224A984:
	ldr r0, [r4, #0x14]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #0x14]
	streq r6, [r0, r8, lsl #2]
	beq _0224A9F8
	bl ov4_021EA8AC
	ldr r1, [r7, #0x14]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #0x14]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _0224A9F8
	subs r8, r8, #1
	bmi _0224A9D4
_0224A9C0:
	ldr r0, [r7, #0x14]
	ldr r0, [r0, r8, lsl #2]
	bl ov4_021D78B0
	subs r8, r8, #1
	bpl _0224A9C0
_0224A9D4:
	ldr r0, [r7, #0x14]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224A9F8:
	ldr r0, [r4, #0xc]
	add r8, r8, #1
	cmp r8, r0
	blt _0224A984
	b _0224AA5C
_0224AA0C:
	ldr r0, [r4, #4]
	ldr r4, [sp, #8]
	cmp r0, #0
	beq _0224AA5C
	bl ov4_021EA8AC
	str r0, [r4, #4]
	cmp r0, #0
	bne _0224AA5C
	mov r0, r4
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0224AA48:
	ldr r0, _0224AA9C ; =0x022593EC
	ldr r1, _02249B60 ; =0x02259368
	ldr r2, _02249B64 ; =0x022592C8
	mov r3, #0x380
	bl sub_020D407C
_0224AA5C:
	ldr r0, [r5, #0x820]
	add r1, sp, #0
	bl ov4_021E9C2C
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224AA74: .word 0x0000030E
_0224AA78: .word 0x02259504
_0224AA7C: .word 0x00000335
_0224AA80: .word 0x02259520
_0224AA84: .word 0x0000033E
_0224AA88: .word 0x00000351
_0224AA8C: .word 0x02259544
_0224AA90: .word 0x00000365
_0224AA94: .word 0x00000366
_0224AA98: .word 0x00000371
_0224AA9C: .word 0x022593EC
	arm_func_end ov66_02248C2C

	arm_func_start ov66_0224AAA0
ov66_0224AAA0: ; 0x0224AAA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	movs r6, r0
	mov r5, r1
	bne _0224AAC8
	ldr r0, _0224B068 ; =0x022593F0
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B074 ; =0x0000038D
	bl sub_020D407C
_0224AAC8:
	cmp r5, #0
	bne _0224AAE4
	ldr r0, _0224B078 ; =0x02259358
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B07C ; =0x0000038F
	bl sub_020D407C
_0224AAE4:
	ldr r0, [r5, #0]
	cmp r0, #0
	bge _0224AB04
	ldr r0, _0224B080 ; =0x02259378
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B07C ; =0x0000038F
	bl sub_020D407C
_0224AB04:
	ldr r0, [r5, #0]
	cmp r0, #0x20
	blt _0224AB24
	ldr r0, _0224B084 ; =0x02259388
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B07C ; =0x0000038F
	bl sub_020D407C
_0224AB24:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0224AB44
	ldr r0, _0224B088 ; =0x022593A4
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B07C ; =0x0000038F
	bl sub_020D407C
_0224AB44:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0224AB64
	ldr r0, _0224B08C ; =0x022593BC
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B07C ; =0x0000038F
	bl sub_020D407C
_0224AB64:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bge _0224AB84
	ldr r0, _0224B090 ; =0x022593DC
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B07C ; =0x0000038F
	bl sub_020D407C
_0224AB84:
	ldr r0, [r5, #0]
	ldr r4, [r5, #0xc]
	cmp r0, #0x1f
	addls pc, pc, r0, lsl #2
	b _0224B044
_0224AB98: ; jump table
	b _0224AC18 ; case 0
	b _0224AC34 ; case 1
	b _0224AC50 ; case 2
	b _0224AC6C ; case 3
	b _0224AC88 ; case 4
	b _0224ACA8 ; case 5
	b _0224ACC4 ; case 6
	b _0224ACE0 ; case 7
	b _0224AD08 ; case 8
	b _0224AD24 ; case 9
	b _0224AD40 ; case 10
	b _0224AD5C ; case 11
	b _0224AD78 ; case 12
	b _0224AD94 ; case 13
	b _0224ADBC ; case 14
	b _0224ADE4 ; case 15
	b _0224AE0C ; case 16
	b _0224AE28 ; case 17
	b _0224AE44 ; case 18
	b _0224AE64 ; case 19
	b _0224AE8C ; case 20
	b _0224AEC8 ; case 21
	b _0224AEE8 ; case 22
	b _0224AF10 ; case 23
	b _0224AF30 ; case 24
	b _0224AF50 ; case 25
	b _0224AF70 ; case 26
	b _0224AF8C ; case 27
	b _0224AFAC ; case 28
	b _0224AFCC ; case 29
	b _0224AFF4 ; case 30
	b _0224B028 ; case 31
_0224AC18:
	ldr r0, [r5, #8]
	ldr r3, [r5, #4]
	ldr r1, [r0, #0]
	mov r0, r6
	mov r2, r4
	blx r3
	b _0224B058
_0224AC34:
	ldr r0, [r5, #8]
	ldr r3, [r5, #4]
	ldr r1, [r0, #0]
	mov r0, r6
	mov r2, r4
	blx r3
	b _0224B058
_0224AC50:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AC6C:
	ldr r0, [r5, #8]
	ldr ip, [r5, #4]
	ldmia r0, {r1, r2}
	mov r0, r6
	mov r3, r4
	blx ip
	b _0224B058
_0224AC88:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224ACA8:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224ACC4:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224ACE0:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	stmib sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AD08:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AD24:
	ldr r0, [r5, #8]
	ldr ip, [r5, #4]
	ldmia r0, {r1, r2}
	mov r0, r6
	mov r3, r4
	blx ip
	b _0224B058
_0224AD40:
	ldr r0, [r5, #8]
	ldr ip, [r5, #4]
	ldmia r0, {r1, r2}
	mov r0, r6
	mov r3, r4
	blx ip
	b _0224B058
_0224AD5C:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AD78:
	ldr r0, [r5, #8]
	ldr r3, [r5, #4]
	ldr r1, [r0, #0]
	mov r0, r6
	mov r2, r4
	blx r3
	b _0224B058
_0224AD94:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	stmib sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224ADBC:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	stmib sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224ADE4:
	ldr r7, [r5, #8]
	ldr r8, [r5, #4]
	ldr r1, [r7, #8]
	mov r0, r6
	bl ov66_0224C454
	str r4, [sp]
	mov r0, r6
	ldmia r7, {r1, r2, r3}
	blx r8
	b _0224B058
_0224AE0C:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AE28:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AE44:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AE64:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	stmib sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AE8C:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	str r1, [sp, #4]
	ldr r1, [r3, #0x14]
	str r1, [sp, #8]
	ldr r1, [r3, #0x18]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AEC8:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AEE8:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	stmib sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AF10:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AF30:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AF50:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AF70:
	ldr r3, [r5, #8]
	mov r0, r6
	str r4, [sp]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AF8C:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AFAC:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AFCC:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	stmib sp, {r1, r4}
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224AFF4:
	ldr r3, [r5, #8]
	mov r0, r6
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3, #0x10]
	str r1, [sp, #4]
	ldr r1, [r3, #0x14]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r4, [r5, #4]
	ldmia r3, {r1, r2, r3}
	blx r4
	b _0224B058
_0224B028:
	ldr r0, [r5, #8]
	ldr ip, [r5, #4]
	ldmia r0, {r1, r2}
	mov r0, r6
	mov r3, r4
	blx ip
	b _0224B058
_0224B044:
	ldr r0, _0224B094 ; =0x022593EC
	ldr r1, _0224B06C ; =0x02259368
	ldr r2, _0224B070 ; =0x022592D8
	ldr r3, _0224B098 ; =0x000005EF
	bl sub_020D407C
_0224B058:
	mov r0, r5
	bl ov66_022483FC
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224B068: .word 0x022593F0
_0224B06C: .word 0x02259368
_0224B070: .word 0x022592D8
_0224B074: .word 0x0000038D
_0224B078: .word 0x02259358
_0224B07C: .word 0x0000038F
_0224B080: .word 0x02259378
_0224B084: .word 0x02259388
_0224B088: .word 0x022593A4
_0224B08C: .word 0x022593BC
_0224B090: .word 0x022593DC
_0224B094: .word 0x022593EC
_0224B098: .word 0x000005EF
	arm_func_end ov66_0224AAA0

	arm_func_start ov66_0224B09C
ov66_0224B09C: ; 0x0224B09C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	movs sl, r0
	mov sb, r1
	bne _0224B0C4
	ldr r0, _0224B26C ; =0x022593F0
	ldr r1, _0224B270 ; =0x02259368
	ldr r2, _0224B274 ; =0x022592E8
	ldr r3, _0224B278 ; =0x000005FC
	bl sub_020D407C
_0224B0C4:
	ldr r0, [sl, #0x820]
	mov r8, #0
	bl ov4_021E9BBC
	cmp r0, #0
	addle sp, sp, #0x18
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _0224B27C ; =0x02259358
	ldr r6, _0224B270 ; =0x02259368
	ldr r5, _0224B274 ; =0x022592E8
	ldr r4, _0224B280 ; =0x00000605
_0224B0EC:
	ldr r0, [sl, #0x820]
	mov r1, r8
	bl ov4_021E9BC4
	movs r7, r0
	bne _0224B114
	mov r0, fp
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B114:
	ldr r0, [r7, #0]
	cmp r0, #0
	bge _0224B134
	ldr r0, _0224B284 ; =0x02259378
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B134:
	ldr r0, [r7, #0]
	cmp r0, #0x20
	blt _0224B154
	ldr r0, _0224B288 ; =0x02259388
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B154:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0224B174
	ldr r0, _0224B28C ; =0x022593A4
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B174:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0224B194
	ldr r0, _0224B290 ; =0x022593BC
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B194:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bge _0224B1B4
	ldr r0, _0224B294 ; =0x022593DC
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B1B4:
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _0224B1E8
	mov r0, sl
	bl ov66_0224C134
	cmp r0, #0
	bne _0224B1E8
	mov r0, r7
	bl ov66_022483FC
	ldr r0, [sl, #0x820]
	mov r1, r8
	bl ov4_021E9E40
	b _0224B254
_0224B1E8:
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _0224B204
	mov r0, sl
	bl ov66_0224C518
	cmp r0, #0
	beq _0224B250
_0224B204:
	cmp sb, #0
	ldrne r0, [r7, #0x10]
	cmpne r0, sb
	bne _0224B250
	add ip, sp, #0
	ldmia r7!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1}
	stmia ip, {r0, r1}
	ldr r0, [sl, #0x820]
	mov r1, r8
	bl ov4_021E9E40
	mov r0, sl
	add r1, sp, #0
	bl ov66_0224AAA0
	cmp sb, #0
	beq _0224B254
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224B250:
	add r8, r8, #1
_0224B254:
	ldr r0, [sl, #0x820]
	bl ov4_021E9BBC
	cmp r8, r0
	blt _0224B0EC
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224B26C: .word 0x022593F0
_0224B270: .word 0x02259368
_0224B274: .word 0x022592E8
_0224B278: .word 0x000005FC
_0224B27C: .word 0x02259358
_0224B280: .word 0x00000605
_0224B284: .word 0x02259378
_0224B288: .word 0x02259388
_0224B28C: .word 0x022593A4
_0224B290: .word 0x022593BC
_0224B294: .word 0x022593DC
	arm_func_end ov66_0224B09C

	arm_func_start ov66_0224B298
ov66_0224B298: ; 0x0224B298
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	mov sb, r1
	bne _0224B2BC
	ldr r0, _0224B3CC ; =0x022593F0
	ldr r1, _0224B3D0 ; =0x02259368
	ldr r2, _0224B3D4 ; =0x02259320
	ldr r3, _0224B3D8 ; =0x0000063B
	bl sub_020D407C
_0224B2BC:
	ldr r0, [sl, #0x820]
	bl ov4_021E9BBC
	mov fp, r0
	cmp fp, #0
	mov r8, #0
	ble _0224B3C4
	ldr r6, _0224B3D0 ; =0x02259368
	ldr r5, _0224B3D4 ; =0x02259320
	ldr r4, _0224B3DC ; =0x00000648
_0224B2E0:
	ldr r0, [sl, #0x820]
	mov r1, r8
	bl ov4_021E9BC4
	movs r7, r0
	bne _0224B308
	ldr r0, _0224B3E0 ; =0x02259358
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B308:
	ldr r0, [r7, #0]
	cmp r0, #0
	bge _0224B328
	ldr r0, _0224B3E4 ; =0x02259378
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B328:
	ldr r0, [r7, #0]
	cmp r0, #0x20
	blt _0224B348
	ldr r0, _0224B3E8 ; =0x02259388
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B348:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0224B368
	ldr r0, _0224B3EC ; =0x022593A4
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B368:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0224B388
	ldr r0, _0224B3F0 ; =0x022593BC
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B388:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bge _0224B3A8
	ldr r0, _0224B3F4 ; =0x022593DC
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_0224B3A8:
	ldr r0, [r7, #0x10]
	cmp r0, sb
	moveq r0, r8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r8, r8, #1
	cmp r8, fp
	blt _0224B2E0
_0224B3C4:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224B3CC: .word 0x022593F0
_0224B3D0: .word 0x02259368
_0224B3D4: .word 0x02259320
_0224B3D8: .word 0x0000063B
_0224B3DC: .word 0x00000648
_0224B3E0: .word 0x02259358
_0224B3E4: .word 0x02259378
_0224B3E8: .word 0x02259388
_0224B3EC: .word 0x022593A4
_0224B3F0: .word 0x022593BC
_0224B3F4: .word 0x022593DC
	arm_func_end ov66_0224B298

	arm_func_start ov66_0224B3F8
ov66_0224B3F8: ; 0x0224B3F8
	stmfd sp!, {r3, lr}
	bl ov66_0224B298
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0224B3F8
	.data


	.global Unk_ov66_022592C8
Unk_ov66_022592C8: ; 0x022592C8
	.incbin "incbin/overlay66_data.bin", 0x5A8, 0x5B8 - 0x5A8

	.global Unk_ov66_022592D8
Unk_ov66_022592D8: ; 0x022592D8
	.incbin "incbin/overlay66_data.bin", 0x5B8, 0x5C8 - 0x5B8

	.global Unk_ov66_022592E8
Unk_ov66_022592E8: ; 0x022592E8
	.incbin "incbin/overlay66_data.bin", 0x5C8, 0x5D8 - 0x5C8

	.global Unk_ov66_022592F8
Unk_ov66_022592F8: ; 0x022592F8
	.incbin "incbin/overlay66_data.bin", 0x5D8, 0x5EC - 0x5D8

	.global Unk_ov66_0225930C
Unk_ov66_0225930C: ; 0x0225930C
	.incbin "incbin/overlay66_data.bin", 0x5EC, 0x600 - 0x5EC

	.global Unk_ov66_02259320
Unk_ov66_02259320: ; 0x02259320
	.incbin "incbin/overlay66_data.bin", 0x600, 0x618 - 0x600

	.global Unk_ov66_02259338
Unk_ov66_02259338: ; 0x02259338
	.incbin "incbin/overlay66_data.bin", 0x618, 0x638 - 0x618

	.global Unk_ov66_02259358
Unk_ov66_02259358: ; 0x02259358
	.incbin "incbin/overlay66_data.bin", 0x638, 0x648 - 0x638

	.global Unk_ov66_02259368
Unk_ov66_02259368: ; 0x02259368
	.incbin "incbin/overlay66_data.bin", 0x648, 0x658 - 0x648

	.global Unk_ov66_02259378
Unk_ov66_02259378: ; 0x02259378
	.incbin "incbin/overlay66_data.bin", 0x658, 0x668 - 0x658

	.global Unk_ov66_02259388
Unk_ov66_02259388: ; 0x02259388
	.incbin "incbin/overlay66_data.bin", 0x668, 0x684 - 0x668

	.global Unk_ov66_022593A4
Unk_ov66_022593A4: ; 0x022593A4
	.incbin "incbin/overlay66_data.bin", 0x684, 0x69C - 0x684

	.global Unk_ov66_022593BC
Unk_ov66_022593BC: ; 0x022593BC
	.incbin "incbin/overlay66_data.bin", 0x69C, 0x6BC - 0x69C

	.global Unk_ov66_022593DC
Unk_ov66_022593DC: ; 0x022593DC
	.incbin "incbin/overlay66_data.bin", 0x6BC, 0x6CC - 0x6BC

	.global Unk_ov66_022593EC
Unk_ov66_022593EC: ; 0x022593EC
	.incbin "incbin/overlay66_data.bin", 0x6CC, 0x6D0 - 0x6CC

	.global Unk_ov66_022593F0
Unk_ov66_022593F0: ; 0x022593F0
	.incbin "incbin/overlay66_data.bin", 0x6D0, 0x6E0 - 0x6D0

	.global Unk_ov66_02259400
Unk_ov66_02259400: ; 0x02259400
	.incbin "incbin/overlay66_data.bin", 0x6E0, 0x6EC - 0x6E0

	.global Unk_ov66_0225940C
Unk_ov66_0225940C: ; 0x0225940C
	.incbin "incbin/overlay66_data.bin", 0x6EC, 0x700 - 0x6EC

	.global Unk_ov66_02259420
Unk_ov66_02259420: ; 0x02259420
	.incbin "incbin/overlay66_data.bin", 0x700, 0x724 - 0x700

	.global Unk_ov66_02259444
Unk_ov66_02259444: ; 0x02259444
	.incbin "incbin/overlay66_data.bin", 0x724, 0x738 - 0x724

	.global Unk_ov66_02259458
Unk_ov66_02259458: ; 0x02259458
	.incbin "incbin/overlay66_data.bin", 0x738, 0x750 - 0x738

	.global Unk_ov66_02259470
Unk_ov66_02259470: ; 0x02259470
	.incbin "incbin/overlay66_data.bin", 0x750, 0x768 - 0x750

	.global Unk_ov66_02259488
Unk_ov66_02259488: ; 0x02259488
	.incbin "incbin/overlay66_data.bin", 0x768, 0x770 - 0x768

	.global Unk_ov66_02259490
Unk_ov66_02259490: ; 0x02259490
	.incbin "incbin/overlay66_data.bin", 0x770, 0x790 - 0x770

	.global Unk_ov66_022594B0
Unk_ov66_022594B0: ; 0x022594B0
	.incbin "incbin/overlay66_data.bin", 0x790, 0x7AC - 0x790

	.global Unk_ov66_022594CC
Unk_ov66_022594CC: ; 0x022594CC
	.incbin "incbin/overlay66_data.bin", 0x7AC, 0x7C8 - 0x7AC

	.global Unk_ov66_022594E8
Unk_ov66_022594E8: ; 0x022594E8
	.incbin "incbin/overlay66_data.bin", 0x7C8, 0x7E4 - 0x7C8

	.global Unk_ov66_02259504
Unk_ov66_02259504: ; 0x02259504
	.incbin "incbin/overlay66_data.bin", 0x7E4, 0x800 - 0x7E4

	.global Unk_ov66_02259520
Unk_ov66_02259520: ; 0x02259520
	.incbin "incbin/overlay66_data.bin", 0x800, 0x824 - 0x800

	.global Unk_ov66_02259544
Unk_ov66_02259544: ; 0x02259544
	.incbin "incbin/overlay66_data.bin", 0x824, 0x15

