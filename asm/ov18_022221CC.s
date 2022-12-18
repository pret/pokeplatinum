	.include "macros/function.inc"
	.include "include/ov18_022221CC.inc"

	

	.text


	arm_func_start ov18_022221CC
ov18_022221CC: ; 0x022221CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_020CE7F4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh lr, [r4, #4]
	mov r2, #1
	mov ip, #0
	mov r5, lr
	mov r3, r2
_022221F8:
	sub r1, r5, #1
	tst r0, r3, lsl r1
	cmpne lr, r5
	strneh r5, [r4, #4]
	bne _02222234
	add r1, ip, #1
	mov r1, r1, lsl #0x10
	cmp r5, #0x10
	mov ip, r1, lsr #0x10
	moveq r1, r2
	addne r1, r5, #1
	mov r1, r1, lsl #0x10
	cmp ip, #0x10
	mov r5, r1, lsr #0x10
	blo _022221F8
_02222234:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_022221CC

	arm_func_start ov18_0222223C
ov18_0222223C: ; 0x0222223C
	ldr r1, _02222298 ; =0x02250D20
	mov r0, #0
	ldr ip, [r1, #8]
	mov r3, r0
	add r1, ip, #0x500
	ldrh r1, [r1, #0x28]
	mov r2, r0
	cmp r1, #1
	ldreqb r1, [ip, #0x50c]
	cmpeq r1, #0
	moveq r3, #1
	cmp r3, #0
	beq _02222280
	add r1, ip, #0x500
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	moveq r2, #1
_02222280:
	cmp r2, #0
	addne r1, ip, #0x500
	ldrneh r1, [r1, #0x2a]
	cmpne r1, #0
	movne r0, #1
	bx lr
	; .align 2, 0
_02222298: .word 0x02250D20
	arm_func_end ov18_0222223C

	arm_func_start ov18_0222229C
ov18_0222229C: ; 0x0222229C
	stmfd sp!, {r3, lr}
	ldr r0, _022222E4 ; =ov18_02222330
	bl sub_020CE478
	mov r1, r0
	mov r0, #0x80
	bl ov18_02223ED8
	ldr r3, _022222E8 ; =0x0224976C
	ldr r0, _022222E4 ; =ov18_02222330
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl sub_020D0764
	mov r1, r0
	mov r0, #0x1d
	bl ov18_02223ED8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022222E4: .word ov18_02222330
_022222E8: .word 0x0224976C
	arm_func_end ov18_0222229C

	arm_func_start ov18_022222EC
ov18_022222EC: ; 0x022222EC
	stmfd sp!, {r3, lr}
	ldr r2, _0222232C ; =0x02250D20
	mov ip, #0
	ldr r3, [r2, #8]
	mov r1, r0
	strb ip, [r3, #0x50d]
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1300
	strh ip, [r0, #0x16]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x51c]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0x11
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222232C: .word 0x02250D20
	arm_func_end ov18_022222EC

	arm_func_start ov18_02222330
ov18_02222330: ; 0x02222330
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #0x19
	bgt _02222398
	bge _02222474
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _02222B58
_02222358: ; jump table
	b _022223B4 ; case 0
	b _02222928 ; case 1
	b _02222A18 ; case 2
	b _02222B58 ; case 3
	b _02222B58 ; case 4
	b _02222B58 ; case 5
	b _02222B58 ; case 6
	b _0222243C ; case 7
	b _02222510 ; case 8
	b _02222B58 ; case 9
	b _02222B58 ; case 10
	b _02222B58 ; case 11
	b _02222B58 ; case 12
	b _02222A60 ; case 13
	b _02222764 ; case 14
	b _02222804 ; case 15
_02222398:
	cmp r1, #0x1d
	bgt _022223A8
	beq _022223EC
	b _02222B58
_022223A8:
	cmp r1, #0x80
	beq _02222A98
	b _02222B58
_022223B4:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022223E0
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022223E0:
	bl ov18_0222229C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022223EC:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02222418
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222418:
	ldr r1, _02222B78 ; =0x02250D20
	ldr r0, _02222B7C ; =ov18_02222330
	ldr r1, [r1, #8]
	bl sub_020CEDC8
	mov r1, r0
	mov r0, #7
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0222243C:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x15
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r0, _02222B7C ; =ov18_02222330
	mov r1, #1
	bl sub_020D0714
	mov r1, r0
	mov r0, #0x19
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222474:
	ldr r2, _02222B78 ; =0x02250D20
	ldr ip, [r2, #8]
	add r1, ip, #0x500
	ldrh r3, [r1, #0x26]
	cmp r3, #0
	bne _022224D4
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022224B0
	ldr r2, [ip, #0x51c]
	mov r1, r4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022224B0:
	ldr r1, _02222B80 ; =0x0224976C
	ldr r0, _02222B7C ; =ov18_02222330
	ldr r1, [r1, #0xc]
	bl sub_020CEEF4
	mov r1, r0
	mov r0, #8
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022224D4:
	ldrh r3, [r4, #2]
	cmp r3, #0
	beq _02222504
	mov r0, #0
	strh r0, [r1, #0x26]
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222504:
	bl ov18_022222EC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222510:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0222253C
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0222253C:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _0222256C
	bge _022225B4
	cmp r0, #2
	bgt _02222744
	cmp r0, #0
	blt _02222744
	beq _0222258C
	cmp r0, #2
	beq _02222710
	b _02222744
_0222256C:
	cmp r0, #9
	bgt _0222257C
	beq _022226D4
	b _02222744
_0222257C:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	b _02222744
_0222258C:
	ldr r1, _02222B78 ; =0x02250D20
	mov r2, #0
	ldr r0, [r1, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	strh r2, [r0, #0x28]
	ldmia sp!, {r3, r4, pc}
_022225B4:
	ldr r2, _02222B78 ; =0x02250D20
	ldr r0, [r2, #8]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x26]
	cmp r1, #1
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldrh lr, [r0, #0x2a]
	ldrh r3, [r4, #0x10]
	mov ip, #1
	mov r1, r4
	orr r3, lr, ip, lsl r3
	strh r3, [r0, #0x2a]
	ldr r2, [r2, #8]
	mov r0, #0
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r1, _02222B78 ; =0x02250D20
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	bne _022226A4
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x31c]
	cmp r2, #0
	bne _022226A4
	mov r2, #1
	str r2, [r0, #0x31c]
	ldr r0, [r1, #8]
	ldr r1, _02222B78 ; =0x02250D20
	add r0, r0, #0x500
	ldrh r0, [r0, #0x2c]
	ldr ip, [r1, #8]
	mov r1, #1
	cmp r0, #0
	movne r2, #0
	mov r0, r2, lsl #0x10
	mov r3, r0, lsr #0x10
	add r0, ip, #0x500
	ldrh r4, [r0, #0x18]
	mov r2, #0
	str r4, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r0, #0x1a]
	ldr r1, [ip, #0x504]
	ldr r0, _02222B7C ; =ov18_02222330
	add r3, ip, #0x40
	bl sub_020CF540
	mov r1, r0
	mov r0, #0xe
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022226A4:
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, _02222B78 ; =0x02250D20
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022226D4:
	ldr r2, _02222B78 ; =0x02250D20
	ldrh r3, [r4, #0x10]
	ldr r1, [r2, #8]
	mov r0, #1
	add r1, r1, #0x500
	ldrh ip, [r1, #0x2a]
	mvn r3, r0, lsl r3
	and r3, ip, r3
	strh r3, [r1, #0x2a]
	ldr r2, [r2, #8]
	mov r1, r4
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222710:
	ldr r0, _02222B78 ; =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r4
	mov r0, #0x1c
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222744:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222764:
	ldr r2, _02222B78 ; =0x02250D20
	mov r1, #0
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	beq _02222790
	cmp r0, #0xb
	beq _022227CC
	b _022227E8
_02222790:
	ldr r0, [r2, #8]
	mov r3, #1
	add r0, r0, #0x500
	strh r3, [r0, #0x28]
	ldr r2, [r2, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r2, [r2, #0x51c]
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022227CC:
	ldr r0, [r2, #8]
	ldr r1, [r4, #8]
	ldr r2, [r0, #0x51c]
	mov r0, #3
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022227E8:
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222804:
	ldr r0, _02222B78 ; =0x02250D20
	ldr r3, [r0, #0xc]
	add r0, r3, #0x7000
	ldr r0, [r0, #0x4c8]
	cmp r0, #0
	beq _02222860
	mov r2, #0
	mov r1, r2
_02222824:
	add r0, r3, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0
	beq _02222844
	add r2, r2, #1
	cmp r2, #2
	bhs _02222850
_02222844:
	add r1, r1, #1
	cmp r1, #0xf
	blo _02222824
_02222850:
	cmp r2, #1
	bne _02222860
	ldr r0, _02222B84 ; =0x000032C8
	bl sub_020C3E08
_02222860:
	ldr r0, _02222B78 ; =0x02250D20
	mov r2, #0
	ldr r1, [r0, #8]
	strb r2, [r1, #0x50c]
	ldrh r1, [r4, #2]
	cmp r1, #0
	bne _022228C4
	ldr r0, [r0, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #2
	blx r2
	ldr r0, _02222B78 ; =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022228C4:
	cmp r1, #0xa
	ldr r0, [r0, #8]
	mov r1, r4
	bne _022228E8
	ldr r2, [r0, #0x51c]
	mov r0, #0x2a
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022228E8:
	ldr r2, [r0, #0x51c]
	mov r0, #0x13
	blx r2
	ldr r0, _02222B78 ; =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222928:
	ldr r1, _02222B78 ; =0x02250D20
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _022229A4
	ldrh r0, [r4, #2]
	mov r2, #0
	cmp r0, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	beq _02222978
	strh r2, [r0, #0x26]
	ldr r0, [r1, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222978:
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _02222B7C ; =ov18_02222330
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl sub_020CED88
	mov r1, r0
	mov r0, #2
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022229A4:
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl sub_020CE4BC
	mov r0, #0
	bl sub_020CE478
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022229F8
	ldr r2, _02222B78 ; =0x02250D20
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022229F8:
	ldr r0, _02222B7C ; =ov18_02222330
	mov r1, #0
	bl sub_020D0714
	mov r1, r0
	mov r0, #0x19
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222A18:
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _02222A54
	ldr r2, _02222B78 ; =0x02250D20
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222A54:
	bl ov18_022222EC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222A60:
	ldrh r0, [r4, #2]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r0, _02222B78 ; =0x02250D20
	ldrh r1, [r4, #0xa]
	ldr r0, [r0, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	ldrh r2, [r0, #0x2a]
	mvn r1, r1
	and r1, r2, r1
	strh r1, [r0, #0x2a]
	ldmia sp!, {r3, r4, pc}
_02222A98:
	ldrh r0, [r4, #4]
	sub r0, r0, #0x10
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02222B70
_02222AAC: ; jump table
	b _02222ACC ; case 0
	b _02222AEC ; case 1
	b _02222B0C ; case 2
	b _02222B2C ; case 3
	b _02222B70 ; case 4
	b _02222B70 ; case 5
	b _02222B4C ; case 6
	b _02222B70 ; case 7
_02222ACC:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1d
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222AEC:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1f
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B0C:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x20
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B2C:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x21
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B4C:
	bl sub_020C42A8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B58:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
_02222B70:
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02222B78: .word 0x02250D20
_02222B7C: .word ov18_02222330
_02222B80: .word 0x0224976C
_02222B84: .word 0x000032C8
	arm_func_end ov18_02222330

	arm_func_start ov18_02222B88
ov18_02222B88: ; 0x02222B88
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _02222BC4
	bge _02222BDC
	cmp r0, #9
	ldmgtia sp!, {r3, pc}
	cmp r0, #7
	ldmltia sp!, {r3, pc}
	cmpne r0, #9
	ldmia sp!, {r3, pc}
_02222BC4:
	cmp r0, #0x1a
	ldmgtia sp!, {r3, pc}
	cmp r0, #0x19
	ldmltia sp!, {r3, pc}
	cmpne r0, #0x1a
	ldmia sp!, {r3, pc}
_02222BDC:
	ldr r2, _02222BF4 ; =0x02250D20
	mov r0, #9
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x51c]
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02222BF4: .word 0x02250D20
	arm_func_end ov18_02222B88

	arm_func_start ov18_02222BF8
ov18_02222BF8: ; 0x02222BF8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldrh r2, [r6]
	ldr r1, _02223410 ; =0x02250D20
	cmp r2, #0x1d
	ldr r4, [r1, #8]
	bgt _02222C84
	cmp r2, #0x1d
	bge _02222CF0
	cmp r2, #0x15
	addls pc, pc, r2, lsl #2
	b _022233F8
_02222C2C: ; jump table
	b _02222C90 ; case 0
	b _02223310 ; case 1
	b _02223370 ; case 2
	b _022233F8 ; case 3
	b _022233F8 ; case 4
	b _022233F8 ; case 5
	b _022233F8 ; case 6
	b _022233F8 ; case 7
	b _022233F8 ; case 8
	b _022233F8 ; case 9
	b _02222D8C ; case 10
	b _02223054 ; case 11
	b _022230A4 ; case 12
	b _022233F8 ; case 13
	b _0222321C ; case 14
	b _02223290 ; case 15
	b _022233F8 ; case 16
	b _022233F8 ; case 17
	b _022233F8 ; case 18
	b _022233F8 ; case 19
	b _022233F8 ; case 20
	b _022233AC ; case 21
_02222C84:
	cmp r2, #0x80
	beq _022233D4
	b _022233F8
_02222C90:
	ldrh r0, [r6, #2]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	cmp r0, #0
	beq _02222CB4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222CB4:
	mov r0, #0x15
	blx r2
	ldr r3, _02223414 ; =0x0224976C
	ldr r0, _02223418 ; =ov18_02222BF8
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl sub_020D0764
	mov r1, r0
	mov r0, #0x1d
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222CF0:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02222D14
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222D14:
	add r0, r4, #0x440
	str r0, [r1, #0x20]
	ldrh r0, [r1, #0x24]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r1, #0x24]
	ldr r0, _02223410 ; =0x02250D20
	ldrh r1, [r0, #0x26]
	cmp r1, #0
	moveq r1, #0xc8
	streqh r1, [r0, #0x26]
	ldr r0, _02223410 ; =0x02250D20
	mov r1, #0xff
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	strb r1, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	strb r1, [r0, #0x2c]
	strb r1, [r0, #0x2d]
	str r2, [r4, #0x5e4]
	ldr r0, _02223418 ; =ov18_02222BF8
	ldr r1, _0222341C ; =0x02250D40
	str r2, [r4, #0x5e8]
	bl sub_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222D8C:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02222DB0
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222DB0:
	ldrh r0, [r6, #8]
	cmp r0, #3
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #4
	beq _02222FDC
	cmp r0, #5
	bne _0222303C
	add ip, r4, #0x600
	mov r5, #0
	add r0, r4, #0x500
	mov fp, #0x180
	b _02222F0C
_02222DE4:
	mla r2, r5, fp, ip
	ldrb r3, [r6, #0xa]
	ldrb r1, [r2, #0xca]
	mov lr, #0
	mov sl, lr
	cmp r3, r1
	ldreqb r1, [r2, #0xcb]
	ldreqb r2, [r6, #0xb]
	mov r7, lr
	mov r8, lr
	cmpeq r2, r1
	moveq sl, #1
	mov sb, lr
	cmp sl, #0
	beq _02222E38
	mov r2, #0x180
	mla r2, r5, r2, ip
	ldrb r1, [r6, #0xc]
	ldrb r2, [r2, #0xcc]
	cmp r1, r2
	moveq sb, #1
_02222E38:
	cmp sb, #0
	beq _02222E58
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xd]
	ldrb r1, [r1, #0xcd]
	cmp r2, r1
	moveq r8, #1
_02222E58:
	cmp r8, #0
	beq _02222E78
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xe]
	ldrb r1, [r1, #0xce]
	cmp r2, r1
	moveq r7, #1
_02222E78:
	cmp r7, #0
	beq _02222E98
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xf]
	ldrb r1, [r1, #0xcf]
	cmp r2, r1
	moveq lr, #1
_02222E98:
	cmp lr, #0
	beq _02222F08
	mov r0, #0x180
	mla r0, r5, r0, ip
	ldrh r1, [r6, #0x36]
	add sb, r6, #0x38
	add r8, r0, #0xf8
	strh r1, [r0, #0xf6]
	mov r7, #8
_02222EBC:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _02222EBC
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl sub_020C2C1C
	ldr r1, _02223410 ; =0x02250D20
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl sub_020C43C4
	str r5, [r4, #0x5ec]
	b _02222F7C
_02222F08:
	add r5, r5, #1
_02222F0C:
	ldrh r1, [r0, #0xe0]
	cmp r5, r1
	blt _02222DE4
	cmp r5, #0x10
	bge _02222F7C
	mov r0, #0x180
	mla r1, r5, r0, ip
	mov r0, r6
	add r7, r5, #1
	add r3, r4, #0x500
	add r1, r1, #0xc0
	mov r2, #0xb8
	strh r7, [r3, #0xe0]
	bl sub_020C4B18
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl sub_020C2C1C
	ldr r1, _02223410 ; =0x02250D20
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl sub_020C43C4
	str r5, [r4, #0x5ec]
_02222F7C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #4
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _02222FBC
	ldr r0, _0222341C ; =0x02250D40
	bl ov18_022221CC
	cmp r0, #0
	bne _02222FBC
	bl ov18_02223A98
_02222FBC:
	ldr r0, _02223418 ; =ov18_02222BF8
	ldr r1, _0222341C ; =0x02250D40
	bl sub_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222FDC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #5
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _0222301C
	ldr r0, _0222341C ; =0x02250D40
	bl ov18_022221CC
	cmp r0, #0
	bne _0222301C
	bl ov18_02223A98
_0222301C:
	ldr r0, _02223418 ; =ov18_02222BF8
	ldr r1, _0222341C ; =0x02250D40
	bl sub_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222303C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223054:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02223078
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223078:
	ldr r1, [r4, #0x520]
	mov r2, #0
	ldr r0, _02223418 ; =ov18_02222BF8
	mov r3, #1
	str r2, [sp]
	bl sub_020CF21C
	mov r1, r0
	mov r0, #0xc
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022230A4:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022230D4
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0xe0]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xb
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022230D4:
	ldrh r0, [r6, #8]
	cmp r0, #9
	bgt _02223100
	cmp r0, #6
	blt _02223204
	beq _02223110
	cmp r0, #7
	beq _0222312C
	cmp r0, #9
	beq _022231DC
	b _02223204
_02223100:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _02223204
_02223110:
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	mov r1, #1
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222312C:
	ldrh r2, [r6, #0xa]
	add r0, r4, #0x500
	mov r1, r6
	strh r2, [r0, #0xe2]
	ldr r2, [r4, #0x51c]
	mov r0, #6
	blx r2
	ldr r1, _02223420 ; =ov18_02222B88
	add r3, r4, #0x500
	mov r0, #1
	mov r2, #0
	strh r0, [r3, #0x2a]
	bl sub_020CE4BC
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r4, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r4, #0x504]
	ldr r0, _02223418 ; =ov18_02222BF8
	add r3, r4, #0x40
	bl sub_020CF540
	mov r1, r0
	mov r0, #0xe
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022231DC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xa
	blx r2
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223204:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222321C:
	ldrh r0, [r6, #4]
	cmp r0, #0xa
	beq _02223244
	cmp r0, #0xc
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xd
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _02223278
_02223244:
	add r0, r4, #0x500
	mov r1, #1
	strh r1, [r0, #0x28]
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223278:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223290:
	mov r0, #0
	strb r0, [r4, #0x50c]
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _022232B8
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #8
	blx r2
	b _022232DC
_022232B8:
	cmp r0, #9
	ldr r2, [r4, #0x51c]
	mov r1, r6
	bne _022232D4
	mov r0, #0x29
	blx r2
	b _022232DC
_022232D4:
	mov r0, #0x12
	blx r2
_022232DC:
	ldr r0, _02223410 ; =0x02250D20
	ldr r0, [r0, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223310:
	ldrh r0, [r6, #2]
	cmp r0, #0
	add r0, r4, #0x500
	beq _02223340
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223340:
	mov r2, #0
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _02223418 ; =ov18_02222BF8
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl sub_020CED88
	mov r1, r0
	mov r0, #2
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223370:
	ldrh r1, [r6, #2]
	cmp r1, #0
	beq _022233A0
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233A0:
	bl ov18_022222EC
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233AC:
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233D4:
	ldrh r0, [r6, #4]
	cmp r0, #0x16
	beq _022233EC
	add sp, sp, #0x1c
	cmp r0, #0x17
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233EC:
	bl sub_020C42A8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233F8:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02223410: .word 0x02250D20
_02223414: .word 0x0224976C
_02223418: .word ov18_02222BF8
_0222341C: .word 0x02250D40
_02223420: .word ov18_02222B88
	arm_func_end ov18_02222BF8

	arm_func_start ov18_02223424
ov18_02223424: ; 0x02223424
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
_02223440:
	ldrb r0, [r2], #1
	add r1, r1, #1
	cmp r1, #6
	add r3, r3, r0
	blt _02223440
	ldr r1, _02223484 ; =0x027FFC3C
	ldr r0, _02223488 ; =0xCCCCCCCD
	ldr r1, [r1, #0]
	mov r2, #0x14
	add r1, r3, r1
	rsb r3, r1, r1, lsl #3
	umull r1, r0, r3, r0
	mov r0, r0, lsr #4
	umull r0, r1, r2, r0
	sub r0, r3, r0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02223484: .word 0x027FFC3C
_02223488: .word 0xCCCCCCCD
	arm_func_end ov18_02223424

	arm_func_start ov18_0222348C
ov18_0222348C: ; 0x0222348C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02223664 ; =0x02250D20
	mov sb, r1
	ldr r1, [r4, #0xc]
	mov r8, r2
	cmp r1, #0
	addne r1, r1, #0x1300
	ldrneh r1, [r1, #0x16]
	mov r7, r3
	cmpne r1, #0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #0x1f
	bic r4, r0, #0x1f
	add r0, r4, #0x1f
	add r0, r0, #0x1e00
	cmp r7, #0x10000
	bic r5, r0, #0x1f
	bne _022234E0
	bl sub_020CEB20
	mov r7, r0
_022234E0:
	bl sub_020C3D98
	ldr r3, _02223668 ; =0x0000FFFF
	ldr r1, _0222366C ; =0x0224976C
	mov r2, #5
	strh r3, [r1, #6]
	strh r2, [r1]
	mov r2, #0x28
	strh r2, [r1, #2]
	mov r6, r0
	strh r2, [r1, #4]
	mov r2, #1
	ldr r0, [sp, #0x20]
	ldr r3, _02223664 ; =0x02250D20
	str r2, [r1, #0xc]
	strh r0, [r3]
	str r4, [r3, #8]
	mov r1, r4
	mov r0, #0
	mov r2, #0x1e00
	str r5, [r3, #0xc]
	bl sub_020C4B4C
	mov r1, r5
	mov r0, #0
	mov r2, #0x1340
	bl sub_020C4AF0
	ldrb r0, [sb, #1]
	add r2, r4, #0x530
	mov r1, #0
	cmp r0, #0
	ble _02223574
_02223558:
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #2]
	add r1, r1, #1
	strh r0, [r2], #2
	ldrb r0, [sb, #1]
	cmp r1, r0
	blt _02223558
_02223574:
	add r0, r4, #0x138
	add r3, r0, #0x400
	ldr r0, _0222366C ; =0x0224976C
	mov ip, #0
	ldr r1, [r0, #8]
_02223588:
	ldrh r2, [r1]
	cmp r2, #0
	beq _022235AC
	add r1, r1, #2
	add ip, ip, #1
	str r1, [r0, #8]
	cmp ip, #0x10
	strh r2, [r3], #2
	blt _02223588
_022235AC:
	mov r0, sb
	add r1, r5, #0x1300
	mov r2, #0x16
	bl sub_020C4DB0
	ldrb r0, [sb, #1]
	cmp r0, #0xa
	bhs _022235D8
	add r0, r5, r0, lsl #1
	add r0, r0, #0x1300
	mov r1, #0
	strh r1, [r0, #2]
_022235D8:
	add r0, r4, #0x500
	mov r1, #0x100
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r1, #1
	strh r1, [r0, #0x2c]
	add r0, r5, #0x400
	str r0, [r4, #0x504]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x12]
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x14]
	str r8, [r4, #8]
	strh r7, [r4, #0xc]
	bl ov18_02223424
	add r0, r0, #0xc8
	strh r0, [r4, #0x18]
	mov r0, #0xf
	strh r0, [r4, #0x10]
	mov r3, #0
	strb r3, [r4, #0x50c]
	strb r3, [r4, #0x50d]
	add r1, r5, #0x1300
	mov r2, #1
	mov r0, r6
	strh r2, [r1, #0x16]
	add r1, r5, #0x1000
	str r3, [r1, #0x31c]
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02223664: .word 0x02250D20
_02223668: .word 0x0000FFFF
_0222366C: .word 0x0224976C
	arm_func_end ov18_0222348C

	arm_func_start ov18_02223670
ov18_02223670: ; 0x02223670
	ldr r3, _022236D8 ; =0x000001FE
	cmp r0, r3
	bhi _02223684
	cmp r0, #0xe4
	bhs _0222368C
_02223684:
	mov r0, #0
	bx lr
_0222368C:
	cmp r1, #0x10
	bhi _0222369C
	cmp r1, #8
	bhs _022236A4
_0222369C:
	mov r0, #0
	bx lr
_022236A4:
	add r0, r0, #0x26
	mov r0, r0, lsl #2
	add r1, r1, #0x20
	add r0, r0, #0x4a
	mov r1, r1, lsl #2
	add r3, r0, #0x100
	add r0, r1, #0x70
	mla r1, r2, r0, r3
	ldr r0, _022236DC ; =0x000015E0
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	bx lr
	; .align 2, 0
_022236D8: .word 0x000001FE
_022236DC: .word 0x000015E0
	arm_func_end ov18_02223670

	arm_func_start ov18_022236E0
ov18_022236E0: ; 0x022236E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C3D98
	ldr r1, _02223774 ; =0x02250D20
	mov r6, r0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #0x50d]
	cmp r1, #0
	beq _02223714
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223714:
	mov r0, r5
	mov r2, r4
	mov r1, #8
	bl ov18_02223670
	cmp r0, #0
	bne _0222373C
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0222373C:
	ldr r2, _02223774 ; =0x02250D20
	mov r0, r6
	ldr r1, [r2, #8]
	mov r3, #8
	strh r4, [r1, #0x10]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r5, [r1]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #2]
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223774: .word 0x02250D20
	arm_func_end ov18_022236E0

	arm_func_start ov18_02223778
ov18_02223778: ; 0x02223778
	stmfd sp!, {r4, lr}
	ldr r2, _02223848 ; =0x02250D20
	mov r3, #0
	ldr r1, [r2, #8]
	mov r0, #0xa
	add r1, r1, #0x500
	strh r3, [r1, #0x28]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x2a]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x26]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x48]
	bl ov18_02223CF4
	ldr r4, _02223848 ; =0x02250D20
	ldr r0, [r4, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _02223820
_022237D4:
	ldrh r2, [r4]
	ldmib r4, {r0, r1}
	ldr r1, [r1, #0x508]
	bl sub_020CECC8
	cmp r0, #4
	beq _022237D4
	cmp r0, #2
	movne r0, #8
	ldmneia sp!, {r4, pc}
	ldr r0, _02223848 ; =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl sub_020CE478
	ldr r0, _02223848 ; =0x02250D20
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0
	strb r2, [r1, #0x50d]
	ldmia sp!, {r4, pc}
_02223820:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x508]
	bl sub_020CE478
	mov r0, r4
	ldr r0, [r0, #8]
	mov r1, #1
	strb r1, [r0, #0x50d]
	bl ov18_0222229C
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02223848: .word 0x02250D20
	arm_func_end ov18_02223778

	arm_func_start ov18_0222384C
ov18_0222384C: ; 0x0222384C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r3, _02223A1C ; =0x02250D20
	mov r4, r0
	ldr r0, [r3, #8]
	ldr r2, _02223A20 ; =0x000069C0
	strh r5, [r0, #0x32]
	ldr r5, [r3, #0xc]
	mov r0, #0
	add r1, r5, #0x1f
	add r1, r1, #0x7d00
	bic r1, r1, #0x1f
	str r1, [r3, #4]
	add r1, r5, #0x1000
	ldr r6, [r1, #0x4e4]
	add r1, r5, #0x1340
	bl sub_020C4AF0
	mov r0, r6
	bl ov18_0221F84C
	ldr r1, _02223A1C ; =0x02250D20
	ldr r0, [r1, #8]
	ldr r2, [r1, #0xc]
	add r0, r0, #0x500
	ldrh r3, [r0]
	add r0, r2, #0x1000
	sub r2, r3, #6
	str r2, [r0, #0x318]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #2]
	bl ov18_022243B0
	ldr r0, _02223A1C ; =0x02250D20
	ldr r0, [r0, #0xc]
	add r0, r0, #0x138
	add r0, r0, #0x1400
	bl ov18_022243E0
	mov r5, #0
	ldr r2, _02223A1C ; =0x02250D20
	mov r0, r5
	mvn r3, #0
_022238F0:
	ldr r1, [r2, #0xc]
	add r1, r1, r5, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x4e8]
	ldr r1, [r2, #0xc]
	add r1, r1, r5
	add r1, r1, #0x1000
	add r5, r5, #1
	strb r3, [r1, #0x526]
	cmp r5, #0xf
	blt _022238F0
	ldr r3, _02223A1C ; =0x02250D20
	ldr r2, _02223A24 ; =0x00005D40
	ldr r1, [r3, #0xc]
	add r1, r1, #0x1000
	strb r0, [r1, #0x524]
	ldr r1, [r3, #0xc]
	add r1, r1, #0x388
	add r1, r1, #0x1400
	bl sub_020C4AF0
	ldr r0, _02223A1C ; =0x02250D20
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x1e
	add r0, r0, #0x354
	add r0, r0, #0x1400
	bl sub_020C4CF4
	ldr r1, _02223A1C ; =0x02250D20
	mov r2, #1
	ldr r0, [r1, #8]
	ldr r3, _02223A28 ; =ov18_0221FAA0
	add r0, r0, #0x500
	strh r2, [r0, #0x24]
	ldr r0, [r1, #8]
	ldr r2, _02223A2C ; =ov18_02222330
	str r3, [r0, #0x51c]
	ldr r0, [r1, #8]
	str r2, [r0, #0x508]
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldrh r2, [r0, #0x34]
	add r0, r0, #0x500
	add r2, r2, #0x23
	bic r2, r2, #0x1f
	strh r2, [r0, #0x18]
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x36]
	ldr r0, [r1, #8]
	ldrh r1, [r0, #0x36]
	add r0, r0, #0x500
	add r1, r1, #0xe
	rsb r1, r1, r1, lsl #4
	add r1, r1, #0x29
	bic r1, r1, #0x1f
	mov r1, r1, lsl #1
	strh r1, [r0, #0x1a]
	bl ov18_02221BFC
	bl ov18_02223778
	mov r5, r0
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0xf
	mov r1, #1
	bl sub_020C64A8
	ldr r1, _02223A1C ; =0x02250D20
	ldr r1, [r1, #0xc]
	add r1, r1, #0x7000
	str r0, [r1, #0x4c8]
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223A1C: .word 0x02250D20
_02223A20: .word 0x000069C0
_02223A24: .word 0x00005D40
_02223A28: .word ov18_0221FAA0
_02223A2C: .word ov18_02222330
	arm_func_end ov18_0222384C

	arm_func_start ov18_02223A30
ov18_02223A30: ; 0x02223A30
	ldr r1, _02223A4C ; =0x02250D20
	ldr ip, _02223A50 ; =ov18_0222384C
	ldr r1, [r1, #0xc]
	mov r2, #1
	add r1, r1, #0x1000
	str r2, [r1, #0x320]
	bx ip
	; .align 2, 0
_02223A4C: .word 0x02250D20
_02223A50: .word ov18_0222384C
	arm_func_end ov18_02223A30

	arm_func_start ov18_02223A54
ov18_02223A54: ; 0x02223A54
	stmfd sp!, {r4, lr}
	ldr r0, _02223A88 ; =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl sub_020CED50
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl ov18_02223ED8
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02223A88: .word 0x02250D20
	arm_func_end ov18_02223A54

	arm_func_start ov18_02223A8C
ov18_02223A8C: ; 0x02223A8C
	ldr ip, _02223A94 ; =ov18_02223A54
	bx ip
	; .align 2, 0
_02223A94: .word ov18_02223A54
	arm_func_end ov18_02223A8C

	arm_func_start ov18_02223A98
ov18_02223A98: ; 0x02223A98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	bl sub_020C3D98
	ldr r1, _02223B24 ; =0x02250D20
	mov r4, r0
	ldr r2, [r1, #8]
	ldrb r0, [r2, #0x50d]
	cmp r0, #0
	bne _02223AC8
	mov r0, #0
	bl ov18_022222EC
	b _02223B14
_02223AC8:
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _02223B14
	mov r0, #0
	str r0, [r2, #0x5e4]
	ldr r0, [r1, #8]
	mov r1, r5
	add r0, r0, #0x500
	strh r1, [r0, #0x26]
	bl ov18_022241BC
	cmp r0, #0
	beq _02223B0C
	ldr r0, _02223B28 ; =ov18_02223A8C
	bl ov18_02224368
	mov r5, #0
	b _02223B14
_02223B0C:
	bl ov18_02223A54
	mov r5, r0
_02223B14:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02223B24: .word 0x02250D20
_02223B28: .word ov18_02223A8C
	arm_func_end ov18_02223A98

	arm_func_start ov18_02223B2C
ov18_02223B2C: ; 0x02223B2C
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _02223B64 ; =0x02250D20
	mov r4, r0
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _02223B54
	bl sub_020C42A8
_02223B54:
	bl ov18_02223A98
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02223B64: .word 0x02250D20
	arm_func_end ov18_02223B2C

	arm_func_start ov18_02223B68
ov18_02223B68: ; 0x02223B68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _02223CE8 ; =ov18_02222330
	mov r1, r5
	bl sub_020CF2E8
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	ldmhsia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _02223CEC ; =0x02250D20
	sub r4, r5, #1
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2, #0xc]
	mov r2, #4
	add r0, r0, #0xa8
	add r0, r0, #0x1400
	add r0, r0, r4, lsl #2
	bl sub_020C4CF4
	ldr r0, _02223CEC ; =0x02250D20
	mov r2, #0x16
	ldr r0, [r0, #0xc]
	mov r1, #0
	add r0, r0, #0x1340
	mla r0, r4, r2, r0
	bl sub_020C4CF4
	mov r0, r5
	bl ov18_02224400
	ldr ip, _02223CEC ; =0x02250D20
	mov r2, #0
	ldr r0, [ip, #0xc]
	sub r1, r2, #1
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	ldr r3, [ip, #0xc]
	add r0, r3, r4
	add r0, r0, #0x1500
	ldrsb r2, [r0, #0x26]
	cmp r2, r1
	beq _02223C88
	ldr r0, _02223CF0 ; =0x000005D4
	and r1, r2, #0xff
	mul r0, r1, r0
	add r1, r3, r0
	add r3, r1, #0x1d00
	mov r2, #1
	ldrh r6, [r3, #0x4e]
	mvn r1, r2, lsl r5
	and r6, r6, r1
	strh r6, [r3, #0x4e]
	ldr r3, [ip, #0xc]
	sub r6, r2, #2
	add r3, r3, r0
	add r3, r3, #0x1d00
	ldrh r7, [r3, #0x50]
	mov lr, r4
	orr r2, r7, r2, lsl r5
	strh r2, [r3, #0x50]
	ldr r2, [ip, #0xc]
	add r2, r2, lr
	add r2, r2, #0x1000
	strb r6, [r2, #0x526]
	ldr r2, [ip, #0xc]
	add r0, r2, r0
	add r0, r0, #0x1d00
	ldrh r2, [r0, #0x4c]
	and r1, r2, r1
	strh r1, [r0, #0x4c]
_02223C88:
	ldr r1, _02223CEC ; =0x02250D20
	mov ip, #1
	ldr r2, [r1, #0xc]
	add r0, r2, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, ip, lsl r5
	beq _02223CCC
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x535]
	mvn r2, ip, lsl r5
	sub r3, r3, #1
	strb r3, [r0, #0x535]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1500
	ldrh r1, [r0, #0x36]
	and r1, r1, r2
	strh r1, [r0, #0x36]
_02223CCC:
	ldr r0, _02223CEC ; =0x02250D20
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223CE8: .word ov18_02222330
_02223CEC: .word 0x02250D20
_02223CF0: .word 0x000005D4
	arm_func_end ov18_02223B68

	arm_func_start ov18_02223CF4
ov18_02223CF4: ; 0x02223CF4
	ldr r1, _02223D00 ; =0x02250D20
	strh r0, [r1, #0x26]
	bx lr
	; .align 2, 0
_02223D00: .word 0x02250D20
	arm_func_end ov18_02223CF4

	arm_func_start ov18_02223D04
ov18_02223D04: ; 0x02223D04
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r4, [sp, #0x18]
	mov r3, r2
	mov r2, r1
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #3
	mov r1, #0
	str r4, [sp, #8]
	bl sub_020CF64C
	mov r4, r0
	mov r1, r4
	mov r0, #0xf
	bl ov18_02223ED8
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov18_02223D04

	arm_func_start ov18_02223D50
ov18_02223D50: ; 0x02223D50
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, _02223E28 ; =0x02250D20
	mov r3, r1, lsl #0x10
	ldr r5, [ip, #8]
	mov ip, r2, lsl #0x10
	add lr, r5, #0x500
	ldrh r4, [lr, #0x28]
	mov r1, r0
	mov r2, r3, lsr #0x10
	cmp r4, #0
	ldrneh r0, [lr, #0x26]
	mov r4, ip, lsr #0x10
	cmpne r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [lr, #0x24]
	cmp r0, #1
	beq _02223DA4
	cmp r0, #2
	beq _02223DEC
	b _02223E20
_02223DA4:
	ldrh r0, [lr, #0x2c]
	cmp r0, #0
	moveq r0, #0x3e8
	movne r0, #0
	mov r3, r0, lsl #0x10
	str r4, [sp]
	ldr r0, [r5, #0x508]
	mov r3, r3, lsr #0x10
	bl ov18_02223D04
	cmp r0, #2
	bne _02223DE0
	ldr r1, _02223E28 ; =0x02250D20
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_02223DE0:
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02223DEC:
	ldr r0, _02223E2C ; =ov18_02222BF8
	mov r3, #0
	str r4, [sp]
	bl ov18_02223D04
	cmp r0, #2
	bne _02223E14
	ldr r1, _02223E28 ; =0x02250D20
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_02223E14:
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02223E20:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02223E28: .word 0x02250D20
_02223E2C: .word ov18_02222BF8
	arm_func_end ov18_02223D50

	arm_func_start ov18_02223E30
ov18_02223E30: ; 0x02223E30
	ldr r0, _02223E40 ; =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
_02223E40: .word 0x02250D20
	arm_func_end ov18_02223E30

	arm_func_start ov18_02223E44
ov18_02223E44: ; 0x02223E44
	ldr r0, _02223E54 ; =0x02250D20
	ldr r0, [r0, #8]
	ldrh r0, [r0, #0xc]
	bx lr
	; .align 2, 0
_02223E54: .word 0x02250D20
	arm_func_end ov18_02223E44

	arm_func_start ov18_02223E58
ov18_02223E58: ; 0x02223E58
	ldr r0, _02223EB4 ; =0x02250D20
	ldr r1, [r0, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	ldrh r0, [r1, #0xe]
	movne r2, #2
	moveq r2, #0
	cmp r0, #0
	movne r3, #1
	ldrh r0, [r1, #0x14]
	moveq r3, #0
	cmp r0, #0
	movne ip, #4
	ldrh r0, [r1, #0x16]
	moveq ip, #0
	cmp r0, #0
	movne r1, #8
	orr r0, r3, r2
	moveq r1, #0
	orr r0, ip, r0
	orr r0, r1, r0
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_02223EB4: .word 0x02250D20
	arm_func_end ov18_02223E58

	arm_func_start ov18_02223EB8
ov18_02223EB8: ; 0x02223EB8
	ldr r0, _02223ED4 ; =0x02250D20
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x50d]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_02223ED4: .word 0x02250D20
	arm_func_end ov18_02223EB8

	arm_func_start ov18_02223ED8
ov18_02223ED8: ; 0x02223ED8
	stmfd sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _02223F0C ; =0x02250D20
	strh r0, [sp]
	ldr r0, [r2, #8]
	strh r1, [sp, #2]
	ldr r2, [r0, #0x51c]
	add r1, sp, #0
	mov r0, #0xff
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02223F0C: .word 0x02250D20
	arm_func_end ov18_02223ED8

	.data


	.global Unk_ov18_0224976C
Unk_ov18_0224976C: ; 0x0224976C
	.incbin "incbin/overlay18_data.bin", 0xC, 0xE - 0xC

	.global Unk_ov18_0224976E
Unk_ov18_0224976E: ; 0x0224976E
	.incbin "incbin/overlay18_data.bin", 0xE, 0x10 - 0xE

	.global Unk_ov18_02249770
Unk_ov18_02249770: ; 0x02249770
	.incbin "incbin/overlay18_data.bin", 0x10, 0x12 - 0x10

	.global Unk_ov18_02249772
Unk_ov18_02249772: ; 0x02249772
	.incbin "incbin/overlay18_data.bin", 0x12, 0x14 - 0x12

	.global Unk_ov18_02249774
Unk_ov18_02249774: ; 0x02249774
	.incbin "incbin/overlay18_data.bin", 0x14, 0x18 - 0x14

	.global Unk_ov18_02249778
Unk_ov18_02249778: ; 0x02249778
	.incbin "incbin/overlay18_data.bin", 0x18, 0x1C - 0x18

	.global Unk_ov18_0224977C
Unk_ov18_0224977C: ; 0x0224977C
	.incbin "incbin/overlay18_data.bin", 0x1C, 0x14



	.bss


	.global Unk_ov18_02250D20
Unk_ov18_02250D20: ; 0x02250D20
	.space 0x4

	.global Unk_ov18_02250D24
Unk_ov18_02250D24: ; 0x02250D24
	.space 0x4

	.global Unk_ov18_02250D28
Unk_ov18_02250D28: ; 0x02250D28
	.space 0x4

	.global Unk_ov18_02250D2C
Unk_ov18_02250D2C: ; 0x02250D2C
	.space 0x4

	.global Unk_ov18_02250D40
Unk_ov18_02250D40: ; 0x02250D40
	.space 0x20

