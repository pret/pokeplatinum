	.include "macros/function.inc"
	.include "overlay060/ov60_02224630.inc"

	

	.text


	arm_func_start ov60_02224630
ov60_02224630: ; 0x02224630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sb, r2
	mov sl, r1
	ldr r1, [sb, #8]
	cmp r0, #0
	str r1, [sp, #8]
	ldr r1, [sb, #0xc]
	ldr r5, [sb, #4]
	str r1, [sp, #4]
	mvn r1, #0
	str r1, [sp]
	beq _02224678
	cmp r0, #6
	beq _02224854
	cmp r0, #8
	beq _0222484C
	b _0222485C
_02224678:
	ldr r1, _02224948 ; =0x02229C24
	add r2, sp, #0x14
	mov r0, sl
	bl ov60_02226D88
	cmp r0, #3
	movne r4, #3
	bne _02224860
	ldr r0, [sp, #0x14]
	mov r1, #3
	bl ov60_022256B4
	ldr r1, _0222494C ; =0x0000012E
	cmp r0, r1
	bne _022247C4
	add r1, sp, #0x10
	mov r0, sl
	mov r8, #0
	bl ov60_02226E8C
	movs r6, r0
	movmi r4, #3
	bmi _02224860
	cmp r6, #0
	mov r7, r8
	ble _022247B0
	ldr r4, _02224950 ; =0x02229C34
	mov fp, #8
_022246DC:
	ldr r3, [sp, #0x10]
	mov r1, r7
	add r2, r3, r7
	b _022246F4
_022246EC:
	add r2, r2, #1
	add r7, r7, #1
_022246F4:
	ldrsb r0, [r2]
	cmp r0, #0x3d
	beq _02224708
	cmp r7, r6
	blt _022246EC
_02224708:
	sub r0, r7, r1
	cmp r0, #8
	add r7, r7, #1
	bne _02224734
	add r0, r3, r1
	mov r1, r4
	mov r2, fp
	bl ov60_0222567C
	cmp r0, #0
	moveq r8, #1
	movne r8, #0
_02224734:
	ldr r1, [sp, #0x10]
	mov r3, r7
	add r2, r1, r7
	b _0222474C
_02224744:
	add r2, r2, #1
	add r7, r7, #1
_0222474C:
	ldrsb r0, [r2]
	cmp r0, #0x26
	cmpne r0, #0xd
	cmpne r0, #0
	beq _02224768
	cmp r7, r6
	blt _02224744
_02224768:
	cmp r8, #0
	sub r2, r7, r3
	add r7, r7, #1
	beq _022247A8
	cmp r2, #4
	bne _022247B0
	add r0, sp, #0xc
	add r1, r1, r3
	bl ov60_022240C0
	mov r1, r0
	add r0, sp, #0xc
	mov r2, #0
	strb r2, [r0, r1]
	bl ov60_022256B4
	str r0, [sp]
	b _022247B0
_022247A8:
	cmp r7, r6
	blt _022246DC
_022247B0:
	ldr r0, [sp]
	cmp r0, #0
	movlt r4, #3
	movge r4, #5
	b _02224860
_022247C4:
	cmp r0, #0
	ble _022247D4
	cmp r0, #0xc8
	beq _022247DC
_022247D4:
	mov r4, #3
	b _02224860
_022247DC:
	cmp r5, #1
	beq _022247F8
	cmp r5, #2
	beq _02224814
	cmp r5, #3
	beq _02224830
	b _02224860
_022247F8:
	mov r0, sl
	mov r1, sb
	bl ov60_02225214
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02224860
_02224814:
	mov r0, sl
	mov r1, sb
	bl ov60_02225294
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02224860
_02224830:
	mov r0, sl
	mov r1, sb
	bl ov60_02225268
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02224860
_0222484C:
	mov r4, #6
	b _02224860
_02224854:
	mov r4, #4
	b _02224860
_0222485C:
	mov r4, #3
_02224860:
	cmp r5, #1
	beq _022248D0
	cmp r5, #2
	beq _0222487C
	cmp r5, #3
	beq _022248C0
	b _022248D0
_0222487C:
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _02224894
	ldr r1, _02224954 ; =0x02229E70
	ldr r1, [r1, #0]
	blx r1
_02224894:
	ldr r0, [sb, #0x1c]
	cmp r0, #0
	beq _022248AC
	ldr r1, _02224954 ; =0x02229E70
	ldr r1, [r1, #0]
	blx r1
_022248AC:
	ldr r1, _02224954 ; =0x02229E70
	ldr r0, [sb, #0x18]
	ldr r1, [r1, #0]
	blx r1
	b _022248D0
_022248C0:
	ldr r1, _02224954 ; =0x02229E70
	ldr r0, [sb, #0x10]
	ldr r1, [r1, #0]
	blx r1
_022248D0:
	bl ov60_02225534
	ldr r0, _02224958 ; =0x02229E74
	mvn r1, #0
	str r1, [r0, #0]
	bl ov60_02225548
	mov r0, sl
	bl ov60_02226C04
	ldr r1, _02224954 ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	bl ov60_022255D0
	cmp r4, #0
	ldrne r0, _0222495C ; =0x02229E6C
	strne r4, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222492C
	ldr r2, [sp]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	blx r3
_0222492C:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov60_022255FC
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02224948: .word 0x02229C24
_0222494C: .word 0x0000012E
_02224950: .word 0x02229C34
_02224954: .word 0x02229E70
_02224958: .word 0x02229E74
_0222495C: .word 0x02229E6C
	arm_func_end ov60_02224630

	arm_func_start ov60_02224960
ov60_02224960: ; 0x02224960
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl ov60_0222691C
	bl ov60_022255D0
	ldr r1, _02224988 ; =0x02229E70
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224988: .word 0x02229E70
	arm_func_end ov60_02224960

	arm_func_start ov60_0222498C
ov60_0222498C: ; 0x0222498C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	ldr r0, _02224C44 ; =0x02229F38
	ldr r1, _02224C48 ; =0x02229F44
	mov r6, r2
	mov r5, r3
	bl ov60_02224584
	cmp r0, #0
	bne _022249D0
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #8
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022249D0:
	ldr r1, _02224C50 ; =0x02229E5C
	mov r0, #0x24
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	movs r4, r0
	bne _02224A04
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224A04:
	ldr r0, _02224C54 ; =0x02229E68
	mov r1, #0
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	bl ov60_02225588
	cmp r0, #0
	bne _02224A4C
	ldr r1, _02224C58 ; =0x02229E70
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #2
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224A4C:
	ldr r1, _02224C5C ; =ov60_02224630
	ldr r0, _02224C60 ; =0x02229E60
	stmia sp, {r1, r4}
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x20]
	mov r2, r5
	mov r1, #1
	bl ov60_022263B8
	movs r5, r0
	bne _02224AA0
	bl ov60_022255D0
	ldr r1, _02224C58 ; =0x02229E70
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #3
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224AA0:
	ldr r1, _02224C64 ; =0x02229C20
	str r4, [r8]
	mov r2, #1
	str r5, [r7, #0]
	bl ov60_02225C10
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C68 ; =0x02229C40
	ldr r2, _02224C6C ; =0x02229ED8
	mov r0, r5
	bl ov60_02225B78
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C70 ; =0x02229C4C
	ldr r2, _02224C74 ; =0x02229E84
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C78 ; =0x02229C54
	ldr r2, _02224C44 ; =0x02229F38
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C7C ; =0x02229C60
	ldr r2, _02224C80 ; =0x02229EBC
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r0, _02224C84 ; =0x02229E58
	ldr r1, _02224C88 ; =0x02229C68
	ldr r2, [r0, #0]
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C8C ; =0x02229C70
	ldr r2, _02224C48 ; =0x02229F44
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C90 ; =0x02229C78
	ldr r2, _02224C94 ; =0x02229E90
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C98 ; =0x02229C80
	mov r0, r5
	mov r2, r6
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r0, _02224C9C ; =0x02229E78
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02224BA4
	ldr r1, _02224CA0 ; =0x02229C88
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224BA4:
	ldr r0, _02224C9C ; =0x02229E78
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02224BC8
	ldr r1, _02224CA4 ; =0x02229C90
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224BC8:
	ldr r0, _02224C9C ; =0x02229E78
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02224BEC
	ldr r1, _02224CA8 ; =0x02229C98
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224BEC:
	ldr r0, _02224CAC ; =0x02229E54
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02224C14
	ldr r1, _02224CB0 ; =0x02229CA0
	ldr r2, _02224CB4 ; =0x02229EA4
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224C14:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224C20:
	mov r0, r4
	mov r1, r5
	bl ov60_02224960
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02224C44: .word 0x02229F38
_02224C48: .word 0x02229F44
_02224C4C: .word 0x02229E6C
_02224C50: .word 0x02229E5C
_02224C54: .word 0x02229E68
_02224C58: .word 0x02229E70
_02224C5C: .word ov60_02224630
_02224C60: .word 0x02229E60
_02224C64: .word 0x02229C20
_02224C68: .word 0x02229C40
_02224C6C: .word 0x02229ED8
_02224C70: .word 0x02229C4C
_02224C74: .word 0x02229E84
_02224C78: .word 0x02229C54
_02224C7C: .word 0x02229C60
_02224C80: .word 0x02229EBC
_02224C84: .word 0x02229E58
_02224C88: .word 0x02229C68
_02224C8C: .word 0x02229C70
_02224C90: .word 0x02229C78
_02224C94: .word 0x02229E90
_02224C98: .word 0x02229C80
_02224C9C: .word 0x02229E78
_02224CA0: .word 0x02229C88
_02224CA4: .word 0x02229C90
_02224CA8: .word 0x02229C98
_02224CAC: .word 0x02229E54
_02224CB0: .word 0x02229CA0
_02224CB4: .word 0x02229EA4
	arm_func_end ov60_0222498C

	arm_func_start ov60_02224CB8
ov60_02224CB8: ; 0x02224CB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl ov60_02225534
	mov r0, r4
	bl ov60_02226A10
	ldr r1, _02224D10 ; =0x02229E74
	str r0, [r5, #0]
	str r0, [r1, #0]
	bl ov60_02225548
	ldr r0, [r5, #0]
	cmp r0, #0
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov60_02224960
	ldr r0, _02224D14 ; =0x02229E6C
	mov r1, #3
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02224D10: .word 0x02229E74
_02224D14: .word 0x02229E6C
	arm_func_end ov60_02224CB8

	arm_func_start ov60_02224D18
ov60_02224D18: ; 0x02224D18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r2, _02224D84 ; =0x02228CD8
	mov r4, r0
	mov ip, #0x80
	ldr r3, _02224D88 ; =0x02229F5C
	add r0, sp, #8
	add r1, sp, #4
	str ip, [sp]
	bl ov60_0222498C
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r4, [r0, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224CB8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02224D84: .word 0x02228CD8
_02224D88: .word 0x02229F5C
	arm_func_end ov60_02224D18

	arm_func_start ov60_02224D8C
ov60_02224D8C: ; 0x02224D8C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r4, r2
	mov r6, r1
	ldr r1, _02225034 ; =0x02229E5C
	mov r7, r4, lsl #8
	cmp r7, #0x80
	ldr r2, [r1, #0]
	movlt r7, #0x80
	mov r5, r0
	mov r0, r7
	mov r1, #4
	blx r2
	movs r8, r0
	bne _02224DE0
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224DE0:
	add r0, sp, #0xc
	mov r1, r6
	bl ov60_022256C0
	mov r6, r0
	bl ov60_02223FAC
	ldr r1, _02225034 ; =0x02229E5C
	add r0, r0, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	movs sb, r0
	bne _02224E38
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224E38:
	add r1, sp, #0xc
	mov r2, r6
	bl ov60_02223FC8
	mov r1, #0
	strb r1, [sb, r0]
	add r0, sp, #0xc
	mov r1, r4
	bl ov60_022256C0
	mov r6, r0
	bl ov60_02223FAC
	ldr r1, _02225034 ; =0x02229E5C
	add r0, r0, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	movs sl, r0
	bne _02224EB4
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224EB4:
	add r1, sp, #0xc
	mov r2, r6
	bl ov60_02223FC8
	mov r1, #0
	strb r1, [sl, r0]
	ldr r2, _02225040 ; =0x02228CCC
	add r0, sp, #8
	add r1, sp, #4
	mov r3, r8
	str r7, [sp]
	bl ov60_0222498C
	cmp r0, #0
	bne _02224F24
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sl
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224F24:
	ldr r0, [sp, #4]
	ldr r1, _02225044 ; =0x02229CA8
	mov r2, sb
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224FE0
	ldr r0, [sp, #4]
	ldr r1, _02225048 ; =0x02229CB0
	mov r2, sl
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224FE0
	ldr r0, [sp, #8]
	mov r1, #2
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r5, [r0, #0x10]
	ldr r0, [sp, #8]
	str sb, [r0, #0x1c]
	ldr r0, [sp, #8]
	str sl, [r0, #0x20]
	ldr r0, [sp, #8]
	str r4, [r0, #0x14]
	ldr r0, [sp, #8]
	str r8, [r0, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224CB8
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sl
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224FE0:
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sl
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224960
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02225034: .word 0x02229E5C
_02225038: .word 0x02229E6C
_0222503C: .word 0x02229E70
_02225040: .word 0x02228CCC
_02225044: .word 0x02229CA8
_02225048: .word 0x02229CB0
	arm_func_end ov60_02224D8C

	arm_func_start ov60_0222504C
ov60_0222504C: ; 0x0222504C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r3, [r8, #0xac]
	mov r7, r1
	cmp r2, r3
	bhs _02225080
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02225080:
	bl ov60_02225670
	mov r4, r0
	cmp r4, #0x20
	ble _022250A8
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022250A8:
	cmp r4, #0
	movle r6, #0
	ble _022250BC
	bl ov60_02223FAC
	mov r6, r0
_022250BC:
	ldr r1, _022251F8 ; =0x02229E5C
	add r0, r6, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	movs r5, r0
	bne _022250F0
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022250F0:
	ldr ip, [r8, #0xac]
	ldr r2, _022251FC ; =0x02228CE4
	add r0, sp, #8
	add r1, sp, #4
	mov r3, r7
	str ip, [sp]
	bl ov60_0222498C
	cmp r0, #0
	bne _02225130
	ldr r1, _02225200 ; =0x02229E70
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02225130:
	cmp r6, #0
	ble _02225168
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl ov60_02223FC8
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #4]
	ldr r1, _02225204 ; =0x02229CB4
	mov r2, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _022251C0
_02225168:
	ldr r0, [sp, #8]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r5, [r0, #0x10]
	ldr r1, [r8, #0xac]
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224CB8
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _02225200 ; =0x02229E70
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022251C0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224960
	ldr r1, _02225200 ; =0x02229E70
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022251F4: .word 0x02229E6C
_022251F8: .word 0x02229E5C
_022251FC: .word 0x02228CE4
_02225200: .word 0x02229E70
_02225204: .word 0x02229CB4
	arm_func_end ov60_0222504C

	arm_func_start ov60_02225208
ov60_02225208: ; 0x02225208
	ldr ip, _02225210 ; =ov60_02227184
	bx ip
	; .align 2, 0
_02225210: .word ov60_02227184
	arm_func_end ov60_02225208

	.rodata


	.global Unk_ov60_02228CCC
Unk_ov60_02228CCC: ; 0x02228CCC
	.incbin "incbin/overlay60_rodata.bin", 0x80, 0x8C - 0x80

	.global Unk_ov60_02228CD8
Unk_ov60_02228CD8: ; 0x02228CD8
	.incbin "incbin/overlay60_rodata.bin", 0x8C, 0x98 - 0x8C

	.global Unk_ov60_02228CE4
Unk_ov60_02228CE4: ; 0x02228CE4
	.incbin "incbin/overlay60_rodata.bin", 0x98, 0xD



	.data


	.global Unk_ov60_02229C20
Unk_ov60_02229C20: ; 0x02229C20
	.incbin "incbin/overlay60_data.bin", 0xDE0, 0xDE4 - 0xDE0

	.global Unk_ov60_02229C24
Unk_ov60_02229C24: ; 0x02229C24
	.incbin "incbin/overlay60_data.bin", 0xDE4, 0xDF4 - 0xDE4

	.global Unk_ov60_02229C34
Unk_ov60_02229C34: ; 0x02229C34
	.incbin "incbin/overlay60_data.bin", 0xDF4, 0xE00 - 0xDF4

	.global Unk_ov60_02229C40
Unk_ov60_02229C40: ; 0x02229C40
	.incbin "incbin/overlay60_data.bin", 0xE00, 0xE0C - 0xE00

	.global Unk_ov60_02229C4C
Unk_ov60_02229C4C: ; 0x02229C4C
	.incbin "incbin/overlay60_data.bin", 0xE0C, 0xE14 - 0xE0C

	.global Unk_ov60_02229C54
Unk_ov60_02229C54: ; 0x02229C54
	.incbin "incbin/overlay60_data.bin", 0xE14, 0xE20 - 0xE14

	.global Unk_ov60_02229C60
Unk_ov60_02229C60: ; 0x02229C60
	.incbin "incbin/overlay60_data.bin", 0xE20, 0xE28 - 0xE20

	.global Unk_ov60_02229C68
Unk_ov60_02229C68: ; 0x02229C68
	.incbin "incbin/overlay60_data.bin", 0xE28, 0xE30 - 0xE28

	.global Unk_ov60_02229C70
Unk_ov60_02229C70: ; 0x02229C70
	.incbin "incbin/overlay60_data.bin", 0xE30, 0xE38 - 0xE30

	.global Unk_ov60_02229C78
Unk_ov60_02229C78: ; 0x02229C78
	.incbin "incbin/overlay60_data.bin", 0xE38, 0xE40 - 0xE38

	.global Unk_ov60_02229C80
Unk_ov60_02229C80: ; 0x02229C80
	.incbin "incbin/overlay60_data.bin", 0xE40, 0xE48 - 0xE40

	.global Unk_ov60_02229C88
Unk_ov60_02229C88: ; 0x02229C88
	.incbin "incbin/overlay60_data.bin", 0xE48, 0xE50 - 0xE48

	.global Unk_ov60_02229C90
Unk_ov60_02229C90: ; 0x02229C90
	.incbin "incbin/overlay60_data.bin", 0xE50, 0xE58 - 0xE50

	.global Unk_ov60_02229C98
Unk_ov60_02229C98: ; 0x02229C98
	.incbin "incbin/overlay60_data.bin", 0xE58, 0xE60 - 0xE58

	.global Unk_ov60_02229CA0
Unk_ov60_02229CA0: ; 0x02229CA0
	.incbin "incbin/overlay60_data.bin", 0xE60, 0xE68 - 0xE60

	.global Unk_ov60_02229CA8
Unk_ov60_02229CA8: ; 0x02229CA8
	.incbin "incbin/overlay60_data.bin", 0xE68, 0xE70 - 0xE68

	.global Unk_ov60_02229CB0
Unk_ov60_02229CB0: ; 0x02229CB0
	.incbin "incbin/overlay60_data.bin", 0xE70, 0xE74 - 0xE70

	.global Unk_ov60_02229CB4
Unk_ov60_02229CB4: ; 0x02229CB4
	.incbin "incbin/overlay60_data.bin", 0xE74, 0xC



	.bss


	.global Unk_ov60_02229F38
Unk_ov60_02229F38: ; 0x02229F38
	.space 0x9

	.global Unk_ov60_02229F44
Unk_ov60_02229F44: ; 0x02229F44
	.space 0x15

	.global Unk_ov60_02229F5C
Unk_ov60_02229F5C: ; 0x02229F5C
	.space 0x80

