	.include "macros/function.inc"
	.include "include/atermset.inc"

	

	.extern Unk_ov4_02215E48
	.extern Unk_ov4_02215E50
	.text


	thumb_func_start ov18_0222754C
ov18_0222754C: ; 0x0222754C
	push {r3, lr}
	cmp r0, #0
	bne _02227554
	b _0222784E
_02227554:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #9
	bls _0222755E
	b _02227840
_0222755E:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222756A: ; jump table
	.short _02227840 - _0222756A - 2 ; case 0
	.short _0222757E - _0222756A - 2 ; case 1
	.short _022277CE - _0222756A - 2 ; case 2
	.short _02227604 - _0222756A - 2 ; case 3
	.short _02227672 - _0222756A - 2 ; case 4
	.short _0222763C - _0222756A - 2 ; case 5
	.short _0222771A - _0222756A - 2 ; case 6
	.short _0222780A - _0222756A - 2 ; case 7
	.short _02227820 - _0222756A - 2 ; case 8
	.short _0222782E - _0222756A - 2 ; case 9
_0222757E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022275F0
	ldr r2, _02227850 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _022275A0
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #6
	blx r2
	pop {r3, pc}
_022275A0:
	cmp r0, #6
	bne _022275C8
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	beq _02227634
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022275C8:
	cmp r0, #8
	bne _02227634
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	beq _02227634
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022275F0:
	ldr r0, _02227850 ; =0x02251D10
	mov r3, #1
	str r3, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02227634
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_02227604:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227626
	ldr r0, _02227850 ; =0x02251D10
	ldr r2, [r0, #0x2c]
	cmp r2, #6
	bne _02227634
	mov r2, #5
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #8
	blx r2
	pop {r3, pc}
_02227626:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _02227636
_02227634:
	b _0222784E
_02227636:
	mov r0, #9
	blx r2
	pop {r3, pc}
_0222763C:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222765E
	ldr r0, _02227850 ; =0x02251D10
	ldr r2, [r0, #0x2c]
	cmp r2, #8
	bne _02227736
	mov r2, #7
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_0222765E:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_02227672:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227706
	ldr r2, _02227850 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _02227694
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_02227694:
	cmp r0, #6
	bne _022276BC
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022276BC:
	cmp r0, #2
	bne _022276DE
	bl ov4_0221303C
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022276DE:
	cmp r0, #8
	bne _02227736
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227706:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_0222771A:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022277BA
	ldr r2, _02227850 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _0222773E
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _02227738
_02227736:
	b _0222784E
_02227738:
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_0222773E:
	cmp r0, #6
	bne _02227766
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227766:
	cmp r0, #2
	bne _02227788
	bl ov4_0221303C
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227788:
	cmp r0, #8
	bne _022277B0
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022277B0:
	cmp r0, #7
	bne _0222784E
	mov r0, #3
	str r0, [r2, #0x2c]
	pop {r3, pc}
_022277BA:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_022277CE:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022277F6
	ldr r0, _02227850 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #2
	bne _0222784E
	bl ov4_02212DE0
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_022277F6:
	ldr r0, _02227850 ; =0x02251D10
	mov r3, #3
	str r3, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0222784E
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_0222780A:
	ldr r0, _02227850 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #5
	bne _0222784E
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #5
	blx r2
	pop {r3, pc}
_02227820:
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #4
	blx r2
	pop {r3, pc}
_0222782E:
	ldr r0, _02227850 ; =0x02251D10
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #3
	blx r2
	pop {r3, pc}
_02227840:
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #1
	mov r1, #0
	blx r2
_0222784E:
	pop {r3, pc}
	; .align 2, 0
_02227850: .word Unk_ov18_02251D10
_02227854: .word Unk_ov18_02251D90
	thumb_func_end ov18_0222754C

	thumb_func_start ov18_02227858
ov18_02227858: ; 0x02227858
	push {r3, lr}
	ldr r1, _022278B8 ; =0x02251D10
	ldr r0, [r1, #0x2c]
	cmp r0, #8
	bhi _022278AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222786E: ; jump table
	.short _022278AE - _0222786E - 2 ; case 0
	.short _0222789E - _0222786E - 2 ; case 1
	.short _022278AE - _0222786E - 2 ; case 2
	.short _022278AE - _0222786E - 2 ; case 3
	.short _022278AE - _0222786E - 2 ; case 4
	.short _02227880 - _0222786E - 2 ; case 5
	.short _022278AE - _0222786E - 2 ; case 6
	.short _02227892 - _0222786E - 2 ; case 7
	.short _022278AE - _0222786E - 2 ; case 8
_02227880:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov4_0221312C
	cmp r0, #3
	beq _022278B2
	mov r0, #0
	pop {r3, pc}
_02227892:
	bl ov4_0221356C
	cmp r0, #3
	beq _022278B2
	mov r0, #0
	pop {r3, pc}
_0222789E:
	ldr r0, [r1, #8]
	ldr r1, _022278BC ; =ov18_0222754C
	bl ov4_02212E38
	cmp r0, #3
	beq _022278B2
	mov r0, #0
	pop {r3, pc}
_022278AE:
	mov r0, #0
	pop {r3, pc}
_022278B2:
	mov r0, #1
	pop {r3, pc}
	nop
_022278B8: .word Unk_ov18_02251D10
_022278BC: .word ov18_0222754C
	thumb_func_end ov18_02227858

	thumb_func_start ov18_022278C0
ov18_022278C0: ; 0x022278C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl ov4_02214EE0
	bl ov4_02214E88
	add r6, r0, #0
	cmp r6, #0
	ble _022278F8
	mov r4, #0
	cmp r6, #0
	ble _022278F8
_022278DC:
	cmp r4, r7
	bge _022278F8
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov4_02214F5C
	add r1, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _022278DC
_022278F8:
	mov r0, #0
	bl ov4_02214EE0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022278C0

	thumb_func_start ov18_02227904
ov18_02227904: ; 0x02227904
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _022279D8 ; =0x02251D10
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #0x60]
	ldr r0, _022279DC ; =0x022521C8
	str r0, [r1, #0x44]
	beq _02227934
	mov r2, #0
_02227924:
	ldrb r1, [r5]
	add r2, r2, #1
	add r5, r5, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r2, #6
	blt _02227924
	b _02227942
_02227934:
	mov r1, #0xff
	mov r2, #6
	bl MI_CpuFill8
	ldr r1, _022279E0 ; =0x02215E48
	ldr r0, _022279D8 ; =0x02251D10
	str r1, [r0, #0x44]
_02227942:
	ldr r2, _022279E4 ; =0x02252200
	ldr r0, _022279D8 ; =0x02251D10
	cmp r4, #0
	str r2, [r0, #0x48]
	beq _0222797E
	cmp r6, #0
	ble _0222797E
	cmp r6, #0x20
	bge _0222797E
	mov r0, #0
	cmp r6, #0
	ble _02227968
_0222795A:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _0222795A
_02227968:
	cmp r0, #0x20
	bge _0222798E
	ldr r1, _022279E4 ; =0x02252200
	add r2, r1, r0
	mov r1, #0
_02227972:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _02227972
	b _0222798E
_0222797E:
	ldr r0, _022279E4 ; =0x02252200
	mov r1, #0xff
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r1, _022279E8 ; =0x02215E50
	ldr r0, _022279D8 ; =0x02251D10
	str r1, [r0, #0x48]
_0222798E:
	ldr r2, _022279D8 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _022279B4
	ldr r1, [r2, #0x48]
	ldr r0, _022279DC ; =0x022521C8
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	bne _022279CC
	ldr r0, _022279D8 ; =0x02251D10
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022279B4:
	bl ov18_02227858
	cmp r0, #1
	bne _022279CC
	ldr r0, _022279D8 ; =0x02251D10
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022279CC:
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022279D8: .word Unk_ov18_02251D10
_022279DC: .word Unk_ov18_022521C8
_022279E0: .word Unk_ov4_02215E48
_022279E4: .word Unk_ov18_02252200
_022279E8: .word Unk_ov4_02215E50
	thumb_func_end ov18_02227904

	thumb_func_start ov18_022279EC
ov18_022279EC: ; 0x022279EC
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02227A20 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #7
	bne _02227A14
	bl ov4_0221356C
	cmp r0, #3
	bne _02227A14
	ldr r0, _02227A20 ; =0x02251D10
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02227A14:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	nop
_02227A20: .word Unk_ov18_02251D10
	thumb_func_end ov18_022279EC

	thumb_func_start ov18_02227A24
ov18_02227A24: ; 0x02227A24
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02227A78 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #3
	bne _02227A56
	bl ov4_0221303C
	cmp r0, #3
	beq _02227A46
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_02227A46:
	ldr r0, _02227A78 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02227A56:
	bl ov18_02227858
	cmp r0, #1
	bne _02227A6E
	ldr r0, _02227A78 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02227A6E:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02227A78: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227A24

	thumb_func_start ov18_02227A7C
ov18_02227A7C: ; 0x02227A7C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	ldr r1, _02227AFC ; =0x02251D10
	add r4, r0, #0
	str r6, [r1, #0x58]
	cmp r5, #0
	beq _02227A9E
	ldr r1, [r1, #0x28]
	add r0, r5, #0
	mov r2, #0x60
	bl MI_CpuCopy8
	b _02227AA8
_02227A9E:
	ldr r0, [r1, #0x28]
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
_02227AA8:
	ldr r1, _02227AFC ; =0x02251D10
	add r0, r7, #0
	ldr r1, [r1, #0x4c]
	mov r2, #0xc0
	bl MIi_CpuCopy32
	bl ov18_02227858
	cmp r0, #1
	bne _02227ACC
	ldr r0, _02227AFC ; =0x02251D10
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227ACC:
	ldr r2, _02227AFC ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _02227AF2
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	bne _02227AF2
	ldr r0, _02227AFC ; =0x02251D10
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227AF2:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227AFC: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227A7C

	thumb_func_start ov18_02227B00
ov18_02227B00: ; 0x02227B00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _02227BAC ; =0x02251D10
	add r0, #0x63
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x28]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _02227BB0 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2, #0x3c]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x4c]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0, #0]
	ldr r0, _02227BB4 ; =0x02251D90
	str r7, [r0, #0]
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _02227B74
	sub r3, #0x1f
	ldr r0, [r2, #0x3c]
	add r1, r3, #0
	bl ov4_02212CC8
	cmp r0, #0
	beq _02227B6E
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227B6E:
	ldr r0, _02227BAC ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x2c]
_02227B74:
	ldr r0, _02227BAC ; =0x02251D10
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	bne _02227BA2
	ldr r0, [r0, #8]
	ldr r1, _02227BB8 ; =ov18_0222754C
	bl ov4_02212E38
	cmp r0, #3
	beq _02227B92
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227B92:
	ldr r0, _02227BAC ; =0x02251D10
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227BA2:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227BAC: .word Unk_ov18_02251D10
_02227BB0: .word 0x0000231F
_02227BB4: .word Unk_ov18_02251D90
_02227BB8: .word ov18_0222754C
	thumb_func_end ov18_02227B00

	thumb_func_start ov18_02227BBC
ov18_02227BBC: ; 0x02227BBC
	ldr r0, _02227BC4 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	bx lr
	nop
_02227BC4: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227BBC

	thumb_func_start ov18_02227BC8
ov18_02227BC8: ; 0x02227BC8
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0
	ble _02227BEA
	ldr r0, _02227BF0 ; =0x02251DA4
	bl OS_LockMutex
	ldr r1, _02227BF4 ; =0x02251D10
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r4, r0, #0
	ldr r0, _02227BF0 ; =0x02251DA4
	bl OS_UnlockMutex
	add r0, r4, #0
	pop {r4, pc}
_02227BEA:
	mov r0, #0
	pop {r4, pc}
	nop
_02227BF0: .word Unk_ov18_02251DA4
_02227BF4: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227BC8

	thumb_func_start ov18_02227BF8
ov18_02227BF8: ; 0x02227BF8
	push {r4, lr}
	add r4, r1, #0
	beq _02227C16
	cmp r2, #0
	ble _02227C16
	ldr r0, _02227C18 ; =0x02251DA4
	bl OS_LockMutex
	ldr r1, _02227C1C ; =0x02251D10
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02227C18 ; =0x02251DA4
	bl OS_UnlockMutex
_02227C16:
	pop {r4, pc}
	; .align 2, 0
_02227C18: .word Unk_ov18_02251DA4
_02227C1C: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227BF8

	thumb_func_start ov18_02227C20
ov18_02227C20: ; 0x02227C20
	push {r3, lr}
	bl OS_DisableInterrupts
	ldr r1, _02227C40 ; =0x02251D10
	mov r2, #0
	str r2, [r1, #0x68]
	str r2, [r1, #0x6c]
	ldr r3, _02227C44 ; =0x02251D94
	add r1, r2, #0
_02227C32:
	add r2, r2, #1
	stmia r3!, {r1}
	cmp r2, #4
	blt _02227C32
	bl OS_RestoreInterrupts
	pop {r3, pc}
	; .align 2, 0
_02227C40: .word Unk_ov18_02251D10
_02227C44: .word Unk_ov18_02251D94
	thumb_func_end ov18_02227C20

	thumb_func_start ov18_02227C48
ov18_02227C48: ; 0x02227C48
	push {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _02227C78 ; =0x02251D10
	ldr r5, [r1, #0x6c]
	ldr r2, [r1, #0x68]
	cmp r2, r5
	bne _02227C5C
	mov r4, #0
	b _02227C6E
_02227C5C:
	ldr r2, _02227C7C ; =0x02251D94
	lsl r3, r5, #2
	ldr r4, [r2, r3]
	add r2, r5, #1
	str r2, [r1, #0x6c]
	cmp r2, #4
	blt _02227C6E
	mov r2, #0
	str r2, [r1, #0x6c]
_02227C6E:
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02227C78: .word Unk_ov18_02251D10
_02227C7C: .word Unk_ov18_02251D94
	thumb_func_end ov18_02227C48

	thumb_func_start ov18_02227C80
ov18_02227C80: ; 0x02227C80
	push {r3, r4}
	ldr r1, _02227CA8 ; =0x02251D10
	ldr r3, [r1, #0x68]
	ldr r2, [r1, #0x6c]
	add r4, r3, #1
	cmp r4, r2
	beq _02227CA4
	add r2, r2, #3
	cmp r3, r2
	beq _02227CA4
	ldr r2, _02227CAC ; =0x02251D94
	lsl r3, r3, #2
	str r0, [r2, r3]
	str r4, [r1, #0x68]
	cmp r4, #4
	blt _02227CA4
	mov r0, #0
	str r0, [r1, #0x68]
_02227CA4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02227CA8: .word Unk_ov18_02251D10
_02227CAC: .word Unk_ov18_02251D94
	thumb_func_end ov18_02227C80

	thumb_func_start ov18_02227CB0
ov18_02227CB0: ; 0x02227CB0
	ldr r3, _02227CB8 ; =ov18_02227C80
	mov r1, #0
	bx r3
	nop
_02227CB8: .word ov18_02227C80
	thumb_func_end ov18_02227CB0

	thumb_func_start ov18_02227CBC
ov18_02227CBC: ; 0x02227CBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02227D50 ; =0x02251D10
	mov r4, #1
	str r6, [r0, #0x70]
	bl ov18_02227C20
	mov r0, #0xd0
	add r7, r6, #0
	mul r7, r0
	ldr r0, _02227D54 ; =0x000024D0
	add r1, r7, r0
	mov r0, #0xc0
	mul r0, r6
	add r0, r1, r0
	ldr r1, _02227D50 ; =0x02251D10
	ldr r1, [r1, #4]
	blx r1
	ldr r6, _02227D50 ; =0x02251D10
	cmp r0, #0
	str r0, [r6, #0x54]
	bne _02227CEC
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02227CEC:
	mov r1, #0x1f
	add r2, r0, r1
	add r0, r1, #0
	sub r0, #0x3f
	add r3, r2, #0
	and r3, r0
	ldr r0, _02227D58 ; =0x00002490
	str r3, [r6, #0x40]
	add r2, r7, r0
	add r0, r3, r2
	add r0, r0, r1
	sub r1, #0x3f
	and r0, r1
	str r0, [r6, #0x5c]
	ldr r0, _02227D5C ; =ov18_02227C80
	add r1, r3, #0
	bl ov18_02227B00
	cmp r0, #0
	bne _02227D18
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02227D18:
	mov r6, #0
	add r7, r4, #0
_02227D1C:
	mov r0, #0xa
	bl OS_Sleep
	bl ov18_02227C48
	cmp r0, #0
	beq _02227D48
_02227D2A:
	cmp r0, #4
	beq _02227D40
	cmp r0, #5
	beq _02227D40
	cmp r0, #6
	bne _02227D3C
	add r4, r6, #0
	add r5, r7, #0
	b _02227D40
_02227D3C:
	mov r4, #0
	sub r5, r4, #2
_02227D40:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227D2A
_02227D48:
	cmp r4, #0
	bne _02227D1C
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227D50: .word Unk_ov18_02251D10
_02227D54: .word 0x000024D0
_02227D58: .word 0x00002490
_02227D5C: .word ov18_02227C80
	thumb_func_end ov18_02227CBC

	thumb_func_start ov18_02227D60
ov18_02227D60: ; 0x02227D60
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	bl ov18_02227A24
	cmp r0, #0
	beq _02227D9E
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_02227D72:
	add r0, r7, #0
	bl OS_Sleep
	bl ov18_02227C48
	cmp r0, #0
	beq _02227D9A
_02227D80:
	cmp r0, #4
	beq _02227D92
	cmp r0, #5
	beq _02227D92
	cmp r0, #0x14
	bne _02227D90
	add r5, r4, #0
	b _02227D92
_02227D90:
	add r5, r6, #0
_02227D92:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227D80
_02227D9A:
	cmp r5, #0
	bne _02227D72
_02227D9E:
	ldr r1, _02227DB4 ; =0x02251D10
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02227DB0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02227DB4 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x54]
_02227DB0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227DB4: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227D60

	thumb_func_start ov18_02227DB8
ov18_02227DB8: ; 0x02227DB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, _02227EC8 ; =0x02251D10
	mov r4, #1
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x18]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	sub r5, r4, #3
	add r6, r3, r1
	bne _02227DD6
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227DD6:
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl ov18_02227A7C
	cmp r0, #0
	bne _02227DEA
	add sp, #0x30
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02227DEA:
	add r0, sp, #4
	bl OS_CreateAlarm
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _02227ECC ; =0x003FEC42
	ldr r3, _02227ED0 ; =ov18_02227CB0
	add r0, sp, #4
	mov r2, #0
	bl OS_SetAlarm
	mov r7, #0
_02227E02:
	bl ov18_0222AA98
	ldr r1, _02227ED4 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02227E14
	mov r5, #2
	mvn r5, r5
	b _02227E94
_02227E14:
	ldr r0, _02227EC8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02227E22
	mov r5, #7
	mvn r5, r5
	b _02227E94
_02227E22:
	mov r0, #0xa
	bl OS_Sleep
	bl ov18_02227C48
	cmp r0, #0
	beq _02227E90
_02227E30:
	cmp r0, #0xc
	bgt _02227E46
	bge _02227E5A
	cmp r0, #5
	bgt _02227E86
	cmp r0, #4
	blt _02227E86
	beq _02227E88
	cmp r0, #5
	beq _02227E88
	b _02227E86
_02227E46:
	cmp r0, #0x13
	bgt _02227E86
	cmp r0, #0xd
	blt _02227E86
	beq _02227E60
	cmp r0, #0x12
	beq _02227E88
	cmp r0, #0x13
	beq _02227E88
	b _02227E86
_02227E5A:
	add r4, r7, #0
	mov r5, #1
	b _02227E88
_02227E60:
	ldr r0, _02227EC8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02227E70
	mov r4, #0
	add r5, r4, #0
	sub r5, #8
	b _02227E88
_02227E70:
	mov r2, #3
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0x10
	bl ov18_02227A7C
	cmp r0, #0
	bne _02227E88
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227E86:
	mov r4, #0
_02227E88:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227E30
_02227E90:
	cmp r4, #0
	bne _02227E02
_02227E94:
	add r0, sp, #4
	bl OS_CancelAlarm
_02227E9A:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227E9A
	cmp r5, #0
	ble _02227EC2
	ldr r0, _02227EC8 ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x20]
	ldr r0, _02227ED8 ; =0x0224984C
	bl SOC_Startup
	cmp r0, #0
	bge _02227EBC
	mov r5, #1
	mvn r5, r5
	b _02227EC2
_02227EBC:
	ldr r0, _02227EC8 ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x24]
_02227EC2:
	add r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227EC8: .word Unk_ov18_02251D10
_02227ECC: .word 0x003FEC42
_02227ED0: .word ov18_02227CB0
_02227ED4: .word Unk_ov18_02249838
_02227ED8: .word Unk_ov18_0224984C
	thumb_func_end ov18_02227DB8

	thumb_func_start ov18_02227EDC
ov18_02227EDC: ; 0x02227EDC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02227F3C ; =0x02251D10
	mov r5, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02227F28
	bl ov18_022279EC
	cmp r0, #0
	beq _02227F22
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_02227EF6:
	add r0, r7, #0
	bl OS_Sleep
	bl ov18_02227C48
	cmp r0, #0
	beq _02227F1E
_02227F04:
	cmp r0, #4
	beq _02227F16
	cmp r0, #5
	beq _02227F16
	cmp r0, #0xe
	bne _02227F14
	add r5, r4, #0
	b _02227F16
_02227F14:
	add r5, r6, #0
_02227F16:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227F04
_02227F1E:
	cmp r5, #0
	bne _02227EF6
_02227F22:
	ldr r0, _02227F3C ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x20]
_02227F28:
	ldr r0, _02227F3C ; =0x02251D10
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _02227F38
	mov r1, #0
	str r1, [r0, #0x24]
	bl SOC_Cleanup
_02227F38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227F3C: .word Unk_ov18_02251D10
	thumb_func_end ov18_02227EDC

	thumb_func_start ov18_02227F40
ov18_02227F40: ; 0x02227F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r1, [sp, #4]
	add r6, r0, #4
	add r0, r1, #0
	add r4, r0, #4
	ldr r0, [sp, #0x20]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _02228014
_02227F64:
	add r2, sp, #0x48
	add r2, #2
	mov r1, #0x22
	mov r0, #0
_02227F6C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02227F6C
	add r0, sp, #0x48
	add r0, #2
	add r1, r6, #4
	mov r2, #0x20
	bl memcpy
	add r0, sp, #0x48
	ldr r1, [r6, #0]
	mov r7, #0
	add r0, #2
	strb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _02227FF8
	add r0, r6, #0
	str r0, [sp, #0x24]
	add r0, #0x28
	ldr r5, [r6, #0]
	str r0, [sp, #0x24]
_02227F9E:
	cmp r5, #0
	beq _02227FF8
	cmp r5, #0x20
	bhi _02227FF8
	cmp r5, #1
	bne _02227FB4
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02227FF8
	cmp r0, #0x20
	beq _02227FF8
_02227FB4:
	add r0, sp, #0x48
	add r0, #2
	bl strlen
	add r2, r0, #0
	add r0, sp, #0x48
	add r0, #2
	add r1, r4, #4
	bl memcmp
	cmp r0, #0
	bne _02227FEE
	add r1, r4, #0
	ldr r0, [sp, #0x24]
	add r1, #0x28
	mov r2, #6
	bl memcmp
	cmp r0, #0
	bne _02227FEE
	ldrh r1, [r6, #0x2e]
	ldrh r0, [r4, #0x2e]
	cmp r1, r0
	beq _02227FEE
	cmp r1, #0
	bne _02227FEE
	mov r0, #1
	str r0, [sp, #0x20]
	b _02227FF8
_02227FEE:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r4, #0x30
	cmp r7, r0
	blo _02227F9E
_02227FF8:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02228014
	ldr r0, [sp, #4]
	add r6, #0x30
	add r4, r0, #4
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02227F64
_02228014:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _022280F0
	add r2, sp, #0x28
	mov r1, #0x22
	mov r0, #0
_02228020:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228020
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r6, [sp, #0x18]
	add r4, r0, #4
	ldr r0, [sp, #4]
	add r5, r0, #4
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _0222807C
	add r7, sp, #0x28
_02228040:
	add r0, r7, #0
	add r1, r5, #4
	mov r2, #0x20
	bl memcpy
	ldr r1, [r5, #0]
	mov r0, #0
	strb r0, [r7, r1]
	ldr r0, _02228108 ; =0x022498A4
	bl strlen
	add r2, r0, #0
	ldr r1, _02228108 ; =0x022498A4
	add r0, r7, #0
	bl memcmp
	cmp r0, #0
	bne _02228070
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _02228070
	mov r0, #1
	str r0, [sp, #0x14]
	b _0222807C
_02228070:
	ldr r0, [sp, #4]
	add r6, r6, #1
	ldr r0, [r0, #0]
	add r5, #0x30
	cmp r6, r0
	blo _02228040
_0222807C:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _022280E0
	ldr r7, _02228108 ; =0x022498A4
	add r5, sp, #0x28
_0222808C:
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0x20
	bl memcpy
	ldr r1, [r4, #0]
	mov r0, #0
	strb r0, [r5, r1]
	add r0, r5, #0
	bl strlen
	add r6, r0, #0
	add r0, r7, #0
	bl strlen
	cmp r6, r0
	bne _022280CE
	add r0, r7, #0
	bl strlen
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl memcmp
	cmp r0, #0
	bne _022280CE
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _022280CE
	mov r0, #1
	str r0, [sp, #0x18]
	b _022280E0
_022280CE:
	ldr r0, [sp, #0xc]
	add r4, #0x30
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _0222808C
_022280E0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022280F0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _022280F0
	mov r0, #1
	str r0, [sp, #0x20]
_022280F0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02228100
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #0x1c]
_02228100:
	ldr r0, [sp, #0x1c]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_02228108: .word Unk_ov18_022498A4
	thumb_func_end ov18_02227F40

	thumb_func_start ov18_0222810C
ov18_0222810C: ; 0x0222810C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _02228384 ; =0x02251D10
	mov r4, #0
	ldr r1, [r0, #0x70]
	mov r0, #0x30
	mul r0, r1
	str r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	mov r0, #1
	mvn r4, r4
	bl ov18_0222AAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02228144
	ldr r1, [sp, #0x10]
	mov r0, #1
	bl ov18_0222AAB4
	str r0, [sp, #8]
	cmp r0, #0
	bne _02228146
_02228144:
	b _0222836A
_02228146:
	mov r0, #0
	str r0, [sp, #0x1c]
	b _02228332
_0222814C:
	bl ov18_0222AA98
	ldr r1, _02228388 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02228236
	mov r0, #0
	ldr r3, _0222838C ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	bl ov18_02227904
	cmp r0, #0
	bne _0222816E
	mov r4, #1
	mvn r4, r4
	b _0222836A
_0222816E:
	add r0, sp, #0x24
	bl OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02228390 ; =0x000FFB10
	ldr r3, _02228394 ; =ov18_02227CB0
	add r0, sp, #0x24
	mov r2, #0
	bl OS_SetAlarm
	ldr r7, _02228384 ; =0x02251D10
	mov r5, #1
	mov r4, #0
	add r6, sp, #0x24
_0222818C:
	mov r0, #0xa
	bl OS_Sleep
	bl ov18_0222AA98
	ldr r1, _02228388 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02228220
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02228220
	bl ov18_02227C48
	cmp r0, #0
	beq _0222821C
_022281AC:
	cmp r0, #0x13
	bhi _02228212
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022281BC: ; jump table
	.short _02228212 - _022281BC - 2 ; case 0
	.short _02228212 - _022281BC - 2 ; case 1
	.short _02228212 - _022281BC - 2 ; case 2
	.short _02228212 - _022281BC - 2 ; case 3
	.short _02228214 - _022281BC - 2 ; case 4
	.short _022281E8 - _022281BC - 2 ; case 5
	.short _02228212 - _022281BC - 2 ; case 6
	.short _02228212 - _022281BC - 2 ; case 7
	.short _02228214 - _022281BC - 2 ; case 8
	.short _02228212 - _022281BC - 2 ; case 9
	.short _0222820E - _022281BC - 2 ; case 10
	.short _02228212 - _022281BC - 2 ; case 11
	.short _02228212 - _022281BC - 2 ; case 12
	.short _02228212 - _022281BC - 2 ; case 13
	.short _02228212 - _022281BC - 2 ; case 14
	.short _02228212 - _022281BC - 2 ; case 15
	.short _02228212 - _022281BC - 2 ; case 16
	.short _02228212 - _022281BC - 2 ; case 17
	.short _02228214 - _022281BC - 2 ; case 18
	.short _022281E4 - _022281BC - 2 ; case 19
_022281E4:
	mov r5, #0
	b _02228214
_022281E8:
	ldr r0, [r7, #0x5c]
	ldr r1, [r7, #0x70]
	bl ov18_022278C0
	cmp r0, r4
	ble _02228214
	add r4, r0, #0
	add r0, r6, #0
	bl OS_CancelAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02228390 ; =0x000FFB10
	ldr r3, _02228394 ; =ov18_02227CB0
	add r0, r6, #0
	mov r2, #0
	bl OS_SetAlarm
	b _02228214
_0222820E:
	mov r5, #0
	b _02228214
_02228212:
	mov r5, #0
_02228214:
	bl ov18_02227C48
	cmp r0, #0
	bne _022281AC
_0222821C:
	cmp r5, #0
	bne _0222818C
_02228220:
	add r0, sp, #0x24
	bl OS_CancelAlarm
_02228226:
	bl ov18_02227C48
	cmp r0, #0
	bne _02228226
	ldr r1, _02228384 ; =0x02251D10
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _02228238
_02228236:
	b _02228342
_02228238:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x70]
	cmp r4, r0
	blt _02228248
	ldr r0, [sp, #0x14]
	sub r4, r0, #6
	b _0222836A
_02228248:
	ldr r0, [sp, #0x14]
	ldr r5, [r1, #0x5c]
	str r0, [sp, #0x18]
	cmp r4, #0
	ble _022282BE
	ble _022282BE
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0xc]
	str r0, [sp, #4]
	add r0, #8
	add r6, r7, #0
	str r0, [sp, #4]
	add r6, #0x2c
_02228262:
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0xc
	mov r2, #0x20
	bl memcpy
	ldrh r0, [r5, #0xa]
	str r0, [r7, #4]
	ldrh r0, [r5, #0xa]
	add r1, r7, r0
	mov r0, #0
	strb r0, [r1, #8]
	ldrh r1, [r5, #0x2c]
	mov r0, #0x10
	tst r0, r1
	beq _02228286
	mov r0, #1
	b _02228288
_02228286:
	mov r0, #0
_02228288:
	strh r0, [r7, #0x32]
	ldrb r0, [r5, #4]
	add r7, #0x30
	strb r0, [r6]
	ldrb r0, [r5, #5]
	strb r0, [r6, #1]
	ldrb r0, [r5, #6]
	strb r0, [r6, #2]
	ldrb r0, [r5, #7]
	strb r0, [r6, #3]
	ldrb r0, [r5, #8]
	strb r0, [r6, #4]
	ldrb r0, [r5, #9]
	add r5, #0xc0
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	add r6, #0x30
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _02228262
_022282BE:
	ldr r0, [sp, #0xc]
	str r4, [r0, #0]
	ldr r0, _02228384 ; =0x02251D10
	ldr r0, [r0, #0x38]
	cmp r0, #1
	beq _02228318
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, sp, #0x20
	bl ov18_02227F40
	cmp r0, #0
	beq _02228318
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r1, r0, #4
	mov r0, #0x30
	mul r0, r2
	add r4, r1, r0
	ldr r0, _02228384 ; =0x02251D10
	add r1, r4, #4
	str r2, [r0, #0x18]
	ldr r0, _02228398 ; =0x02252220
	bl strcpy
	add r0, r4, #0
	add r4, #0x28
	ldrb r2, [r4]
	ldr r1, _0222839C ; =0x022521C0
	add r0, #0x28
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r0, [r0, #5]
	strb r0, [r1, #5]
	add r0, sp, #0x50
	bl ov18_0222AB1C
	b _02228342
_02228318:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl memcpy
	ldr r0, _02228384 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_02228332:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02228342
	ldr r0, _02228384 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02228342
	b _0222814C
_02228342:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02228354
	bl ov18_0222AA98
	ldr r1, _02228388 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bls _0222835A
_02228354:
	mov r4, #2
	mvn r4, r4
	b _0222836A
_0222835A:
	ldr r0, _02228384 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02228368
	mov r4, #7
	mvn r4, r4
	b _0222836A
_02228368:
	mov r4, #1
_0222836A:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02228374
	bl ov18_0222AAD8
_02228374:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222837E
	bl ov18_0222AAD8
_0222837E:
	add r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02228384: .word Unk_ov18_02251D10
_02228388: .word Unk_ov18_02249838
_0222838C: .word 0x0030BFFE
_02228390: .word 0x000FFB10
_02228394: .word ov18_02227CB0
_02228398: .word Unk_ov18_02252220
_0222839C: .word Unk_ov18_022521C0
	thumb_func_end ov18_0222810C

	thumb_func_start ov18_022283A0
ov18_022283A0: ; 0x022283A0
	push {r3, lr}
	ldr r2, [sp, #8]
	str r1, [sp]
	add r1, r3, #0
	mov r3, #0
	bl SOC_SendTo
	cmp r0, #0
	bge _022283B6
	mov r0, #3
	mvn r0, r0
_022283B6:
	pop {r3, pc}
	thumb_func_end ov18_022283A0

	thumb_func_start ov18_022283B8
ov18_022283B8: ; 0x022283B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #8
	add r0, sp, #4
	strb r1, [r0, #4]
	mov r1, #2
	strb r1, [r0, #5]
	sub r1, r1, #3
	str r1, [sp, #0xc]
	ldr r1, _022283F0 ; =0x000001E6
	add r4, r2, #0
	strh r1, [r0, #6]
	bl SOCL_GetHostID
	add r1, sp, #4
	bl SOC_U32to4U8
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, r6, #0
	str r4, [sp]
	bl ov18_022283A0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022283F0: .word 0x000001E6
	thumb_func_end ov18_022283B8

	thumb_func_start ov18_022283F4
ov18_022283F4: ; 0x022283F4
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _022283FC ; =ov18_022283B8
	bx r3
	; .align 2, 0
_022283FC: .word ov18_022283B8
	thumb_func_end ov18_022283F4

	thumb_func_start ov18_02228400
ov18_02228400: ; 0x02228400
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	mov r3, #0
	asr r4, r5, #8
	lsl r4, r4, #0x18
	lsr r6, r4, #0x18
	lsl r4, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r4, r5
	orr r4, r6
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	str r4, [r1, #0]
	ldrh r6, [r0, #2]
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r0, #6
	str r4, [r2, #0]
	add r2, r1, r4
	add r4, r0, #0
	cmp r0, r2
	bhs _02228444
_0222843A:
	ldrb r1, [r4]
	add r4, r4, #1
	add r3, r3, r1
	cmp r4, r2
	blo _0222843A
_02228444:
	ldrh r5, [r2]
	lsl r1, r3, #0x10
	lsr r1, r1, #0x10
	asr r2, r5, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r5, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r1, r2
	beq _02228468
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02228468:
	add r0, r0, #6
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02228400

	thumb_func_start ov18_02228470
ov18_02228470: ; 0x02228470
	push {r3, r4, r5, r6}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r1
	blo _02228480
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02228480:
	ldrh r5, [r0]
	asr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	lsl r1, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r1, r5
	orr r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r2, #0]
	ldrh r6, [r0, #2]
	add r0, r0, #4
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	str r2, [r3, #0]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	sub r1, r2, #4
	add r1, r0, r1
	str r1, [r4, #0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02228470

	thumb_func_start ov18_022284C0
ov18_022284C0: ; 0x022284C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r5, #8
	str r5, [sp]
	add r3, r2, #0
	ldrh r2, [r0]
	add r4, r1, #0
	add r0, sp, #0
	asr r1, r2, #8
	lsl r6, r2, #8
	mov r2, #0xff
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r2, r6
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r1, r5, r1
	add r2, r4, #0
	bl ov18_02228470
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov18_022284C0

	thumb_func_start ov18_022284F4
ov18_022284F4: ; 0x022284F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r3, #0
	add r6, r0, #0
	add r0, r7, #0
	sub r0, #8
	str r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r2, #0
	mov r5, #0
	strb r5, [r1]
	lsr r0, r0, #0x10
	strb r5, [r1, #1]
	asr r2, r0, #8
	strb r5, [r1, #2]
	lsl r2, r2, #0x18
	strb r5, [r1, #3]
	lsr r3, r2, #0x18
	lsl r2, r0, #8
	mov r0, #0xff
	strb r5, [r1, #4]
	lsl r0, r0, #8
	strb r5, [r1, #5]
	and r0, r2
	strb r5, [r1, #6]
	orr r0, r3
	strb r5, [r1, #7]
	ldr r3, [sp, #0x20]
	add r4, r6, #0
	strh r0, [r1]
	cmp r3, #0
	beq _02228544
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #6
	add r2, r7, #0
	bl ov18_02229134
	add r7, #8
	b _0222854C
_02228544:
	add r0, r6, #6
	add r2, r7, #0
	bl memcpy
_0222854C:
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	orr r1, r2
	strh r1, [r6]
	lsl r1, r7, #0x10
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r0, r1
	strh r0, [r6, #2]
	add r0, r4, #6
	add r4, r0, r7
	add r1, r6, #0
	cmp r6, r4
	bhs _02228598
_0222858E:
	ldrb r0, [r1]
	add r1, r1, #1
	add r5, r5, r0
	cmp r1, r4
	blo _0222858E
_02228598:
	lsl r0, r5, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	strh r0, [r4]
	add r0, r4, #2
	sub r0, r0, r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022284F4

	thumb_func_start ov18_022285B8
ov18_022285B8: ; 0x022285B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x10
	add r4, r3, #0
	mov r3, #0
	lsr r0, r0, #0x10
	add r7, r2, #0
	strb r3, [r5]
	asr r1, r0, #8
	lsl r2, r0, #8
	mov r0, #0xff
	strb r3, [r5, #1]
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	strb r3, [r5, #2]
	lsr r1, r1, #0x18
	and r2, r0
	orr r1, r2
	strb r3, [r5, #3]
	add r2, r4, #0
	strh r1, [r5]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	lsl r1, r4, #0x10
	sub r6, r2, #4
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	and r0, r2
	lsr r1, r1, #0x18
	orr r0, r1
	strh r0, [r5, #2]
	add r5, r5, #4
	add r0, r5, #0
	add r1, r3, #0
	add r2, r6, #0
	bl memset
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl memcpy
	add r0, r5, r6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022285B8

	thumb_func_start ov18_02228618
ov18_02228618: ; 0x02228618
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r4, #0
	add r0, #8
	bl ov18_022285B8
	sub r0, r0, r4
	add r1, r0, #0
	sub r1, #8
	strh r1, [r4]
	pop {r4, pc}
	thumb_func_end ov18_02228618

	thumb_func_start ov18_02228640
ov18_02228640: ; 0x02228640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov18_02228400
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
	str r5, [sp, #8]
	str r6, [sp, #4]
	cmp r5, #0
	bne _02228662
	add sp, #0x1c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02228662:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _0222866E
	add sp, #0x1c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0222866E:
	ldr r4, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #8]
	add r0, sp, #8
	add r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	cmp r0, #0
	beq _022286EE
_02228686:
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _02228696
	cmp r1, #2
	beq _022286AE
	cmp r1, #5
	beq _022286C8
	b _022286DE
_02228696:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _022286DE
_022286AE:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r0, r0, #0x18
	lsl r1, r1, #8
	lsr r0, r0, #0x18
	and r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	b _022286DE
_022286C8:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_022286DE:
	add r0, sp, #8
	add r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	cmp r0, #0
	bne _02228686
_022286EE:
	cmp r6, #1
	bne _022286F8
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _022286FE
_022286F8:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022286FE:
	cmp r7, #1
	blt _02228708
	mov r1, #1
	ldr r0, [sp]
	b _0222870C
_02228708:
	ldr r0, [sp]
	mov r1, #0
_0222870C:
	str r1, [r0, #0]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov18_02228640

	thumb_func_start ov18_02228714
ov18_02228714: ; 0x02228714
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	add r1, sp, #8
	add r2, sp, #4
	add r4, r3, #0
	bl ov18_02228400
	add r1, r0, #0
	bne _02228730
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02228730:
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _0222873C
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0222873C:
	cmp r4, #0
	beq _02228756
	mov r0, #0x10
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r3, r4, #0
	bl ov18_022292EC
	ldr r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	b _0222875E
_02228756:
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl memcpy
_0222875E:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov18_02228714

	thumb_func_start ov18_02228764
ov18_02228764: ; 0x02228764
	push {r4, lr}
	sub sp, #0x10
	mov r1, #1
	add r4, r0, #0
	add r2, sp, #4
	lsl r1, r1, #8
	add r0, sp, #4
	strh r1, [r0]
	ldr r3, _022287EC ; =0x0224645C
	add r2, #2
	mov r1, #7
_0222877A:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222877A
	ldr r0, _022287F0 ; =0x02249838
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, sp, #4
	mov r3, #2
	bl ov18_022285B8
	mov r1, #2
	add r2, sp, #4
	add r3, r1, #0
	bl ov18_022285B8
	ldr r1, _022287F4 ; =0x02251D10
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022287B0
	mov r1, #5
	add r2, sp, #4
	mov r3, #2
	bl ov18_022285B8
_022287B0:
	add r2, sp, #4
	mov r1, #3
	add r2, #2
	mov r3, #7
	bl ov18_022285B8
	ldr r1, _022287F4 ; =0x02251D10
	add r3, r0, #0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022287D2
	ldr r2, _022287F8 ; =0x022521B8
	mov r1, #4
	mov r3, #6
	bl ov18_022285B8
	add r3, r0, #0
_022287D2:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r4, _022287F0 ; =0x02249838
	ldr r2, _022287FC ; =0x02252244
	ldr r4, [r4, #0]
	mov r1, #2
	sub r3, r3, r4
	add r3, #8
	bl ov18_022284F4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_022287EC: .word Unk_ov18_0224645C
_022287F0: .word Unk_ov18_02249838
_022287F4: .word Unk_ov18_02251D10
_022287F8: .word Unk_ov18_022521B8
_022287FC: .word Unk_ov18_02252244
	thumb_func_end ov18_02228764

	thumb_func_start ov18_02228800
ov18_02228800: ; 0x02228800
	push {r3, lr}
	bl OS_GetMacAddress
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov18_02228800

	thumb_func_start ov18_0222880C
ov18_0222880C: ; 0x0222880C
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r1, _022288F8 ; =0x022498F8
	add r4, r0, #0
	ldrb r0, [r1]
	add r2, r4, #0
	add r2, #0xc
	strb r0, [r4, #0xc]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #4
	add r1, #2
	strb r0, [r2, #3]
	ldr r0, _022288FC ; =0x022521C0
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	strb r2, [r1, #4]
	strb r0, [r1, #5]
	add r1, sp, #0
	ldrb r2, [r1, #6]
	mov r0, #0xfd
	and r0, r2
	strb r0, [r1, #6]
	add r0, sp, #0
	bl ov18_02228800
	add r1, sp, #0
	ldrb r2, [r1]
	ldr r0, _02228900 ; =0x022521B8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r2, [r1, #4]
	strb r2, [r0, #4]
	ldrb r2, [r1, #5]
	strb r2, [r0, #5]
	add r0, sp, #4
	add r0, #2
	mov r2, #6
	bl memcmp
	cmp r0, #0
	bgt _022288A0
	add r1, sp, #0
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #4
	add r1, #2
	strb r0, [r4, #5]
	b _022288BE
_022288A0:
	add r1, sp, #4
	add r1, #2
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #0
	strb r0, [r4, #5]
_022288BE:
	ldrb r0, [r1]
	strb r0, [r4, #6]
	ldrb r0, [r1, #1]
	strb r0, [r4, #7]
	ldrb r0, [r1, #2]
	strb r0, [r4, #8]
	ldrb r0, [r1, #3]
	strb r0, [r4, #9]
	ldrb r0, [r1, #4]
	strb r0, [r4, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r4, #0xb]
	ldr r0, _02228904 ; =0x02249838
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022288F0
	add r0, sp, #0x2c
	add r1, sp, #0
	bl ov18_0222AB1C
	add r1, sp, #4
	add r0, sp, #0xc
	add r1, #2
	bl ov18_0222AB1C
_022288F0:
	mov r0, #1
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_022288F8: .word Unk_ov18_022498F8
_022288FC: .word Unk_ov18_022521C0
_02228900: .word Unk_ov18_022521B8
_02228904: .word Unk_ov18_02249838
	thumb_func_end ov18_0222880C

	thumb_func_start ov18_02228908
ov18_02228908: ; 0x02228908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r1, r0, #0
	str r1, [sp, #4]
	add r1, #8
	str r1, [sp, #4]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp]
	ldrh r1, [r0]
	add r3, sp, #0xc
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	bl ov18_02228470
	add r5, r0, #0
	bne _02228948
	b _02228AB8
_02228948:
	ldr r2, [sp, #0x10]
	ldr r0, _02228AC0 ; =0x00000201
	sub r1, r2, r0
	cmp r1, #9
	bhi _022289D6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222895E: ; jump table
	.short _02228972 - _0222895E - 2 ; case 0
	.short _02228992 - _0222895E - 2 ; case 1
	.short _022289AE - _0222895E - 2 ; case 2
	.short _022289D8 - _0222895E - 2 ; case 3
	.short _02228A02 - _0222895E - 2 ; case 4
	.short _02228A1E - _0222895E - 2 ; case 5
	.short _02228A1E - _0222895E - 2 ; case 6
	.short _02228A1E - _0222895E - 2 ; case 7
	.short _02228A1E - _0222895E - 2 ; case 8
	.short _02228A7E - _0222895E - 2 ; case 9
_02228972:
	ldr r3, _02228AC4 ; =0x02252064
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	bl memcpy
	mov r0, #1
	str r0, [sp]
	b _02228AA2
_02228992:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02228AC8 ; =0x02252090
	str r1, [r0, #0]
	b _02228AA2
_022289AE:
	ldrh r3, [r5]
	ldr r1, _02228ACC ; =0x02251F64
	mov r0, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x57
	lsl r2, r2, #2
_022289CC:
	add r0, r0, #1
	str r3, [r1, r2]
	add r1, #0x28
	cmp r0, #4
	blt _022289CC
_022289D6:
	b _02228AA2
_022289D8:
	ldrh r3, [r5]
	ldr r0, _02228ACC ; =0x02251F64
	mov r1, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x16
	lsl r2, r2, #4
_022289F6:
	add r1, r1, #1
	str r3, [r0, r2]
	add r0, #0x28
	cmp r1, #4
	blt _022289F6
	b _02228AA2
_02228A02:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02228AC8 ; =0x02252090
	str r1, [r0, #4]
	b _02228AA2
_02228A1E:
	add r0, r0, #5
	sub r2, r2, r0
	mov r0, #0x28
	mul r0, r2
	ldr r1, _02228AD0 ; =0x022520C8
	mov r2, #0x20
	add r0, r1, r0
	mov r1, #0
	bl memset
	ldr r0, _02228AC8 ; =0x02252090
	ldr r1, _02228AD4 ; =0x00000206
	ldr r0, [r0, #0x30]
	cmp r0, #1
	bne _02228A68
	ldr r2, [sp, #0x10]
	ldr r0, _02228AD0 ; =0x022520C8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r4, r0, r1
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02228AA2
	add r7, r6, #0
_02228A52:
	ldrsb r1, [r5, r7]
	add r0, r4, #0
	add r5, r5, #1
	bl ov18_0222AAE8
	add r4, r4, r0
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _02228A52
	b _02228AA2
_02228A68:
	ldr r2, [sp, #0x10]
	ldr r0, _02228AD0 ; =0x022520C8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	bl memcpy
	b _02228AA2
_02228A7E:
	ldr r3, _02228AD8 ; =0x02252160
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	bl memcpy
_02228AA2:
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	add r5, r0, #0
	beq _02228AB8
	b _02228948
_02228AB8:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228AC0: .word 0x00000201
_02228AC4: .word 0x02252064
_02228AC8: .word 0x02252090
_02228ACC: .word Unk_ov18_02251F64
_02228AD0: .word 0x022520C8
_02228AD4: .word 0x00000206
_02228AD8: .word 0x02252160
	thumb_func_end ov18_02228908

	thumb_func_start ov18_02228ADC
ov18_02228ADC: ; 0x02228ADC
	push {r4, r5, r6, r7}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r3, r2, #0
	cmp r4, #0
	ble _02228B8A
	mov r7, #0x1f
_02228AEC:
	ldrsb r1, [r5, r3]
	cmp r1, #0x63
	bgt _02228B42
	bge _02228B5A
	cmp r1, #0x61
	bgt _02228B3C
	bge _02228B5A
	add r6, r1, #0
	sub r6, #0x30
	cmp r6, #0x16
	bhi _02228B66
	add r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsl r6, r6, #0x10
	asr r6, r6, #0x10
	add pc, r6
_02228B0E: ; jump table
	.short _02228B54 - _02228B0E - 2 ; case 0
	.short _02228B54 - _02228B0E - 2 ; case 1
	.short _02228B54 - _02228B0E - 2 ; case 2
	.short _02228B54 - _02228B0E - 2 ; case 3
	.short _02228B54 - _02228B0E - 2 ; case 4
	.short _02228B54 - _02228B0E - 2 ; case 5
	.short _02228B54 - _02228B0E - 2 ; case 6
	.short _02228B54 - _02228B0E - 2 ; case 7
	.short _02228B54 - _02228B0E - 2 ; case 8
	.short _02228B54 - _02228B0E - 2 ; case 9
	.short _02228B66 - _02228B0E - 2 ; case 10
	.short _02228B66 - _02228B0E - 2 ; case 11
	.short _02228B66 - _02228B0E - 2 ; case 12
	.short _02228B66 - _02228B0E - 2 ; case 13
	.short _02228B66 - _02228B0E - 2 ; case 14
	.short _02228B66 - _02228B0E - 2 ; case 15
	.short _02228B66 - _02228B0E - 2 ; case 16
	.short _02228B60 - _02228B0E - 2 ; case 17
	.short _02228B60 - _02228B0E - 2 ; case 18
	.short _02228B60 - _02228B0E - 2 ; case 19
	.short _02228B60 - _02228B0E - 2 ; case 20
	.short _02228B60 - _02228B0E - 2 ; case 21
	.short _02228B60 - _02228B0E - 2 ; case 22
_02228B3C:
	cmp r1, #0x62
	beq _02228B5A
	b _02228B66
_02228B42:
	cmp r1, #0x65
	bgt _02228B4E
	bge _02228B5A
	cmp r1, #0x64
	beq _02228B5A
	b _02228B66
_02228B4E:
	cmp r1, #0x66
	beq _02228B5A
	b _02228B66
_02228B54:
	sub r1, #0x30
	add r2, r2, r1
	b _02228B6C
_02228B5A:
	sub r1, #0x57
	add r2, r2, r1
	b _02228B6C
_02228B60:
	sub r1, #0x37
	add r2, r2, r1
	b _02228B6C
_02228B66:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02228B6C:
	lsr r6, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r6
	ror r1, r7
	add r1, r6, r1
	bne _02228B7C
	lsl r2, r2, #4
	b _02228B84
_02228B7C:
	add r6, r3, r6
	asr r1, r6, #1
	strb r2, [r0, r1]
	mov r2, #0
_02228B84:
	add r3, r3, #1
	cmp r3, r4
	blt _02228AEC
_02228B8A:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov18_02228ADC

	thumb_func_start ov18_02228B90
ov18_02228B90: ; 0x02228B90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r0, #1
	str r0, [sp]
	ldr r0, _02228CF8 ; =0x02251E7C
	ldr r1, _02228CFC ; =0x02252064
	bl strcpy
	ldr r1, _02228D00 ; =0x02252090
	ldr r0, [r1, #0]
	cmp r0, #3
	bls _02228BAA
	b _02228CEA
_02228BAA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228BB6: ; jump table
	.short _02228BBE - _02228BB6 - 2 ; case 0
	.short _02228BC6 - _02228BB6 - 2 ; case 1
	.short _02228CBE - _02228BB6 - 2 ; case 2
	.short _02228CD4 - _02228BB6 - 2 ; case 3
_02228BBE:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #0
	str r1, [r0, #0xc]
	b _02228CF0
_02228BC6:
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02228BD4
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
	b _02228CF0
_02228BD4:
	ldr r0, _02228D04 ; =0x02251E90
	ldr r6, _02228D08 ; =0x022520C8
	ldr r5, _02228D0C ; =0x02251EA4
	str r1, [r0, #0x10]
	mov r7, #0
	add r4, sp, #4
_02228BE0:
	add r0, sp, #4
	add r1, r6, #0
	mov r2, #0x20
	bl memcpy
	mov r1, #0
	add r0, sp, #0x24
	strb r1, [r0]
	add r0, sp, #4
	bl strlen
	cmp r0, #0x10
	bhi _02228C18
	cmp r0, #0xa
	blo _02228C0A
	beq _02228C42
	cmp r0, #0xd
	beq _02228C54
	cmp r0, #0x10
	beq _02228C80
	b _02228CAC
_02228C0A:
	cmp r0, #0
	bhi _02228C12
	beq _02228CB2
	b _02228CAC
_02228C12:
	cmp r0, #5
	beq _02228C26
	b _02228CAC
_02228C18:
	cmp r0, #0x1a
	bhi _02228C20
	beq _02228C6E
	b _02228CAC
_02228C20:
	cmp r0, #0x20
	beq _02228C9A
	b _02228CAC
_02228C26:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #1
	str r1, [r0, #0xc]
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldrb r0, [r4, #4]
	strb r0, [r5, #4]
	b _02228CB2
_02228C42:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xa
	bl ov18_02228ADC
	b _02228CB2
_02228C54:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #2
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0xd
_02228C60:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228C60
	b _02228CB2
_02228C6E:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1a
	bl ov18_02228ADC
	b _02228CB2
_02228C80:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #3
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0x10
_02228C8C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228C8C
	b _02228CB2
_02228C9A:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #3
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x20
	bl ov18_02228ADC
	b _02228CB2
_02228CAC:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_02228CB2:
	add r7, r7, #1
	add r6, #0x28
	add r5, #0x20
	cmp r7, #4
	blt _02228BE0
	b _02228CF0
_02228CBE:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #4
	ldr r4, _02228D10 ; =0x02251F24
	ldr r3, _02228D14 ; =0x02252160
	str r1, [r0, #0xc]
	mov r2, #8
_02228CCA:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02228CCA
	b _02228CF0
_02228CD4:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #5
	ldr r4, _02228D10 ; =0x02251F24
	ldr r3, _02228D14 ; =0x02252160
	str r1, [r0, #0xc]
	mov r2, #8
_02228CE0:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02228CE0
	b _02228CF0
_02228CEA:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_02228CF0:
	ldr r0, [sp]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228CF8: .word Unk_ov18_02251E7C
_02228CFC: .word 0x02252064
_02228D00: .word 0x02252090
_02228D04: .word 0x02251E90
_02228D08: .word 0x022520C8
_02228D0C: .word 0x02251EA4
_02228D10: .word 0x02251F24
_02228D14: .word 0x02252160
	thumb_func_end ov18_02228B90

	thumb_func_start ov18_02228D18
ov18_02228D18: ; 0x02228D18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0
	sub r0, r4, #5
	str r0, [sp, #8]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #1
	str r4, [sp, #0xc]
	str r4, [sp, #4]
	add r6, r4, #0
	str r1, [r0, #0x1c]
	b _022290CA
_02228D30:
	mov r0, #0x7d
	lsl r0, r0, #2
	bl OS_Sleep
	ldr r0, _02229060 ; =0x02251D10
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	bls _02228D42
	b _022290CA
_02228D42:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228D4E: ; jump table
	.short _022290CA - _02228D4E - 2 ; case 0
	.short _02228D64 - _02228D4E - 2 ; case 1
	.short _02228D84 - _02228D4E - 2 ; case 2
	.short _02228D9A - _02228D4E - 2 ; case 3
	.short _02228DE8 - _02228D4E - 2 ; case 4
	.short _02228E50 - _02228D4E - 2 ; case 5
	.short _02228E74 - _02228D4E - 2 ; case 6
	.short _02228F1E - _02228D4E - 2 ; case 7
	.short _02228F7A - _02228D4E - 2 ; case 8
	.short _02229002 - _02228D4E - 2 ; case 9
	.short _022290A0 - _02228D4E - 2 ; case 10
_02228D64:
	bl ov18_0222810C
	str r0, [sp, #8]
	cmp r0, #1
	beq _02228D72
	mov r6, #1
	b _022290CA
_02228D72:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x1c]
	b _022290CA
_02228D84:
	bl ov18_02227DB8
	str r0, [sp, #8]
	cmp r0, #1
	beq _02228D92
	mov r6, #1
	b _022290CA
_02228D92:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x1c]
	b _022290CA
_02228D9A:
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl SOC_Socket
	add r4, r0, #0
	bpl _02228DB2
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228DB2:
	add r5, sp, #0x24
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	mov r3, #8
	add r2, sp, #0x10
	strb r3, [r2, #0x14]
	mov r3, #2
	strb r3, [r2, #0x15]
	ldr r3, _02229064 ; =0x000001E6
	strh r3, [r2, #0x16]
	str r1, [sp, #0x28]
	add r1, r5, #0
	bl SOC_Bind
	str r0, [sp, #8]
	cmp r0, #0
	bge _02228DE0
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228DE0:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #4
	str r1, [r0, #0x1c]
	b _022290CA
_02228DE8:
	bl ov18_0222AA98
	ldr r1, _02229068 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02228E04
	add r0, r4, #0
	bl SOC_Close
	mov r0, #2
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228E04:
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xc]
	ldr r0, _0222906C ; =0x022521D0
	add r1, sp, #0x1c
	bl ov18_0222880C
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02229070 ; =0x02252A44
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl SOC_RecvFrom
	cmp r0, #0
	ble _02228F02
	ldr r0, _02229070 ; =0x02252A44
	ldr r1, _02229074 ; =0x02251D60
	bl ov18_02228640
	cmp r0, #0
	beq _02228F02
	bl ov18_0222AA98
	ldr r1, _02229078 ; =0x00007530
	add r1, r0, r1
	ldr r0, _02229068 ; =0x02249838
	str r1, [r0, #0xc]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #5
	str r1, [r0, #0x1c]
	mov r1, #4
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	b _022290CA
_02228E50:
	ldr r0, _02229070 ; =0x02252A44
	bl ov18_02228764
	add r3, r0, #0
	ldr r0, _02229060 ; =0x02251D10
	ldr r2, _02229070 ; =0x02252A44
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #6
	str r1, [r0, #0x1c]
	b _022290CA
_02228E74:
	bl ov18_0222AA98
	ldr r1, _02229068 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02228E90
	add r0, r4, #0
	bl SOC_Close
	mov r0, #3
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228E90:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02229070 ; =0x02252A44
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl SOC_RecvFrom
	cmp r0, #0
	ble _02228F04
	ldr r0, _02229070 ; =0x02252A44
	ldr r2, _0222907C ; =0x02252244
	ldr r3, _0222906C ; =0x022521D0
	mov r1, #3
	bl ov18_02228714
	cmp r0, #0
	beq _02228F04
	ldr r0, _0222907C ; =0x02252244
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov18_022284C0
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, _02229080 ; =0x00000101
	cmp r1, r0
	bne _02228F02
	bl ov18_0222AA98
	ldr r2, _02229084 ; =0x022521E0
	str r0, [sp, #0x10]
	mov r1, #8
_02228ED4:
	ldrb r0, [r5]
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228ED4
	ldr r0, _02229088 ; =0x022521E8
	add r1, sp, #0x10
	mov r2, #4
	bl ov18_0222AA70
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #7
	str r1, [r0, #0x1c]
	mov r1, #5
	str r1, [r0, #0x38]
	ldr r0, _02229068 ; =0x02249838
	sub r1, r1, #6
	str r1, [r0, #0xc]
	bl ov18_0222AD18
_02228F02:
	b _022290CA
_02228F04:
	bl ov18_0222AA98
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	bhs _02228F16
	b _022290CA
_02228F16:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #5
	str r1, [r0, #0x1c]
	b _022290CA
_02228F1E:
	ldr r0, _0222907C ; =0x02252244
	ldr r1, _0222908C ; =0x00000102
	ldr r2, _02229088 ; =0x022521E8
	mov r3, #8
	bl ov18_02228618
	ldr r3, _02229060 ; =0x02251D10
	ldr r2, _0222907C ; =0x02252244
	str r0, [r3, #0x34]
	ldr r0, _0222906C ; =0x022521D0
	mov r1, #4
	str r0, [sp]
	ldr r0, _02229070 ; =0x02252A44
	ldr r3, [r3, #0x34]
	bl ov18_022284F4
	add r3, r0, #0
	ldr r0, _02229060 ; =0x02251D10
	ldr r2, _02229070 ; =0x02252A44
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	mov r0, #0
	mov r5, #0x12
	ldr r7, _02229090 ; =0x02251F64
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov ip, r5
_02228F62:
	stmia r7!, {r0, r1, r2, r3}
	mov r5, ip
	sub r5, r5, #1
	stmia r7!, {r0, r1, r2, r3}
	mov ip, r5
	bne _02228F62
	stmia r7!, {r0, r1, r2, r3}
	str r0, [r7, #0]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #8
	str r1, [r0, #0x1c]
	b _022290CA
_02228F7A:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02229070 ; =0x02252A44
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl SOC_RecvFrom
	cmp r0, #0
	ble _02228FD0
	ldr r0, _02229070 ; =0x02252A44
	ldr r2, _0222907C ; =0x02252244
	ldr r3, _02229084 ; =0x022521E0
	mov r1, #5
	bl ov18_02228714
	ldr r1, _02229060 ; =0x02251D10
	cmp r0, #0
	str r0, [r1, #0x34]
	beq _02228FD0
	ldr r0, _0222907C ; =0x02252244
	bl ov18_02228908
	cmp r0, #0
	beq _02228FD0
	ldr r1, _02229094 ; =0x02252050
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02228FBE
	mov r1, #1
	ldr r0, _02229060 ; =0x02251D10
	b _02228FC2
_02228FBE:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #0
_02228FC2:
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #9
	str r1, [r0, #0x1c]
	b _022290CA
_02228FD0:
	bl ov18_0222AA98
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _022290CA
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _02228FFA
	add r0, r4, #0
	bl SOC_Close
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228FFA:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #7
	str r1, [r0, #0x1c]
	b _022290CA
_02229002:
	ldr r0, _0222907C ; =0x02252244
	ldr r1, _02229098 ; =0x00000301
	ldr r2, _0222909C ; =0x02251D10
	mov r3, #1
	bl ov18_02228618
	ldr r3, _02229060 ; =0x02251D10
	ldr r2, _0222907C ; =0x02252244
	str r0, [r3, #0x34]
	ldr r0, _02229084 ; =0x022521E0
	mov r1, #6
	str r0, [sp]
	ldr r0, _02229070 ; =0x02252A44
	ldr r3, [r3, #0x34]
	bl ov18_022284F4
	ldr r1, _02229060 ; =0x02251D10
	str r0, [r1, #0x14]
	bl ov18_02227BBC
	cmp r0, #7
	beq _02229044
	bl ov18_0222AA98
	mov r1, #0xfa
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0xa
	ldr r1, _02229060 ; =0x02251D10
	str r0, [sp, #4]
	str r0, [r1, #0x1c]
	b _022290CA
_02229044:
	ldr r3, _02229060 ; =0x02251D10
	ldr r2, _02229070 ; =0x02252A44
	ldr r3, [r3, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #0xa
	str r1, [r0, #0x1c]
	b _022290CA
	; .align 2, 0
_02229060: .word Unk_ov18_02251D10
_02229064: .word 0x000001E6
_02229068: .word Unk_ov18_02249838
_0222906C: .word Unk_ov18_022521D0
_02229070: .word Unk_ov18_02252A44
_02229074: .word 0x02251D60
_02229078: .word 0x00007530
_0222907C: .word Unk_ov18_02252244
_02229080: .word 0x00000101
_02229084: .word Unk_ov18_022521E0
_02229088: .word 0x022521E8
_0222908C: .word 0x00000102
_02229090: .word Unk_ov18_02251F64
_02229094: .word 0x02252050
_02229098: .word 0x00000301
_0222909C: .word Unk_ov18_02251D10
_022290A0:
	bl ov18_0222AA98
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _022290CA
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _022290C4
	mov r6, #1
	bl ov18_02228B90
	str r0, [sp, #8]
	b _022290CA
_022290C4:
	ldr r0, _022290F8 ; =0x02251D10
	mov r1, #9
	str r1, [r0, #0x1c]
_022290CA:
	cmp r6, #0
	bne _022290D8
	ldr r0, _022290F8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _022290D8
	b _02228D30
_022290D8:
	cmp r4, #0
	beq _022290E2
	add r0, r4, #0
	bl SOC_Close
_022290E2:
	ldr r0, _022290F8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022290F0
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #8]
_022290F0:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022290F8: .word Unk_ov18_02251D10
	thumb_func_end ov18_02228D18

	thumb_func_start ov18_022290FC
ov18_022290FC: ; 0x022290FC
	push {r4, lr}
	bl ov18_02228D18
	add r4, r0, #0
	ldr r0, _0222912C ; =0x02251D10
	str r4, [r0, #0x78]
	bl ov18_02227EDC
	cmp r4, #1
	bne _02229116
	mov r1, #6
	ldr r0, _0222912C ; =0x02251D10
	b _0222911A
_02229116:
	ldr r0, _0222912C ; =0x02251D10
	mov r1, #7
_0222911A:
	str r1, [r0, #0x38]
	mov r1, #0
	ldr r0, _02229130 ; =0x02249838
	mvn r1, r1
	str r1, [r0, #0xc]
	bl ov18_0222AD18
	pop {r4, pc}
	nop
_0222912C: .word Unk_ov18_02251D10
_02229130: .word Unk_ov18_02249838
	thumb_func_end ov18_022290FC

	thumb_func_start ov18_02229134
ov18_02229134: ; 0x02229134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	ldr r0, _022292E8 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _02229152
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02229158
_02229152:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229158:
	lsr r0, r4, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02229166
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229166:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov18_022294EC
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r5, #0
	add r0, #8
	add r2, r4, #0
	bl memcpy
	add r3, sp, #0x58
	add r2, sp, #0x48
	mov r1, #8
_02229184:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02229184
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_0222919A:
	ldr r0, [sp, #0x14]
	mov r4, #1
	cmp r0, #1
	bge _022291A4
	b _022292C0
_022291A4:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl _ull_mul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_022291C2:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	add r3, r5, #0
	add r2, sp, #0x60
	mov r1, #8
_022291CE:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022291CE
	add r2, sp, #0x58
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov18_02229934
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r3, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0xff
	lsl r0, r0, #8
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #8
	lsr r2, r2, #0x18
	str r2, [sp, #0x34]
	orr r2, r6
	lsr r0, r0, #0x18
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r3
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r3
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r3
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r3
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r3, r7, #0
	orr r3, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r2, r0
	ldr r0, [sp, #0x30]
	orr r1, r0
	ldr r0, [sp, #0x2c]
	orr r2, r0
	ldr r0, [sp, #0x28]
	orr r1, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov18_022294A4
	add r2, sp, #0x60
	mov r1, #8
_022292AC:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022292AC
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	ble _022291C2
_022292C0:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	bge _022292CC
	b _0222919A
_022292CC:
	add r3, sp, #0x58
	mov r2, #8
_022292D0:
	ldrb r1, [r3]
	ldr r0, [sp]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	str r0, [sp]
	sub r2, r2, #1
	bne _022292D0
	mov r0, #1
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022292E8: .word 0xA6A6A6A6
	thumb_func_end ov18_02229134

	thumb_func_start ov18_022292EC
ov18_022292EC: ; 0x022292EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022294A0 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _0222930E
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02229314
_0222930E:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229314:
	sub r0, r4, #1
	lsr r0, r0, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02229324
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229324:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov18_022297A4
	str r0, [sp, #0x20]
	add r3, sp, #0x58
	add r2, r5, #0
	mov r1, #8
_02229336:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02229336
	add r5, #8
	ldr r0, [sp]
	add r1, r5, #0
	sub r2, r4, #1
	bl memcpy
	mov r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_02229358:
	ldr r4, [sp, #0x14]
	add r0, r4, #0
	cmp r0, #0
	bgt _02229362
	b _0222947C
_02229362:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl _ull_mul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x2c]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x34]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_02229380:
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r5, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, r1, #0
	and r2, r0
	mov r0, #0
	add r3, r5, #0
	and r3, r0
	lsl r0, r2, #8
	lsr r3, r3, #0x18
	orr r3, r0
	lsr r0, r2, #0x18
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r5
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r5
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r5
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r5
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r5
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r5, r7, #0
	orr r5, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r5
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r1, r0
	ldr r0, [sp, #0x30]
	orr r2, r0
	ldr r0, [sp, #0x2c]
	orr r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov18_022294A4
	sub r0, r4, #1
	lsl r1, r0, #3
	ldr r0, [sp]
	add r2, sp, #0x60
	add r5, r0, r1
	add r3, r5, #0
	mov r1, #8
_0222944E:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222944E
	add r2, sp, #0x58
	ldr r1, [sp, #0x20]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov18_02229CF0
	add r2, sp, #0x60
	mov r1, #8
_0222946A:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _0222946A
	sub r4, r4, #1
	cmp r4, #0
	bgt _02229380
_0222947C:
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	bmi _02229486
	b _02229358
_02229486:
	add r0, sp, #0x48
	add r1, sp, #0x58
	mov r2, #8
	bl memcmp
	cmp r0, #0
	beq _02229498
	mov r0, #0
	str r0, [sp, #0x1c]
_02229498:
	ldr r0, [sp, #0x1c]
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022294A0: .word 0xA6A6A6A6
	thumb_func_end ov18_022292EC

	thumb_func_start ov18_022294A4
ov18_022294A4: ; 0x022294A4
	push {r3, r4}
	ldrb r4, [r0]
	ldrb r3, [r1]
	eor r3, r4
	strb r3, [r2]
	ldrb r4, [r0, #1]
	ldrb r3, [r1, #1]
	eor r3, r4
	strb r3, [r2, #1]
	ldrb r4, [r0, #2]
	ldrb r3, [r1, #2]
	eor r3, r4
	strb r3, [r2, #2]
	ldrb r4, [r0, #3]
	ldrb r3, [r1, #3]
	eor r3, r4
	strb r3, [r2, #3]
	ldrb r4, [r0, #4]
	ldrb r3, [r1, #4]
	eor r3, r4
	strb r3, [r2, #4]
	ldrb r4, [r0, #5]
	ldrb r3, [r1, #5]
	eor r3, r4
	strb r3, [r2, #5]
	ldrb r4, [r0, #6]
	ldrb r3, [r1, #6]
	eor r3, r4
	strb r3, [r2, #6]
	ldrb r3, [r0, #7]
	ldrb r0, [r1, #7]
	eor r0, r3
	strb r0, [r2, #7]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_022294A4

	thumb_func_start ov18_022294EC
ov18_022294EC: ; 0x022294EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r3, r1, #0
	add r1, r2, #0
	mov r2, #0
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrb r6, [r3, #1]
	ldrb r5, [r3, #3]
	lsl r4, r2, #8
	ldrb r2, [r3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0]
	ldrb r2, [r3, #6]
	ldrb r6, [r3, #5]
	ldrb r5, [r3, #7]
	lsl r4, r2, #8
	ldrb r2, [r3, #4]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #4]
	ldrb r2, [r3, #0xa]
	ldrb r6, [r3, #9]
	ldrb r5, [r3, #0xb]
	lsl r4, r2, #8
	ldrb r2, [r3, #8]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #8]
	ldrb r2, [r3, #0xe]
	ldrb r6, [r3, #0xd]
	ldrb r5, [r3, #0xf]
	lsl r4, r2, #8
	ldrb r2, [r3, #0xc]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0xc]
	cmp r1, #0x80
	bne _022295D0
	ldr r5, _0222979C ; =0x02246464
	ldr r2, _022297A0 ; =0x0224808C
_02229558:
	ldr r4, [r0, #0xc]
	ldr r3, [r5, #0]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r6, #0
	and r7, r1
	ldr r1, [r0, #0]
	str r1, [sp, #4]
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	lsr r4, r4, #8
	and r6, r1
	ldr r1, [sp, #4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	eor r1, r6
	ldr r6, [r2, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r6
	eor r1, r4
	add r4, r7, #0
	eor r4, r1
	ldr r1, [sp, #8]
	eor r1, r4
	eor r3, r1
	str r3, [r0, #0x10]
	ldr r1, [r0, #4]
	eor r3, r1
	str r3, [r0, #0x14]
	ldr r1, [r0, #8]
	eor r3, r1
	str r3, [r0, #0x18]
	ldr r1, [r0, #0xc]
	eor r1, r3
	str r1, [r0, #0x1c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #0xa
	blt _022295CC
	add sp, #0x18
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_022295CC:
	add r0, #0x10
	b _02229558
_022295D0:
	ldrb r2, [r3, #0x12]
	ldrb r6, [r3, #0x11]
	ldrb r5, [r3, #0x13]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x10]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x10]
	ldrb r2, [r3, #0x16]
	ldrb r6, [r3, #0x15]
	ldrb r5, [r3, #0x17]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x14]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x14]
	cmp r1, #0xc0
	bne _0222968C
	ldr r5, _0222979C ; =0x02246464
	ldr r3, _022297A0 ; =0x0224808C
_02229604:
	ldr r4, [r0, #0x14]
	ldr r6, [r5, #0]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0, #0]
	mov lr, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, lr
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x18]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x1c]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x24]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #8
	blt _0222967A
	add sp, #0x18
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0222967A:
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x24]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0x14]
	eor r1, r2
	str r1, [r0, #0x2c]
	add r0, #0x18
	b _02229604
_0222968C:
	ldrb r2, [r3, #0x1a]
	ldrb r6, [r3, #0x19]
	ldrb r5, [r3, #0x1b]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x18]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x18]
	ldrb r2, [r3, #0x1e]
	ldrb r5, [r3, #0x1f]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x1c]
	ldrb r3, [r3, #0x1d]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x10
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x1c]
	mov r2, #1
	lsl r2, r2, #8
	cmp r1, r2
	bne _02229796
	ldr r5, _0222979C ; =0x02246464
	ldr r3, _022297A0 ; =0x0224808C
_022296C4:
	ldr r4, [r0, #0x1c]
	ldr r6, [r5, #0]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0, #0]
	mov ip, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, ip
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x24]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x2c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #7
	blt _0222973A
	add sp, #0x18
	mov r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0222973A:
	ldr r6, [r0, #0x2c]
	ldr r7, [r0, #0x10]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x16
	ldr r1, [r3, r1]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	str r1, [sp, #0x14]
	lsr r1, r6, #0x18
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	lsr r2, r6, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r6, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	eor r1, r7
	and r2, r6
	eor r2, r1
	ldr r1, [sp, #0x14]
	eor r1, r2
	add r2, r4, #0
	eor r2, r1
	str r2, [r0, #0x30]
	ldr r1, [r0, #0x14]
	eor r2, r1
	str r2, [r0, #0x34]
	ldr r1, [r0, #0x18]
	eor r2, r1
	str r2, [r0, #0x38]
	ldr r1, [r0, #0x1c]
	eor r1, r2
	str r1, [r0, #0x3c]
	add r0, #0x20
	b _022296C4
_02229796:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222979C: .word Unk_ov18_02246464
_022297A0: .word Unk_ov18_0224808C
	thumb_func_end ov18_022294EC

	thumb_func_start ov18_022297A4
ov18_022297A4: ; 0x022297A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov18_022294EC
	mov ip, r0
	mov r1, ip
	lsl r6, r1, #2
	mov r0, #0
	cmp r6, #0
	ble _022297EA
	lsl r2, r6, #2
	add r1, r4, #0
	add r2, r4, r2
_022297BE:
	ldr r5, [r1, #0]
	ldr r3, [r2, #0]
	add r0, r0, #4
	str r3, [r1, #0]
	str r5, [r2, #0]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	sub r6, r6, #4
	str r3, [r1, #4]
	str r5, [r2, #4]
	ldr r5, [r1, #8]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	str r5, [r2, #8]
	ldr r5, [r1, #0xc]
	ldr r3, [r2, #0xc]
	str r3, [r1, #0xc]
	str r5, [r2, #0xc]
	add r1, #0x10
	sub r2, #0x10
	cmp r0, r6
	blt _022297BE
_022297EA:
	mov r0, #1
	str r0, [sp]
	mov r0, ip
	cmp r0, #1
	bgt _022297F6
	b _0222991A
_022297F6:
	ldr r2, _02229920 ; =0x0224808C
	ldr r7, _02229924 ; =0x0224688C
_022297FA:
	add r4, #0x10
	ldr r3, [r4, #0]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #0]
	ldr r3, [r4, #4]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #4]
	ldr r3, [r4, #8]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #8]
	ldr r3, [r4, #0xc]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #0xc]
	ldr r0, [sp]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp]
	cmp r1, r0
	bge _0222991A
	b _022297FA
_0222991A:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229920: .word Unk_ov18_0224808C
_02229924: .word Unk_ov18_0224688C
_02229928: .word Unk_ov18_0224648C
_0222992C: .word Unk_ov18_0224848C
_02229930: .word Unk_ov18_0224888C
	thumb_func_end ov18_022297A4

	thumb_func_start ov18_02229934
ov18_02229934: ; 0x02229934
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0, #0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r5, r2
	ldrb r2, [r1, #0xe]
	ldrb r4, [r1, #0xf]
	ldr r6, [r0, #0xc]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_022299A6:
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	ldr r4, [r0, #0x10]
	ldr r3, [r1, r2]
	lsr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r7, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x40]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r4, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	ldr r3, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x48]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r7, [r1, r2]
	lsr r1, r5, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x48]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x44]
	ldr r1, [sp, #8]
	ldr r4, [r0, #0x18]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x14]
	lsr r1, r5, #0x18
	lsl r2, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x14]
	ldr r7, [r0, #0x1c]
	eor r1, r2
	eor r1, r3
	add r2, r4, #0
	eor r2, r1
	lsl r1, r5, #0x18
	lsr r3, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	add r0, #0x20
	ldr r3, [r1, r3]
	ldr r1, [sp, #8]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r4]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _02229CE4 ; =0x0224708C
	ldr r6, [r4, r5]
	ldr r4, [sp, #0xc]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _02229CE8 ; =0x0224748C
	ldr r4, [r4, r5]
	eor r4, r6
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	eor r1, r7
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _02229B70
	lsl r3, r1, #0x18
	lsr r5, r3, #0x16
	ldr r3, _02229CDC ; =0x02247C8C
	ldr r4, [r0, #0]
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE0 ; =0x0224788C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _02229CE4 ; =0x0224708C
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE8 ; =0x0224748C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #4]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _02229CDC ; =0x02247C8C
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE0 ; =0x0224788C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _02229CE4 ; =0x0224708C
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	lsr r5, r2, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE8 ; =0x0224748C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r6, [r0, #8]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CDC ; =0x02247C8C
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CE0 ; =0x0224788C
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _02229CE4 ; =0x0224708C
	lsl r2, r2, #0x18
	ldr r7, [r3, r4]
	lsr r3, r1, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CE8 ; =0x0224748C
	lsr r1, r1, #0x18
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	eor r3, r4
	eor r3, r5
	add r5, r6, #0
	eor r5, r3
	lsr r3, r2, #0x16
	ldr r2, _02229CDC ; =0x02247C8C
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x44]
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x16
	ldr r2, _02229CE0 ; =0x0224788C
	ldr r2, [r2, r4]
	lsl r4, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r6, [r1, r4]
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r4]
	eor r1, r6
	eor r1, r2
	eor r1, r3
	add r6, r7, #0
	eor r6, r1
	b _022299A6
_02229B70:
	ldr r3, [r0, #0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CEC ; =0x0224808C
	lsl r6, r6, #0x10
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	ldr r4, [sp, #0x10]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r2, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov ip, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, ip
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r2, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	and r2, r0
	lsr r0, r1, #0x18
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r3, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x10
	and r1, r3
	eor r0, r1
	eor r0, r2
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02229CDC: .word Unk_ov18_02247C8C
_02229CE0: .word Unk_ov18_0224788C
_02229CE4: .word Unk_ov18_0224708C
_02229CE8: .word Unk_ov18_0224748C
_02229CEC: .word Unk_ov18_0224808C
	thumb_func_end ov18_02229934

	thumb_func_start ov18_02229CF0
ov18_02229CF0: ; 0x02229CF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0, #0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #0x40]
	ldrb r2, [r1, #0xe]
	ldr r5, [r0, #0xc]
	ldrb r4, [r1, #0xf]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r6, r5, #0
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_02229D66:
	ldr r1, [sp, #8]
	ldr r5, [r0, #0x10]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	ldr r4, [r1, r2]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A09C ; =0x0224648C
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A0A4 ; =0x0224888C
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x40]
	ldr r5, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	ldr r4, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A09C ; =0x0224648C
	ldr r3, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r7, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A0A4 ; =0x0224888C
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x44]
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	ldr r3, [r0, #0x18]
	ldr r2, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _0222A09C ; =0x0224648C
	ldr r1, [r1, r4]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #0x18
	lsl r4, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _0222A0A4 ; =0x0224888C
	ldr r4, [r4, r5]
	eor r4, r1
	ldr r1, [sp, #0x14]
	eor r1, r4
	eor r1, r2
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x1c]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	add r0, #0x20
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _0222A09C ; =0x0224648C
	ldr r7, [r4, r5]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _0222A0A0 ; =0x0224848C
	ldr r6, [r4, r5]
	ldr r4, [sp, #0x40]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _0222A0A4 ; =0x0224888C
	ldr r4, [r4, r5]
	eor r4, r6
	eor r4, r7
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _02229F2A
	ldr r3, [sp, #0x44]
	ldr r4, [r0, #0]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A09C ; =0x0224648C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _0222A0A0 ; =0x0224848C
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	lsr r5, r1, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A0A4 ; =0x0224888C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	lsl r3, r2, #0x18
	lsr r5, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r4, [r0, #4]
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A09C ; =0x0224648C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _0222A0A0 ; =0x0224848C
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A0A4 ; =0x0224888C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r6, [r0, #8]
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r1, r1, #0x18
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A09C ; =0x0224648C
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _0222A0A0 ; =0x0224848C
	lsr r2, r2, #0x10
	ldr r7, [r3, r4]
	ldr r3, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r3, r3, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A0A4 ; =0x0224888C
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	eor r3, r4
	eor r3, r5
	eor r3, r6
	str r3, [sp, #0x40]
	ldr r3, [sp, #0x10]
	ldr r5, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r4, [r3, r4]
	ldr r3, [sp, #0x44]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r6, r3, #0x16
	ldr r3, _0222A09C ; =0x0224648C
	ldr r3, [r3, r6]
	lsl r6, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r1, [r1, r6]
	lsr r6, r2, #0x16
	ldr r2, _0222A0A4 ; =0x0224888C
	ldr r2, [r2, r6]
	add r6, r5, #0
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	b _02229D66
_02229F2A:
	ldr r3, [r0, #0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x44]
	lsl r6, r6, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A0A8 ; =0x02246C8C
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	lsl r4, r2, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	lsl r4, r1, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov ip, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, ip
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	ldr r0, [sp, #0x10]
	lsr r2, r2, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r6, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	lsl r1, r1, #2
	and r0, r6
	mov r6, #0xff
	lsr r2, r2, #0x16
	ldr r1, [r3, r1]
	ldr r3, [r3, r2]
	mov r2, #0xff
	lsl r6, r6, #0x18
	lsl r2, r2, #0x10
	and r1, r6
	and r2, r3
	eor r1, r2
	eor r0, r1
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A098: .word Unk_ov18_0224688C
_0222A09C: .word Unk_ov18_0224648C
_0222A0A0: .word Unk_ov18_0224848C
_0222A0A4: .word Unk_ov18_0224888C
_0222A0A8: .word Unk_ov18_02246C8C
	thumb_func_end ov18_02229CF0

	thumb_func_start ov18_0222A0AC
ov18_0222A0AC: ; 0x0222A0AC
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _0222A0C4 ; =0x67452301
	str r1, [r0, #0]
	ldr r1, _0222A0C8 ; =0xEFCDAB89
	str r1, [r0, #4]
	ldr r1, _0222A0CC ; =0x98BADCFE
	str r1, [r0, #8]
	ldr r1, _0222A0D0 ; =0x10325476
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
_0222A0C4: .word 0x67452301
_0222A0C8: .word 0xEFCDAB89
_0222A0CC: .word 0x98BADCFE
_0222A0D0: .word 0x10325476
	thumb_func_end ov18_0222A0AC

	thumb_func_start ov18_0222A0D4
ov18_0222A0D4: ; 0x0222A0D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0x10]
	add r6, r2, #0
	lsr r2, r1, #3
	mov r0, #0x3f
	and r0, r2
	lsl r2, r6, #3
	add r1, r1, r2
	str r1, [r5, #0x10]
	cmp r1, r2
	bhs _0222A0F4
	ldr r1, [r5, #0x14]
	add r1, r1, #1
	str r1, [r5, #0x14]
_0222A0F4:
	ldr r2, [r5, #0x14]
	lsr r1, r6, #0x1d
	add r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #0x40
	sub r4, r1, r0
	cmp r6, r4
	blo _0222A13A
	add r1, r5, #0
	add r1, #0x18
	add r0, r1, r0
	add r1, r7, #0
	add r2, r4, #0
	bl ov18_0222AA40
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x18
	bl ov18_0222A1A0
	add r0, r4, #0
	add r0, #0x3f
	cmp r0, r6
	bhs _0222A136
_0222A124:
	add r0, r5, #0
	add r1, r7, r4
	bl ov18_0222A1A0
	add r4, #0x40
	add r0, r4, #0
	add r0, #0x3f
	cmp r0, r6
	blo _0222A124
_0222A136:
	mov r0, #0
	b _0222A13C
_0222A13A:
	mov r4, #0
_0222A13C:
	add r5, #0x18
	add r0, r5, r0
	add r1, r7, r4
	sub r2, r6, r4
	bl ov18_0222AA40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_0222A0D4

	thumb_func_start ov18_0222A14C
ov18_0222A14C: ; 0x0222A14C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, #0x10
	mov r2, #8
	bl ov18_0222A9E8
	ldr r0, [r4, #0x10]
	lsr r1, r0, #3
	mov r0, #0x3f
	and r1, r0
	cmp r1, #0x38
	bhs _0222A16E
	mov r0, #0x38
	b _0222A170
_0222A16E:
	mov r0, #0x78
_0222A170:
	sub r2, r0, r1
	ldr r1, _0222A19C ; =0x022498B8
	add r0, r4, #0
	bl ov18_0222A0D4
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #8
	bl ov18_0222A0D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl ov18_0222A9E8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	bl ov18_0222AA58
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222A19C: .word Unk_ov18_022498B8
	thumb_func_end ov18_0222A14C

	thumb_func_start ov18_0222A1A0
ov18_0222A1A0: ; 0x0222A1A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	ldr r0, [r7, #0]
	mov r2, #0x40
	str r0, [sp]
	add r0, sp, #0x44
	ldr r4, [r7, #4]
	ldr r5, [r7, #8]
	ldr r6, [r7, #0xc]
	bl ov18_0222AA14
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	str r0, [sp, #4]
	mvn r0, r4
	and r1, r5
	and r0, r6
	orr r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _0222A578 ; =0x28955B88
	sub r1, r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	lsl r1, r0, #7
	lsr r0, r0, #0x19
	orr r0, r1
	add r3, r0, r4
	ldr r0, [sp, #0x48]
	mvn r1, r3
	str r0, [sp, #8]
	add r0, r3, #0
	and r0, r4
	and r1, r5
	orr r1, r0
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, _0222A57C ; =0x173848AA
	sub r0, r1, r0
	add r0, r6, r0
	lsl r1, r0, #0xc
	lsr r0, r0, #0x14
	orr r0, r1
	add r2, r0, r3
	ldr r0, [sp, #0x4c]
	mvn r1, r2
	str r0, [sp, #0xc]
	add r0, r2, #0
	and r0, r3
	and r1, r4
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, _0222A580 ; =0x242070DB
	add r0, r1, r0
	add r0, r5, r0
	lsl r1, r0, #0x11
	lsr r0, r0, #0xf
	orr r0, r1
	add r1, r0, r2
	ldr r0, [sp, #0x50]
	mvn r5, r1
	str r0, [sp, #0x10]
	add r0, r1, #0
	and r0, r2
	and r5, r3
	orr r5, r0
	ldr r0, [sp, #0x10]
	add r5, r0, r5
	ldr r0, _0222A584 ; =0x3E423112
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x54]
	add r0, r0, r1
	str r4, [sp, #0x14]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x14]
	add r5, r4, r5
	ldr r4, _0222A588 ; =0x0A83F051
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x58]
	add r3, r3, r0
	str r4, [sp, #0x18]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _0222A58C ; =0x4787C62A
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x5c]
	add r2, r2, r3
	str r4, [sp, #0x1c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _0222A590 ; =0x57CFB9ED
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x60]
	add r1, r1, r2
	str r4, [sp, #0x20]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x20]
	add r5, r4, r5
	ldr r4, _0222A594 ; =0x02B96AFF
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x64]
	add r0, r0, r1
	str r4, [sp, #0x24]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x24]
	add r5, r4, r5
	ldr r4, _0222A598 ; =0x698098D8
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x68]
	add r3, r3, r0
	str r4, [sp, #0x28]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x28]
	add r5, r4, r5
	ldr r4, _0222A59C ; =0x74BB0851
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x6c]
	add r2, r2, r3
	str r4, [sp, #0x2c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x2c]
	add r5, r4, r5
	ldr r4, _0222A5A0 ; =0x0000A44F
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x70]
	add r1, r1, r2
	str r4, [sp, #0x30]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _0222A5A4 ; =0x76A32842
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	add r0, r0, r1
	ldr r4, [sp, #0x74]
	mvn r5, r0
	str r4, [sp, #0x34]
	add r4, r0, #0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x34]
	add r5, r4, r5
	ldr r4, _0222A5A8 ; =0x6B901122
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	add r4, r3, r0
	ldr r3, [sp, #0x78]
	mvn r5, r4
	str r3, [sp, #0x38]
	add r3, r4, #0
	and r3, r0
	and r5, r1
	orr r5, r3
	ldr r3, [sp, #0x38]
	add r5, r3, r5
	ldr r3, _0222A5AC ; =0x02678E6D
	sub r3, r5, r3
	add r2, r2, r3
	lsl r3, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r3
	add r3, r2, r4
	mvn r2, r3
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x7c]
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0x40]
	add r2, r3, #0
	and r2, r4
	and r5, r0
	orr r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _0222A5B0 ; =0x5986BC72
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r2
	add r2, r1, r3
	ldr r1, [sp, #0x80]
	add r5, r2, #0
	mvn r6, r2
	mov ip, r1
	add r1, r6, #0
	and r5, r3
	and r1, r4
	orr r5, r1
	mov r1, ip
	add r5, r1, r5
	ldr r1, _0222A5B4 ; =0x49B40821
	add r1, r5, r1
	add r0, r0, r1
	lsl r1, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r1
	add r1, r0, r2
	ldr r5, [sp, #0x3c]
	add r0, r1, #0
	and r0, r3
	and r5, r2
	orr r5, r0
	ldr r0, [sp, #8]
	add r5, r0, r5
	ldr r0, _0222A5B8 ; =0x09E1DA9E
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r0, r0, r1
	add r4, r0, #0
	add r5, r1, #0
	and r4, r2
	bic r5, r2
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _0222A5BC ; =0x3FBF4CC0
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #9
	lsr r3, r3, #0x17
	orr r3, r4
	add r3, r3, r0
	add r4, r3, #0
	mvn r5, r1
	and r4, r1
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _0222A5C0 ; =0x265E5A51
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xe
	lsr r2, r2, #0x12
	orr r2, r4
	add r2, r2, r3
	add r4, r2, #0
	mvn r5, r0
	and r4, r0
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #4]
	add r5, r4, r5
	ldr r4, _0222A5C4 ; =0x16493856
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r4
	add r1, r1, r2
	add r4, r1, #0
	mvn r5, r3
	and r4, r3
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _0222A5C8 ; =0x29D0EFA3
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r4, r0, r1
	add r0, r4, #0
	mvn r5, r2
	and r0, r2
	and r5, r1
	orr r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r0, r5
	ldr r0, _0222A5CC ; =0x02441453
	add r0, r5, r0
	add r0, r3, r0
	lsl r3, r0, #9
	lsr r0, r0, #0x17
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	mov r0, ip
	add r5, r0, r5
	ldr r0, _0222A5D0 ; =0x275E197F
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0x14]
	add r5, r2, r5
	ldr r2, _0222A5D4 ; =0x182C0438
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x28]
	add r2, r1, r2
	ldr r1, _0222A5D8 ; =0x21E1CDE6
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #5
	lsr r1, r1, #0x1b
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x40]
	add r4, r1, r4
	ldr r1, _0222A5DC ; =0x3CC8F82A
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #9
	lsr r1, r1, #0x17
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	mvn r4, r5
	and r3, r5
	and r4, r2
	orr r4, r3
	ldr r3, [sp, #0x10]
	add r4, r3, r4
	ldr r3, _0222A5E0 ; =0x0B2AF279
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	mvn r3, r2
	and r0, r2
	and r3, r1
	orr r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _0222A5E4 ; =0x455A14ED
	add r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _0222A5E8 ; =0x561C16FB
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _0222A5EC ; =0x03105C08
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #9
	lsr r1, r1, #0x17
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldr r1, _0222A5F0 ; =0x676F02D9
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xe
	lsr r1, r1, #0x12
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x34]
	add r4, r1, r4
	ldr r1, _0222A5F4 ; =0x72D5B376
	b _0222A5F8
	nop
_0222A578: .word 0x28955B88
_0222A57C: .word 0x173848AA
_0222A580: .word 0x242070DB
_0222A584: .word 0x3E423112
_0222A588: .word 0x0A83F051
_0222A58C: .word 0x4787C62A
_0222A590: .word 0x57CFB9ED
_0222A594: .word 0x02B96AFF
_0222A598: .word 0x698098D8
_0222A59C: .word 0x74BB0851
_0222A5A0: .word 0x0000A44F
_0222A5A4: .word 0x76A32842
_0222A5A8: .word 0x6B901122
_0222A5AC: .word 0x02678E6D
_0222A5B0: .word 0x5986BC72
_0222A5B4: .word 0x49B40821
_0222A5B8: .word 0x09E1DA9E
_0222A5BC: .word 0x3FBF4CC0
_0222A5C0: .word 0x265E5A51
_0222A5C4: .word 0x16493856
_0222A5C8: .word 0x29D0EFA3
_0222A5CC: .word 0x02441453
_0222A5D0: .word 0x275E197F
_0222A5D4: .word 0x182C0438
_0222A5D8: .word 0x21E1CDE6
_0222A5DC: .word 0x3CC8F82A
_0222A5E0: .word 0x0B2AF279
_0222A5E4: .word 0x455A14ED
_0222A5E8: .word 0x561C16FB
_0222A5EC: .word 0x03105C08
_0222A5F0: .word 0x676F02D9
_0222A5F4: .word 0x72D5B376
_0222A5F8:
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x18]
	add r4, r3, r4
	ldr r3, _0222A968 ; =0x0005C6BE
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _0222A96C ; =0x788E097F
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x30]
	add r5, r0, r5
	ldr r0, _0222A970 ; =0x6D9D6122
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _0222A974 ; =0x021AC7F4
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #8]
	add r2, r1, r2
	ldr r1, _0222A978 ; =0x5B4115BC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #4
	lsr r1, r1, #0x1c
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x14]
	add r4, r1, r4
	ldr r1, _0222A97C ; =0x4BDECFA9
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	add r4, r3, r4
	ldr r3, _0222A980 ; =0x0944B4A0
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x2c]
	add r3, r0, r3
	ldr r0, _0222A984 ; =0x41404390
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x17
	lsr r0, r0, #9
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _0222A988 ; =0x289B7EC6
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #4]
	add r5, r2, r5
	ldr r2, _0222A98C ; =0x155ED806
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	add r2, r1, r2
	ldr r1, _0222A990 ; =0x2B10CF7B
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0x10
	lsr r1, r1, #0x10
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x1c]
	add r4, r1, r4
	ldr r1, _0222A994 ; =0x04881D05
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x17
	lsr r1, r1, #9
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x28]
	add r4, r3, r4
	ldr r3, _0222A998 ; =0x262B2FC7
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x34]
	add r3, r0, r3
	ldr r0, _0222A99C ; =0x1924661B
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	mov r0, ip
	add r5, r0, r5
	ldr r0, _0222A9A0 ; =0x1FA27CF8
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _0222A9A4 ; =0x3B53A99B
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, _0222A9A8 ; =0x0BD6DDBC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #0x20]
	add r4, r1, r4
	ldr r1, _0222A9AC ; =0x432AFF97
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x40]
	add r4, r3, r4
	ldr r3, _0222A9B0 ; =0x546BDC59
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r4, r0, r1
	mvn r0, r2
	orr r0, r4
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0x18]
	add r3, r0, r3
	ldr r0, _0222A9B4 ; =0x036C5FC7
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r3
	add r3, r0, r4
	mvn r0, r1
	orr r0, r3
	add r5, r4, #0
	eor r5, r0
	ldr r0, [sp, #0x34]
	add r5, r0, r5
	ldr r0, _0222A9B8 ; =0x655B59C3
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r2
	add r0, r0, r3
	mvn r2, r4
	orr r2, r0
	add r5, r3, #0
	eor r5, r2
	ldr r2, [sp, #0x10]
	add r5, r2, r5
	ldr r2, _0222A9BC ; =0x70F3336E
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #0x2c]
	add r2, r1, r2
	ldr r1, _0222A9C0 ; =0x00100B83
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xf
	lsr r1, r1, #0x11
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #8]
	add r4, r1, r4
	ldr r1, _0222A9C4 ; =0x7A7BA22F
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x24]
	add r4, r3, r4
	ldr r3, _0222A9C8 ; =0x6FA87E4F
	add r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r3
	add r3, r0, r1
	mvn r0, r2
	orr r0, r3
	eor r0, r1
	mov r4, ip
	add r4, r4, r0
	ldr r0, _0222A9CC ; =0x01D31920
	sub r0, r4, r0
	add r0, r5, r0
	lsl r4, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r4
	add r0, r0, r3
	mvn r4, r1
	orr r4, r0
	add r5, r3, #0
	eor r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _0222A9D0 ; =0x5CFEBCEC
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xf
	lsr r2, r2, #0x11
	orr r2, r4
	add r4, r2, r0
	mvn r2, r3
	orr r2, r4
	add r5, r0, #0
	eor r5, r2
	ldr r2, [sp, #0x38]
	add r5, r2, r5
	ldr r2, _0222A9D4 ; =0x4E0811A1
	add r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r2
	add r2, r1, r4
	mvn r1, r0
	orr r1, r2
	add r5, r4, #0
	eor r5, r1
	ldr r1, [sp, #0x14]
	add r5, r1, r5
	ldr r1, _0222A9D8 ; =0x08AC817E
	sub r1, r5, r1
	add r1, r3, r1
	lsl r3, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r3
	add r1, r1, r2
	mvn r3, r4
	orr r3, r1
	add r5, r2, #0
	eor r5, r3
	ldr r3, [sp, #0x30]
	add r5, r3, r5
	ldr r3, _0222A9DC ; =0x42C50DCB
	sub r3, r5, r3
	add r0, r0, r3
	lsl r3, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r3
	add r5, r0, r1
	mvn r0, r2
	orr r0, r5
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0xc]
	add r3, r0, r3
	ldr r0, _0222A9E0 ; =0x2AD7D2BB
	add r0, r3, r0
	add r0, r4, r0
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r3, r0, r5
	mvn r0, r1
	orr r0, r3
	add r4, r5, #0
	eor r4, r0
	ldr r0, [sp, #0x28]
	add r4, r0, r4
	ldr r0, _0222A9E4 ; =0x14792C6F
	sub r0, r4, r0
	add r0, r2, r0
	lsl r2, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r2
	ldr r2, [r7, #0]
	add r0, r0, r3
	add r1, r2, r1
	str r1, [r7, #0]
	ldr r1, [r7, #4]
	mov r2, #0x40
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	mov r1, #0
	add r0, r0, r3
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	add r0, r0, r5
	str r0, [r7, #0xc]
	add r0, sp, #0x44
	bl ov18_0222AA58
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222A968: .word 0x0005C6BE
_0222A96C: .word 0x788E097F
_0222A970: .word 0x6D9D6122
_0222A974: .word 0x021AC7F4
_0222A978: .word 0x5B4115BC
_0222A97C: .word 0x4BDECFA9
_0222A980: .word 0x0944B4A0
_0222A984: .word 0x41404390
_0222A988: .word 0x289B7EC6
_0222A98C: .word 0x155ED806
_0222A990: .word 0x2B10CF7B
_0222A994: .word 0x04881D05
_0222A998: .word 0x262B2FC7
_0222A99C: .word 0x1924661B
_0222A9A0: .word 0x1FA27CF8
_0222A9A4: .word 0x3B53A99B
_0222A9A8: .word 0x0BD6DDBC
_0222A9AC: .word 0x432AFF97
_0222A9B0: .word 0x546BDC59
_0222A9B4: .word 0x036C5FC7
_0222A9B8: .word 0x655B59C3
_0222A9BC: .word 0x70F3336E
_0222A9C0: .word 0x00100B83
_0222A9C4: .word 0x7A7BA22F
_0222A9C8: .word 0x6FA87E4F
_0222A9CC: .word 0x01D31920
_0222A9D0: .word 0x5CFEBCEC
_0222A9D4: .word 0x4E0811A1
_0222A9D8: .word 0x08AC817E
_0222A9DC: .word 0x42C50DCB
_0222A9E0: .word 0x2AD7D2BB
_0222A9E4: .word 0x14792C6F
	thumb_func_end ov18_0222A1A0

	thumb_func_start ov18_0222A9E8
ov18_0222A9E8: ; 0x0222A9E8
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _0222AA10
_0222A9F0:
	ldr r5, [r1, #0]
	add r3, r0, r4
	strb r5, [r0, r4]
	ldr r5, [r1, #0]
	add r4, r4, #4
	lsr r5, r5, #8
	strb r5, [r3, #1]
	ldr r5, [r1, #0]
	lsr r5, r5, #0x10
	strb r5, [r3, #2]
	ldr r5, [r1, #0]
	add r1, r1, #4
	lsr r5, r5, #0x18
	strb r5, [r3, #3]
	cmp r4, r2
	blo _0222A9F0
_0222AA10:
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222A9E8

	thumb_func_start ov18_0222AA14
ov18_0222AA14: ; 0x0222AA14
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r2, #0
	bls _0222AA3A
_0222AA1C:
	add r6, r1, r7
	ldrb r3, [r6, #3]
	lsl r5, r3, #0x18
	ldrb r3, [r6, #2]
	ldrb r6, [r6, #1]
	lsl r4, r3, #0x10
	ldrb r3, [r1, r7]
	lsl r6, r6, #8
	add r7, r7, #4
	orr r3, r6
	orr r3, r4
	orr r3, r5
	stmia r0!, {r3}
	cmp r7, r2
	blo _0222AA1C
_0222AA3A:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_0222AA14

	thumb_func_start ov18_0222AA40
ov18_0222AA40: ; 0x0222AA40
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	bls _0222AA52
_0222AA48:
	ldrb r3, [r1, r4]
	strb r3, [r0, r4]
	add r4, r4, #1
	cmp r4, r2
	blo _0222AA48
_0222AA52:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_0222AA40

	thumb_func_start ov18_0222AA58
ov18_0222AA58: ; 0x0222AA58
	mov r3, #0
	cmp r2, #0
	bls _0222AA6C
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
_0222AA62:
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r3, r2
	blo _0222AA62
_0222AA6C:
	bx lr
	; .align 2, 0
	thumb_func_end ov18_0222AA58

	thumb_func_start ov18_0222AA70
ov18_0222AA70: ; 0x0222AA70
	push {r4, r5, r6, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	bl ov18_0222A0AC
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_0222A0D4
	add r0, r5, #0
	add r1, sp, #0
	bl ov18_0222A14C
	add sp, #0x58
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov18_0222AA70

	thumb_func_start ov18_0222AA98
ov18_0222AA98: ; 0x0222AA98
	push {r3, lr}
	bl OS_GetTick
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _0222AAB0 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	bl _ull_div
	pop {r3, pc}
	; .align 2, 0
_0222AAB0: .word 0x000082EA
	thumb_func_end ov18_0222AA98

	thumb_func_start ov18_0222AAB4
ov18_0222AAB4: ; 0x0222AAB4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mul r4, r1
	ldr r1, _0222AAD4 ; =0x02251D10
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r5, r0, #0
	beq _0222AACE
	mov r1, #0
	add r2, r4, #0
	bl memset
_0222AACE:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0222AAD4: .word Unk_ov18_02251D10
	thumb_func_end ov18_0222AAB4

	thumb_func_start ov18_0222AAD8
ov18_0222AAD8: ; 0x0222AAD8
	push {r3, lr}
	ldr r1, _0222AAE4 ; =0x02251D10
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	nop
_0222AAE4: .word Unk_ov18_02251D10
	thumb_func_end ov18_0222AAD8

	thumb_func_start ov18_0222AAE8
ov18_0222AAE8: ; 0x0222AAE8
	push {r4, r5}
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xf0
	and r1, r3
	asr r5, r1, #4
	mov r1, #0xf
	add r2, r0, #0
	mov r4, #0
	and r1, r3
_0222AAFC:
	cmp r5, #9
	bgt _0222AB04
	add r5, #0x30
	b _0222AB06
_0222AB04:
	add r5, #0x37
_0222AB06:
	add r4, r4, #1
	strb r5, [r2]
	add r2, r2, #1
	add r5, r1, #0
	cmp r4, #2
	blt _0222AAFC
	mov r1, #0
	strb r1, [r2]
	sub r0, r2, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222AAE8

	thumb_func_start ov18_0222AB1C
ov18_0222AB1C: ; 0x0222AB1C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x3a
_0222AB28:
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r0, r4, #0
	add r6, r6, #1
	bl ov18_0222AAE8
	add r0, r4, r0
	add r4, r0, #0
	cmp r5, #5
	bge _0222AB40
	add r4, r0, #1
	strb r7, [r0]
_0222AB40:
	add r5, r5, #1
	cmp r5, #6
	blt _0222AB28
	mov r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	sub r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_0222AB1C

	thumb_func_start ov18_0222AB50
ov18_0222AB50: ; 0x0222AB50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0222AC20 ; =0x02251D10
	ldr r0, [r0, #0x38]
	cmp r0, #1
	blt _0222AB6A
	cmp r0, #5
	bgt _0222AB6A
	mov r0, #9
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0222AB6A:
	ldr r5, _0222AC24 ; =0x02249838
	ldr r0, _0222AC20 ; =0x02251D10
	mov r6, #7
	str r1, [r5, #0x10]
	str r6, [r0, #0x38]
	str r2, [r0, #0x7c]
	ldr r2, [sp, #0x18]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #8]
	add r0, r1, #0
	bl ov18_02227CBC
	mov r2, #1
	ldr r1, _0222AC20 ; =0x02251D10
	cmp r0, #0
	str r2, [r1, #0x74]
	bge _0222AB96
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222AB96:
	add r0, r5, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	blx r1
	ldr r1, _0222AC20 ; =0x02251D10
	cmp r0, #0
	str r0, [r1, #0x30]
	bne _0222ABB0
	add r0, r6, #0
	sub r0, #8
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222ABB0:
	bl OS_IsThreadAvailable
	cmp r0, #1
	beq _0222ABC4
	add r0, r6, #0
	ldr r1, _0222AC20 ; =0x02251D10
	sub r0, #0x10
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222ABC4:
	add r0, r5, #0
	ldr r3, [r0, #8]
	ldr r0, _0222AC28 ; =0x02251DBC
	str r3, [sp]
	str r4, [sp, #4]
	ldr r4, _0222AC20 ; =0x02251D10
	ldr r1, _0222AC2C ; =ov18_022290FC
	ldr r5, [r4, #0x30]
	mov r4, #7
	bic r3, r4
	mov r2, #0
	add r3, r5, r3
	bl OS_CreateThread
	ldr r0, _0222AC20 ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x38]
	bl ov18_0222AA98
	ldr r1, _0222AC30 ; =0x0000EA60
	ldr r5, _0222AC34 ; =0x02251E7C
	add r1, r0, r1
	ldr r0, _0222AC24 ; =0x02249838
	add r4, r6, #0
	str r1, [r0, #0xc]
	mov r0, #0
	ldr r1, _0222AC20 ; =0x02251D10
	add r2, r0, #0
	str r0, [r1, #0x10]
	add r1, r0, #0
	add r3, r0, #0
_0222AC02:
	stmia r5!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _0222AC02
	stmia r5!, {r0, r1}
	bl ov18_0222AD18
	ldr r0, _0222AC28 ; =0x02251DBC
	bl OS_WakeupThreadDirect
	ldr r1, _0222AC20 ; =0x02251D10
	mov r0, #1
	str r0, [r1, #0x64]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222AC20: .word Unk_ov18_02251D10
_0222AC24: .word Unk_ov18_02249838
_0222AC28: .word Unk_ov18_02251DBC
_0222AC2C: .word ov18_022290FC
_0222AC30: .word 0x0000EA60
_0222AC34: .word Unk_ov18_02251E7C
	thumb_func_end ov18_0222AB50

	thumb_func_start ov18_0222AC38
ov18_0222AC38: ; 0x0222AC38
	push {r4, r5, r6, lr}
	ldr r4, _0222ACC4 ; =0x02251D10
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0222ACA8
	ldr r6, [r4, #0x38]
	mov r0, #1
	str r0, [r4, #0x10]
	mov r5, #0x64
	b _0222AC52
_0222AC4C:
	add r0, r5, #0
	bl OS_Sleep
_0222AC52:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	blt _0222AC5C
	cmp r0, #5
	ble _0222AC4C
_0222AC5C:
	mov r0, #0x7d
	lsl r0, r0, #2
	bl OS_Sleep
	ldr r0, _0222ACC8 ; =0x02251DBC
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _0222AC86
	ldr r4, _0222ACC8 ; =0x02251DBC
_0222AC70:
	add r0, r4, #0
	bl OS_WakeupThreadDirect
	add r0, r4, #0
	bl OS_JoinThread
	add r0, r4, #0
	bl OS_IsThreadTerminated
	cmp r0, #0
	beq _0222AC70
_0222AC86:
	ldr r1, _0222ACC4 ; =0x02251D10
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0222AC98
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _0222ACC4 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x30]
_0222AC98:
	ldr r0, _0222ACC4 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x38]
	cmp r6, r0
	beq _0222ACA8
	bl ov18_0222AD18
_0222ACA8:
	ldr r0, _0222ACC4 ; =0x02251D10
	ldr r0, [r0, #0x74]
	cmp r0, #0
	ble _0222ACBC
	bl ov18_02227D60
	ldr r1, _0222ACC4 ; =0x02251D10
	mov r2, #0
	str r2, [r1, #0x74]
	pop {r4, r5, r6, pc}
_0222ACBC:
	mov r0, #9
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_0222ACC4: .word Unk_ov18_02251D10
_0222ACC8: .word Unk_ov18_02251DBC
	thumb_func_end ov18_0222AC38

	thumb_func_start ov18_0222ACCC
ov18_0222ACCC: ; 0x0222ACCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222ACFC ; =0x02251D10
	ldr r0, [r0, #0x38]
	str r0, [r4, #0]
	ldr r0, _0222AD00 ; =0x02249838
	ldr r1, [r0, #0xc]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0222ACE4
	b _0222ACEE
_0222ACE4:
	bl ov18_0222AA98
	ldr r1, _0222AD00 ; =0x02249838
	ldr r1, [r1, #0xc]
	sub r0, r1, r0
_0222ACEE:
	str r0, [r4, #4]
	ldr r0, _0222ACFC ; =0x02251D10
	ldr r0, [r0, #0x78]
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	nop
_0222ACFC: .word Unk_ov18_02251D10
_0222AD00: .word Unk_ov18_02249838
	thumb_func_end ov18_0222ACCC

	thumb_func_start ov18_0222AD04
ov18_0222AD04: ; 0x0222AD04
	push {r3, lr}
	ldr r1, _0222AD14 ; =0x02251E7C
	mov r2, #0xe8
	bl memcpy
	mov r0, #1
	pop {r3, pc}
	nop
_0222AD14: .word Unk_ov18_02251E7C
	thumb_func_end ov18_0222AD04

	thumb_func_start ov18_0222AD18
ov18_0222AD18: ; 0x0222AD18
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl ov18_0222ACCC
	ldr r1, _0222AD30 ; =0x02251D10
	add r0, sp, #0
	ldr r1, [r1, #0x7c]
	blx r1
	add sp, #0xc
	pop {pc}
	nop
_0222AD30: .word Unk_ov18_02251D10
	thumb_func_end ov18_0222AD18

	.rodata


	.global Unk_ov18_0224645C
Unk_ov18_0224645C: ; 0x0224645C
	.incbin "incbin/overlay18_rodata.bin", 0x28, 0x30 - 0x28

	.global Unk_ov18_02246464
Unk_ov18_02246464: ; 0x02246464
	.incbin "incbin/overlay18_rodata.bin", 0x30, 0x58 - 0x30

	.global Unk_ov18_0224648C
Unk_ov18_0224648C: ; 0x0224648C
	.incbin "incbin/overlay18_rodata.bin", 0x58, 0x458 - 0x58

	.global Unk_ov18_0224688C
Unk_ov18_0224688C: ; 0x0224688C
	.incbin "incbin/overlay18_rodata.bin", 0x458, 0x858 - 0x458

	.global Unk_ov18_02246C8C
Unk_ov18_02246C8C: ; 0x02246C8C
	.incbin "incbin/overlay18_rodata.bin", 0x858, 0xC58 - 0x858

	.global Unk_ov18_0224708C
Unk_ov18_0224708C: ; 0x0224708C
	.incbin "incbin/overlay18_rodata.bin", 0xC58, 0x1058 - 0xC58

	.global Unk_ov18_0224748C
Unk_ov18_0224748C: ; 0x0224748C
	.incbin "incbin/overlay18_rodata.bin", 0x1058, 0x1458 - 0x1058

	.global Unk_ov18_0224788C
Unk_ov18_0224788C: ; 0x0224788C
	.incbin "incbin/overlay18_rodata.bin", 0x1458, 0x1858 - 0x1458

	.global Unk_ov18_02247C8C
Unk_ov18_02247C8C: ; 0x02247C8C
	.incbin "incbin/overlay18_rodata.bin", 0x1858, 0x1C58 - 0x1858

	.global Unk_ov18_0224808C
Unk_ov18_0224808C: ; 0x0224808C
	.incbin "incbin/overlay18_rodata.bin", 0x1C58, 0x2058 - 0x1C58

	.global Unk_ov18_0224848C
Unk_ov18_0224848C: ; 0x0224848C
	.incbin "incbin/overlay18_rodata.bin", 0x2058, 0x2458 - 0x2058

	.global Unk_ov18_0224888C
Unk_ov18_0224888C: ; 0x0224888C
	.incbin "incbin/overlay18_rodata.bin", 0x2458, 0x400



	.data


	.global Unk_ov18_02249838
Unk_ov18_02249838: ; 0x02249838
	.incbin "incbin/overlay18_data.bin", 0xD8, 0xDC - 0xD8

	.global Unk_ov18_0224983C
Unk_ov18_0224983C: ; 0x0224983C
	.incbin "incbin/overlay18_data.bin", 0xDC, 0xE0 - 0xDC

	.global Unk_ov18_02249840
Unk_ov18_02249840: ; 0x02249840
	.incbin "incbin/overlay18_data.bin", 0xE0, 0xE4 - 0xE0

	.global Unk_ov18_02249844
Unk_ov18_02249844: ; 0x02249844
	.incbin "incbin/overlay18_data.bin", 0xE4, 0xE8 - 0xE4

	.global Unk_ov18_02249848
Unk_ov18_02249848: ; 0x02249848
	.incbin "incbin/overlay18_data.bin", 0xE8, 0xEC - 0xE8

	.global Unk_ov18_0224984C
Unk_ov18_0224984C: ; 0x0224984C
	.incbin "incbin/overlay18_data.bin", 0xEC, 0x144 - 0xEC

	.global Unk_ov18_022498A4
Unk_ov18_022498A4: ; 0x022498A4
	.incbin "incbin/overlay18_data.bin", 0x144, 0x14C - 0x144

	.global Unk_ov18_022498AC
Unk_ov18_022498AC: ; 0x022498AC
	.incbin "incbin/overlay18_data.bin", 0x14C, 0x158 - 0x14C

	.global Unk_ov18_022498B8
Unk_ov18_022498B8: ; 0x022498B8
	.incbin "incbin/overlay18_data.bin", 0x158, 0x198 - 0x158

	.global Unk_ov18_022498F8
Unk_ov18_022498F8: ; 0x022498F8
	.incbin "incbin/overlay18_data.bin", 0x198, 0x5



	.bss


	.global Unk_ov18_02251D10
Unk_ov18_02251D10: ; 0x02251D10
	.space 0x4

	.global Unk_ov18_02251D14
Unk_ov18_02251D14: ; 0x02251D14
	.space 0x4

	.global Unk_ov18_02251D18
Unk_ov18_02251D18: ; 0x02251D18
	.space 0x4

	.global Unk_ov18_02251D1C
Unk_ov18_02251D1C: ; 0x02251D1C
	.space 0x4

	.global Unk_ov18_02251D20
Unk_ov18_02251D20: ; 0x02251D20
	.space 0x4

	.global Unk_ov18_02251D24
Unk_ov18_02251D24: ; 0x02251D24
	.space 0x4

	.global Unk_ov18_02251D28
Unk_ov18_02251D28: ; 0x02251D28
	.space 0x4

	.global Unk_ov18_02251D2C
Unk_ov18_02251D2C: ; 0x02251D2C
	.space 0x4

	.global Unk_ov18_02251D30
Unk_ov18_02251D30: ; 0x02251D30
	.space 0x4

	.global Unk_ov18_02251D34
Unk_ov18_02251D34: ; 0x02251D34
	.space 0x4

	.global Unk_ov18_02251D38
Unk_ov18_02251D38: ; 0x02251D38
	.space 0x4

	.global Unk_ov18_02251D3C
Unk_ov18_02251D3C: ; 0x02251D3C
	.space 0x4

	.global Unk_ov18_02251D40
Unk_ov18_02251D40: ; 0x02251D40
	.space 0x4

	.global Unk_ov18_02251D44
Unk_ov18_02251D44: ; 0x02251D44
	.space 0x4

	.global Unk_ov18_02251D48
Unk_ov18_02251D48: ; 0x02251D48
	.space 0x4

	.global Unk_ov18_02251D4C
Unk_ov18_02251D4C: ; 0x02251D4C
	.space 0x4

	.global Unk_ov18_02251D50
Unk_ov18_02251D50: ; 0x02251D50
	.space 0x4

	.global Unk_ov18_02251D54
Unk_ov18_02251D54: ; 0x02251D54
	.space 0x4

	.global Unk_ov18_02251D58
Unk_ov18_02251D58: ; 0x02251D58
	.space 0x4

	.global Unk_ov18_02251D5C
Unk_ov18_02251D5C: ; 0x02251D5C
	.space 0x4

	.global Unk_ov18_02251D60
Unk_ov18_02251D60: ; 0x02251D60
	.space 0x4

	.global Unk_ov18_02251D64
Unk_ov18_02251D64: ; 0x02251D64
	.space 0x4

	.global Unk_ov18_02251D68
Unk_ov18_02251D68: ; 0x02251D68
	.space 0x4

	.global Unk_ov18_02251D6C
Unk_ov18_02251D6C: ; 0x02251D6C
	.space 0x4

	.global Unk_ov18_02251D70
Unk_ov18_02251D70: ; 0x02251D70
	.space 0x4

	.global Unk_ov18_02251D74
Unk_ov18_02251D74: ; 0x02251D74
	.space 0x4

	.global Unk_ov18_02251D78
Unk_ov18_02251D78: ; 0x02251D78
	.space 0x4

	.global Unk_ov18_02251D7C
Unk_ov18_02251D7C: ; 0x02251D7C
	.space 0x4

	.global Unk_ov18_02251D80
Unk_ov18_02251D80: ; 0x02251D80
	.space 0x4

	.global Unk_ov18_02251D84
Unk_ov18_02251D84: ; 0x02251D84
	.space 0x4

	.global Unk_ov18_02251D88
Unk_ov18_02251D88: ; 0x02251D88
	.space 0x4

	.global Unk_ov18_02251D8C
Unk_ov18_02251D8C: ; 0x02251D8C
	.space 0x4

	.global Unk_ov18_02251D90
Unk_ov18_02251D90: ; 0x02251D90
	.space 0x4

	.global Unk_ov18_02251D94
Unk_ov18_02251D94: ; 0x02251D94
	.space 0x10

	.global Unk_ov18_02251DA4
Unk_ov18_02251DA4: ; 0x02251DA4
	.space 0x18

	.global Unk_ov18_02251DBC
Unk_ov18_02251DBC: ; 0x02251DBC
	.space 0xC0

	.global Unk_ov18_02251E7C
Unk_ov18_02251E7C: ; 0x02251E7C
	.space 0xE8

	.global Unk_ov18_02251F64
Unk_ov18_02251F64: ; 0x02251F64
	.space 0x254

	.global Unk_ov18_022521B8
Unk_ov18_022521B8: ; 0x022521B8
	.space 0x8

	.global Unk_ov18_022521C0
Unk_ov18_022521C0: ; 0x022521C0
	.space 0x8

	.global Unk_ov18_022521C8
Unk_ov18_022521C8: ; 0x022521C8
	.space 0x8

	.global Unk_ov18_022521D0
Unk_ov18_022521D0: ; 0x022521D0
	.space 0x10

	.global Unk_ov18_022521E0
Unk_ov18_022521E0: ; 0x022521E0
	.space 0x20

	.global Unk_ov18_02252200
Unk_ov18_02252200: ; 0x02252200
	.space 0x20

	.global Unk_ov18_02252220
Unk_ov18_02252220: ; 0x02252220
	.space 0x24

	.global Unk_ov18_02252244
Unk_ov18_02252244: ; 0x02252244
	.space 0x800

	.global Unk_ov18_02252A44
Unk_ov18_02252A44: ; 0x02252A44
	.space 0x800
