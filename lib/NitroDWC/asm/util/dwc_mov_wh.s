	.include "macros/function.inc"
	.include "include/dwc_mov_wh.inc"

	

	.text


	arm_func_start ov18_02241448
ov18_02241448: ; 0x02241448
	ldr r1, _02241480 ; =0x022533A0
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r0, #0x40]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3a8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3ac]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3b0]
	bx lr
	; .align 2, 0
_02241480: .word Unk_ov18_022533A0
	arm_func_end ov18_02241448

	arm_func_start ov18_02241484
ov18_02241484: ; 0x02241484
	stmfd sp!, {r4, lr}
	ldr r1, _022414F0 ; =0x022533A0
	mov r4, r0
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _022414B8
	ldr r1, [r1, #4]
	ldr r0, _022414F4 ; =0x0224AF00
	ldr r2, [r1, #0x40]
	ldr r1, _022414F8 ; =0x0224AFE0
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
_022414B8:
	ldr r0, _022414F0 ; =0x022533A0
	ldr r1, [r0, #4]
	str r4, [r1, #0x40]
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r0, #4]
	ldr r0, _022414F4 ; =0x0224AF00
	ldr r2, [r1, #0x40]
	ldr r1, _022414FC ; =0x0224AFE8
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022414F0: .word Unk_ov18_022533A0
_022414F4: .word Unk_ov18_0224AF00
_022414F8: .word Unk_ov18_0224AFE0
_022414FC: .word Unk_ov18_0224AFE8
	arm_func_end ov18_02241484

	arm_func_start ov18_02241500
ov18_02241500: ; 0x02241500
	ldr r1, _0224151C ; =0x022533A0
	ldr r2, [r1, #4]
	ldr r1, [r2, #0x40]
	sub r1, r1, #9
	cmp r1, #1
	strhi r0, [r2, #0x54]
	bx lr
	; .align 2, 0
_0224151C: .word Unk_ov18_022533A0
	arm_func_end ov18_02241500

	arm_func_start ov18_02241520
ov18_02241520: ; 0x02241520
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r1, _0224155C ; =0x022533A0
	ldr r0, _02241560 ; =ov18_02241564
	ldr r1, [r1, #4]
	bl WM_SetParentParameter
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0224155C: .word Unk_ov18_022533A0
_02241560: .word ov18_02241564
	arm_func_end ov18_02241520

	arm_func_start ov18_02241564
ov18_02241564: ; 0x02241564
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241584
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_02241584:
	ldr r0, _022415CC ; =0x022533A0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3ac]
	cmp r0, #0
	beq _022415B4
	bl ov18_022415D0
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_022415B4:
	bl ov18_0224166C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022415CC: .word Unk_ov18_022533A0
	arm_func_end ov18_02241564

	arm_func_start ov18_022415D0
ov18_022415D0: ; 0x022415D0
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _0224162C ; =0x022533A0
	ldr r1, [r0, #4]
	add r0, r1, #0x1000
	ldr r2, [r0, #0x3ac]
	add r0, r1, #0x13c0
	blx r2
	ldr r2, _0224162C ; =0x022533A0
	mov r1, r0
	ldr r2, [r2, #4]
	ldr r0, _02241630 ; =ov18_02241634
	add r2, r2, #0x13c0
	bl WM_SetWEPKey
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0224162C: .word Unk_ov18_022533A0
_02241630: .word ov18_02241634
	arm_func_end ov18_022415D0

	arm_func_start ov18_02241634
ov18_02241634: ; 0x02241634
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241654
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_02241654:
	bl ov18_0224166C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02241634

	arm_func_start ov18_0224166C
ov18_0224166C: ; 0x0224166C
	stmfd sp!, {r3, lr}
	ldr r0, _022416C8 ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	ldmlsia sp!, {r3, pc}
	ldr r0, _022416CC ; =ov18_022416D0
	bl WM_StartParent
	cmp r0, #2
	beq _022416A8
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
_022416A8:
	ldr r1, _022416C8 ; =0x022533A0
	mov r3, #0
	ldr r2, [r1, #4]
	mov r0, #1
	strh r3, [r2, #0x50]
	ldr r1, [r1, #4]
	strh r0, [r1, #0x52]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022416C8: .word Unk_ov18_022533A0
_022416CC: .word ov18_022416D0
	arm_func_end ov18_0224166C

	arm_func_start ov18_022416D0
ov18_022416D0: ; 0x022416D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r2, [r4, #0x10]
	ldrh r0, [r4, #2]
	mov r1, #1
	mov r1, r1, lsl r2
	cmp r0, #0
	mov r5, r1, lsl #0x10
	beq _02241704
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, r4, r5, pc}
_02241704:
	ldrh ip, [r4, #8]
	cmp ip, #7
	bgt _02241734
	bge _02241740
	cmp ip, #2
	bgt _0224180C
	cmp ip, #0
	blt _0224180C
	beq _022417F4
	cmp ip, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	b _0224180C
_02241734:
	cmp ip, #9
	beq _022417BC
	b _0224180C
_02241740:
	ldr r0, _02241830 ; =0x022533A0
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0224175C
	ldr r1, _02241834 ; =0x0224AFEC
	mov r0, #0x8000000
	blx r3
_0224175C:
	ldr r0, _02241830 ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _022417A4
	mov r0, r4
	blx r1
	cmp r0, #0
	bne _022417A4
	ldrh r1, [r4, #0x10]
	mov r0, #0
	bl WM_Disconnect
	cmp r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, r4, r5, pc}
_022417A4:
	ldr r0, _02241830 ; =0x022533A0
	ldr r1, [r0, #4]
	ldrh r0, [r1, #0x52]
	orr r0, r0, r5, lsr #16
	strh r0, [r1, #0x52]
	ldmia sp!, {r3, r4, r5, pc}
_022417BC:
	ldr r0, _02241830 ; =0x022533A0
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _022417D8
	ldr r1, _02241838 ; =0x0224B018
	mov r0, #0x8000000
	blx r3
_022417D8:
	ldr r0, _02241830 ; =0x022533A0
	mvn r1, r5, lsr #16
	ldr r2, [r0, #4]
	ldrh r0, [r2, #0x52]
	and r0, r0, r1
	strh r0, [r2, #0x52]
	ldmia sp!, {r3, r4, r5, pc}
_022417F4:
	bl ov18_02241840
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, r4, r5, pc}
_0224180C:
	ldr r0, _02241830 ; =0x022533A0
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _0224183C ; =0x0224B044
	mov r2, ip
	mov r0, #0x8000000
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02241830: .word Unk_ov18_022533A0
_02241834: .word Unk_ov18_0224AFEC
_02241838: .word Unk_ov18_0224B018
_0224183C: .word Unk_ov18_0224B044
	arm_func_end ov18_022416D0

	arm_func_start ov18_02241840
ov18_02241840: ; 0x02241840
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _022418D0 ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	addls sp, sp, #8
	movls r0, #1
	ldmlsia sp!, {r3, pc}
	mov r0, #4
	bl ov18_02241484
	ldr r0, _022418D0 ; =0x022533A0
	mov ip, #1
	ldr lr, [r0, #4]
	ldr r0, _022418D4 ; =ov18_022418D8
	add r3, lr, #0x1000
	ldr r1, [r3, #0x2a0]
	add r2, lr, #0x60
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	stmia sp, {r1, ip}
	ldr r3, [r3, #0x2a4]
	add r1, r2, #0x1000
	mov r2, r3, lsl #0x10
	mov r2, r2, lsr #0x10
	add r3, lr, #0xf80
	bl WM_StartMP
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022418D0: .word Unk_ov18_022533A0
_022418D4: .word ov18_022418D8
	arm_func_end ov18_02241840

	arm_func_start ov18_022418D8
ov18_022418D8: ; 0x022418D8
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _022418FC
	mov r0, r1
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_022418FC:
	ldrh r2, [r0, #4]
	sub r0, r2, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022419D8
_02241910: ; jump table
	b _02241920 ; case 0
	ldmia sp!, {r3, pc} ; case 1
	b _022419D8 ; case 2
	b _022419D8 ; case 3
_02241920:
	ldr r0, _022419F8 ; =0x022533A0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x44]
	cmp r0, #2
	bne _02241980
	ldr r0, [r1, #0x40]
	cmp r0, #4
	bne _02241974
	bl ov18_02241A04
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022419F8 ; =0x022533A0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02241968
	ldr r1, _022419FC ; =0x0224B064
	mov r0, #0x8000000
	blx r2
_02241968:
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_02241974:
	cmp r0, #6
	bne _022419CC
	ldmia sp!, {r3, pc}
_02241980:
	cmp r0, #4
	bne _022419CC
	add r0, r1, #0x3e0
	mov ip, #1
	add r0, r0, #0x1000
	mov r1, #0xd
	mov r2, #7
	mov r3, #0x44
	str ip, [sp]
	bl WM_StartDataSharing
	cmp r0, #0
	beq _022419C0
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_022419C0:
	mov r0, #5
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_022419CC:
	mov r0, #4
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_022419D8:
	ldr r0, _022419F8 ; =0x022533A0
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _02241A00 ; =0x0224B044
	mov r0, #0x8000000
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022419F8: .word Unk_ov18_022533A0
_022419FC: .word Unk_ov18_0224B064
_02241A00: .word Unk_ov18_0224B044
	arm_func_end ov18_022418D8

	arm_func_start ov18_02241A04
ov18_02241A04: ; 0x02241A04
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl ov18_02241484
	ldr r0, _02241A3C ; =0x022533A0
	mov r1, #0xd
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_StartKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241A3C: .word Unk_ov18_022533A0
	arm_func_end ov18_02241A04

	arm_func_start ov18_02241A40
ov18_02241A40: ; 0x02241A40
	stmfd sp!, {r3, lr}
	ldr r0, _02241A6C ; =0x022533A0
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_EndKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241A6C: .word Unk_ov18_022533A0
	arm_func_end ov18_02241A40

	arm_func_start ov18_02241A70
ov18_02241A70: ; 0x02241A70
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241A9C ; =ov18_02241AA0
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241A9C: .word ov18_02241AA0
	arm_func_end ov18_02241A70

	arm_func_start ov18_02241AA0
ov18_02241AA0: ; 0x02241AA0
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241ABC
	bl ov18_02241500
	bl ov18_02242474
	ldmia sp!, {r3, pc}
_02241ABC:
	bl ov18_02241AF4
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02241AEC ; =0x022533A0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02241AE4
	ldr r1, _02241AF0 ; =0x0224B094
	mov r0, #0x8000000
	blx r2
_02241AE4:
	bl ov18_02242474
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241AEC: .word Unk_ov18_022533A0
_02241AF0: .word Unk_ov18_0224B094
	arm_func_end ov18_02241AA0

	arm_func_start ov18_02241AF4
ov18_02241AF4: ; 0x02241AF4
	stmfd sp!, {r3, lr}
	ldr r0, _02241B18 ; =ov18_02241B1C
	bl WM_EndParent
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241B18: .word ov18_02241B1C
	arm_func_end ov18_02241AF4

	arm_func_start ov18_02241B1C
ov18_02241B1C: ; 0x02241B1C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241B34
	bl ov18_02241500
	ldmia sp!, {r3, pc}
_02241B34:
	mov r0, #1
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02241B1C

	arm_func_start ov18_02241B40
ov18_02241B40: ; 0x02241B40
	stmfd sp!, {r3, lr}
	ldr r0, _02241B8C ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241B8C ; =0x022533A0
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_EndKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241B8C: .word Unk_ov18_022533A0
	arm_func_end ov18_02241B40

	arm_func_start ov18_02241B90
ov18_02241B90: ; 0x02241B90
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241BBC ; =ov18_02241BC0
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241BBC: .word ov18_02241BC0
	arm_func_end ov18_02241B90

	arm_func_start ov18_02241BC0
ov18_02241BC0: ; 0x02241BC0
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241BDC
	bl ov18_02241500
	bl ov18_02242490
	ldmia sp!, {r3, pc}
_02241BDC:
	bl ov18_02241BF4
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02241BC0

	arm_func_start ov18_02241BF4
ov18_02241BF4: ; 0x02241BF4
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241C28 ; =ov18_02241C2C
	mov r1, #0
	bl WM_Disconnect
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	bl ov18_02242474
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241C28: .word ov18_02241C2C
	arm_func_end ov18_02241BF4

	arm_func_start ov18_02241C2C
ov18_02241C2C: ; 0x02241C2C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241C44
	bl ov18_02241500
	ldmia sp!, {r3, pc}
_02241C44:
	mov r0, #1
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02241C2C

	arm_func_start ov18_02241C50
ov18_02241C50: ; 0x02241C50
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _02241C7C ; =ov18_02241C80
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241C7C: .word ov18_02241C80
	arm_func_end ov18_02241C50

	arm_func_start ov18_02241C80
ov18_02241C80: ; 0x02241C80
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02241CA8
	mov r0, #9
	bl ov18_02241484
	ldrh r0, [r4, #2]
	bl ov18_02241500
	ldmia sp!, {r4, pc}
_02241CA8:
	mov r0, #1
	bl ov18_02241484
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02241C80

	arm_func_start ov18_02241CB4
ov18_02241CB4: ; 0x02241CB4
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02241CD0
	mov r0, #0xa
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_02241CD0:
	mov r0, #0
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02241CB4

	arm_func_start ov18_02241CDC
ov18_02241CDC: ; 0x02241CDC
	ldr r1, _02241CEC ; =0x022533A0
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
_02241CEC: .word Unk_ov18_022533A0
	arm_func_end ov18_02241CDC

	arm_func_start ov18_02241CF0
ov18_02241CF0: ; 0x02241CF0
	ldr r0, _02241D00 ; =0x022533A0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x52]
	bx lr
	; .align 2, 0
_02241D00: .word Unk_ov18_022533A0
	arm_func_end ov18_02241CF0

	arm_func_start ov18_02241D04
ov18_02241D04: ; 0x02241D04
	ldr r0, _02241D14 ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bx lr
	; .align 2, 0
_02241D14: .word Unk_ov18_022533A0
	arm_func_end ov18_02241D04

	arm_func_start ov18_02241D18
ov18_02241D18: ; 0x02241D18
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl OS_GetMacAddress
	ldr r2, _02241DE4 ; =0x027FFC3C
	ldrh r0, [sp]
	ldr r3, [r2, #0]
	ldrh r2, [sp, #2]
	add r0, r0, r3
	ldr r1, _02241DE8 ; =0x022533A0
	add r2, r2, r0
	ldrh r3, [sp, #4]
	ldr r0, [r1, #4]
	add r2, r3, r2
	str r2, [r0, #0x58]
	ldr ip, [r1, #4]
	ldr r0, _02241DEC ; =0x00010DCD
	ldr r2, [ip, #0x58]
	mov r3, #0
	mul r0, r2, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [ip, #0x58]
	ldr r0, [r1, #4]
	mov r2, #0x65
	strh r3, [r0, #0x5c]
	ldr r1, [r1, #4]
	mov r0, #3
	strh r2, [r1, #0x5e]
	bl ov18_02241484
	mov r0, #1
	bl ov18_02241DF0
	cmp r0, #0x18
	bne _02241DBC
	mov r0, #0x18
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, pc}
_02241DBC:
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241DE4: .word 0x027FFC3C
_02241DE8: .word Unk_ov18_022533A0
_02241DEC: .word 0x00010DCD
	arm_func_end ov18_02241D18

	arm_func_start ov18_02241DF0
ov18_02241DF0: ; 0x02241DF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _02241E1C
	mov r0, #3
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #3
	ldmia sp!, {r4, pc}
_02241E1C:
	cmp r0, #0
	bne _02241E3C
	mov r0, #0x16
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	mov r0, #0x18
	ldmia sp!, {r4, pc}
_02241E3C:
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _02241E70
_02241E4C:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #0x10
	movhi r0, #0x18
	ldmhiia sp!, {r4, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _02241E4C
_02241E70:
	ldr r0, _02241E88 ; =ov18_02241E8C
	mov r1, r4
	bl ov18_02241F64
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02241E88: .word ov18_02241E8C
	arm_func_end ov18_02241DF0

	arm_func_start ov18_02241E8C
ov18_02241E8C: ; 0x02241E8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02241EB0
	bl ov18_02241500
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r4, pc}
_02241EB0:
	ldr r0, _02241F5C ; =0x022533A0
	ldr ip, [r0]
	cmp ip, #0
	beq _02241ED4
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r1, _02241F60 ; =0x0224B0EC
	mov r0, #0x8000000
	blx ip
_02241ED4:
	ldr r0, _02241F5C ; =0x022533A0
	ldrh r2, [r4, #0xa]
	ldr r3, [r0, #4]
	ldrh ip, [r4, #8]
	ldrh r1, [r3, #0x5e]
	cmp r1, r2
	bls _02241F0C
	strh r2, [r3, #0x5e]
	sub r1, ip, #1
	mov r2, #1
	mov r1, r2, lsl r1
	ldr r0, [r0, #4]
	strh r1, [r0, #0x60]
	b _02241F24
_02241F0C:
	bne _02241F24
	ldrh r2, [r3, #0x60]
	sub r0, ip, #1
	mov r1, #1
	orr r0, r2, r1, lsl r0
	strh r0, [r3, #0x60]
_02241F24:
	add r0, ip, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov18_02241DF0
	cmp r0, #0x18
	bne _02241F48
	mov r0, #7
	bl ov18_02241484
	ldmia sp!, {r4, pc}
_02241F48:
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	mov r0, #9
	bl ov18_02241484
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02241F5C: .word Unk_ov18_022533A0
_02241F60: .word Unk_ov18_0224B0EC
	arm_func_end ov18_02241E8C

	arm_func_start ov18_02241F64
ov18_02241F64: ; 0x02241F64
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov ip, #0x1e
	mov r1, #3
	mov r2, #0x11
	str ip, [sp]
	bl WM_MeasureChannel
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02241F64

	arm_func_start ov18_02241F84
ov18_02241F84: ; 0x02241F84
	stmfd sp!, {r3, lr}
	ldr r0, _02241FF4 ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #7
	beq _02241FA0
	bl OS_Terminate
_02241FA0:
	mov r0, #1
	bl ov18_02241484
	ldr r0, _02241FF4 ; =0x022533A0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x60]
	bl ov18_02241FFC
	ldr r1, _02241FF4 ; =0x022533A0
	ldr r2, [r1, #4]
	strh r0, [r2, #0x5c]
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _02241FE4
	ldr r0, [r1, #4]
	ldr r1, _02241FF8 ; =0x0224B104
	ldrh r2, [r0, #0x5c]
	mov r0, #0x8000000
	blx r3
_02241FE4:
	ldr r0, _02241FF4 ; =0x022533A0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x5c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02241FF4: .word Unk_ov18_022533A0
_02241FF8: .word Unk_ov18_0224B104
	arm_func_end ov18_02241F84

	arm_func_start ov18_02241FFC
ov18_02241FFC: ; 0x02241FFC
	stmfd sp!, {r4, lr}
	mov r3, #0
	mov r1, r3
	mov ip, r3
	mov r4, #1
_02242010:
	tst r0, r4, lsl ip
	beq _02242030
	add r3, ip, #1
	add r2, r1, #1
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, asr #0x10
	mov r1, r2, lsr #0x10
_02242030:
	add r2, ip, #1
	mov r2, r2, lsl #0x10
	mov ip, r2, asr #0x10
	cmp ip, #0x10
	blt _02242010
	cmp r1, #1
	movls r0, r3
	ldmlsia sp!, {r4, pc}
	ldr ip, _022420DC ; =0x022533A0
	ldr r3, _022420E0 ; =0x00010DCD
	ldr r4, [ip, #4]
	mov r2, #0
	ldr lr, [r4, #0x58]
	mul r3, lr, r3
	add r3, r3, #0x39
	add r3, r3, #0x3000
	str r3, [r4, #0x58]
	ldr r3, [ip, #4]
	ldr r3, [r3, #0x58]
	and r3, r3, #0xff
	mul r3, r1, r3
	mov r1, r3, lsl #8
	mov r3, r1, lsr #0x10
_0224208C:
	tst r0, #1
	beq _022420B8
	cmp r3, #0
	bne _022420AC
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldmia sp!, {r4, pc}
_022420AC:
	sub r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_022420B8:
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0xf
	mov r2, r1, asr #0x10
	cmp r2, #0x10
	mov r0, r0, lsr #0x10
	blt _0224208C
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022420DC: .word Unk_ov18_022533A0
_022420E0: .word 0x00010DCD
	arm_func_end ov18_02241FFC

	arm_func_start ov18_022420E4
ov18_022420E4: ; 0x022420E4
	stmfd sp!, {r3, lr}
	ldr r2, _02242158 ; =0x022533A0
	mov r0, #0
	ldr r1, [r2, #4]
	mov r3, #1
	add r1, r1, #0x1000
	str r0, [r1, #0x2a4]
	ldr r1, [r2, #4]
	add r1, r1, #0x1000
	str r0, [r1, #0x2a0]
	ldr r1, [r2, #4]
	str r0, [r1, #0x48]
	ldr r1, [r2, #4]
	strh r0, [r1, #0x50]
	ldr r1, [r2, #4]
	strh r3, [r1, #0x52]
	ldr r1, [r2, #4]
	str r0, [r1, #0x54]
	ldr r1, [r2, #4]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	strh r0, [r1, #4]
	ldr r1, [r2, #4]
	str r0, [r1, #0x4c]
	bl ov18_0224217C
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242158: .word Unk_ov18_022533A0
	arm_func_end ov18_022420E4

	arm_func_start ov18_0224215C
ov18_0224215C: ; 0x0224215C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_02241484
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0224215C

	arm_func_start ov18_0224217C
ov18_0224217C: ; 0x0224217C
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl ov18_02241484
	ldr r0, _022421C0 ; =0x022533A0
	ldr r1, _022421C4 ; =ov18_022421C8
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, r0, #0x80
	bl WM_Initialize
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_02241500
	mov r0, #0xa
	bl ov18_02241484
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022421C0: .word Unk_ov18_022533A0
_022421C4: .word ov18_022421C8
	arm_func_end ov18_0224217C

	arm_func_start ov18_022421C8
ov18_022421C8: ; 0x022421C8
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _022421E8
	bl ov18_02241500
	mov r0, #0xa
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_022421E8:
	ldr r0, _02242214 ; =ov18_0224215C
	bl WM_SetIndCallback
	cmp r0, #0
	beq _02242208
	bl ov18_02241500
	mov r0, #0xa
	bl ov18_02241484
	ldmia sp!, {r3, pc}
_02242208:
	mov r0, #1
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242214: .word ov18_0224215C
	arm_func_end ov18_022421C8

	arm_func_start ov18_02242218
ov18_02242218: ; 0x02242218
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _02242380 ; =0x022533A0
	mov r6, r0
	ldr r0, [r3, #4]
	mov r5, r1
	ldr r0, [r0, #0x40]
	mov r4, r2
	cmp r0, #1
	beq _02242244
	bl OS_Terminate
	movs r0, #0
_02242244:
	ldr r1, _02242380 ; =0x022533A0
	mov r3, #0x180
	ldr r0, [r1, #4]
	mov r2, #0xe0
	add r0, r0, #0x1000
	str r3, [r0, #0x2a4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2a0]
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _0224228C
	ldr r0, [r1, #4]
	ldr r1, _02242384 ; =0x0224B0BC
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a4]
	mov r0, #0x8000000
	blx r3
_0224228C:
	ldr r0, _02242380 ; =0x022533A0
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _022422B4
	ldr r0, [r0, #4]
	ldr r1, _02242388 ; =0x0224B0D4
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a0]
	mov r0, #0x8000000
	blx r3
_022422B4:
	ldr r1, _02242380 ; =0x022533A0
	mov r0, #3
	ldr r1, [r1, #4]
	str r6, [r1, #0x44]
	bl ov18_02241484
	ldr r0, _02242380 ; =0x022533A0
	ldr r1, [r0, #4]
	strh r5, [r1, #0xc]
	ldr r0, [r0, #4]
	strh r4, [r0, #0x32]
	bl WM_GetDispersionBeaconPeriod
	ldr r1, _02242380 ; =0x022533A0
	mov r2, #0xd0
	ldr r3, [r1, #4]
	mov r4, #0x44
	strh r0, [r3, #0x18]
	ldr r0, [r1, #4]
	mov r3, #2
	strh r2, [r0, #0x34]
	ldr r0, [r1, #4]
	mov r2, #0
	strh r4, [r0, #0x36]
	ldr r0, [r1, #4]
	mov r4, #1
	strh r3, [r0, #0x10]
	ldr r0, [r1, #4]
	cmp r6, #2
	strh r2, [r0, #0x16]
	ldr r0, [r1, #4]
	strh r2, [r0, #0x12]
	ldr r0, [r1, #4]
	strh r4, [r0, #0xe]
	ldr r0, _02242380 ; =0x022533A0
	movne r4, r2
	ldr r1, [r0, #4]
	cmp r6, #0
	cmpne r6, #2
	strh r4, [r1, #0x14]
	cmpne r6, #4
	bne _0224235C
	bl ov18_02241520
	ldmia sp!, {r4, r5, r6, pc}
_0224235C:
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02242378
	ldr r1, _0224238C ; =0x0224B11C
	mov r2, r6
	mov r0, #0x8000000
	blx r3
_02242378:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02242380: .word Unk_ov18_022533A0
_02242384: .word Unk_ov18_0224B0BC
_02242388: .word Unk_ov18_0224B0D4
_0224238C: .word Unk_ov18_0224B11C
	arm_func_end ov18_02242218

	arm_func_start ov18_02242390
ov18_02242390: ; 0x02242390
	ldr r1, _022423A0 ; =0x022533A0
	ldr r1, [r1, #4]
	str r0, [r1, #0x4c]
	bx lr
	; .align 2, 0
_022423A0: .word Unk_ov18_022533A0
	arm_func_end ov18_02242390

	arm_func_start ov18_022423A4
ov18_022423A4: ; 0x022423A4
	ldr r1, _022423C4 ; =0x022533A0
	ldr ip, _022423C8 ; =WM_GetSharedDataAddress
	ldr r1, [r1, #4]
	mov r2, r0
	add r0, r1, #0x3e0
	add r0, r0, #0x1000
	add r1, r1, #0x1c00
	bx ip
	; .align 2, 0
_022423C4: .word Unk_ov18_022533A0
_022423C8: .word WM_GetSharedDataAddress
	arm_func_end ov18_022423A4

	arm_func_start ov18_022423CC
ov18_022423CC: ; 0x022423CC
	stmfd sp!, {r4, lr}
	ldr r2, _02242468 ; =0x022533A0
	mov r1, r0
	ldr r2, [r2, #4]
	add r0, r2, #0x3e0
	add r0, r0, #0x1000
	add r2, r2, #0x1c00
	bl WM_StepDataSharing
	mov r4, r0
	cmp r4, #7
	bne _0224241C
	ldr r0, _02242468 ; =0x022533A0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02242414
	ldr r1, _0224246C ; =0x0224B138
	mov r0, #0x8000000
	blx r2
_02242414:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0224241C:
	cmp r4, #5
	bne _02242450
	ldr r0, _02242468 ; =0x022533A0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02242440
	ldr r1, _02242470 ; =0x0224B168
	mov r0, #0x8000000
	blx r2
_02242440:
	mov r0, r4
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r4, pc}
_02242450:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	bl ov18_02241500
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02242468: .word Unk_ov18_022533A0
_0224246C: .word Unk_ov18_0224B138
_02242470: .word Unk_ov18_0224B168
	arm_func_end ov18_022423CC

	arm_func_start ov18_02242474
ov18_02242474: ; 0x02242474
	stmfd sp!, {r3, lr}
	bl ov18_02241C50
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0xa
	bl ov18_02241484
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02242474

	arm_func_start ov18_02242490
ov18_02242490: ; 0x02242490
	stmfd sp!, {r3, lr}
	ldr r0, _0224258C ; =0x022533A0
	ldr r1, [r0, #4]
	ldr r2, [r1, #0x40]
	cmp r2, #1
	bne _022424C4
	ldr r2, [r0, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _02242590 ; =0x0224B19C
	mov r0, #0x8000000
	blx r2
	ldmia sp!, {r3, pc}
_022424C4:
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _022424DC
	ldr r1, _02242594 ; =0x0224B1C0
	mov r0, #0x8000000
	blx r3
_022424DC:
	ldr r0, _0224258C ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	cmpne r0, #5
	cmpne r0, #4
	mov r0, #3
	beq _02242508
	bl ov18_02241484
	bl ov18_02242474
	ldmia sp!, {r3, pc}
_02242508:
	bl ov18_02241484
	ldr r0, _0224258C ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_02242524: ; jump table
	b _02242578 ; case 0
	b _02242550 ; case 1
	b _02242564 ; case 2
	b _0224253C ; case 3
	b _02242578 ; case 4
	b _02242550 ; case 5
_0224253C:
	bl ov18_02241B40
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_02242474
	ldmia sp!, {r3, pc}
_02242550:
	bl ov18_02241B90
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_02242474
	ldmia sp!, {r3, pc}
_02242564:
	bl ov18_02241A40
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_02242474
	ldmia sp!, {r3, pc}
_02242578:
	bl ov18_02241A70
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_02242474
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0224258C: .word Unk_ov18_022533A0
_02242590: .word Unk_ov18_0224B19C
_02242594: .word Unk_ov18_0224B1C0
	arm_func_end ov18_02242490

	arm_func_start ov18_02242598
ov18_02242598: ; 0x02242598
	stmfd sp!, {r3, lr}
	ldr r0, _022425E0 ; =0x022533A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _022425B4
	bl OS_Terminate
_022425B4:
	mov r0, #3
	bl ov18_02241484
	ldr r0, _022425E4 ; =ov18_02241CB4
	bl WM_End
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	mov r0, #9
	bl ov18_02241484
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022425E0: .word Unk_ov18_022533A0
_022425E4: .word ov18_02241CB4
	arm_func_end ov18_02242598

	.data


	.global Unk_ov18_0224A934
Unk_ov18_0224A934: ; 0x0224A934
	.incbin "incbin/overlay18_data.bin", 0x11D4, 0x11D8 - 0x11D4

	.global Unk_ov18_0224A938
Unk_ov18_0224A938: ; 0x0224A938
	.incbin "incbin/overlay18_data.bin", 0x11D8, 0x11EC - 0x11D8

	.global Unk_ov18_0224A94C
Unk_ov18_0224A94C: ; 0x0224A94C
	.incbin "incbin/overlay18_data.bin", 0x11EC, 0x1200 - 0x11EC

	.global Unk_ov18_0224A960
Unk_ov18_0224A960: ; 0x0224A960
	.incbin "incbin/overlay18_data.bin", 0x1200, 0x1214 - 0x1200

	.global Unk_ov18_0224A974
Unk_ov18_0224A974: ; 0x0224A974
	.incbin "incbin/overlay18_data.bin", 0x1214, 0x1228 - 0x1214

	.global Unk_ov18_0224A988
Unk_ov18_0224A988: ; 0x0224A988
	.incbin "incbin/overlay18_data.bin", 0x1228, 0x123C - 0x1228

	.global Unk_ov18_0224A99C
Unk_ov18_0224A99C: ; 0x0224A99C
	.incbin "incbin/overlay18_data.bin", 0x123C, 0x1250 - 0x123C

	.global Unk_ov18_0224A9B0
Unk_ov18_0224A9B0: ; 0x0224A9B0
	.incbin "incbin/overlay18_data.bin", 0x1250, 0x1264 - 0x1250

	.global Unk_ov18_0224A9C4
Unk_ov18_0224A9C4: ; 0x0224A9C4
	.incbin "incbin/overlay18_data.bin", 0x1264, 0x1278 - 0x1264

	.global Unk_ov18_0224A9D8
Unk_ov18_0224A9D8: ; 0x0224A9D8
	.incbin "incbin/overlay18_data.bin", 0x1278, 0x1290 - 0x1278

	.global Unk_ov18_0224A9F0
Unk_ov18_0224A9F0: ; 0x0224A9F0
	.incbin "incbin/overlay18_data.bin", 0x1290, 0x12A8 - 0x1290

	.global Unk_ov18_0224AA08
Unk_ov18_0224AA08: ; 0x0224AA08
	.incbin "incbin/overlay18_data.bin", 0x12A8, 0x12C0 - 0x12A8

	.global Unk_ov18_0224AA20
Unk_ov18_0224AA20: ; 0x0224AA20
	.incbin "incbin/overlay18_data.bin", 0x12C0, 0x12D8 - 0x12C0

	.global Unk_ov18_0224AA38
Unk_ov18_0224AA38: ; 0x0224AA38
	.incbin "incbin/overlay18_data.bin", 0x12D8, 0x12F0 - 0x12D8

	.global Unk_ov18_0224AA50
Unk_ov18_0224AA50: ; 0x0224AA50
	.incbin "incbin/overlay18_data.bin", 0x12F0, 0x1308 - 0x12F0

	.global Unk_ov18_0224AA68
Unk_ov18_0224AA68: ; 0x0224AA68
	.incbin "incbin/overlay18_data.bin", 0x1308, 0x1320 - 0x1308

	.global Unk_ov18_0224AA80
Unk_ov18_0224AA80: ; 0x0224AA80
	.incbin "incbin/overlay18_data.bin", 0x1320, 0x1338 - 0x1320

	.global Unk_ov18_0224AA98
Unk_ov18_0224AA98: ; 0x0224AA98
	.incbin "incbin/overlay18_data.bin", 0x1338, 0x1350 - 0x1338

	.global Unk_ov18_0224AAB0
Unk_ov18_0224AAB0: ; 0x0224AAB0
	.incbin "incbin/overlay18_data.bin", 0x1350, 0x1368 - 0x1350

	.global Unk_ov18_0224AAC8
Unk_ov18_0224AAC8: ; 0x0224AAC8
	.incbin "incbin/overlay18_data.bin", 0x1368, 0x1380 - 0x1368

	.global Unk_ov18_0224AAE0
Unk_ov18_0224AAE0: ; 0x0224AAE0
	.incbin "incbin/overlay18_data.bin", 0x1380, 0x1398 - 0x1380

	.global Unk_ov18_0224AAF8
Unk_ov18_0224AAF8: ; 0x0224AAF8
	.incbin "incbin/overlay18_data.bin", 0x1398, 0x13B0 - 0x1398

	.global Unk_ov18_0224AB10
Unk_ov18_0224AB10: ; 0x0224AB10
	.incbin "incbin/overlay18_data.bin", 0x13B0, 0x13C8 - 0x13B0

	.global Unk_ov18_0224AB28
Unk_ov18_0224AB28: ; 0x0224AB28
	.incbin "incbin/overlay18_data.bin", 0x13C8, 0x13E0 - 0x13C8

	.global Unk_ov18_0224AB40
Unk_ov18_0224AB40: ; 0x0224AB40
	.incbin "incbin/overlay18_data.bin", 0x13E0, 0x13F8 - 0x13E0

	.global Unk_ov18_0224AB58
Unk_ov18_0224AB58: ; 0x0224AB58
	.incbin "incbin/overlay18_data.bin", 0x13F8, 0x1414 - 0x13F8

	.global Unk_ov18_0224AB74
Unk_ov18_0224AB74: ; 0x0224AB74
	.incbin "incbin/overlay18_data.bin", 0x1414, 0x1430 - 0x1414

	.global Unk_ov18_0224AB90
Unk_ov18_0224AB90: ; 0x0224AB90
	.incbin "incbin/overlay18_data.bin", 0x1430, 0x144C - 0x1430

	.global Unk_ov18_0224ABAC
Unk_ov18_0224ABAC: ; 0x0224ABAC
	.incbin "incbin/overlay18_data.bin", 0x144C, 0x1468 - 0x144C

	.global Unk_ov18_0224ABC8
Unk_ov18_0224ABC8: ; 0x0224ABC8
	.incbin "incbin/overlay18_data.bin", 0x1468, 0x1484 - 0x1468

	.global Unk_ov18_0224ABE4
Unk_ov18_0224ABE4: ; 0x0224ABE4
	.incbin "incbin/overlay18_data.bin", 0x1484, 0x14A0 - 0x1484

	.global Unk_ov18_0224AC00
Unk_ov18_0224AC00: ; 0x0224AC00
	.incbin "incbin/overlay18_data.bin", 0x14A0, 0x14BC - 0x14A0

	.global Unk_ov18_0224AC1C
Unk_ov18_0224AC1C: ; 0x0224AC1C
	.incbin "incbin/overlay18_data.bin", 0x14BC, 0x14D8 - 0x14BC

	.global Unk_ov18_0224AC38
Unk_ov18_0224AC38: ; 0x0224AC38
	.incbin "incbin/overlay18_data.bin", 0x14D8, 0x14F4 - 0x14D8

	.global Unk_ov18_0224AC54
Unk_ov18_0224AC54: ; 0x0224AC54
	.incbin "incbin/overlay18_data.bin", 0x14F4, 0x1510 - 0x14F4

	.global Unk_ov18_0224AC70
Unk_ov18_0224AC70: ; 0x0224AC70
	.incbin "incbin/overlay18_data.bin", 0x1510, 0x152C - 0x1510

	.global Unk_ov18_0224AC8C
Unk_ov18_0224AC8C: ; 0x0224AC8C
	.incbin "incbin/overlay18_data.bin", 0x152C, 0x1548 - 0x152C

	.global Unk_ov18_0224ACA8
Unk_ov18_0224ACA8: ; 0x0224ACA8
	.incbin "incbin/overlay18_data.bin", 0x1548, 0x1564 - 0x1548

	.global Unk_ov18_0224ACC4
Unk_ov18_0224ACC4: ; 0x0224ACC4
	.incbin "incbin/overlay18_data.bin", 0x1564, 0x1580 - 0x1564

	.global Unk_ov18_0224ACE0
Unk_ov18_0224ACE0: ; 0x0224ACE0
	.incbin "incbin/overlay18_data.bin", 0x1580, 0x159C - 0x1580

	.global Unk_ov18_0224ACFC
Unk_ov18_0224ACFC: ; 0x0224ACFC
	.incbin "incbin/overlay18_data.bin", 0x159C, 0x15B8 - 0x159C

	.global Unk_ov18_0224AD18
Unk_ov18_0224AD18: ; 0x0224AD18
	.incbin "incbin/overlay18_data.bin", 0x15B8, 0x15D4 - 0x15B8

	.global Unk_ov18_0224AD34
Unk_ov18_0224AD34: ; 0x0224AD34
	.incbin "incbin/overlay18_data.bin", 0x15D4, 0x15F0 - 0x15D4

	.global Unk_ov18_0224AD50
Unk_ov18_0224AD50: ; 0x0224AD50
	.incbin "incbin/overlay18_data.bin", 0x15F0, 0x160C - 0x15F0

	.global Unk_ov18_0224AD6C
Unk_ov18_0224AD6C: ; 0x0224AD6C
	.incbin "incbin/overlay18_data.bin", 0x160C, 0x1628 - 0x160C

	.global Unk_ov18_0224AD88
Unk_ov18_0224AD88: ; 0x0224AD88
	.incbin "incbin/overlay18_data.bin", 0x1628, 0x1648 - 0x1628

	.global Unk_ov18_0224ADA8
Unk_ov18_0224ADA8: ; 0x0224ADA8
	.incbin "incbin/overlay18_data.bin", 0x1648, 0x1668 - 0x1648

	.global Unk_ov18_0224ADC8
Unk_ov18_0224ADC8: ; 0x0224ADC8
	.incbin "incbin/overlay18_data.bin", 0x1668, 0x1688 - 0x1668

	.global Unk_ov18_0224ADE8
Unk_ov18_0224ADE8: ; 0x0224ADE8
	.incbin "incbin/overlay18_data.bin", 0x1688, 0x16A8 - 0x1688

	.global Unk_ov18_0224AE08
Unk_ov18_0224AE08: ; 0x0224AE08
	.incbin "incbin/overlay18_data.bin", 0x16A8, 0x16C8 - 0x16A8

	.global Unk_ov18_0224AE28
Unk_ov18_0224AE28: ; 0x0224AE28
	.incbin "incbin/overlay18_data.bin", 0x16C8, 0x16E8 - 0x16C8

	.global Unk_ov18_0224AE48
Unk_ov18_0224AE48: ; 0x0224AE48
	.incbin "incbin/overlay18_data.bin", 0x16E8, 0x170C - 0x16E8

	.global Unk_ov18_0224AE6C
Unk_ov18_0224AE6C: ; 0x0224AE6C
	.incbin "incbin/overlay18_data.bin", 0x170C, 0x1730 - 0x170C

	.global Unk_ov18_0224AE90
Unk_ov18_0224AE90: ; 0x0224AE90
	.incbin "incbin/overlay18_data.bin", 0x1730, 0x1754 - 0x1730

	.global Unk_ov18_0224AEB4
Unk_ov18_0224AEB4: ; 0x0224AEB4
	.incbin "incbin/overlay18_data.bin", 0x1754, 0x1778 - 0x1754

	.global Unk_ov18_0224AED8
Unk_ov18_0224AED8: ; 0x0224AED8
	.incbin "incbin/overlay18_data.bin", 0x1778, 0x17A0 - 0x1778

	.global Unk_ov18_0224AF00
Unk_ov18_0224AF00: ; 0x0224AF00
	.incbin "incbin/overlay18_data.bin", 0x17A0, 0x17C8 - 0x17A0

	.global Unk_ov18_0224AF28
Unk_ov18_0224AF28: ; 0x0224AF28
	.incbin "incbin/overlay18_data.bin", 0x17C8, 0x1824 - 0x17C8

	.global Unk_ov18_0224AF84
Unk_ov18_0224AF84: ; 0x0224AF84
	.incbin "incbin/overlay18_data.bin", 0x1824, 0x1880 - 0x1824

	.global Unk_ov18_0224AFE0
Unk_ov18_0224AFE0: ; 0x0224AFE0
	.incbin "incbin/overlay18_data.bin", 0x1880, 0x1888 - 0x1880

	.global Unk_ov18_0224AFE8
Unk_ov18_0224AFE8: ; 0x0224AFE8
	.incbin "incbin/overlay18_data.bin", 0x1888, 0x188C - 0x1888

	.global Unk_ov18_0224AFEC
Unk_ov18_0224AFEC: ; 0x0224AFEC
	.incbin "incbin/overlay18_data.bin", 0x188C, 0x18B8 - 0x188C

	.global Unk_ov18_0224B018
Unk_ov18_0224B018: ; 0x0224B018
	.incbin "incbin/overlay18_data.bin", 0x18B8, 0x18E4 - 0x18B8

	.global Unk_ov18_0224B044
Unk_ov18_0224B044: ; 0x0224B044
	.incbin "incbin/overlay18_data.bin", 0x18E4, 0x1904 - 0x18E4

	.global Unk_ov18_0224B064
Unk_ov18_0224B064: ; 0x0224B064
	.incbin "incbin/overlay18_data.bin", 0x1904, 0x1934 - 0x1904

	.global Unk_ov18_0224B094
Unk_ov18_0224B094: ; 0x0224B094
	.incbin "incbin/overlay18_data.bin", 0x1934, 0x195C - 0x1934

	.global Unk_ov18_0224B0BC
Unk_ov18_0224B0BC: ; 0x0224B0BC
	.incbin "incbin/overlay18_data.bin", 0x195C, 0x1974 - 0x195C

	.global Unk_ov18_0224B0D4
Unk_ov18_0224B0D4: ; 0x0224B0D4
	.incbin "incbin/overlay18_data.bin", 0x1974, 0x198C - 0x1974

	.global Unk_ov18_0224B0EC
Unk_ov18_0224B0EC: ; 0x0224B0EC
	.incbin "incbin/overlay18_data.bin", 0x198C, 0x19A4 - 0x198C

	.global Unk_ov18_0224B104
Unk_ov18_0224B104: ; 0x0224B104
	.incbin "incbin/overlay18_data.bin", 0x19A4, 0x19BC - 0x19A4

	.global Unk_ov18_0224B11C
Unk_ov18_0224B11C: ; 0x0224B11C
	.incbin "incbin/overlay18_data.bin", 0x19BC, 0x19D8 - 0x19BC

	.global Unk_ov18_0224B138
Unk_ov18_0224B138: ; 0x0224B138
	.incbin "incbin/overlay18_data.bin", 0x19D8, 0x1A08 - 0x19D8

	.global Unk_ov18_0224B168
Unk_ov18_0224B168: ; 0x0224B168
	.incbin "incbin/overlay18_data.bin", 0x1A08, 0x1A3C - 0x1A08

	.global Unk_ov18_0224B19C
Unk_ov18_0224B19C: ; 0x0224B19C
	.incbin "incbin/overlay18_data.bin", 0x1A3C, 0x1A60 - 0x1A3C

	.global Unk_ov18_0224B1C0
Unk_ov18_0224B1C0: ; 0x0224B1C0
	.incbin "incbin/overlay18_data.bin", 0x1A60, 0x22



	.bss


	.global Unk_ov18_022533A0
Unk_ov18_022533A0: ; 0x022533A0
	.space 0x4

	.global Unk_ov18_022533A4
Unk_ov18_022533A4: ; 0x022533A4
	.space 0x4

