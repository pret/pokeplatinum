	.include "macros/function.inc"
	.include "include/nhttp_list.inc"

	.extern Unk_ov60_0222A018
	.extern Unk_ov60_0222A01C
	.extern Unk_ov60_0222A030
	.extern Unk_ov60_0222A02C

	.text


	arm_func_start ov60_02225C2C
ov60_02225C2C: ; 0x02225C2C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02225CD4 ; =0x0222A018
	mov r4, r0
	ldr r2, [r1, #0]
	mov r0, #0x14
	mov r1, #4
	mvn r5, #0
	blx r2
	cmp r0, #0
	beq _02225CCC
	ldr r1, _02225CD8 ; =0x0222A030
	ldr r2, [r1, #0]
	cmp r2, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r1]
	beq _02225C94
	ldr r2, [r2, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #0]
	str r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r2, [r2, #0]
	str r0, [r2, #4]
	ldr r1, [r1, #0]
	str r0, [r1, #0]
_02225C94:
	ldr r1, _02225CDC ; =0x0222A02C
	mvn r2, #0
	ldr ip, [r1]
	ldr r3, [r1, #0]
	add r3, r3, #1
	str r3, [r1, #0]
	str ip, [r0, #8]
	str r4, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r2, [r1, #0]
	ldr r5, [r0, #8]
	cmp r2, #0
	movlt r0, #0
	strlt r0, [r1]
_02225CCC:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02225CD4: .word Unk_ov60_0222A018
_02225CD8: .word Unk_ov60_0222A030
_02225CDC: .word Unk_ov60_0222A02C
	arm_func_end ov60_02225C2C

	arm_func_start ov60_02225CE0
ov60_02225CE0: ; 0x02225CE0
	ldr r1, _02225D34 ; =0x0222A030
	mov r2, #0
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _02225D2C
	ldr r1, [r3, #8]
	cmp r1, r0
	moveq r2, r3
	beq _02225D2C
	ldr ip, [r3, #4]
	cmp ip, r3
	beq _02225D2C
_02225D10:
	ldr r1, [ip, #8]
	cmp r1, r0
	moveq r2, ip
	beq _02225D2C
	ldr ip, [ip, #4]
	cmp ip, r3
	bne _02225D10
_02225D2C:
	mov r0, r2
	bx lr
	; .align 2, 0
_02225D34: .word Unk_ov60_0222A030
	arm_func_end ov60_02225CE0

	arm_func_start ov60_02225D38
ov60_02225D38: ; 0x02225D38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	bl ov60_02225CE0
	movs r4, r0
	beq _02225DC8
	ldr r0, _02225DD0 ; =0x0222A030
	ldr r2, [r0, #0]
	ldr r1, [r2, #0]
	cmp r2, r1
	beq _02225D88
	ldmia r4, {r1, r2}
	str r2, [r1, #4]
	ldr r2, [r4, #0]
	ldr r1, [r4, #4]
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	cmp r1, r4
	ldreq r1, [r4, #4]
	streq r1, [r0]
	b _02225D90
_02225D88:
	mov r1, r5
	str r1, [r0, #0]
_02225D90:
	ldr r0, [r4, #0xc]
	ldr r5, [r0, #0x3c]
	ldr r6, [r0, #0x30]
	ldr r7, [r0, #0x2c]
	bl ov60_02226998
	ldr r1, _02225DD4 ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	mov r1, r6
	mov r2, r7
	mov r0, #8
	blx r5
	mov r5, #1
_02225DC8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225DD0: .word Unk_ov60_0222A030
_02225DD4: .word Unk_ov60_0222A01C
	arm_func_end ov60_02225D38

	arm_func_start ov60_02225DD8
ov60_02225DD8: ; 0x02225DD8
	stmfd sp!, {r4, lr}
	ldr r4, _02225E04 ; =0x0222A030
	ldr r0, [r4, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_02225DEC:
	ldr r0, [r0, #8]
	bl ov60_02225D38
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02225DEC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02225E04: .word Unk_ov60_0222A030
	arm_func_end ov60_02225DD8

	arm_func_start ov60_02225E08
ov60_02225E08: ; 0x02225E08
	ldr ip, _02225E14 ; =ov60_02225A60
	ldr r0, _02225E18 ; =0x0222A030
	bx ip
	; .align 2, 0
_02225E14: .word ov60_02225A60
_02225E18: .word Unk_ov60_0222A030
	arm_func_end ov60_02225E08