	.include "macros/function.inc"
	.include "include/ov18_0223D8DC.inc"

	

	.text


	arm_func_start ov18_0223D8DC
ov18_0223D8DC: ; 0x0223D8DC
	stmfd sp!, {r3, lr}
	ldr r0, _0223D908 ; =0x02253380
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223D90C ; =0x00001E60
	mov r1, #0x20
	bl ov18_02245068
	ldr r1, _0223D908 ; =0x02253380
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D908: .word 0x02253380
_0223D90C: .word 0x00001E60
	arm_func_end ov18_0223D8DC

	arm_func_start ov18_0223D910
ov18_0223D910: ; 0x0223D910
	stmfd sp!, {r3, lr}
	ldr r0, _0223D93C ; =0x02253380
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_0223D924:
	bl sub_020CE7F4
	cmp r0, #0x8000
	bne _0223D924
	ldr r0, _0223D940 ; =0x02253380
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D93C: .word 0x02253380
_0223D940: .word 0x02253380
	arm_func_end ov18_0223D910

	arm_func_start ov18_0223D944
ov18_0223D944: ; 0x0223D944
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0223DA04 ; =0x02253380
	mov r0, #0
	ldr r1, [r1, #0]
	mov r2, #0x348
	add r1, r1, #0x1300
	bl sub_020C4AF0
	ldr r0, _0223DA04 ; =0x02253380
	ldr r1, _0223DA08 ; =ov18_0223DB3C
	ldr r0, [r0, #0]
	mov r2, #3
	bl sub_020CECC8
	cmp r0, #2
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r4, _0223DA04 ; =0x02253380
_0223D984:
	ldr r0, [r4, #0]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl sub_020CE594
	ldr ip, [r4]
	add r0, ip, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _0223D984
	add r0, ip, #0x248
	ldr r5, _0223DA0C ; =0x02249580
	add lr, r0, #0x1400
	mov r4, #4
_0223D9B8:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0223D9B8
	ldr r0, [r5, #0]
	add r1, ip, #0xf00
	str r0, [lr]
	add r0, ip, #0x1000
	str r1, [r0, #0x648]
	bl sub_020CE934
	ldr r1, _0223DA04 ; =0x02253380
	ldr r1, [r1, #0]
	add r1, r1, #0x1600
	strh r0, [r1, #0x50]
	bl ov18_0223DA10
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223DA04: .word 0x02253380
_0223DA08: .word ov18_0223DB3C
_0223DA0C: .word 0x02249580
	arm_func_end ov18_0223D944

	arm_func_start ov18_0223DA10
ov18_0223DA10: ; 0x0223DA10
	stmfd sp!, {r3, lr}
	ldr r1, _0223DA3C ; =0x02253380
	ldr r0, _0223DA40 ; =ov18_0223DB3C
	ldr r1, [r1, #0]
	add r1, r1, #0x248
	add r1, r1, #0x1400
	bl sub_020CF08C
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223DA3C: .word 0x02253380
_0223DA40: .word ov18_0223DB3C
	arm_func_end ov18_0223DA10

	arm_func_start ov18_0223DA44
ov18_0223DA44: ; 0x0223DA44
	stmfd sp!, {r4, lr}
	ldr r1, _0223DAD8 ; =0x02253380
	mov r2, #1
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	strb r2, [r0, #0xe5c]
	ldr r0, [r1, #0]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl sub_020CE594
	ldr r0, _0223DAD8 ; =0x02253380
	ldr r0, [r0, #0]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	beq _0223DAC0
	ldr r0, _0223DADC ; =ov18_0223DB3C
	bl sub_020CED50
	cmp r0, #2
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r4, _0223DAD8 ; =0x02253380
_0223DA9C:
	ldr r0, [r4, #0]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl sub_020CE594
	ldr r0, [r4, #0]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _0223DA9C
_0223DAC0:
	ldr r0, _0223DADC ; =ov18_0223DB3C
	bl sub_020CED88
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223DAD8: .word 0x02253380
_0223DADC: .word ov18_0223DB3C
	arm_func_end ov18_0223DA44

	arm_func_start ov18_0223DAE0
ov18_0223DAE0: ; 0x0223DAE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0223DB34 ; =0x02253380
	mov r6, #0
	ldr r1, [r1, #0]
	ldr r5, _0223DB38 ; =0x02249578
	add r8, r1, #0x1300
	mov r7, r6
	str r8, [r0]
	mov r4, #6
_0223DB04:
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x20
	bl sub_020D5190
	cmp r0, #0
	add r7, r7, #1
	addne r6, r6, #1
	cmp r7, #0x14
	add r8, r8, #0x2a
	blt _0223DB04
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223DB34: .word 0x02253380
_0223DB38: .word 0x02249578
	arm_func_end ov18_0223DAE0

	arm_func_start ov18_0223DB3C
ov18_0223DB3C: ; 0x0223DB3C
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _0223DB9C ; =0x02253380
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	ldrb r1, [r1, #0xe5c]
	cmp r1, #0
	ldreqh r1, [r0]
	cmpeq r1, #0x26
	ldmneia sp!, {r3, pc}
	ldrh r1, [r0, #8]
	cmp r1, #4
	beq _0223DB8C
	cmp r1, #5
	bne _0223DB94
	bl ov18_0223DBA0
	bl ov18_0223DA10
	ldmia sp!, {r3, pc}
_0223DB8C:
	bl ov18_0223DA10
	ldmia sp!, {r3, pc}
_0223DB94:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223DB9C: .word 0x02253380
	arm_func_end ov18_0223DB3C

	arm_func_start ov18_0223DBA0
ov18_0223DBA0: ; 0x0223DBA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x88
	ldr r1, _0223DD68 ; =0x02253380
	mov fp, r0
	ldr r2, [r1, #0]
	mov r1, #0x400
	add r0, r2, #0xf00
	add r2, r2, #0x1300
	str r2, [sp]
	bl sub_020C2C1C
	ldrh r0, [fp, #0xe]
	mov sl, #0
	cmp r0, #0
	addle sp, sp, #0x88
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223DBDC:
	add r0, fp, sl, lsl #2
	ldr r4, [r0, #0x10]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0223DD50
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _0223DD50
	ldr r7, [sp]
	mov r5, #0
	mov r6, #6
_0223DC08:
	mov r2, r6
	add r0, r4, #4
	add r1, r7, #0x20
	bl sub_020D5190
	cmp r0, #0
	beq _0223DC30
	add r5, r5, #1
	cmp r5, #0x14
	add r7, r7, #0x2a
	blt _0223DC08
_0223DC30:
	cmp r5, #0x14
	bne _0223DC7C
	ldr r8, [sp]
	ldr r7, _0223DD6C ; =0x02249578
	mov r5, #0
	mov r6, #6
_0223DC48:
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x20
	bl sub_020D5190
	cmp r0, #0
	beq _0223DC70
	add r5, r5, #1
	cmp r5, #0x14
	add r8, r8, #0x2a
	blt _0223DC48
_0223DC70:
	cmp r5, #0x14
	addeq sp, sp, #0x88
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223DC7C:
	ldr r0, [sp]
	mov r1, #0x2a
	mla sb, r5, r1, r0
	add r0, r4, #4
	add r1, sb, #0x20
	mov r2, #6
	bl sub_020C4DB0
	mov r1, sb
	add r0, r4, #0xc
	mov r2, #0x20
	bl sub_020C4DB0
	add r0, fp, sl, lsl #1
	ldrh r0, [r0, #0x50]
	strh r0, [sb, #0x26]
	ldrh r0, [r4, #0x2c]
	tst r0, #0x10
	moveq r0, #0
	streqb r0, [sb, #0x28]
	beq _0223DD50
	mov r2, #1
	add r0, sp, #4
	mov r1, r4
	strb r2, [sb, #0x28]
	bl sub_020CE9C8
	ldrb r8, [sp, #4]
	mov r7, #0
	cmp r8, #0
	ble _0223DD50
	ldr r5, _0223DD70 ; =0x02249574
	mov r4, #4
	add r6, sp, #4
_0223DCF8:
	add r1, r6, r7, lsl #3
	ldrb r0, [r1, #4]
	cmp r0, #0x30
	moveq r0, #2
	streqb r0, [sb, #0x28]
	beq _0223DD50
	cmp r0, #0xdd
	bne _0223DD44
	ldrb r0, [r1, #5]
	cmp r0, #4
	blo _0223DD44
	ldr r0, [r1, #8]
	mov r1, r5
	mov r2, r4
	bl sub_020D5190
	cmp r0, #0
	moveq r0, #2
	streqb r0, [sb, #0x28]
	beq _0223DD50
_0223DD44:
	add r7, r7, #1
	cmp r7, r8
	blt _0223DCF8
_0223DD50:
	ldrh r0, [fp, #0xe]
	add sl, sl, #1
	cmp sl, r0
	blt _0223DBDC
	add sp, sp, #0x88
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223DD68: .word 0x02253380
_0223DD6C: .word 0x02249578
_0223DD70: .word 0x02249574
	arm_func_end ov18_0223DBA0

	.rodata


	.global Unk_ov18_02249574
Unk_ov18_02249574: ; 0x02249574
	.incbin "incbin/overlay18_rodata.bin", 0x3140, 0x3144 - 0x3140

	.global Unk_ov18_02249578
Unk_ov18_02249578: ; 0x02249578
	.incbin "incbin/overlay18_rodata.bin", 0x3144, 0x314C - 0x3144

	.global Unk_ov18_02249580
Unk_ov18_02249580: ; 0x02249580
	.incbin "incbin/overlay18_rodata.bin", 0x314C, 0x44



	.bss


	.global Unk_ov18_02253380
Unk_ov18_02253380: ; 0x02253380
	.space 0x4

