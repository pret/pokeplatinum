	.include "macros/function.inc"
	.include "include/unk_020CE478.inc"

	

	.text


	arm_func_start sub_020CE478
sub_020CE478: ; 0x020CE478
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_020C3D98
	mov r5, r0
	bl sub_020CDF34
	movs r4, r0
	beq _020CE4A4
	mov r0, r5
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020CE4A4:
	bl sub_020CDF24
	str r6, [r0, #0xc8]
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020CE478

	arm_func_start sub_020CE4BC
sub_020CE4BC: ; 0x020CE4BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _020CE524
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x44
	bl sub_020C4CF4
	mov r3, #0
	ldr r1, _020CE590 ; =0x0000FFFF
	mov r7, #0x82
	mov r2, #0x19
	add r0, sp, #0x14
	strh r7, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r6, [sp, #6]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x1a]
	str r4, [sp, #0x1c]
	strh r3, [sp, #0x12]
	bl sub_020C3FA0
_020CE524:
	bl sub_020C3D98
	mov r8, r0
	bl sub_020CDF34
	movs r7, r0
	beq _020CE54C
	mov r0, r8
	bl sub_020C3DAC
	add sp, sp, #0x44
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CE54C:
	bl sub_020CDF24
	add r0, r0, r6, lsl #2
	str r5, [r0, #0xcc]
	str r4, [r0, #0x10c]
	cmp r5, #0
	beq _020CE57C
	bl sub_020CE448
	strh r0, [sp, #0x22]
	bl sub_020CE418
	strh r0, [sp, #0x20]
	add r0, sp, #0
	blx r5
_020CE57C:
	mov r0, r8
	bl sub_020C3DAC
	mov r0, #0
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020CE590: .word 0x0000FFFF
	arm_func_end sub_020CE4BC

	arm_func_start sub_020CE594
sub_020CE594: ; 0x020CE594
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020CDF24
	mov r4, r0
	bl sub_020CDF34
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #0x7d0
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	mov r1, r5
	mov r2, #0x7d0
	bl sub_020C4C14
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CE594

	arm_func_start sub_020CE5E0
sub_020CE5E0: ; 0x020CE5E0
	stmfd sp!, {r4, lr}
	bl sub_020CDF24
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_020CDF98
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r1, #0x3c
	mov r1, #4
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x3c]
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CE5E0

	arm_func_start sub_020CE64C
sub_020CE64C: ; 0x020CE64C
	stmfd sp!, {r3, r4, r5, lr}
	bl sub_020CDF24
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_020CDF98
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r1, #0x188
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	moveq r5, #1
	add r0, r1, #0x3e
	mov r1, #2
	movne r5, #0
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	cmp r5, #1
	ldrh r5, [r0, #0x3e]
	addne r0, r5, #0x51
	bicne r0, r0, #0x1f
	movne r0, r0, lsl #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r0, #0xf8
	mov r1, #2
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	add r1, r5, #0xc
	ldrh r0, [r0, #0xf8]
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	mov r0, r0, lsl #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CE64C

	arm_func_start sub_020CE710
sub_020CE710: ; 0x020CE710
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r4, r1
	bl sub_020CDF24
	mov r6, r0
	bl sub_020CDF34
	cmp r0, #0
	addne sp, sp, #0x3c
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #1
	blo _020CE74C
	cmp r4, #0xf
	bls _020CE758
_020CE74C:
	add sp, sp, #0x3c
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CE758:
	ldr r0, [r6, #4]
	mov r1, #2
	add r0, r0, #0x82
	add r0, r0, #0x100
	bl sub_020C2C1C
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	addeq sp, sp, #0x3c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r0, r5, #0xa
	str r0, [sp]
	mov r3, #0
	add r2, sp, #0
_020CE7B0:
	ldr r0, [r2, r3, lsl #2]
	ldrh r1, [r0, #4]
	cmp r4, r1
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r3, r3, #1
	add r0, r2, r3, lsl #2
	ldrh r1, [r5, #6]
	ldr r0, [r0, #-4]
	add r0, r1, r0
	str r0, [r2, r3, lsl #2]
	ldrh r0, [r5, #4]
	cmp r3, r0
	blt _020CE7B0
	mov r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020CE710

	arm_func_start sub_020CE7F4
sub_020CE7F4: ; 0x020CE7F4
	stmfd sp!, {r3, lr}
	bl sub_020CDF34
	cmp r0, #0
	movne r0, #0x8000
	ldreq r0, _020CE810 ; =0x027FFCFA
	ldreqh r0, [r0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE810: .word 0x027FFCFA
	arm_func_end sub_020CE7F4

	arm_func_start sub_020CE814
sub_020CE814: ; 0x020CE814
	stmfd sp!, {r4, lr}
	bl sub_020CDF24
	mov r4, r0
	bl sub_020CDF34
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	ldrh r0, [r1]
	cmp r0, #9
	beq _020CE85C
	cmp r0, #0xa
	cmpne r0, #0xb
	beq _020CE884
	b _020CE89C
_020CE85C:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl sub_020C2C1C
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020CE884:
	add r0, r1, #0xbc
	mov r1, #2
	bl sub_020C2C1C
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0xbc]
	ldmia sp!, {r4, pc}
_020CE89C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CE814

	arm_func_start sub_020CE8A4
sub_020CE8A4: ; 0x020CE8A4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	mov r2, #0
	add r3, sp, #0
	mov r1, r2
_020CE8C0:
	ldrb r0, [r3], #1
	add r2, r2, #1
	cmp r2, #6
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	blt _020CE8C0
	ldr r0, _020CE92C ; =0x027FFC3C
	ldr ip, _020CE930 ; =0x66666667
	ldr r0, [r0, #0]
	mov r3, #0x14
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	rsb r0, r0, r0, lsl #3
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r2, lsr #0x1f
	smull r2, lr, ip, r2
	add lr, r1, lr, asr #3
	smull r1, r2, r3, lr
	rsb lr, r1, r0, lsr #16
	add r0, lr, #0xc8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE92C: .word 0x027FFC3C
_020CE930: .word 0x66666667
	arm_func_end sub_020CE8A4

	arm_func_start sub_020CE934
sub_020CE934: ; 0x020CE934
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	mov r1, #0
	add r3, sp, #0
	mov r2, r1
_020CE950:
	ldrb r0, [r3], #1
	add r1, r1, #1
	cmp r1, #6
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	blt _020CE950
	ldr r0, _020CE9C0 ; =0x027FFC3C
	mov r1, #0xd
	ldr r0, [r0, #0]
	ldr r3, _020CE9C4 ; =0x66666667
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mul r0, r2, r1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r2, lsr #0x1f
	smull r2, ip, r3, r2
	add ip, r1, ip, asr #2
	mov r3, #0xa
	smull r1, r2, r3, ip
	rsb ip, r1, r0, lsr #16
	add r0, ip, #0x1e
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE9C0: .word 0x027FFC3C
_020CE9C4: .word 0x66666667
	arm_func_end sub_020CE934

	arm_func_start sub_020CE9C8
sub_020CE9C8: ; 0x020CE9C8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	ldrh r2, [r1, #0x3c]
	mov lr, r0
	cmp r2, #0
	beq _020CEA10
	mov r0, #0
	add r5, sp, #0
	strb r0, [sp]
	mov r4, #8
_020CE9F0:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CE9F0
	ldr r0, [r5, #0]
	add sp, sp, #0x84
	str r0, [lr]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CEA10:
	ldrh r0, [r1, #0x3e]
	strb r0, [sp]
	ands r0, r0, #0xff
	bne _020CEA48
	add r5, sp, #0
	mov r4, #8
_020CEA28:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CEA28
	ldr r0, [r5, #0]
	add sp, sp, #0x84
	str r0, [lr]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CEA48:
	cmp r0, #0x10
	movhi r0, #0x10
	strhib r0, [sp]
	ldrh r2, [r1]
	ldrb r0, [sp]
	mov r3, #0
	mov r2, r2, lsl #1
	sub r4, r2, #0x40
	cmp r0, #0
	add r0, r1, #0x40
	mov r2, r3
	and r1, r4, #0xff
	ble _020CEAF8
	add ip, sp, #0
_020CEA80:
	ldrb r5, [r0]
	add r6, ip, r2, lsl #3
	add r4, r0, #2
	strb r5, [r6, #4]
	ldrb r5, [r0, #1]
	strb r5, [r6, #5]
	str r4, [r6, #8]
	ldrb r4, [r6, #5]
	add r4, r4, #2
	and r5, r4, #0xff
	add r3, r3, r5
	and r3, r3, #0xff
	cmp r3, r1
	bls _020CEAE4
	mov r0, #0
	strb r0, [sp]
	mov r4, #8
_020CEAC4:
	ldmia ip!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CEAC4
	ldr r0, [ip]
	add sp, sp, #0x84
	str r0, [lr]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020CEAE4:
	ldrb r4, [sp]
	add r2, r2, #1
	add r0, r0, r5
	cmp r2, r4
	blt _020CEA80
_020CEAF8:
	add r4, sp, #0
	mov ip, #8
_020CEB00:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _020CEB00
	ldr r0, [r4, #0]
	str r0, [lr]
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020CE9C8

	arm_func_start sub_020CEB20
sub_020CEB20: ; 0x020CEB20
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _020CEB90 ; =0x02101484
	ldr r0, [r0, #0]
	cmp r0, #0x10000
	bne _020CEB68
	bl sub_020CB8A8
	add r0, sp, #0
	bl sub_020CBA30
	cmp r0, #0
	bne _020CEB68
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _020CEB90 ; =0x02101484
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
_020CEB68:
	ldr r1, _020CEB90 ; =0x02101484
	ldr r0, [r1, #0]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #0x10
	str r2, [r1, #0]
	mov r0, r0, lsr #0x10
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020CEB90: .word 0x02101484
	arm_func_end sub_020CEB20

	.data


	.global Unk_02101484
Unk_02101484: ; 0x02101484
	.incbin "incbin/arm9_data.bin", 0x27A4, 0x4

