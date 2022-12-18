
	.include "macros/function.inc"
	.include "include/arm9_10_arm.inc"

	.text

	arm_func_start sub_0209C400
sub_0209C400: ; 0x0209C400
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_0209C420:
	ldr r4, [r1, #0]
	mov r0, r5
	bl sub_0209C444
	mov r1, r4
	cmp r4, #0
	bne _0209C420
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_0209C400

	arm_func_start sub_0209C444
sub_0209C444: ; 0x0209C444
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r7, r0
	add r0, r6, #8
	bl sub_020A22B8
	movs r1, r0
	beq _0209C484
	add r5, r7, #0x1c
	add r4, r6, #8
_0209C46C:
	mov r0, r5
	bl sub_020A2304
	mov r0, r4
	bl sub_020A22B8
	movs r1, r0
	bne _0209C46C
_0209C484:
	add r0, r6, #0x14
	bl sub_020A22B8
	movs r1, r0
	beq _0209C4B4
	add r5, r7, #0x1c
	add r4, r6, #0x14
_0209C49C:
	mov r0, r5
	bl sub_020A2304
	mov r0, r4
	bl sub_020A22B8
	movs r1, r0
	bne _0209C49C
_0209C4B4:
	mov r1, r6
	add r0, r7, #4
	bl sub_020A2238
	mov r1, r6
	add r0, r7, #0x10
	bl sub_020A2304
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_0209C444

	arm_func_start sub_0209C4D8
sub_0209C4D8: ; 0x0209C4D8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	mov r4, #0
	beq _0209C55C
	add r1, sp, #0
	str r4, [r1, #0]
	str r4, [r1, #4]
	add r0, r7, #0x10
	str r4, [r1, #8]
	bl sub_020A22B8
	ldr r1, [r7, #0x28]
	add r2, sp, #0
	add r1, r1, r6, lsl #5
	mov r4, r0
	bl sub_0209D998
	cmp r5, #0
	beq _0209C538
	mov r0, r4
	blx r5
_0209C538:
	mov r1, r4
	add r0, r7, #4
	bl sub_020A2304
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	movne r4, #0
_0209C55C:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_0209C4D8

	arm_func_start sub_0209C56C
sub_0209C56C: ; 0x0209C56C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	mov r4, #0
	beq _0209C5D0
	add r0, r7, #0x10
	bl sub_020A22B8
	ldr r1, [r7, #0x28]
	mov r4, r0
	mov r2, r5
	add r1, r1, r6, lsl #5
	bl sub_0209D998
	mov r1, r4
	add r0, r7, #4
	bl sub_020A2304
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	movne r4, #0
_0209C5D0:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_0209C56C

	arm_func_start sub_0209C5E0
sub_0209C5E0: ; 0x0209C5E0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _0209C6A4 ; =0x04000060
	mov r4, r0
	ldrh r0, [r2]
	bic r0, r0, #0x3000
	orr r0, r0, #8
	strh r0, [r2]
	str r1, [r4, #0x44]
	ldr r0, [r4, #0x38]
	mov r0, r0, lsl #7
	movs r0, r0, lsr #0x1f
	bne _0209C65C
	ldr r5, [r4, #4]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_0209C628:
	str r5, [r4, #0x40]
	ldr r0, [r5, #0x24]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1f
	bne _0209C644
	mov r0, r4
	bl sub_0209CF00
_0209C644:
	ldr r5, [r5, #0]
	cmp r5, #0
	bne _0209C628
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_0209C65C:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_0209C670:
	str r5, [r4, #0x40]
	ldr r0, [r5, #0x24]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1f
	bne _0209C68C
	mov r0, r4
	bl sub_0209CF00
_0209C68C:
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _0209C670
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	; .align 2, 0
_0209C6A4: .word 0x04000060
	arm_func_end sub_0209C5E0

	arm_func_start sub_0209C6A8
sub_0209C6A8: ; 0x0209C6A8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	ldr r7, [r8, #4]
	cmp r7, #0
	beq _0209C7BC
	add sl, r8, #4
	add sb, r8, #0x10
	mov r4, #0
_0209C6C8:
	ldr r2, [r7, #0x24]
	ldr r1, [r7, #0x20]
	mov r0, r2, lsl #0x1b
	movs r0, r0, lsr #0x1f
	ldr r5, [r1, #0]
	ldr r6, [r7, #0]
	bne _0209C6FC
	ldrh r1, [r7, #0x4c]
	ldrh r0, [r5, #0x32]
	cmp r1, r0
	orrhs r0, r2, #0x10
	strhs r0, [r7, #0x24]
	strhsh r4, [r7, #0x4c]
_0209C6FC:
	ldr r0, [r7, #0x24]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1f
	bne _0209C738
	ldr r0, [r7, #0x80]
	mov r0, r0, lsl #0xd
	movs r0, r0, lsr #0x1d
	beq _0209C72C
	ldrh r1, [r8, #0x48]
	sub r0, r0, #1
	cmp r1, r0
	bne _0209C738
_0209C72C:
	mov r0, r8
	mov r1, r7
	bl sub_0209D150
_0209C738:
	ldr r0, [r5, #0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _0209C770
	ldrh r1, [r5, #0x3c]
	cmp r1, #0
	beq _0209C770
	ldr r0, [r7, #0x24]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _0209C770
	ldrh r0, [r7, #0x4c]
	cmp r0, r1
	bhi _0209C780
_0209C770:
	ldr r0, [r7, #0x24]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _0209C7B0
_0209C780:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _0209C7B0
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bne _0209C7B0
	mov r0, sl
	mov r1, r7
	bl sub_020A2238
	mov r1, r0
	mov r0, sb
	bl sub_020A2304
_0209C7B0:
	mov r7, r6
	cmp r6, #0
	bne _0209C6C8
_0209C7BC:
	ldrh r0, [r8, #0x48]
	add r0, r0, #1
	strh r0, [r8, #0x48]
	ldrh r0, [r8, #0x48]
	cmp r0, #1
	movhi r0, #0
	strhih r0, [r8, #0x48]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end sub_0209C6A8

	arm_func_start sub_0209C7E0
sub_0209C7E0: ; 0x0209C7E0
	ldr ip, _0209C7EC ; =sub_0209C808
	ldr r1, _0209C7F0 ; =sub_0209CE90
	bx ip
	; .align 2, 0
_0209C7EC: .word sub_0209C808
_0209C7F0: .word sub_0209CE90
	arm_func_end sub_0209C7E0

	arm_func_start sub_0209C7F4
sub_0209C7F4: ; 0x0209C7F4
	ldr ip, _0209C800 ; =sub_0209C8BC
	ldr r1, _0209C804 ; =sub_0209CEC8
	bx ip
	; .align 2, 0
_0209C800: .word sub_0209C8BC
_0209C804: .word sub_0209CEC8
	arm_func_end sub_0209C7F4

	arm_func_start sub_0209C808
sub_0209C808: ; 0x0209C808
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov fp, r1
	bl sub_020C0F1C
	ldrh r0, [sl, #0x32]
	mov sb, #0
	cmp r0, #0
	ble _0209C8A8
	mov r0, #1
	mov r5, sb
	mov r4, sb
	str r0, [sp]
_0209C83C:
	ldr r0, [sl, #0x2c]
	mov r6, r4
	ldr r7, [r0, r5]
	add r8, r0, r5
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _0209C890
	ldr r1, [r7, #4]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	cmp r1, #2
	ldreq r1, [sp]
	movne r1, r4
	blx fp
	mov r6, r0
	ldr r1, [r8]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	add r0, r1, r0
	mov r1, r6
	bl sub_020C0F50
_0209C890:
	str r6, [r8, #8]
	ldrh r0, [sl, #0x32]
	add sb, sb, #1
	add r5, r5, #0x14
	cmp sb, r0
	blt _0209C83C
_0209C8A8:
	bl sub_020C0FBC
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end sub_0209C808

	arm_func_start sub_0209C8BC
sub_0209C8BC: ; 0x0209C8BC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov fp, r1
	bl sub_020C0D34
	ldrh r0, [sl, #0x32]
	mov sb, #0
	cmp r0, #0
	ble _0209C974
	mov r0, #1
	mov r6, sb
	str sb, [sp, #4]
	str r0, [sp]
	mov r4, #0x14
_0209C8F4:
	ldr r2, [sl, #0x2c]
	ldr r7, [r2, r6]
	add r8, r2, r6
	ldr r0, [r7, #4]
	mov r1, r0, lsl #0xe
	movs r1, r1, lsr #0x1f
	beq _0209C928
	mov r0, r0, lsl #6
	mov r1, r0, lsr #0x18
	mla r0, r1, r4, r2
	ldr r0, [r0, #4]
	str r0, [r8, #4]
	b _0209C960
_0209C928:
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #5
	ldreq r1, [sp]
	ldr r0, [r7, #8]
	ldrne r1, [sp, #4]
	blx fp
	mov r5, r0
	ldr r0, [r8]
	ldr r2, [r7, #8]
	add r0, r0, #0x20
	mov r1, r5
	bl sub_020C0D90
	str r5, [r8, #4]
_0209C960:
	ldrh r0, [sl, #0x32]
	add sb, sb, #1
	add r6, r6, #0x14
	cmp sb, r0
	blt _0209C8F4
_0209C974:
	bl sub_020C0ED0
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end sub_0209C8BC

	arm_func_start sub_0209C988
sub_0209C988: ; 0x0209C988
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sb, r1
	ldrh r1, [sb, #8]
	mov sl, r0
	mov r8, #0x20
	strh r1, [sl, #0x30]
	ldrh r0, [sb, #0xa]
	strh r0, [sl, #0x32]
	ldrh r0, [sl, #0x30]
	ldr r1, [sl]
	mov r0, r0, lsl #5
	blx r1
	str r0, [sl, #0x28]
	ldrh r2, [sl, #0x30]
	ldr r0, [sl, #0x28]
	mov r1, #0
	mov r2, r2, lsl #5
	bl sub_020C4CF4
	ldrh r1, [sl, #0x30]
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _0209CC28
	mov r6, r0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
_0209CA04:
	ldr r1, [sl, #0x28]
	add r0, sb, r8
	str r0, [r1, r6]
	ldr r0, [r1, r6]
	add r8, r8, #0x58
	ldr r0, [r0, #0]
	add r7, r1, r6
	str r0, [sp, #0x28]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #4]
	ldreq r0, [sp, #0x10]
	addne r8, r8, #0xc
	streq r0, [r7, #4]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #8]
	ldreq r0, [sp, #0x14]
	addne r8, r8, #0xc
	streq r0, [r7, #8]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0x15
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #0xc]
	ldreq r0, [sp, #0x18]
	addne r8, r8, #8
	streq r0, [r7, #0xc]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #0x10]
	ldreq r0, [sp, #0x1c]
	addne r8, r8, #0xc
	streq r0, [r7, #0x10]
	ldr r0, [sp, #0x28]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	addne r0, sb, r8
	strne r0, [r7, #0x14]
	ldreq r0, [sp, #0x20]
	addne r8, r8, #0x14
	streq r0, [r7, #0x14]
	ldr r0, [sp, #0x28]
	mov r1, r0, lsl #7
	mov r2, r0, lsl #6
	mov r5, r1, lsr #0x1f
	mov r4, r2, lsr #0x1f
	add r1, r5, r2, lsr #31
	mov r2, r0, lsl #5
	add r1, r1, r2, lsr #31
	mov r3, r0, lsl #4
	mov fp, r2, lsr #0x1f
	add r2, r1, r3, lsr #31
	mov r1, r3, lsr #0x1f
	mov ip, r0, lsl #3
	str r1, [sp, #4]
	mov r3, r0, lsl #2
	mov r0, ip, lsr #0x1f
	add r1, r2, ip, lsr #31
	str r0, [sp, #8]
	add r0, r1, r3, lsr #31
	strh r0, [r7, #0x1c]
	mov r0, r3, lsr #0x1f
	str r0, [sp, #0xc]
	ldrh r0, [r7, #0x1c]
	cmp r0, #0
	beq _0209CC04
	mov r0, r0, lsl #3
	ldr r1, [sl]
	blx r1
	str r0, [r7, #0x18]
	cmp r5, #0
	ldr r0, [r7, #0x18]
	beq _0209CB58
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0209CCE8 ; =sub_020A2204
	add r8, r8, #8
	str r1, [r0, #0]
	add r0, r0, #8
_0209CB58:
	cmp r4, #0
	beq _0209CB78
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0209CCEC ; =sub_020A213C
	add r8, r8, #8
	str r1, [r0, #0]
	add r0, r0, #8
_0209CB78:
	cmp fp, #0
	beq _0209CB98
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0209CCF0 ; =sub_020A20B8
	add r8, r8, #0x10
	str r1, [r0, #0]
	add r0, r0, #8
_0209CB98:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0209CBBC
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0209CCF4 ; =sub_020A1FE0
	add r8, r8, #4
	str r1, [r0, #0]
	add r0, r0, #8
_0209CBBC:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0209CBE0
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0209CCF8 ; =sub_020A1EC4
	add r8, r8, #8
	str r1, [r0, #0]
	add r0, r0, #8
_0209CBE0:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0209CC0C
	add r1, sb, r8
	str r1, [r0, #4]
	ldr r1, _0209CCFC ; =sub_020A1E30
	add r8, r8, #0x10
	str r1, [r0, #0]
	b _0209CC0C
_0209CC04:
	ldr r0, [sp, #0x24]
	str r0, [r7, #0x18]
_0209CC0C:
	ldr r0, [sp]
	ldrh r1, [sl, #0x30]
	add r0, r0, #1
	add r6, r6, #0x20
	str r0, [sp]
	cmp r0, r1
	blt _0209CA04
_0209CC28:
	ldrh r2, [sl, #0x32]
	mov r0, #0x14
	ldr r1, [sl]
	mul r0, r2, r0
	blx r1
	str r0, [sl, #0x2c]
	ldrh r3, [sl, #0x32]
	mov r1, #0x14
	ldr r0, [sl, #0x2c]
	mul r2, r3, r1
	mov r1, #0
	bl sub_020C4CF4
	ldrh r0, [sl, #0x32]
	mov r3, #0
	cmp r0, #0
	addle sp, sp, #0x2c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	mov r4, r3
	mov r0, #1
_0209CC78:
	ldr r2, [sl, #0x2c]
	add r1, sb, r8
	str r1, [r2, r4]
	ldr r5, [r1, #4]
	add r2, r2, r4
	mov r5, r5, lsl #0x18
	mov r5, r5, lsr #0x1c
	add r5, r5, #3
	mov r5, r0, lsl r5
	strh r5, [r2, #0x10]
	ldr r5, [r1, #4]
	add r3, r3, #1
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1c
	add r5, r5, #3
	mov r5, r0, lsl r5
	strh r5, [r2, #0x12]
	ldr r5, [r1, #4]
	add r4, r4, #0x14
	str r5, [r2, #0xc]
	ldrh r2, [sl, #0x32]
	ldr r1, [r1, #0x1c]
	cmp r3, r2
	add r8, r8, r1
	blt _0209CC78
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_0209CCE8: .word sub_020A2204
_0209CCEC: .word sub_020A213C
_0209CCF0: .word sub_020A20B8
_0209CCF4: .word sub_020A1FE0
_0209CCF8: .word sub_020A1EC4
_0209CCFC: .word sub_020A1E30
	arm_func_end sub_0209C988

	arm_func_start sub_0209CD00
sub_0209CD00: ; 0x0209CD00
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r0, #0x4c
	mov r7, r1
	mov r6, r2
	mov r4, r3
	blx r8
	mov r5, r0
	mov r1, #0
	mov r2, #0x4c
	bl sub_020C4CF4
	strh r7, [r5, #0x34]
	strh r6, [r5, #0x36]
	ldrh r0, [sp, #0x20]
	and r2, r4, #0x3f
	ldr r1, [r5, #0x38]
	and r0, r0, #0x3f
	bic r1, r1, #0x3f
	orr r0, r1, r0
	str r0, [r5, #0x38]
	ldrh r0, [sp, #0x24]
	ldr r3, [r5, #0x38]
	mov r1, #0
	bic r3, r3, #0xfc0
	and r0, r0, #0x3f
	orr r0, r3, r0, lsl #6
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x38]
	mov r0, #0x9c
	mul r4, r7, r0
	bic ip, r3, #0x3f000
	mov r0, r3, lsl #0x1a
	mov r0, r0, lsr #0x1a
	and r0, r0, #0x3f
	orr r0, ip, r0, lsl #12
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x38]
	mov r0, r4
	bic r3, r3, #0xfc0000
	orr r2, r3, r2, lsl #18
	str r2, [r5, #0x38]
	ldr r2, [r5, #0x38]
	bic r2, r2, #0x1000000
	str r2, [r5, #0x38]
	ldr r2, [r5, #0x38]
	bic r2, r2, #0xfe000000
	str r2, [r5, #0x38]
	str r8, [r5]
	str r1, [r5, #8]
	str r1, [r5, #0x14]
	str r1, [r5, #0x20]
	str r1, [r5, #4]
	str r1, [r5, #0x10]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x3c]
	strh r1, [r5, #0x48]
	blx r8
	mov r2, r4
	mov sb, r0
	mov r1, #0
	bl sub_020C4CF4
	cmp r7, #0
	mov sl, #0
	ble _0209CE20
	add r4, r5, #0x10
_0209CE04:
	mov r0, r4
	mov r1, sb
	bl sub_020A2304
	add sl, sl, #1
	cmp sl, r7
	add sb, sb, #0x9c
	blt _0209CE04
_0209CE20:
	mov r0, #0x44
	mul r4, r6, r0
	mov r0, r4
	blx r8
	mov r2, r4
	mov r1, #0
	mov r8, r0
	bl sub_020C4CF4
	cmp r6, #0
	mov r7, #0
	ble _0209CE6C
	add r4, r5, #0x1c
_0209CE50:
	mov r0, r4
	mov r1, r8
	bl sub_020A2304
	add r7, r7, #1
	cmp r7, r6
	add r8, r8, #0x44
	blt _0209CE50
_0209CE6C:
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	strh r0, [r5, #0x32]
	ldrh r1, [r5, #0x32]
	mov r0, r5
	strh r1, [r5, #0x30]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end sub_0209CD00

	arm_func_start sub_0209CE90
sub_0209CE90: ; 0x0209CE90
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _0209CEC0 ; =0x02100DF4
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	ldr r1, _0209CEC4 ; =0x0000FFFF
	and r0, r0, r1
	mov r0, r0, lsl #3
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_0209CEC0: .word 0x02100DF4
_0209CEC4: .word 0x0000FFFF
	arm_func_end sub_0209CE90

	arm_func_start sub_0209CEC8
sub_0209CEC8: ; 0x0209CEC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _0209CEF8 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	ldr r1, _0209CEFC ; =0x0000FFFF
	and r0, r0, r1
	mov r0, r0, lsl #3
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_0209CEF8: .word 0x02100DEC
_0209CEFC: .word 0x0000FFFF
	arm_func_end sub_0209CEC8

	arm_func_start sub_0209CF00
sub_0209CF00: ; 0x0209CF00
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0x40]
	ldr r1, [r1, #0x20]
	ldr r5, [r1, #0]
	ldr r1, [r5, #0]
	mov r2, r1, lsl #0xa
	movs r2, r2, lsr #0x1f
	beq _0209CF58
	bl sub_0209CF7C
	ldr r0, [r5, #0]
	mov r0, r0, lsl #9
	movs r0, r0, lsr #0x1f
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	mov r0, r4
	bl sub_0209D064
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_0209CF58:
	mov r1, r1, lsl #9
	movs r1, r1, lsr #0x1f
	bne _0209CF68
	bl sub_0209D064
_0209CF68:
	mov r0, r4
	bl sub_0209CF7C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_0209CF00

	arm_func_start sub_0209CF7C
sub_0209CF7C: ; 0x0209CF7C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r6, [r7, #0x40]
	mov r4, #0
	ldr r5, [r6, #0x20]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	ldr r0, [r5, #0x14]
	ldr r2, [r7, #0x2c]
	ldrb r1, [r0, #0xf]
	mov r0, #0x14
	mla r0, r1, r0, r2
	bl sub_0209DC68
	ldr r0, [r5, #0x14]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x17
	mov r0, r0, lsr #0x1e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0209D01C
_0209CFE4: ; jump table
	b _0209CFF8 ; case 0
	b _0209D000 ; case 1
	b _0209D008 ; case 2
	b _0209D010 ; case 3
	b _0209D018 ; case 4
_0209CFF8:
	ldr r4, _0209D054 ; =sub_0209FAB8
	b _0209D01C
_0209D000:
	ldr r4, _0209D058 ; =sub_0209ECF0
	b _0209D01C
_0209D008:
	ldr r4, _0209D05C ; =sub_0209E650
	b _0209D01C
_0209D010:
	ldr r4, _0209D060 ; =sub_0209DD54
	b _0209D01C
_0209D018:
	ldr r4, _0209D060 ; =sub_0209DD54
_0209D01C:
	ldr r5, [r6, #0x14]
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
_0209D030:
	mov r0, r7
	mov r1, r5
	blx r4
	ldr r5, [r5, #0]
	cmp r5, #0
	bne _0209D030
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	; .align 2, 0
_0209D054: .word sub_0209FAB8
_0209D058: .word sub_0209ECF0
_0209D05C: .word sub_0209E650
_0209D060: .word sub_0209DD54
	arm_func_end sub_0209CF7C

	arm_func_start sub_0209D064
sub_0209D064: ; 0x0209D064
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r6, [r7, #0x40]
	ldr r2, [r7, #0x2c]
	ldr r1, [r6, #0x20]
	mov r0, #0x14
	ldr r5, [r1, #0]
	mov r4, #0
	ldrb r1, [r5, #0x47]
	mla r0, r1, r0, r2
	bl sub_0209DC68
	ldr r0, [r5, #0]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0209D0E0
_0209D0A8: ; jump table
	b _0209D0BC ; case 0
	b _0209D0C4 ; case 1
	b _0209D0CC ; case 2
	b _0209D0D4 ; case 3
	b _0209D0DC ; case 4
_0209D0BC:
	ldr r4, _0209D138 ; =sub_0209FF0C
	b _0209D0E0
_0209D0C4:
	ldr r4, _0209D13C ; =sub_0209F3D0
	b _0209D0E0
_0209D0CC:
	ldr r4, _0209D140 ; =sub_0209E9A0
	b _0209D0E0
_0209D0D4:
	ldr r4, _0209D144 ; =sub_0209E1D4
	b _0209D0E0
_0209D0DC:
	ldr r4, _0209D144 ; =sub_0209E1D4
_0209D0E0:
	ldr r0, [r5, #0]
	ldr r8, [r6, #8]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	ldrne r5, _0209D148 ; =sub_0209DC68
	ldreq r5, _0209D14C ; =sub_0209DC64
	cmp r8, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r6, #0x14
_0209D108:
	ldrb r1, [r8, #0x2c]
	ldr r0, [r7, #0x2c]
	mla r0, r1, r6, r0
	blx r5
	mov r0, r7
	mov r1, r8
	blx r4
	ldr r8, [r8]
	cmp r8, #0
	bne _0209D108
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209D138: .word sub_0209FF0C
_0209D13C: .word sub_0209F3D0
_0209D140: .word sub_0209E9A0
_0209D144: .word sub_0209E1D4
_0209D148: .word sub_0209DC68
_0209D14C: .word sub_0209DC64
	arm_func_end sub_0209D064

	arm_func_start sub_0209D150
sub_0209D150: ; 0x0209D150
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sb, r1
	ldr r8, [sb, #0x20]
	mov sl, r0
	ldr r0, [r8, #0x14]
	ldr r4, [r8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r6, #0
	str r0, [sp, #0x24]
	ldrb r0, [r4, #0x46]
	ldr r2, [sb, #0x90]
	ldrh r7, [r8, #0x1c]
	add r0, r0, #0x180
	cmp r2, #0
	str r0, [sp, #8]
	beq _0209D1A4
	mov r0, sb
	mov r1, r6
	blx r2
_0209D1A4:
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	beq _0209D1BC
	ldrh r0, [sb, #0x4c]
	cmp r0, r1
	bhs _0209D204
_0209D1BC:
	ldrh r0, [sb, #0x4c]
	ldrb r1, [sb, #0x80]
	bl sub_020E1F6C
	cmp r1, #0
	bne _0209D204
	ldr r1, [sb, #0x24]
	mov r0, r1, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _0209D204
	mov r0, r1, lsl #0x1e
	movs r0, r0, lsr #0x1f
	bne _0209D204
	mov r0, r1, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _0209D204
	mov r0, sb
	add r1, sl, #0x1c
	bl sub_020A08DC
_0209D204:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	beq _0209D234
	ldr r0, _0209D980 ; =sub_020A1DA0
	add r6, r6, #1
	str r0, [sp, #0x28]
	ldr r0, [r8, #4]
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	str r0, [sp, #0x2c]
_0209D234:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	beq _0209D280
	ldr r3, [r8, #8]
	ldrh r0, [r3, #8]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _0209D280
	ldr r2, _0209D984 ; =sub_020A1BD4
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldrh r1, [r3, #8]
	mov r2, r6, lsl #3
	add r0, sp, #0x2c
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1f
	add r6, r6, #1
	str r1, [r0, r2]
_0209D280:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x15
	movs r0, r0, lsr #0x1f
	beq _0209D2BC
	ldr r2, _0209D988 ; =sub_020A1AF8
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldr r1, [r8, #0xc]
	mov r2, r6, lsl #3
	ldrh r1, [r1, #2]
	add r0, sp, #0x2c
	add r6, r6, #1
	mov r1, r1, lsl #0x17
	mov r1, r1, lsr #0x1f
	str r1, [r0, r2]
_0209D2BC:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	beq _0209D304
	ldr r3, [r8, #0x10]
	ldr r0, [r3, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	bne _0209D304
	ldr r2, _0209D98C ; =sub_020A1A94
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldr r1, [r3, #8]
	add r0, sp, #0x2c
	mov r1, r1, lsl #0xe
	mov r1, r1, lsr #0x1f
	str r1, [r0, r6, lsl #3]
	add r6, r6, #1
_0209D304:
	ldr r4, [sb, #8]
	cmp r4, #0
	beq _0209D640
	ldr r0, [sp, #0x24]
	add fp, sp, #0x28
	mov r2, r0, lsl #0x10
	mov r1, r0, lsl #0xf
	mov r0, r2, lsr #0x1f
	str r0, [sp, #0xc]
	mov r0, r1, lsr #0x1f
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x18]
_0209D338:
	ldr r0, [r4, #0]
	ldrh r1, [r4, #0x2a]
	str r0, [sp]
	ldrh r0, [r4, #0x26]
	cmp r6, #0
	ldr r5, [sp, #0x18]
	mul r2, r1, r0
	mov r1, r2, asr #8
	strb r1, [sp, #0x20]
	ldrh r1, [r4, #0x28]
	ldrb r2, [r4, #0x2d]
	mul r0, r1, r0
	add r0, r2, r0, asr #8
	strb r0, [sp, #0x21]
	ble _0209D3A0
_0209D374:
	add r2, fp, r5, lsl #3
	ldr ip, [r2, #4]
	add r2, sp, #0x20
	ldrb r2, [r2, ip]
	ldr r3, [fp, r5, lsl #3]
	mov r0, r4
	mov r1, r8
	blx r3
	add r5, r5, #1
	cmp r5, r6
	blt _0209D374
_0209D3A0:
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x18]
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addne r0, sb, #0x28
	addne r3, r4, #0x38
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	cmp r7, #0
	ble _0209D400
_0209D3D4:
	ldr r2, [r8, #0x18]
	mov r1, r4
	add r0, r2, r5, lsl #3
	ldr ip, [r2, r5, lsl #3]
	ldr r0, [r0, #4]
	add r2, sp, #0x68
	mov r3, sb
	blx ip
	add r5, r5, #1
	cmp r5, r7
	blt _0209D3D4
_0209D400:
	ldr r0, [sp, #0x10]
	ldrh r1, [r4, #0x20]
	cmp r0, #0
	ldrsh r0, [r4, #0x22]
	add r0, r1, r0
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #0x68]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [sp, #0x6c]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x70]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	ldr r0, [sb, #0x34]
	ldr r2, [r4, #8]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0x18]
	ldr r0, [sb, #0x38]
	ldr r2, [r4, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	ldr r0, [sb, #0x3c]
	ldr r2, [r4, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x10]
	beq _0209D538
	ldr r0, [sp, #4]
	ldrh r2, [r4, #0x24]
	ldrb r1, [r0, #0xd]
	ldrh r3, [r4, #0x26]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r0, r3, lsl #0xc
	smull r5, r3, r2, r1
	mov r1, #0x800
	adds r2, r5, r1
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, asr #8
	subs r0, r0, r1
	bmi _0209D538
	ldr r1, [sp, #4]
	mov r0, r0, asr #0xc
	ldrb r1, [r1, #0xe]
	bl sub_020E1F6C
	cmp r1, #0
	bne _0209D538
	mov r0, r4
	mov r1, sb
	add r2, sl, #0x1c
	bl sub_020A05BC
_0209D538:
	ldr r0, [sb, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #1
	movs r0, r0, lsr #0x1f
	beq _0209D57C
	ldrh r0, [r4, #0x2e]
	ldr r1, [sl, #0x38]
	bic r0, r0, #0xfc00
	mov r1, r1, lsl #8
	mov r1, r1, lsr #0x1a
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	and r1, r1, #0x3f
	orr r0, r0, r1, lsl #10
	strh r0, [r4, #0x2e]
	b _0209D5FC
_0209D57C:
	ldrh r0, [r4, #0x2e]
	ldr r2, [sl, #0x38]
	add r1, sl, #0x38
	bic r0, r0, #0xfc00
	mov r2, r2, lsl #0xe
	mov r2, r2, lsr #0x1a
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	and r2, r2, #0x3f
	orr r0, r0, r2, lsl #10
	strh r0, [r4, #0x2e]
	ldr r2, [sl, #0x38]
	bic r0, r2, #0x3f000
	mov r2, r2, lsl #0xe
	mov r2, r2, lsr #0x1a
	add r2, r2, #1
	and r2, r2, #0x3f
	orr r0, r0, r2, lsl #12
	str r0, [sl, #0x38]
	ldr r2, [sl, #0x38]
	mov r0, r2, lsl #0xe
	mov r3, r0, lsr #0x1a
	mov r0, r2, lsl #0x14
	cmp r3, r0, lsr #26
	bls _0209D5FC
	mov r0, r2, lsl #0x1a
	mov r0, r0, lsr #0x1a
	and r0, r0, #0x3f
	ldr r2, [r1, #0]
	bic r2, r2, #0x3f000
	orr r0, r2, r0, lsl #12
	str r0, [r1, #0]
_0209D5FC:
	ldrh r0, [r4, #0x26]
	add r0, r0, #1
	strh r0, [r4, #0x26]
	ldrh r1, [r4, #0x26]
	ldrh r0, [r4, #0x24]
	cmp r1, r0
	bls _0209D630
	mov r1, r4
	add r0, sb, #8
	bl sub_020A2238
	mov r1, r0
	add r0, sl, #0x1c
	bl sub_020A2304
_0209D630:
	ldr r0, [sp]
	cmp r0, #0
	mov r4, r0
	bne _0209D338
_0209D640:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	beq _0209D948
	ldr r0, [sp, #4]
	mov r6, #0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	ldrne r0, _0209D990 ; =sub_020A1A48
	strne r6, [sp, #0x4c]
	strne r0, [sp, #0x48]
	ldr r0, [sp, #4]
	addne r6, r6, #1
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1f
	beq _0209D6A4
	ldr r2, _0209D994 ; =sub_020A19F0
	add r1, sp, #0x48
	str r2, [r1, r6, lsl #3]
	add r0, sp, #0x4c
	mov r1, #0
	str r1, [r0, r6, lsl #3]
	add r6, r6, #1
_0209D6A4:
	ldr r0, [sp, #4]
	ldr r5, [sb, #0x14]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	moveq r7, #0
	cmp r5, #0
	beq _0209D948
	mov r0, #0
	str r0, [sp, #0x1c]
_0209D6CC:
	ldrh r2, [r5, #0x26]
	ldr r0, [r5, #0]
	ldrh r1, [r5, #0x24]
	str r0, [sp, #0x14]
	mov r0, r2, lsl #8
	bl sub_020E1F6C
	ldr r4, [sp, #0x1c]
	strb r0, [sp, #0x20]
	cmp r6, #0
	ble _0209D71C
	ldrb fp, [sp, #0x20]
_0209D6F8:
	add r3, sp, #0x48
	ldr r3, [r3, r4, lsl #3]
	mov r0, r5
	mov r1, r8
	mov r2, fp
	blx r3
	add r4, r4, #1
	cmp r4, r6
	blt _0209D6F8
_0209D71C:
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x1c]
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	addne r0, sb, #0x28
	addne r3, r5, #0x38
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	cmp r7, #0
	ble _0209D784
_0209D758:
	ldr r2, [r8, #0x18]
	mov r1, r5
	add r0, r2, r4, lsl #3
	ldr fp, [r2, r4, lsl #3]
	ldr r0, [r0, #4]
	add r2, sp, #0x68
	mov r3, sb
	blx fp
	add r4, r4, #1
	cmp r4, r7
	blt _0209D758
_0209D784:
	ldrh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	add r0, r1, r0
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x68]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x6c]
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x70]
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [sb, #0x34]
	ldr r2, [r5, #8]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x18]
	ldr r0, [sb, #0x38]
	ldr r2, [r5, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x1c]
	ldr r0, [sb, #0x3c]
	ldr r2, [r5, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #0x10]
	ldr r0, [sb, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	movs r0, r0, lsr #0x1f
	beq _0209D888
	ldr r0, [sl, #0x38]
	ldrh r1, [r5, #0x2e]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x1a
	bic r1, r1, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0x3f
	orr r0, r1, r0, lsl #10
	strh r0, [r5, #0x2e]
	b _0209D908
_0209D888:
	ldr r0, [sl, #0x38]
	ldrh r1, [r5, #0x2e]
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x1a
	bic r1, r1, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0x3f
	orr r0, r1, r0, lsl #10
	strh r0, [r5, #0x2e]
	ldr r1, [sl, #0x38]
	add r0, sl, #0x38
	bic r2, r1, #0x3f000
	mov r1, r1, lsl #0xe
	mov r1, r1, lsr #0x1a
	add r1, r1, #1
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #12
	str r1, [sl, #0x38]
	ldr r2, [sl, #0x38]
	mov r1, r2, lsl #0xe
	mov r3, r1, lsr #0x1a
	mov r1, r2, lsl #0x14
	cmp r3, r1, lsr #26
	bls _0209D908
	mov r1, r2, lsl #0x1a
	mov r1, r1, lsr #0x1a
	and r1, r1, #0x3f
	ldr r2, [r0, #0]
	bic r2, r2, #0x3f000
	orr r1, r2, r1, lsl #12
	str r1, [r0, #0]
_0209D908:
	ldrh r0, [r5, #0x26]
	add r0, r0, #1
	strh r0, [r5, #0x26]
	ldrh r1, [r5, #0x26]
	ldrh r0, [r5, #0x24]
	cmp r1, r0
	bls _0209D93C
	mov r1, r5
	add r0, sb, #0x14
	bl sub_020A2238
	mov r1, r0
	add r0, sl, #0x1c
	bl sub_020A2304
_0209D93C:
	ldr r5, [sp, #0x14]
	movs r0, r5
	bne _0209D6CC
_0209D948:
	ldrh r0, [sb, #0x4c]
	add r0, r0, #1
	strh r0, [sb, #0x4c]
	ldr r2, [sb, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x74
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, sb
	mov r1, #1
	blx r2
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_0209D980: .word sub_020A1DA0
_0209D984: .word sub_020A1BD4
_0209D988: .word sub_020A1AF8
_0209D98C: .word sub_020A1A94
_0209D990: .word sub_020A1A48
_0209D994: .word sub_020A19F0
	arm_func_end sub_0209D150

	arm_func_start sub_0209D998
sub_0209D998: ; 0x0209D998
	stmfd sp!, {r4, r5, r6, lr}
	str r1, [r0, #0x20]
	mov r3, #0
	str r3, [r0, #0x24]
	ldr r1, [r0, #0x20]
	ldr r5, [r2, #0]
	ldr r1, [r1, #0]
	ldr r4, _0209DC5C ; =0x00007FFF
	ldr r1, [r1, #4]
	ldr ip, _0209DC60 ; =0x0007FFFF
	add r1, r5, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r6, [r2, #4]
	ldr r1, [r1, #0]
	mov lr, #-0x80000000
	ldr r5, [r1, #8]
	mov r1, #0x1000
	add r5, r6, r5
	str r5, [r0, #0x2c]
	ldr r5, [r0, #0x20]
	ldr r6, [r2, #8]
	ldr r2, [r5, #0]
	ldr r2, [r2, #0xc]
	add r2, r6, r2
	str r2, [r0, #0x30]
	str r3, [r0, #0x40]
	str r3, [r0, #0x44]
	str r3, [r0, #0x48]
	str r3, [r0, #0x3c]
	ldr r2, [r0, #0x3c]
	str r2, [r0, #0x38]
	ldr r2, [r0, #0x38]
	str r2, [r0, #0x34]
	strh r3, [r0, #0x4c]
	strh r3, [r0, #0x4e]
	ldr r2, [r0, #0x20]
	ldr r5, [r2, #0]
	ldrh r3, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	strh r3, [r0, #0x50]
	strh r2, [r0, #0x52]
	ldrh r2, [r5, #0x20]
	strh r2, [r0, #0x54]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldrh r2, [r2, #0x38]
	strh r2, [r0, #0x56]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x10]
	str r2, [r0, #0x58]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x14]
	str r2, [r0, #0x5c]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x18]
	str r2, [r0, #0x60]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x24]
	str r2, [r0, #0x64]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x28]
	str r2, [r0, #0x68]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x2c]
	str r2, [r0, #0x6c]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldrh r2, [r2, #0x3e]
	strh r2, [r0, #0x70]
	strh r4, [r0, #0x72]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldrb r2, [r2, #0x44]
	strb r2, [r0, #0x80]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldrb r2, [r2, #0x45]
	strb r2, [r0, #0x81]
	ldr r2, [r0, #0x80]
	bic r2, r2, #0x70000
	str r2, [r0, #0x80]
	ldr r2, [r0, #0x80]
	and r2, r2, ip
	str r2, [r0, #0x80]
	str lr, [r0, #0x74]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x48]
	mov r2, r2, lsl #6
	mov r2, r2, lsr #0x1e
	mov r2, r1, lsl r2
	strh r2, [r0, #0x78]
	ldr r2, [r0, #0x20]
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x48]
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x1e
	mov r1, r1, lsl r2
	strh r1, [r0, #0x7a]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x78]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x78]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x7a]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x7a]
	ldr r2, [r0, #0x20]
	ldr r1, [r2, #0]
	ldr r1, [r1, #0]
	mov r1, r1, lsl #0xf
	movs r1, r1, lsr #0x1f
	beq _0209DC20
	ldr r1, [r2, #0x14]
	mov r2, #0x1000
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	mov r1, r2, lsl r1
	strh r1, [r0, #0x7c]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1e
	mov r1, r2, lsl r1
	strh r1, [r0, #0x7e]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1b
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x7c]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x7c]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #0x10]
	mov r1, r1, lsl #0x1a
	movs r1, r1, lsr #0x1f
	ldrnesh r2, [r0, #0x7e]
	mvnne r1, #0
	smulbbne r1, r2, r1
	strneh r1, [r0, #0x7e]
_0209DC20:
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	str r2, [r0, #0x14]
	ldr r1, [r0, #0x14]
	str r1, [r0, #8]
	str r2, [r0, #0x18]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x90]
	str r2, [r0, #0x94]
	str r2, [r0, #0x98]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	; .align 2, 0
_0209DC5C: .word 0x00007FFF
_0209DC60: .word 0x0007FFFF
	arm_func_end sub_0209D998

	arm_func_start sub_0209DC64
sub_0209DC64: ; 0x0209DC64
	bx lr
	arm_func_end sub_0209DC64

	arm_func_start sub_0209DC68
sub_0209DC68: ; 0x0209DC68
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r7, [r0, #0xc]
	ldr r3, _0209DD40 ; =0x040004A8
	str r7, [sp]
	ldr r1, [r0, #4]
	mov r2, r7, lsl #0x1c
	mov lr, r2, lsr #0x1c
	mov r1, r1, lsr #3
	orr ip, r1, lr, lsl #26
	mov r4, r7, lsl #0x18
	mov r5, r7, lsl #0x14
	mov r2, r7, lsl #0xf
	mov r4, r4, lsr #0x1c
	orr ip, ip, #0x40000000
	mov r6, r7, lsl #0x12
	orr ip, ip, r4, lsl #20
	mov r5, r5, lsr #0x1c
	mov r1, r7, lsl #0x10
	orr ip, ip, r5, lsl #23
	mov r4, r6, lsr #0x1e
	mov r5, r1, lsr #0x1e
	orr r1, ip, r4, lsl #16
	mov r2, r2, lsr #0x1f
	orr r1, r1, r5, lsl #18
	orr r1, r1, r2, lsl #29
	str r1, [r3, #0]
	cmp lr, #2
	moveq r1, #1
	movne r1, #0
	ldr r2, [r0, #8]
	rsb r1, r1, #4
	mov r2, r2, lsr r1
	ldr r1, _0209DD44 ; =0x040004AC
	ldr ip, _0209DD48 ; =0x04000440
	str r2, [r1, #0]
	mov r2, #3
	ldr r1, _0209DD4C ; =0x04000454
	str r2, [ip]
	mov r3, #0
	str r3, [r1, #0]
	ldrh r1, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	ldr r0, _0209DD50 ; =0x0400046C
	mov r1, r1, lsl #0xc
	str r1, [r0, #0]
	mov r1, r2, lsl #0xc
	str r1, [r0, #0]
	str r3, [r0, #0]
	mov r0, #1
	str r0, [ip]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	; .align 2, 0
_0209DD40: .word 0x040004A8
_0209DD44: .word 0x040004AC
_0209DD48: .word 0x04000440
_0209DD4C: .word 0x04000454
_0209DD50: .word 0x0400046C
	arm_func_end sub_0209DC68

	arm_func_start sub_0209DD54
sub_0209DD54: ; 0x0209DD54
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xf0
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209E1B0 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0xf0
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209E1B4 ; =0x020F983C
	ldr r0, [r0, #0x14]
	mov r1, r1, asr #4
	ldrh r0, [r0]
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0x15
	mov r3, r0, lsr #0x1e
	ldr r2, _0209E1B8 ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	add r0, sp, #0xc0
	bl sub_020BBB88
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x10]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _0209DE34
	add r1, sp, #0x90
	add r0, r4, #0x14
	bl sub_020BD3E4
	b _0209DE64
_0209DE34:
	add r1, sp, #0x90
	add r0, r4, #8
	bl sub_020BD3E4
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r0, [sp, #0x98]
	rsb r2, r2, #0
	rsb r1, r1, #0
	rsb r0, r0, #0
	str r2, [sp, #0x90]
	str r1, [sp, #0x94]
	str r0, [sp, #0x98]
_0209DE64:
	mov r3, #0
	mov r2, #0x1000
	add r0, sp, #0x90
	add r1, sp, #0xb4
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r3, [sp, #0xbc]
	bl sub_020BD218
	ldr r1, _0209E1BC ; =0x00000CCD
	cmp r0, r1
	bgt _0209DE9C
	ldr r1, _0209E1C0 ; =0xFFFFF333
	cmp r0, r1
	bge _0209DEB0
_0209DE9C:
	mov r0, #0
	mov r1, #0x1000
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
_0209DEB0:
	add r0, sp, #0x90
	add r1, sp, #0xb4
	add r2, sp, #0x9c
	bl sub_020BD298
	add r0, sp, #0x90
	add r1, sp, #0x9c
	add r2, sp, #0xa8
	bl sub_020BD298
	ldr r7, [sp, #0x9c]
	ldr r6, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #0xc0]
	ldr r7, [sp, #0xa8]
	str r6, [sp, #0xc4]
	ldr r6, [sp, #0xac]
	str r3, [sp, #0xc8]
	ldr r3, [sp, #0xb0]
	str r0, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, sp, #0x30
	str r2, [sp, #0xd4]
	add r1, sp, #0xc0
	mov r2, r0
	str r7, [sp, #0xd8]
	str r6, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl sub_020BBFF8
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r0, r0, lsl #1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209DF80
	cmp r0, #1
	beq _0209DFBC
	cmp r0, #2
	beq _0209DFD8
	b _0209DFFC
_0209DF80:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209DFFC
_0209DFBC:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209DFFC
_0209DFD8:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209DFFC:
	add r0, sp, #0x60
	mov r3, r2
	bl sub_020BBBE4
	add r0, sp, #0x30
	add r1, sp, #0x60
	add r2, sp, #0
	bl sub_020BBFF8
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209E078
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl sub_020BF958
	add r0, sp, #0
	bl sub_020BF974
	b _0209E11C
_0209E078:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209E1C4 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209E1C8 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl sub_020BF974
	add r0, sp, #0
	bl sub_020BF974
_0209E11C:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, ip, #0x7c00
	mul ip, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209E1CC ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r5, [r5, #0x40]
	ldr r4, _0209E1D0 ; =0x02100DA0
	ldr r1, [r5, #0x20]
	ldrsh r0, [r5, #0x7c]
	ldr r3, [r1, #0x14]
	ldrsh r1, [r5, #0x7e]
	ldrh r5, [r3]
	mov r3, r2
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1f
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0xf0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209E1B0: .word 0x040004A4
_0209E1B4: .word 0x020F983C
_0209E1B8: .word 0x02100DA8
_0209E1BC: .word 0x00000CCD
_0209E1C0: .word 0xFFFFF333
_0209E1C4: .word 0x04000454
_0209E1C8: .word 0x04000470
_0209E1CC: .word 0x04000480
_0209E1D0: .word 0x02100DA0
	arm_func_end sub_0209DD54

	arm_func_start sub_0209E1D4
sub_0209E1D4: ; 0x0209E1D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xf0
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209E62C ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0xf0
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209E630 ; =0x020F983C
	ldr r0, [r0, #0]
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	ldr r0, [r0, #0]
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0xd
	mov r3, r0, lsr #0x1e
	ldr r2, _0209E634 ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	add r0, sp, #0xc0
	bl sub_020BBB88
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x48]
	movs r0, r0, lsr #0x1f
	bne _0209E2B0
	add r1, sp, #0x90
	add r0, r4, #0x14
	bl sub_020BD3E4
	b _0209E2E0
_0209E2B0:
	add r1, sp, #0x90
	add r0, r4, #8
	bl sub_020BD3E4
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r0, [sp, #0x98]
	rsb r2, r2, #0
	rsb r1, r1, #0
	rsb r0, r0, #0
	str r2, [sp, #0x90]
	str r1, [sp, #0x94]
	str r0, [sp, #0x98]
_0209E2E0:
	mov r3, #0
	mov r2, #0x1000
	add r0, sp, #0x90
	add r1, sp, #0xb4
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r3, [sp, #0xbc]
	bl sub_020BD218
	ldr r1, _0209E638 ; =0x00000CCD
	cmp r0, r1
	bgt _0209E318
	ldr r1, _0209E63C ; =0xFFFFF333
	cmp r0, r1
	bge _0209E32C
_0209E318:
	mov r0, #0
	mov r1, #0x1000
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
_0209E32C:
	add r0, sp, #0x90
	add r1, sp, #0xb4
	add r2, sp, #0x9c
	bl sub_020BD298
	add r0, sp, #0x90
	add r1, sp, #0x9c
	add r2, sp, #0xa8
	bl sub_020BD298
	ldr r7, [sp, #0x9c]
	ldr r6, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #0xc0]
	ldr r7, [sp, #0xa8]
	str r6, [sp, #0xc4]
	ldr r6, [sp, #0xac]
	str r3, [sp, #0xc8]
	ldr r3, [sp, #0xb0]
	str r0, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, sp, #0x30
	str r2, [sp, #0xd4]
	add r1, sp, #0xc0
	mov r2, r0
	str r7, [sp, #0xd8]
	str r6, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl sub_020BBFF8
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r0, r0, lsl #1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209E3FC
	cmp r0, #1
	beq _0209E438
	cmp r0, #2
	beq _0209E454
	b _0209E478
_0209E3FC:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209E478
_0209E438:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209E478
_0209E454:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209E478:
	add r0, sp, #0x60
	mov r3, r2
	bl sub_020BBBE4
	add r0, sp, #0x60
	add r1, sp, #0x30
	add r2, sp, #0
	bl sub_020BBFF8
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209E4F4
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl sub_020BF958
	add r0, sp, #0
	bl sub_020BF974
	b _0209E598
_0209E4F4:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209E640 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209E644 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl sub_020BF974
	add r0, sp, #0
	bl sub_020BF974
_0209E598:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	ldr r1, _0209E648 ; =0x04000480
	and r2, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, ip, #0x7c00
	mul ip, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [r5, #0x40]
	ldr r4, _0209E64C ; =0x02100DA0
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr ip, [r1]
	ldrsh r1, [r2, #0x7a]
	ldr r3, [ip]
	ldrsh r2, [ip, #0x50]
	mov r3, r3, lsl #0xc
	mov r5, r3, lsr #0x1f
	ldrsh r3, [ip, #0x52]
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0xf0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209E62C: .word 0x040004A4
_0209E630: .word 0x020F983C
_0209E634: .word 0x02100DA8
_0209E638: .word 0x00000CCD
_0209E63C: .word 0xFFFFF333
_0209E640: .word 0x04000454
_0209E644: .word 0x04000470
_0209E648: .word 0x04000480
_0209E64C: .word 0x02100DA0
	arm_func_end sub_0209E1D4

	arm_func_start sub_0209E650
sub_0209E650: ; 0x0209E650
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209E984 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0x90
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209E988 ; =0x020F983C
	ldr r0, [r0, #0x14]
	mov r1, r1, asr #4
	ldrh r0, [r0]
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0x15
	mov r3, r0, lsr #0x1e
	ldr r2, _0209E98C ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r1, r7, lsr #0xc
	mov r0, r0, lsl #1
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209E754
	cmp r0, #1
	beq _0209E790
	cmp r0, #2
	beq _0209E7AC
	b _0209E7D0
_0209E754:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209E7D0
_0209E790:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209E7D0
_0209E7AC:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209E7D0:
	add r0, sp, #0x60
	mov r3, r2
	bl sub_020BBBE4
	add r0, sp, #0x30
	add r1, sp, #0x60
	add r2, sp, #0
	bl sub_020BBFF8
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209E84C
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl sub_020BF958
	add r0, sp, #0
	bl sub_020BF974
	b _0209E8F0
_0209E84C:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209E990 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209E994 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl sub_020BF974
	add r0, sp, #0
	bl sub_020BF974
_0209E8F0:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, ip, #0x7c00
	mul ip, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209E998 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r5, [r5, #0x40]
	ldr r4, _0209E99C ; =0x02100DA0
	ldr r1, [r5, #0x20]
	ldrsh r0, [r5, #0x7c]
	ldr r3, [r1, #0x14]
	ldrsh r1, [r5, #0x7e]
	ldrh r5, [r3]
	mov r3, r2
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1f
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209E984: .word 0x040004A4
_0209E988: .word 0x020F983C
_0209E98C: .word 0x02100DA8
_0209E990: .word 0x04000454
_0209E994: .word 0x04000470
_0209E998: .word 0x04000480
_0209E99C: .word 0x02100DA0
	arm_func_end sub_0209E650

	arm_func_start sub_0209E9A0
sub_0209E9A0: ; 0x0209E9A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209ECD4 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0x90
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209ECD8 ; =0x020F983C
	ldr r0, [r0, #0]
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	ldr r0, [r0, #0]
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0xd
	mov r3, r0, lsr #0x1e
	ldr r2, _0209ECDC ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r1, r7, lsr #0xc
	mov r0, r0, lsl #1
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209EAA4
	cmp r0, #1
	beq _0209EAE0
	cmp r0, #2
	beq _0209EAFC
	b _0209EB20
_0209EAA4:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209EB20
_0209EAE0:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209EB20
_0209EAFC:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209EB20:
	add r0, sp, #0x60
	mov r3, r2
	bl sub_020BBBE4
	add r0, sp, #0x60
	add r1, sp, #0x30
	add r2, sp, #0
	bl sub_020BBFF8
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209EB9C
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl sub_020BF958
	add r0, sp, #0
	bl sub_020BF974
	b _0209EC40
_0209EB9C:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209ECE0 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209ECE4 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl sub_020BF974
	add r0, sp, #0
	bl sub_020BF974
_0209EC40:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	ldr r1, _0209ECE8 ; =0x04000480
	and r2, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, ip, #0x7c00
	mul ip, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [r5, #0x40]
	ldr r4, _0209ECEC ; =0x02100DA0
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr ip, [r1]
	ldrsh r1, [r2, #0x7a]
	ldr r3, [ip]
	ldrsh r2, [ip, #0x50]
	mov r3, r3, lsl #0xc
	mov r5, r3, lsr #0x1f
	ldrsh r3, [ip, #0x52]
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209ECD4: .word 0x040004A4
_0209ECD8: .word 0x020F983C
_0209ECDC: .word 0x02100DA8
_0209ECE0: .word 0x04000454
_0209ECE4: .word 0x04000470
_0209ECE8: .word 0x04000480
_0209ECEC: .word 0x02100DA0
	arm_func_end sub_0209E9A0

	arm_func_start sub_0209ECF0
sub_0209ECF0: ; 0x0209ECF0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x88
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	movs r3, r3, asr #5
	ldr r0, [r7, #0x3c]
	ldr r4, [r2, #0]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	orr r2, r1, r2, lsl #24
	ldrsh r0, [r4, #0x30]
	ldr r8, [r7, #0x44]
	ldr r1, _0209F3C0 ; =0x040004A4
	orr r2, r2, r3, lsl #16
	str r2, [r1, #0]
	addeq sp, sp, #0x88
	ldr r1, [r1, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r1, [r7, #0x40]
	smull r2, r5, r4, r0
	ldr r0, [r1, #0x20]
	mov r3, #0x800
	adds r1, r2, r3
	ldr r2, [r0, #0]
	adc sb, r5, #0
	ldr r0, [r2, #0x48]
	mov r5, r1, lsr #0xc
	mov r0, r0, lsl #1
	mov r1, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _0209EDB8
	cmp r0, #1
	beq _0209EDF4
	cmp r0, #2
	beq _0209EE10
	b _0209EE34
_0209EDB8:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r1, r0, sl
	adds r0, lr, r3
	adc lr, r4, sb
	adds r1, ip, r3
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r1, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0209EE34
_0209EDF4:
	ldrsh r0, [r6, #0x34]
	smull r1, r0, r5, r0
	adds r1, r1, r3
	adc r0, r0, sb
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0209EE34
_0209EE10:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r3, lr, r3
	mla ip, r1, sl, ip
	adc r0, ip, sb
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_0209EE34:
	ldr r0, [r2, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209F09C
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x38]
	add sb, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #0x3c]
	add r0, r6, #0x14
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x40]
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl sub_020BD298
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209EED8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209EED8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209EED8:
	add r0, sp, #0x18
	mov r1, r0
	bl sub_020BD3E4
	add r1, sp, #0x30
	mov r0, r8
	bl sub_020C4C88
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl sub_020BBB0C
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl sub_020BC2CC
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl sub_020BD3E4
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr ip, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov lr, r2, lsr #0xc
	orr lr, lr, r0, lsl #20
	smull r0, r4, ip, r5
	adds r8, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, lr
	adc r4, r4, #0
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	adds r3, r3, sb
	smull lr, r2, ip, lr
	str r8, [sp, #0x54]
	adc r0, r0, #0
	adds r8, sl, sb
	adc r4, r5, #0
	adds r5, lr, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r4, #0x1000
	ldr r2, _0209F3C4 ; =0x04000454
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	add r0, sp, #0x54
	str r5, [sp, #0x64]
	str r1, [sp, #0x6c]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r2, #0]
	bl sub_020BF974
	b _0209F348
_0209F09C:
	ldr r3, [r6, #8]
	ldr r1, [r6, #0x38]
	ldr r0, [r2, #4]
	add r1, r3, r1
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x3c]
	ldr r0, [r0, #0]
	add r1, r2, r1
	ldr r0, [r0, #8]
	add sb, sp, #0x18
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0x10]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #0xc]
	add r0, r6, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl sub_020BD298
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209F160
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209F160
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209F160:
	add r0, sp, #0x18
	mov r1, r0
	bl sub_020BD3E4
	add r1, sp, #0x30
	mov r0, r8
	bl sub_020C4C88
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl sub_020BBB0C
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl sub_020BC2CC
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl sub_020BD3E4
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr lr, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r0, r4, lr, r5
	adds ip, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, r8
	adc r4, r4, #0
	mov ip, ip, lsr #0xc
	adds r3, r3, sb
	orr ip, ip, r4, lsl #20
	adc r0, r0, #0
	adds sl, sl, sb
	smull r8, r2, lr, r8
	adc r4, r5, #0
	adds r5, r8, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, sl, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	mov r4, #0x1000
	ldr r0, _0209F3C4 ; =0x04000454
	str ip, [sp, #0x54]
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x64]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r0, #0]
	ldr r0, [r7, #0x40]
	ldr r1, _0209F3C8 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0x54
	ldr r2, [r2, #0]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r4, [r1, #0]
	bl sub_020BF974
_0209F348:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, r5, #0x7c00
	mul r5, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209F3CC ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r1, [r7, #0x40]
	mov r3, r2
	ldrsh r0, [r1, #0x7c]
	ldrsh r1, [r1, #0x7e]
	bl sub_020A0500
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	; .align 2, 0
_0209F3C0: .word 0x040004A4
_0209F3C4: .word 0x04000454
_0209F3C8: .word 0x04000470
_0209F3CC: .word 0x04000480
	arm_func_end sub_0209ECF0

	arm_func_start sub_0209F3D0
sub_0209F3D0: ; 0x0209F3D0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x88
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	movs r3, r3, asr #5
	ldr r0, [r7, #0x3c]
	ldr r4, [r2, #0]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	orr r2, r1, r2, lsl #24
	ldrsh r0, [r4, #0x30]
	ldr r8, [r7, #0x44]
	ldr r1, _0209FAA8 ; =0x040004A4
	orr r2, r2, r3, lsl #16
	str r2, [r1, #0]
	addeq sp, sp, #0x88
	ldr r1, [r1, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r1, [r7, #0x40]
	smull r2, r5, r4, r0
	ldr r0, [r1, #0x20]
	mov r3, #0x800
	adds r1, r2, r3
	ldr r2, [r0, #0]
	adc sb, r5, #0
	ldr r0, [r2, #0x48]
	mov r5, r1, lsr #0xc
	mov r0, r0, lsl #1
	mov r1, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _0209F498
	cmp r0, #1
	beq _0209F4D4
	cmp r0, #2
	beq _0209F4F0
	b _0209F514
_0209F498:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r1, r0, sl
	adds r0, lr, r3
	adc lr, r4, sb
	adds r1, ip, r3
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r1, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0209F514
_0209F4D4:
	ldrsh r0, [r6, #0x34]
	smull r1, r0, r5, r0
	adds r1, r1, r3
	adc r0, r0, sb
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0209F514
_0209F4F0:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r3, lr, r3
	mla ip, r1, sl, ip
	adc r0, ip, sb
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_0209F514:
	ldr r0, [r2, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209F77C
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x38]
	add sb, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #0x3c]
	add r0, r6, #0x14
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x40]
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl sub_020BD298
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209F5B8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209F5B8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209F5B8:
	add r0, sp, #0x18
	mov r1, r0
	bl sub_020BD3E4
	add r1, sp, #0x30
	mov r0, r8
	bl sub_020C4C88
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl sub_020BBB0C
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl sub_020BC2CC
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl sub_020BD3E4
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr ip, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov lr, r2, lsr #0xc
	orr lr, lr, r0, lsl #20
	smull r0, r4, ip, r5
	adds r8, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, lr
	adc r4, r4, #0
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	adds r3, r3, sb
	smull lr, r2, ip, lr
	str r8, [sp, #0x54]
	adc r0, r0, #0
	adds r8, sl, sb
	adc r4, r5, #0
	adds r5, lr, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r4, #0x1000
	ldr r2, _0209FAAC ; =0x04000454
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	add r0, sp, #0x54
	str r5, [sp, #0x64]
	str r1, [sp, #0x6c]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r2, #0]
	bl sub_020BF974
	b _0209FA28
_0209F77C:
	ldr r3, [r6, #8]
	ldr r1, [r6, #0x38]
	ldr r0, [r2, #4]
	add r1, r3, r1
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x3c]
	ldr r0, [r0, #0]
	add r1, r2, r1
	ldr r0, [r0, #8]
	add sb, sp, #0x18
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0x10]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #0xc]
	add r0, r6, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl sub_020BD298
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209F840
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209F840
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209F840:
	add r0, sp, #0x18
	mov r1, r0
	bl sub_020BD3E4
	add r1, sp, #0x30
	mov r0, r8
	bl sub_020C4C88
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl sub_020BBB0C
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl sub_020BC2CC
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl sub_020BD3E4
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr lr, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r0, r4, lr, r5
	adds ip, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, r8
	adc r4, r4, #0
	mov ip, ip, lsr #0xc
	adds r3, r3, sb
	orr ip, ip, r4, lsl #20
	adc r0, r0, #0
	adds sl, sl, sb
	smull r8, r2, lr, r8
	adc r4, r5, #0
	adds r5, r8, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, sl, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	mov r4, #0x1000
	ldr r0, _0209FAAC ; =0x04000454
	str ip, [sp, #0x54]
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x64]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r0, #0]
	ldr r0, [r7, #0x40]
	ldr r1, _0209FAB0 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0x54
	ldr r2, [r2, #0]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r4, [r1, #0]
	bl sub_020BF974
_0209FA28:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	ldr r1, _0209FAB4 ; =0x04000480
	and r2, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, r5, #0x7c00
	mul r5, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [r7, #0x40]
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr r3, [r1, #0]
	ldrsh r1, [r2, #0x7a]
	ldrsh r2, [r3, #0x50]
	ldrsh r3, [r3, #0x52]
	bl sub_020A0500
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	; .align 2, 0
_0209FAA8: .word 0x040004A4
_0209FAAC: .word 0x04000454
_0209FAB0: .word 0x04000470
_0209FAB4: .word 0x04000480
	arm_func_end sub_0209F3D0

	arm_func_start sub_0209FAB8
sub_0209FAB8: ; 0x0209FAB8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x40
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	ldr r0, [r7, #0x3c]
	ldr r4, [r2, #0]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	ldrsh r0, [r4, #0x30]
	movs r4, r3, asr #5
	orr r3, r1, r2, lsl #24
	ldr r1, [r7, #0x44]
	ldr r2, _0209FEF8 ; =0x040004A4
	orr r3, r3, r4, lsl #16
	str r3, [r2, #0]
	addeq sp, sp, #0x40
	ldr r2, [r2, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r2, [r7, #0x40]
	smull r3, r5, r4, r0
	ldr r0, [r2, #0x20]
	mov r8, #0x800
	adds r2, r3, r8
	ldr r3, [r0, #0]
	adc sb, r5, #0
	ldr r0, [r3, #0x48]
	mov r5, r2, lsr #0xc
	mov r0, r0, lsl #1
	mov r2, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _0209FB80
	cmp r0, #1
	beq _0209FBBC
	cmp r0, #2
	beq _0209FBD8
	b _0209FBFC
_0209FB80:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r2, r0, sl
	adds r0, lr, r8
	adc lr, r4, sb
	adds r2, ip, r8
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r2, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0209FBFC
_0209FBBC:
	ldrsh r0, [r6, #0x34]
	smull r2, r0, r5, r0
	adds r2, r2, r8
	adc r0, r0, sb
	mov r5, r2, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0209FBFC
_0209FBD8:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r4, lr, r8
	mla ip, r2, sl, ip
	adc r0, ip, sb
	mov r4, r4, lsr #0xc
	orr r4, r4, r0, lsl #20
_0209FBFC:
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209FD1C
	ldr r3, [r6, #8]
	ldr r2, [r6, #0x38]
	add r0, sp, #0
	add r2, r3, r2
	str r2, [sp]
	ldr r8, [r6, #0xc]
	ldr r3, [r6, #0x3c]
	mov r2, r0
	add r3, r8, r3
	str r3, [sp, #4]
	ldr r8, [r6, #0x10]
	ldr r3, [r6, #0x40]
	add r3, r8, r3
	str r3, [sp, #8]
	bl sub_020BC2CC
	ldrh r0, [r6, #0x20]
	ldr r2, _0209FEFC ; =0x020F983C
	mov sb, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	mov lr, #0x1000
	ldr r3, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0x30]
	smull ip, sl, r1, r5
	str lr, [sp, #0x2c]
	rsb r8, r1, #0
	ldr r1, [sp, #8]
	smull lr, r5, r0, r5
	mov r3, #0x800
	str r2, [sp, #0x34]
	adds r2, lr, r3
	adc r5, r5, #0
	adds ip, ip, r3
	mov lr, r2, lsr #0xc
	orr lr, lr, r5, lsl #20
	smull r5, r2, r8, r4
	adc sl, sl, #0
	mov r8, ip, lsr #0xc
	orr r8, r8, sl, lsl #20
	adds r5, r5, r3
	smull sl, r4, r0, r4
	adc r0, r2, #0
	adds r2, sl, r3
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r3, r2, lsr #0xc
	adc r0, r4, #0
	orr r3, r3, r0, lsl #20
	ldr r2, _0209FF00 ; =0x04000454
	str lr, [sp, #0xc]
	add r0, sp, #0xc
	str r8, [sp, #0x10]
	str sb, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	str sb, [sp, #0x20]
	str sb, [sp, #0x24]
	str sb, [sp, #0x28]
	str r1, [sp, #0x38]
	str sb, [r2]
	bl sub_020BF974
	b _0209FE80
_0209FD1C:
	ldr r8, [r6, #8]
	ldr r2, [r6, #0x38]
	ldr r0, [r3, #4]
	add r2, r8, r2
	sub r0, r2, r0
	str r0, [sp]
	ldr r2, [r7, #0x40]
	ldr r8, [r6, #0xc]
	ldr r2, [r2, #0x20]
	ldr r3, [r6, #0x3c]
	ldr r2, [r2, #0]
	add r3, r8, r3
	ldr r2, [r2, #8]
	add r0, sp, #0
	sub r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [r7, #0x40]
	ldr r8, [r6, #0x10]
	ldr r2, [r2, #0x20]
	ldr r3, [r6, #0x40]
	ldr r2, [r2, #0]
	add r8, r8, r3
	ldr r3, [r2, #0xc]
	mov r2, r0
	sub r3, r8, r3
	str r3, [sp, #8]
	bl sub_020BC2CC
	ldrh r0, [r6, #0x20]
	ldr r2, _0209FEFC ; =0x020F983C
	mov lr, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	mov sl, #0x1000
	ldr r3, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0x30]
	smull sb, r8, r1, r5
	str sl, [sp, #0x2c]
	rsb ip, r1, #0
	smull sl, r5, r0, r5
	ldr r1, [sp, #8]
	mov r3, #0x800
	str r2, [sp, #0x34]
	adds r2, sl, r3
	adc r5, r5, #0
	mov sl, r2, lsr #0xc
	orr sl, sl, r5, lsl #20
	str r1, [sp, #0x38]
	adds sb, sb, r3
	str sl, [sp, #0xc]
	adc sl, r8, #0
	smull r5, r2, ip, r4
	mov r8, sb, lsr #0xc
	orr r8, r8, sl, lsl #20
	smull sb, r4, r0, r4
	adds r5, r5, r3
	adc r0, r2, #0
	adds r2, sb, r3
	mov r3, r5, lsr #0xc
	orr r3, r3, r0, lsl #20
	adc r0, r4, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r0, _0209FF00 ; =0x04000454
	str r8, [sp, #0x10]
	str lr, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str lr, [sp, #0x20]
	str lr, [sp, #0x24]
	str lr, [sp, #0x28]
	str lr, [r0]
	ldr r0, [r7, #0x40]
	ldr r1, _0209FF04 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0xc
	ldr r2, [r2, #0]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r4, [r1, #0]
	bl sub_020BF974
_0209FE80:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, r5, #0x7c00
	mul r5, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209FF08 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r1, [r7, #0x40]
	mov r3, r2
	ldrsh r0, [r1, #0x7c]
	ldrsh r1, [r1, #0x7e]
	bl sub_020A0500
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	; .align 2, 0
_0209FEF8: .word 0x040004A4
_0209FEFC: .word 0x020F983C
_0209FF00: .word 0x04000454
_0209FF04: .word 0x04000470
_0209FF08: .word 0x04000480
	arm_func_end sub_0209FAB8

	arm_func_start sub_0209FF0C
sub_0209FF0C: ; 0x0209FF0C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	mov r8, r1
	ldrh r3, [r8, #0x2e]
	mov sb, r0
	ldr r1, [sb, #0x40]
	mov r0, r3, lsl #0x16
	mov r2, r3, lsl #0x1b
	mov r0, r0, lsr #0x1b
	ldr r4, [r1, #0x20]
	mov r2, r2, lsr #0x1b
	ldr r5, [r4, #0]
	add r0, r0, #1
	mul r0, r2, r0
	movs fp, r0, asr #5
	mov r3, r3, lsl #0x10
	ldr r2, [sb, #0x3c]
	mov r6, r3, lsr #0x1a
	orr r3, r2, #0xc0
	ldr r4, [r5, #0x48]
	ldrsh r7, [r5, #0x30]
	mov r2, r4, lsl #1
	ldrh r4, [r1, #0x72]
	orr r3, r3, r6, lsl #24
	ldrsh sl, [r8, #0x34]
	ldrh r5, [r8, #0x36]
	ldr r1, [sb, #0x44]
	ldr r0, _020A0344 ; =0x040004A4
	orr r3, r3, fp, lsl #16
	str r3, [r0, #0]
	mov r2, r2, lsr #0x1d
	addeq sp, sp, #0x3c
	and r3, r2, #0xff
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r6, [r8, #0x30]
	mov r0, #0x800
	smull r7, r2, r6, r7
	adds r7, r7, r0
	adc r2, r2, #0
	mov r7, r7, lsr #0xc
	cmp r3, #0
	mov lr, r6, asr #0x1f
	orr r7, r7, r2, lsl #20
	mov r2, #0
	bne _020A0000
	mov ip, sl, asr #0x1f
	umull fp, r3, r6, sl
	mla r3, r6, ip, r3
	mla r3, lr, sl, r3
	smull r6, sl, r7, sl
	adds r6, r6, r0
	adc sl, sl, r2
	adds fp, fp, r0
	adc r0, r3, r2
	mov r7, r6, lsr #0xc
	mov r6, fp, lsr #0xc
	orr r7, r7, sl, lsl #20
	orr r6, r6, r0, lsl #20
	b _020A0040
_020A0000:
	cmp r3, #1
	bne _020A0020
	smull sl, r3, r7, sl
	adds r7, sl, r0
	adc r0, r3, r2
	mov r7, r7, lsr #0xc
	orr r7, r7, r0, lsl #20
	b _020A0040
_020A0020:
	mov ip, sl, asr #0x1f
	umull fp, r3, r6, sl
	adds r0, fp, r0
	mla r3, r6, ip, r3
	mla r3, lr, sl, r3
	adc r2, r3, r2
	mov r6, r0, lsr #0xc
	orr r6, r6, r2, lsl #20
_020A0040:
	ldr r0, [sb, #0x40]
	ldr r0, [r0, #0x20]
	ldr sl, [r0]
	ldr r0, [sl]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _020A016C
	ldr r3, [r8, #8]
	ldr r2, [r8, #0x38]
	add r0, sp, #0
	add r2, r3, r2
	str r2, [sp]
	ldr sl, [r8, #0xc]
	ldr r3, [r8, #0x3c]
	mov r2, r0
	add r3, sl, r3
	str r3, [sp, #4]
	ldr sl, [r8, #0x10]
	ldr r3, [r8, #0x40]
	add r3, sl, r3
	str r3, [sp, #8]
	bl sub_020BC2CC
	ldrh r0, [r8, #0x20]
	ldr r2, _020A0348 ; =0x020F983C
	ldr ip, [sp]
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	str ip, [sp, #0x30]
	mov ip, #0x1000
	ldr r2, [sp, #4]
	smull fp, sl, r1, r7
	str ip, [sp, #0x2c]
	rsb r3, r1, #0
	ldr r1, [sp, #8]
	str r2, [sp, #0x34]
	mov r8, #0
	smull ip, r7, r0, r7
	mov r2, #0x800
	str r1, [sp, #0x38]
	adds r1, ip, r2
	adc ip, r7, #0
	adds r7, fp, r2
	mov fp, r1, lsr #0xc
	orr fp, fp, ip, lsl #20
	smull ip, r1, r3, r6
	adc sl, sl, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, sl, lsl #20
	adds r3, ip, r2
	smull sl, r6, r0, r6
	adc r0, r1, #0
	adds r1, sl, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	mov r2, r1, lsr #0xc
	adc r0, r6, #0
	orr r2, r2, r0, lsl #20
	ldr r1, _020A034C ; =0x04000454
	str fp, [sp, #0xc]
	add r0, sp, #0xc
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r8, [sp, #0x20]
	str r8, [sp, #0x24]
	str r8, [sp, #0x28]
	str r8, [r1]
	bl sub_020BF974
	b _020A02D0
_020A016C:
	ldr r3, [r8, #8]
	ldr r2, [r8, #0x38]
	ldr r0, [sl, #4]
	add r2, r3, r2
	sub r0, r2, r0
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr sl, [r8, #0xc]
	ldr r2, [r2, #0x20]
	ldr r3, [r8, #0x3c]
	ldr r2, [r2, #0]
	add r3, sl, r3
	ldr r2, [r2, #8]
	add r0, sp, #0
	sub r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [sb, #0x40]
	ldr sl, [r8, #0x10]
	ldr r2, [r2, #0x20]
	ldr r3, [r8, #0x40]
	ldr r2, [r2, #0]
	add sl, sl, r3
	ldr r3, [r2, #0xc]
	mov r2, r0
	sub r3, sl, r3
	str r3, [sp, #8]
	bl sub_020BC2CC
	ldrh r0, [r8, #0x20]
	ldr r2, _020A0348 ; =0x020F983C
	mov r8, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	ldr ip, [sp]
	ldr r2, [sp, #4]
	str ip, [sp, #0x30]
	mov ip, #0x1000
	str r2, [sp, #0x34]
	smull fp, sl, r1, r7
	str ip, [sp, #0x2c]
	rsb r3, r1, #0
	ldr r1, [sp, #8]
	smull ip, r7, r0, r7
	mov r2, #0x800
	str r1, [sp, #0x38]
	adds r1, ip, r2
	adc ip, r7, #0
	adds r7, fp, r2
	mov fp, r1, lsr #0xc
	orr fp, fp, ip, lsl #20
	smull ip, r1, r3, r6
	adc sl, sl, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, sl, lsl #20
	smull sl, r6, r0, r6
	adds r3, ip, r2
	adc r0, r1, #0
	adds r1, sl, r2
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	adc r0, r6, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x1c]
	ldr r0, _020A034C ; =0x04000454
	str fp, [sp, #0xc]
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r2, [sp, #0x18]
	str r8, [sp, #0x20]
	str r8, [sp, #0x24]
	str r8, [sp, #0x28]
	str r8, [r0]
	ldr r0, [sb, #0x40]
	ldr r1, _020A0350 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0xc
	ldr r2, [r2, #0]
	ldr r6, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r6, [r1, #0]
	bl sub_020BF974
_020A02D0:
	and r1, r5, #0x1f
	and r0, r4, #0x1f
	mul r2, r1, r0
	and r1, r5, #0x3e0
	and r0, r4, #0x3e0
	mul r0, r1, r0
	and r3, r5, #0x7c00
	and r1, r4, #0x7c00
	mul r4, r3, r1
	mov r1, r2, asr #5
	mov r0, r0, asr #0xf
	mov r2, r4, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _020A0354 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [sb, #0x40]
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr r3, [r1, #0]
	ldrsh r1, [r2, #0x7a]
	ldrsh r2, [r3, #0x50]
	ldrsh r3, [r3, #0x52]
	bl sub_020A0500
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_020A0344: .word 0x040004A4
_020A0348: .word 0x020F983C
_020A034C: .word 0x04000454
_020A0350: .word 0x04000470
_020A0354: .word 0x04000480
	arm_func_end sub_0209FF0C

	arm_func_start sub_020A0358
sub_020A0358: ; 0x020A0358
	str r1, [r2, #0]
	mov ip, #0
	str ip, [r2, #0xc]
	str r0, [r2, #0x18]
	str ip, [r2, #0x24]
	str ip, [r2, #4]
	mov r3, #0x1000
	str r3, [r2, #0x10]
	str ip, [r2, #0x1c]
	str ip, [r2, #0x28]
	rsb r0, r0, #0
	str r0, [r2, #8]
	str ip, [r2, #0x14]
	str r1, [r2, #0x20]
	str ip, [r2, #0x2c]
	bx lr
	arm_func_end sub_020A0358

	arm_func_start sub_020A0398
sub_020A0398: ; 0x020A0398
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r3, _020A043C ; =0x00000555
	rsb r7, r1, #0x1000
	ldr ip, _020A0440 ; =0x0000093D
	mov r4, #0
	umull sb, r8, r7, r3
	umull r6, r5, r0, ip
	mov lr, #0x800
	adds sb, sb, lr
	mla r8, r7, r4, r8
	mov r7, r7, asr #0x1f
	mla r8, r7, r3, r8
	adc r7, r8, #0
	mov r3, sb, lsr #0xc
	adds r6, r6, lr
	orr r3, r3, r7, lsl #20
	add r1, r3, r1
	mla r5, r0, r4, r5
	mov r0, r0, asr #0x1f
	mla r5, r0, ip, r5
	adc r0, r5, #0
	mov r5, r6, lsr #0xc
	orr r5, r5, r0, lsl #20
	str r1, [r2, #0]
	add ip, r3, r5
	str ip, [r2, #0xc]
	sub r0, r3, r5
	str r0, [r2, #0x18]
	str r4, [r2, #0x24]
	str r0, [r2, #4]
	str r1, [r2, #0x10]
	str ip, [r2, #0x1c]
	str r4, [r2, #0x28]
	str ip, [r2, #8]
	str r0, [r2, #0x14]
	str r1, [r2, #0x20]
	str r4, [r2, #0x2c]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	; .align 2, 0
_020A043C: .word 0x00000555
_020A0440: .word 0x0000093D
	arm_func_end sub_020A0398

	arm_func_start sub_020A0444
sub_020A0444: ; 0x020A0444
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub r7, r2, #0x1000
	add r5, r3, #0x1000
	add r4, r2, #0x1000
	mov r2, r0, lsl #8
	mov r0, r1, lsl #8
	sub r3, r3, #0x1000
	mov r0, r0, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr ip, _020A04EC ; =0x04000500
	mov r8, #1
	ldr r6, _020A04F0 ; =0x000003FF
	mov r2, r7, lsl #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r3, lsl #0x10
	ldr r3, _020A04F4 ; =0x04000488
	str r8, [ip]
	mov ip, #0
	and r2, r6, r2, asr #22
	and r7, r6, lr, asr #22
	and lr, r6, r4, asr #22
	and r4, r6, r5, asr #22
	ldr r6, _020A04F8 ; =0x04000490
	str ip, [r3]
	orr r5, r2, r7, lsl #20
	str r5, [r6, #0]
	str r1, [r3, #0]
	orr r5, lr, r7, lsl #20
	str r5, [r6, #0]
	orr r1, r1, r0, lsl #16
	str r1, [r3, #0]
	orr r1, lr, r4, lsl #20
	str r1, [r6, #0]
	mov r0, r0, lsl #0x10
	str r0, [r3, #0]
	orr r1, r2, r4, lsl #20
	ldr r0, _020A04FC ; =0x04000504
	str r1, [r6, #0]
	str ip, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_020A04EC: .word 0x04000500
_020A04F0: .word 0x000003FF
_020A04F4: .word 0x04000488
_020A04F8: .word 0x04000490
_020A04FC: .word 0x04000504
	arm_func_end sub_020A0444

	arm_func_start sub_020A0500
sub_020A0500: ; 0x020A0500
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	add ip, r3, #0x1000
	sub r5, r2, #0x1000
	add r4, r2, #0x1000
	mov r2, r0, lsl #8
	mov r0, r1, lsl #8
	sub r3, r3, #0x1000
	mov r0, r0, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr r7, _020A05A8 ; =0x04000500
	mov r8, #1
	ldr r6, _020A05AC ; =0x000003FF
	mov r2, ip, lsl #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r3, lsl #0x10
	ldr r3, _020A05B0 ; =0x04000488
	str r8, [r7]
	mov ip, #0
	and r7, r6, r2, asr #22
	and r2, r6, lr, asr #22
	and lr, r6, r4, asr #22
	and r4, r6, r5, asr #22
	ldr r6, _020A05B4 ; =0x04000490
	str ip, [r3]
	orr r5, r2, r7, lsl #10
	str r5, [r6, #0]
	str r1, [r3, #0]
	orr r5, lr, r7, lsl #10
	str r5, [r6, #0]
	orr r1, r1, r0, lsl #16
	str r1, [r3, #0]
	orr r1, lr, r4, lsl #10
	str r1, [r6, #0]
	mov r0, r0, lsl #0x10
	str r0, [r3, #0]
	orr r1, r2, r4, lsl #10
	ldr r0, _020A05B8 ; =0x04000504
	str r1, [r6, #0]
	str ip, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_020A05A8: .word 0x04000500
_020A05AC: .word 0x000003FF
_020A05B0: .word 0x04000488
_020A05B4: .word 0x04000490
_020A05B8: .word 0x04000504
	arm_func_end sub_020A0500

	arm_func_start sub_020A05BC
sub_020A05BC: ; 0x020A05BC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r3, [r1, #0x20]
	str r1, [sp]
	ldr r6, [r3, #0x14]
	mov r8, r0
	ldrb r3, [r6, #8]
	ldrb r0, [r6, #0xc]
	str r2, [sp, #4]
	mov r3, r3, lsl #0xc
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #4
	mov r1, #0x800
	mov r4, r3, lsl #4
	adds r4, r4, r1
	orr r2, r2, r3, lsr #28
	adc r1, r2, #0
	mov r5, r4, lsr #0xc
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	orr r5, r5, r1, lsl #20
	addle sp, sp, #0x24
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	ldr sb, _020A08CC ; =0x021C3A38
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #0x1000
	mov r4, r5, asr #0x1f
	str r0, [sp, #0x10]
_020A0640:
	ldr r0, [sp, #4]
	bl sub_020A22B8
	movs r7, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp]
	mov r1, r7
	add r0, r0, #0x14
	bl sub_020A2304
	add r0, r7, #0x38
	add r1, r8, #8
	str r0, [sp, #0xc]
	add sl, r7, #8
	ldmia r1, {r0, r1, r2}
	stmia sl, {r0, r1, r2}
	ldr sl, [r8, #0x14]
	ldr ip, [sb]
	ldr r1, _020A08D0 ; =0x5EEDF715
	ldr r0, _020A08D4 ; =0x1B0CB173
	mov r2, sl, asr #0x1f
	mla r0, ip, r1, r0
	str r0, [sb]
	umull lr, ip, sl, r5
	mla ip, sl, r4, ip
	ldrsh r1, [r6, #2]
	mov r0, r0, lsr #0x17
	mla ip, r2, r5, ip
	mul r0, r1, r0
	mov r3, #0x800
	adds r2, lr, r3
	sub r0, r0, r1, lsl #8
	adc sl, ip, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, sl, lsl #20
	add r0, r2, r0, asr #8
	str r0, [r7, #0x14]
	ldr sl, [r8, #0x18]
	ldr ip, [sb]
	ldr r1, _020A08D0 ; =0x5EEDF715
	ldr r0, _020A08D4 ; =0x1B0CB173
	mov r2, sl, asr #0x1f
	mla r0, ip, r1, r0
	str r0, [sb]
	umull lr, ip, sl, r5
	mla ip, sl, r4, ip
	mla ip, r2, r5, ip
	adds r2, lr, r3
	ldrsh r1, [r6, #2]
	mov r0, r0, lsr #0x17
	adc sl, ip, #0
	mul r0, r1, r0
	mov r2, r2, lsr #0xc
	sub r0, r0, r1, lsl #8
	orr r2, r2, sl, lsl #20
	add r0, r2, r0, asr #8
	str r0, [r7, #0x18]
	ldr ip, [r8, #0x1c]
	ldr sl, [sb]
	ldr r1, _020A08D0 ; =0x5EEDF715
	ldr r0, _020A08D4 ; =0x1B0CB173
	mov r2, ip, asr #0x1f
	mla r0, sl, r1, r0
	umull sl, lr, ip, r5
	str r0, [sb]
	mla lr, ip, r4, lr
	adds r3, sl, r3
	mla lr, r2, r5, lr
	ldrsh r1, [r6, #2]
	mov r0, r0, lsr #0x17
	adc r2, lr, #0
	mul r0, r1, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r0, r0, r1, lsl #8
	add r0, r3, r0, asr #8
	ldr r3, [sp, #0xc]
	add fp, r8, #0x38
	str r0, [r7, #0x1c]
	ldmia fp, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrb r0, [r6, #9]
	ldrsh r1, [r8, #0x34]
	ldr r2, [r8, #0x30]
	add r0, r0, #1
	mul r1, r2, r1
	mov r1, r1, asr #0xc
	mul r0, r1, r0
	mov r0, r0, asr #6
	str r0, [r7, #0x30]
	ldr r0, [sp, #0x10]
	strh r0, [r7, #0x34]
	ldrh r0, [r6]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	ldrneh r0, [r6, #0xa]
	strneh r0, [r7, #0x36]
	ldreqh r0, [r8, #0x36]
	streqh r0, [r7, #0x36]
	ldrh r1, [r8, #0x2e]
	ldrh r0, [r7, #0x2e]
	mov r2, r1, lsl #0x1b
	mov r1, r1, lsl #0x16
	mov r1, r1, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r1, r1, #1
	mul r1, r2, r1
	mov r1, r1, lsl #0xb
	mov r1, r1, lsr #0x10
	bic r0, r0, #0x1f
	and r1, r1, #0x1f
	orr r0, r0, r1
	strh r0, [r7, #0x2e]
	ldrh r0, [r7, #0x2e]
	bic r0, r0, #0x3e0
	orr r0, r0, #0x3e0
	strh r0, [r7, #0x2e]
	ldrh r0, [r6]
	mov r0, r0, lsl #0x1b
	movs r0, r0, lsr #0x1e
	beq _020A0844
	cmp r0, #1
	beq _020A0854
	cmp r0, #2
	ldreqh r0, [r8, #0x20]
	streqh r0, [r7, #0x20]
	ldreqsh r0, [r8, #0x22]
	streqh r0, [r7, #0x22]
	b _020A0864
_020A0844:
	ldr r0, [sp, #0x14]
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x22]
	b _020A0864
_020A0854:
	ldrh r0, [r8, #0x20]
	strh r0, [r7, #0x20]
	ldr r0, [sp, #0x18]
	strh r0, [r7, #0x22]
_020A0864:
	ldrh r1, [r6, #6]
	ldr r0, _020A08D8 ; =0x0000FFFF
	strh r1, [r7, #0x24]
	ldr r1, [sp, #0x1c]
	strh r1, [r7, #0x26]
	ldrb r1, [r6, #0xf]
	strb r1, [r7, #0x2c]
	ldrh r1, [r8, #0x24]
	mov r1, r1, lsr #1
	bl sub_020E1F6C
	strh r0, [r7, #0x28]
	ldrh r1, [r8, #0x24]
	ldr r0, _020A08D8 ; =0x0000FFFF
	bl sub_020E1F6C
	strh r0, [r7, #0x2a]
	ldr r0, [sp, #0x20]
	strb r0, [r7, #0x2d]
	ldr r0, [sp, #8]
	ldrb r1, [r6, #0xc]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _020A0640
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_020A08CC: .word 0x021C3A38
_020A08D0: .word 0x5EEDF715
_020A08D4: .word 0x1B0CB173
_020A08D8: .word 0x0000FFFF
	arm_func_end sub_020A05BC

	arm_func_start sub_020A08DC
sub_020A08DC: ; 0x020A08DC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov sb, r0
	ldr r0, [sb, #0x20]
	ldrsh r3, [sb, #0x4e]
	str r0, [sp, #4]
	ldr r0, [sb, #0x58]
	ldr r2, _020A15E8 ; =0x00000FFF
	add r3, r0, r3
	ldr r0, [sp, #4]
	str r1, [sp]
	ldr r8, [r0]
	and r0, r3, r2
	strh r0, [sb, #0x4e]
	ldr r0, [r8]
	mov r0, r0, lsl #0x1c
	mov r1, r0, lsr #0x1c
	mov r0, r3, asr #0xc
	cmp r1, #2
	str r0, [sp, #0xc]
	beq _020A0944
	cmp r1, #3
	beq _020A0944
	sub r0, r1, #5
	cmp r0, #4
	bhi _020A094C
_020A0944:
	mov r0, sb
	bl sub_020A1768
_020A094C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	addle sp, sp, #0xc4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0x1000
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	ldr r6, _020A15EC ; =0x021C3A38
	ldr r4, _020A15F0 ; =0x5EEDF715
	ldr r5, _020A15F4 ; =0x1B0CB173
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
_020A099C:
	ldr r0, [sp]
	bl sub_020A22B8
	movs r7, r0
	addeq sp, sp, #0xc4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	add r0, sb, #8
	mov r1, r7
	bl sub_020A2304
	ldr r0, [r8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020A10DC
_020A09D8: ; jump table
	b _020A0A00 ; case 0
	b _020A0A1C ; case 1
	b _020A0A8C ; case 2
	b _020A0AF4 ; case 3
	b _020A0B88 ; case 4
	b _020A0C88 ; case 5
	b _020A0F80 ; case 6
	b _020A1004 ; case 7
	b _020A0D44 ; case 8
	b _020A0E14 ; case 9
_020A0A00:
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	str r0, [r7, #8]
	b _020A10DC
_020A0A1C:
	add r0, r7, #8
	bl sub_020A23B0
	ldr r2, [r7, #8]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r2, [r7, #0xc]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r2, [r7, #0x10]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0A8C:
	add r0, sp, #0x58
	bl sub_020A2354
	ldr r2, [sp, #0x58]
	ldr r0, [sb, #0x5c]
	mov r1, #0x800
	smull r3, r0, r2, r0
	adds r2, r3, r1
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	ldr r2, [sb, #0x5c]
	add r0, r7, #8
	smull sl, r2, r3, r2
	adds r3, sl, r1
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x20]
	str r2, [sp, #0x5c]
	str r1, [sp, #0x60]
	add r1, sp, #0x58
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A0AF4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	bl sub_020E1F6C
	ldr r1, [sp, #0x18]
	mov r0, r0, asr #4
	add r1, r1, #0x10000
	mov r2, r0, lsl #1
	str r1, [sp, #0x18]
	ldr r0, _020A15F8 ; =0x020F983C
	mov r1, r2, lsl #1
	ldrsh r0, [r0, r1]
	add r1, r2, #1
	mov r2, r1, lsl #1
	ldr r1, _020A15F8 ; =0x020F983C
	ldrsh r3, [r1, r2]
	ldr r2, [sb, #0x5c]
	mov r1, #0x800
	smull sl, r2, r0, r2
	adds sl, sl, r1
	adc r0, r2, #0
	mov r2, sl, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x64]
	ldr r2, [sb, #0x5c]
	add r0, r7, #8
	smull sl, r2, r3, r2
	adds r3, sl, r1
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x24]
	str r2, [sp, #0x68]
	str r1, [sp, #0x6c]
	add r1, sp, #0x64
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A0B88:
	add r0, r7, #8
	bl sub_020A23B0
	ldr r1, [r6, #0]
	mov r0, #0x800
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #8]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #0xc]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0C88:
	add r0, sp, #0x70
	bl sub_020A2354
	ldr r0, [r6, #0]
	ldr r3, [sp, #0x70]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	ldr r0, [sb, #0x5c]
	mov r2, #0x800
	smull sl, r0, r3, r0
	adds sl, sl, r2
	adc r3, r0, #0
	mov r0, sl, lsr #0xc
	orr r0, r0, r3, lsl #20
	mov r3, r1, lsr #0x17
	mov r3, r3, lsl #0xc
	sub r3, r3, #0x100000
	mov r3, r3, asr #8
	smull sl, r3, r0, r3
	adds sl, sl, r2
	adc r0, r3, #0
	mov r3, sl, lsr #0xc
	orr r3, r3, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	str r3, [sp, #0x70]
	mov r0, r0, lsr #0x17
	mov r0, r0, lsl #0xc
	sub r0, r0, #0x100000
	mov r1, r0, asr #8
	ldr sl, [sp, #0x74]
	ldr r3, [sb, #0x5c]
	add r0, r7, #8
	smull fp, r3, sl, r3
	adds sl, fp, r2
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	smull r3, r1, sl, r1
	adds r2, r3, r2
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x74]
	add r1, sp, #0x70
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A0D44:
	add r0, r7, #8
	bl sub_020A23B0
	add r0, sb, #0x84
	add r1, sb, #0x8a
	add r2, sp, #0x44
	bl sub_020BD31C
	ldrsh r1, [sp, #0x46]
	ldrsh r0, [sp, #0x48]
	ldrsh r2, [sp, #0x44]
	str r1, [sp, #0x80]
	str r0, [sp, #0x84]
	add r0, sp, #0x7c
	add r1, r7, #8
	str r2, [sp, #0x7c]
	bl sub_020BD218
	cmp r0, #0
	bgt _020A0DAC
	ldr r0, [r7, #8]
	rsb r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsb r0, r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	rsb r0, r0, #0
	str r0, [r7, #0x10]
_020A0DAC:
	ldr r2, [r7, #8]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r2, [r7, #0xc]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r2, [r7, #0x10]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0E14:
	add r0, r7, #8
	bl sub_020A23B0
	add r0, sb, #0x84
	add r1, sb, #0x8a
	add r2, sp, #0x4a
	bl sub_020BD31C
	ldrsh r1, [sp, #0x4c]
	ldrsh r0, [sp, #0x4e]
	ldrsh r2, [sp, #0x4a]
	str r1, [sp, #0x8c]
	str r0, [sp, #0x90]
	add r0, sp, #0x88
	add r1, r7, #8
	str r2, [sp, #0x88]
	bl sub_020BD218
	cmp r0, #0
	bge _020A0E7C
	ldr r0, [r7, #8]
	rsb r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsb r0, r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	rsb r0, r0, #0
	str r0, [r7, #0x10]
_020A0E7C:
	ldr r1, [r6, #0]
	mov r0, #0x800
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #8]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #0xc]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0F80:
	add r0, r7, #0x14
	bl sub_020A2354
	ldr r2, [r7, #0x14]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x94]
	ldr r3, [r7, #0x18]
	ldr r2, [sb, #0x5c]
	ldr r1, [r6, #0]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	str r2, [sp, #0x98]
	mov r1, r0, lsr #0x17
	ldr r2, [sb, #0x60]
	add r0, r7, #8
	mul r1, r2, r1
	sub r1, r1, r2, lsl #8
	mov r1, r1, asr #8
	str r1, [sp, #0x9c]
	add r1, sp, #0x94
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A1004:
	add r0, r7, #0x14
	bl sub_020A2354
	ldr r0, [r6, #0]
	mov r3, #0x800
	mla r2, r0, r4, r5
	str r2, [r6, #0]
	ldr sl, [r7, #0x14]
	ldr r0, [sb, #0x5c]
	mov r1, r2, lsr #0x17
	smull fp, r0, sl, r0
	adds fp, fp, r3
	mov r1, r1, lsl #0xc
	adc sl, r0, #0
	mov r0, fp, lsr #0xc
	sub r1, r1, #0x100000
	orr r0, r0, sl, lsl #20
	mov r1, r1, asr #8
	smull sl, r1, r0, r1
	adds sl, sl, r3
	adc r0, r1, #0
	mov r1, sl, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0xa0]
	mla r1, r2, r4, r5
	str r1, [r6, #0]
	mov r2, r1, lsr #0x17
	mov r2, r2, lsl #0xc
	sub r2, r2, #0x100000
	ldr sl, [r7, #0x18]
	ldr r0, [sb, #0x5c]
	mov r2, r2, asr #8
	smull fp, r0, sl, r0
	adds fp, fp, r3
	adc sl, r0, #0
	mov r0, fp, lsr #0xc
	orr r0, r0, sl, lsl #20
	smull sl, r2, r0, r2
	adds r3, sl, r3
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	str r2, [sp, #0xa4]
	mov r1, r0, lsr #0x17
	ldr r2, [sb, #0x60]
	add r0, r7, #8
	mul r1, r2, r1
	sub r1, r1, r2, lsl #8
	mov r1, r1, asr #8
	str r1, [sp, #0xa8]
	add r1, sp, #0xa0
	mov r2, sb
	bl sub_020A1608
_020A10DC:
	ldr r1, [r6, #0]
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	ldrb r2, [r8, #0x42]
	mov r1, r0, lsr #0x18
	ldr r3, [sb, #0x64]
	mul r1, r2, r1
	add r2, r2, #0xff
	sub r1, r2, r1, asr #7
	mul r1, r3, r1
	mov r1, r1, asr #8
	str r1, [sp, #0x10]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x18
	ldrb r2, [r8, #0x42]
	ldr r3, [sb, #0x68]
	ldr r1, [r8]
	mul r0, r2, r0
	add r2, r2, #0xff
	sub r0, r2, r0, asr #7
	mul r0, r3, r0
	mov r0, r0, asr #8
	str r0, [sp, #0x14]
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #6
	bne _020A1228
	ldrsh r0, [sb, #0x84]
	ldr r1, [r7, #0x14]
	mov r2, #0x800
	smull r3, r0, r1, r0
	adds r1, r3, r2
	ldrsh r3, [sb, #0x8a]
	ldr lr, [r7, #0x18]
	mov ip, r1, lsr #0xc
	smull sl, r3, lr, r3
	adc r0, r0, #0
	adds sl, sl, r2
	orr ip, ip, r0, lsl #20
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	add r3, ip, sl
	str r3, [sp, #0xb8]
	ldrsh sl, [sb, #0x86]
	ldr r3, [r7, #0x14]
	ldrsh lr, [sb, #0x8c]
	smull ip, sl, r3, sl
	adds ip, ip, r2
	ldr fp, [r7, #0x18]
	adc sl, sl, #0
	smull r3, lr, fp, lr
	mov ip, ip, lsr #0xc
	adds r3, r3, r2
	orr ip, ip, sl, lsl #20
	adc sl, lr, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, sl, lsl #20
	add r3, ip, r3
	str r3, [sp, #0xbc]
	ldr sl, [r7, #0x18]
	ldrsh fp, [sb, #0x88]
	ldr r3, [r7, #0x14]
	str sl, [sp, #0x28]
	smull ip, fp, r3, fp
	ldrsh sl, [sb, #0x8e]
	ldr r3, [sp, #0x28]
	adds ip, ip, r2
	smull sl, lr, r3, sl
	adc r3, fp, #0
	adds r2, sl, r2
	mov sl, ip, lsr #0xc
	orr sl, sl, r3, lsl #20
	adc r3, lr, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	add r2, sl, r2
	add r0, sp, #0xb8
	add r1, sp, #0xac
	str r2, [sp, #0xc0]
	bl sub_020BD3E4
	b _020A1264
_020A1228:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _020A1258
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _020A1258
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _020A1258
	add r0, sp, #0xac
	bl sub_020A23B0
	b _020A1264
_020A1258:
	add r0, r7, #8
	add r1, sp, #0xac
	bl sub_020BD3E4
_020A1264:
	ldr r2, [sp, #0xac]
	ldr r1, [sp, #0x10]
	mov r0, #0x800
	smull sl, r1, r2, r1
	adds r2, sl, r0
	add sl, sb, #0x28
	str sl, [sp, #0x2c]
	add sl, r7, #0x38
	str sl, [sp, #0x30]
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldrsh r1, [sb, #0x50]
	ldr sl, [sp, #0x14]
	ldr r3, [sb, #0x40]
	smull fp, sl, r1, sl
	adds fp, fp, r0
	adc r1, sl, #0
	mov sl, fp, lsr #0xc
	orr sl, sl, r1, lsl #20
	add r1, r2, sl
	add r1, r3, r1
	str r1, [r7, #0x14]
	ldr r3, [sp, #0xb0]
	ldr r1, [sp, #0x10]
	ldrsh sl, [sb, #0x52]
	smull fp, r1, r3, r1
	adds fp, fp, r0
	adc r3, r1, #0
	mov r1, fp, lsr #0xc
	orr r1, r1, r3, lsl #20
	ldr r3, [sp, #0x14]
	ldr r2, [sb, #0x44]
	smull fp, r3, sl, r3
	adds sl, fp, r0
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	add r1, r1, sl
	add r1, r2, r1
	str r1, [r7, #0x18]
	ldr r1, [sp, #0xb4]
	ldr r2, [sp, #0x10]
	ldrsh lr, [sb, #0x54]
	smull sl, r3, r1, r2
	ldr r1, [sp, #0x14]
	adds sl, sl, r0
	smull r2, r1, lr, r1
	adc r3, r3, #0
	adds r0, r2, r0
	mov r2, sl, lsr #0xc
	orr r2, r2, r3, lsl #20
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr ip, [sb, #0x48]
	add r0, r2, r0
	add r0, ip, r0
	str r0, [r7, #0x1c]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x18
	ldrb r1, [r8, #0x40]
	ldr r2, [sb, #0x6c]
	mul r0, r1, r0
	add r1, r1, #0xff
	sub r0, r1, r0, asr #7
	mul r0, r2, r0
	mov r0, r0, asr #8
	str r0, [r7, #0x30]
	ldr r0, [sp, #0x34]
	strh r0, [r7, #0x34]
	ldr r0, [r8]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	beq _020A141C
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _020A141C
	ldr r0, [r6, #0]
	ldr r3, _020A15FC ; =0x00000003
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x14
	ldr r1, [sp, #4]
	ldr r2, [r1, #8]
	ldr r1, _020A1600 ; =0xAAAAAAAB
	umull r1, sl, r0, r1
	mov sl, sl, lsr #1
	umull sl, fp, r3, sl
	ldrh r1, [r2]
	sub sl, r0, sl
	strh r1, [sp, #0x50]
	ldrh r0, [r8, #0x22]
	mov r1, sl, lsl #1
	strh r0, [sp, #0x52]
	ldrh r0, [r2, #2]
	strh r0, [sp, #0x54]
	add r0, sp, #0x50
	ldrh r0, [r0, r1]
	strh r0, [r7, #0x36]
	b _020A1424
_020A141C:
	ldrh r0, [r8, #0x22]
	strh r0, [r7, #0x36]
_020A1424:
	ldrh r1, [r7, #0x2e]
	ldrb r0, [sb, #0x81]
	bic r1, r1, #0x1f
	and r0, r0, #0x1f
	orr r0, r1, r0
	strh r0, [r7, #0x2e]
	ldrh r0, [r7, #0x2e]
	bic r0, r0, #0x3e0
	orr r0, r0, #0x3e0
	strh r0, [r7, #0x2e]
	ldr r0, [r8]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	ldrne r0, [r6]
	mlane r1, r0, r4, r5
	strne r1, [r6]
	strneh r1, [r7, #0x20]
	ldreqh r0, [sb, #0x56]
	streqh r0, [r7, #0x20]
	ldr r0, [r8]
	mov r0, r0, lsl #0x13
	movs r0, r0, lsr #0x1f
	ldreq r0, [sp, #0x38]
	streqh r0, [r7, #0x22]
	beq _020A14B4
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x14
	ldrsh r2, [r8, #0x34]
	ldrsh r1, [r8, #0x36]
	sub r1, r1, r2
	mul r0, r1, r0
	add r0, r0, r2, lsl #12
	mov r0, r0, lsr #0xc
	strh r0, [r7, #0x22]
_020A14B4:
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x18
	ldrb r1, [r8, #0x41]
	ldrh r2, [sb, #0x70]
	mul r0, r1, r0
	mov r0, r0, asr #8
	rsb r0, r0, #0xff
	mul r0, r2, r0
	mov r0, r0, asr #8
	add r0, r0, #1
	strh r0, [r7, #0x24]
	ldr r0, [sp, #0x3c]
	strh r0, [r7, #0x26]
	ldr r0, [r8]
	mov r0, r0, lsl #0x14
	movs r1, r0, lsr #0x1f
	beq _020A1544
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	beq _020A1544
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x14
	ldr r1, [sp, #4]
	ldr sl, [r1, #0x10]
	ldrb r1, [sl, #8]
	bl sub_020E2178
	ldrb r0, [sl, r1]
	strb r0, [r7, #0x2c]
	b _020A1574
_020A1544:
	cmp r1, #0
	beq _020A156C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r1, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	ldreqb r0, [r1]
	streqb r0, [r7, #0x2c]
	beq _020A1574
_020A156C:
	ldrb r0, [r8, #0x47]
	strb r0, [r7, #0x2c]
_020A1574:
	ldr r1, [sp, #4]
	ldr r0, _020A1604 ; =0x0000FFFF
	ldr r1, [r1, #0]
	ldrb r1, [r1, #0x48]
	bl sub_020E1F6C
	strh r0, [r7, #0x28]
	ldrh r1, [r7, #0x24]
	ldr r0, _020A1604 ; =0x0000FFFF
	bl sub_020E1F6C
	strh r0, [r7, #0x2a]
	ldr r0, [sp, #0x40]
	strb r0, [r7, #0x2d]
	ldr r0, [r8]
	mov r0, r0, lsl #0xb
	movs r0, r0, lsr #0x1f
	ldrne r0, [r6]
	mlane r1, r0, r4, r5
	strne r1, [r6]
	movne r0, r1, lsr #0x18
	strneb r0, [r7, #0x2d]
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _020A099C
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_020A15E8: .word 0x00000FFF
_020A15EC: .word 0x021C3A38
_020A15F0: .word 0x5EEDF715
_020A15F4: .word 0x1B0CB173
_020A15F8: .word 0x020F983C
_020A15FC: .word 0x00000003
_020A1600: .word 0xAAAAAAAB
_020A1604: .word 0x0000FFFF
	arm_func_end sub_020A08DC

	arm_func_start sub_020A1608
sub_020A1608: ; 0x020A1608
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r6, r0
	mov r5, r1
	add r2, sp, #0
	add r0, r4, #0x84
	add r1, r4, #0x8a
	bl sub_020BD31C
	add r0, sp, #0
	mov r1, r0
	bl sub_020BD4FC
	ldrsh r1, [sp]
	ldr lr, [r5, #8]
	ldrsh r0, [r4, #0x84]
	ldr ip, [r5]
	smull r3, r2, lr, r1
	smull r1, r0, ip, r0
	ldrsh r7, [r4, #0x8a]
	ldr r8, [r5, #4]
	mov ip, #0x800
	smull lr, r7, r8, r7
	adds r8, r3, ip
	adc r3, r2, #0
	mov r2, r8, lsr #0xc
	adds r1, r1, ip
	orr r2, r2, r3, lsl #20
	adc r0, r0, #0
	mov r3, r1, lsr #0xc
	adds r1, lr, ip
	orr r3, r3, r0, lsl #20
	adc r0, r7, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	add r0, r2, r0
	str r0, [r6, #0]
	ldrsh r0, [sp, #2]
	ldr r1, [r5, #8]
	ldrsh r3, [r4, #0x86]
	smull r2, r0, r1, r0
	adds r2, r2, ip
	ldr lr, [r5]
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	smull r8, r7, lr, r3
	ldrsh r1, [r4, #0x8c]
	ldr r2, [r5, #4]
	adds r8, r8, ip
	smull r3, r1, r2, r1
	adc r2, r7, #0
	mov r7, r8, lsr #0xc
	orr r7, r7, r2, lsl #20
	adds r2, r3, ip
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r7, r2
	add r0, r0, r1
	str r0, [r6, #4]
	ldrsh r0, [sp, #4]
	ldr r1, [r5, #8]
	ldr lr, [r5]
	smull r3, r0, r1, r0
	adds r3, r3, ip
	adc r1, r0, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldrsh r3, [r4, #0x88]
	ldrsh r1, [r4, #0x8e]
	ldr r2, [r5, #4]
	smull r5, r4, lr, r3
	adds r5, r5, ip
	smull r3, r1, r2, r1
	adc r4, r4, #0
	adds r2, r3, ip
	mov r3, r5, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r4, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	add r0, r0, r1
	str r0, [r6, #8]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end sub_020A1608

	arm_func_start sub_020A1768
sub_020A1768: ; 0x020A1768
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r1, _020A19EC ; =0x02100DB0
	mov r4, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	ldrh r0, [r1, #4]
	strh r3, [sp]
	strh r2, [sp, #2]
	strh r0, [sp, #4]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1e
	beq _020A17E8
	cmp r0, #1
	beq _020A17D0
	cmp r0, #2
	bne _020A1800
	mov r0, #0
	mov r1, #0x1000
	strh r1, [sp, #6]
	strh r0, [sp, #8]
	strh r0, [sp, #0xa]
	b _020A180C
_020A17D0:
	mov r1, #0
	mov r0, #0x1000
	strh r1, [sp, #6]
	strh r0, [sp, #8]
	strh r1, [sp, #0xa]
	b _020A180C
_020A17E8:
	mov r1, #0
	mov r0, #0x1000
	strh r1, [sp, #6]
	strh r1, [sp, #8]
	strh r0, [sp, #0xa]
	b _020A180C
_020A1800:
	add r1, sp, #6
	add r0, r4, #0x50
	bl sub_020BD4FC
_020A180C:
	add r0, sp, #0
	add r1, sp, #6
	bl sub_020BD254
	cmp r0, #0x1000
	beq _020A1830
	mov r1, #0x1000
	rsb r1, r1, #0
	cmp r0, r1
	bne _020A1844
_020A1830:
	mov r0, #0
	mov r1, #0x1000
	strh r1, [sp]
	strh r0, [sp, #2]
	strh r0, [sp, #4]
_020A1844:
	ldrsh r3, [sp, #8]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #0xa]
	ldrsh r0, [sp, #2]
	smull r6, r5, r3, r1
	mov r1, #0x800
	adds r6, r6, r1
	smull r3, r0, r2, r0
	adc r5, r5, #0
	adds r2, r3, r1
	mov r3, r6, lsr #0xc
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r5, lsl #20
	orr r2, r2, r0, lsl #20
	sub r0, r3, r2
	strh r0, [r4, #0x84]
	ldrsh r5, [sp, #0xa]
	ldrsh r3, [sp]
	ldrsh r2, [sp, #6]
	ldrsh r0, [sp, #4]
	smull r3, r6, r5, r3
	adds ip, r3, r1
	smull r3, r0, r2, r0
	adc r5, r6, #0
	adds r2, r3, r1
	mov r3, ip, lsr #0xc
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r5, lsl #20
	orr r2, r2, r0, lsl #20
	sub r0, r3, r2
	strh r0, [r4, #0x86]
	ldrsh r5, [sp, #6]
	ldrsh r3, [sp, #2]
	ldrsh r2, [sp, #8]
	ldrsh r0, [sp]
	smull r3, r6, r5, r3
	adds ip, r3, r1
	smull r3, r0, r2, r0
	adc r5, r6, #0
	adds r2, r3, r1
	mov r3, ip, lsr #0xc
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r3, r3, r5, lsl #20
	orr r2, r2, r0, lsl #20
	sub r0, r3, r2
	strh r0, [r4, #0x88]
	ldrsh r6, [sp, #8]
	ldrsh r5, [r4, #0x88]
	add r0, r4, #0x84
	ldrsh r3, [sp, #0xa]
	ldrsh r2, [r4, #0x86]
	smull r5, ip, r6, r5
	adds lr, r5, r1
	smull r5, r2, r3, r2
	adc r6, ip, #0
	adds r3, r5, r1
	mov r5, lr, lsr #0xc
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r5, r5, r6, lsl #20
	orr r3, r3, r2, lsl #20
	sub r2, r5, r3
	strh r2, [r4, #0x8a]
	ldrsh r6, [sp, #0xa]
	ldrsh r5, [r4, #0x84]
	ldrsh r3, [sp, #6]
	ldrsh r2, [r4, #0x88]
	smull lr, ip, r6, r5
	smull r5, r2, r3, r2
	adds r6, lr, r1
	adc r3, ip, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r3, lsl #20
	adds r3, r5, r1
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r2, r6, r3
	strh r2, [r4, #0x8c]
	ldrsh lr, [sp, #6]
	ldrsh ip, [r4, #0x86]
	ldrsh r3, [sp, #8]
	ldrsh r2, [r4, #0x84]
	smull r6, r5, lr, ip
	smull ip, r2, r3, r2
	adds r6, r6, r1
	adc r5, r5, #0
	adds r3, ip, r1
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r1, r6, r2
	strh r1, [r4, #0x8e]
	mov r1, r0
	bl sub_020BD4FC
	add r0, r4, #0x8a
	mov r1, r0
	bl sub_020BD4FC
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	; .align 2, 0
_020A19EC: .word 0x02100DB0
	arm_func_end sub_020A1768

	arm_func_start sub_020A19F0
sub_020A19F0: ; 0x020A19F0
	stmdb sp!, {lr}
	sub sp, sp, #4
	rsb r2, r2, #0xff
	mov r1, #0x1f
	mul r3, r2, r1
	ldr r2, _020A1A44 ; =0x80808081
	ldrh lr, [r0, #0x2e]
	smull r1, ip, r2, r3
	add ip, r3, ip
	mov ip, ip, asr #7
	mov r1, r3, lsr #0x1f
	add ip, r1, ip
	mov r1, ip, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, lr, #0x3e0
	and r1, r1, #0x1f
	orr r1, r2, r1, lsl #5
	strh r1, [r0, #0x2e]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_020A1A44: .word 0x80808081
	arm_func_end sub_020A19F0

	arm_func_start sub_020A1A48
sub_020A1A48: ; 0x020A1A48
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r1, #0x14]
	sub r1, r2, #0xff
	ldrsh lr, [r3, #4]
	ldr r2, _020A1A90 ; =0x80808081
	sub r3, lr, #0x1000
	mul ip, r3, r1
	smull r1, r3, r2, ip
	add r3, ip, r3
	mov r3, r3, asr #7
	mov r1, ip, lsr #0x1f
	add r3, r1, r3
	add r1, lr, r3
	strh r1, [r0, #0x34]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_020A1A90: .word 0x80808081
	arm_func_end sub_020A1A48

	arm_func_start sub_020A1A94
sub_020A1A94: ; 0x020A1A94
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r5, [r1, #0x10]
	mov r4, #0
	ldrb r3, [r5, #8]
	cmp r3, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, lr}
	bxle lr
	ldrb ip, [r5, #9]
	mov lr, r4
_020A1AC0:
	add r1, lr, ip
	cmp r2, r1
	ldrltb r1, [r5, r4]
	addlt sp, sp, #4
	strltb r1, [r0, #0x2c]
	ldmltia sp!, {r4, r5, lr}
	bxlt lr
	add r4, r4, #1
	cmp r4, r3
	add lr, lr, ip
	blt _020A1AC0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_020A1A94

	arm_func_start sub_020A1AF8
sub_020A1AF8: ; 0x020A1AF8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r1, #0xc]
	mov r5, r0
	ldrb r1, [r4, #4]
	ldrb r3, [r4, #5]
	cmp r2, r1
	bge _020A1B38
	ldrh r3, [r4]
	mov r0, r3, lsl #0x16
	mov r6, r3, lsl #0x1b
	mov r0, r0, lsr #0x1b
	sub r0, r0, r6, lsr #27
	mul r0, r2, r0
	bl sub_020E1F6C
	add r0, r0, r6, lsr #27
	b _020A1B74
_020A1B38:
	cmp r2, r3
	ldrlth r0, [r4]
	movlt r0, r0, lsl #0x16
	movlt r0, r0, lsr #0x1b
	blt _020A1B74
	ldrh r0, [r4]
	sub r2, r2, #0xff
	rsb r1, r3, #0xff
	mov r6, r0, lsl #0x11
	mov r3, r6, lsr #0x1b
	mov r0, r0, lsl #0x16
	sub r0, r3, r0, lsr #27
	mul r0, r2, r0
	bl sub_020E1F6C
	add r0, r0, r6, lsr #27
_020A1B74:
	ldr r3, _020A1BC8 ; =0x021C3A38
	ldr r1, _020A1BCC ; =0x5EEDF715
	ldr ip, [r3]
	ldr r2, _020A1BD0 ; =0x1B0CB173
	mla r1, ip, r1, r2
	str r1, [r3, #0]
	ldrb r2, [r4, #2]
	mov r1, r1, lsr #0x18
	ldrh r3, [r5, #0x2e]
	mul r1, r2, r1
	mov r1, r1, asr #8
	rsb r1, r1, #0xff
	mul r1, r0, r1
	mov r0, r1, lsl #8
	mov r0, r0, lsr #0x10
	bic r1, r3, #0x3e0
	and r0, r0, #0x1f
	orr r0, r1, r0, lsl #5
	strh r0, [r5, #0x2e]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	; .align 2, 0
_020A1BC8: .word 0x021C3A38
_020A1BCC: .word 0x5EEDF715
_020A1BD0: .word 0x1B0CB173
	arm_func_end sub_020A1AF8

	arm_func_start sub_020A1BD4
sub_020A1BD4: ; 0x020A1BD4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r4, [r1, #8]
	mov sl, r0
	ldrb r3, [r4, #4]
	ldr r0, [r1, #0]
	ldrb r1, [r4, #5]
	cmp r2, r3
	ldrb fp, [r4, #6]
	ldrlth r0, [r4]
	addlt sp, sp, #4
	strlth r0, [sl, #0x36]
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxlt lr
	cmp r2, r1
	bge _020A1CCC
	ldrh sb, [r0, #0x22]
	ldrh r0, [r4, #8]
	ldrh r8, [r4]
	mov r7, sb, asr #5
	mov fp, sb, asr #0xa
	mov r4, r0, lsl #0x1d
	mov r6, r8, asr #5
	mov r5, r8, asr #0xa
	movs r4, r4, lsr #0x1f
	and sb, sb, #0x1f
	and r7, r7, #0x1f
	and r0, fp, #0x1f
	orreq r1, sb, r7, lsl #5
	orreq r0, r1, r0, lsl #10
	and r8, r8, #0x1f
	and r6, r6, #0x1f
	and r5, r5, #0x1f
	addeq sp, sp, #4
	streqh r0, [sl, #0x36]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	sub r4, r2, r3
	sub r0, r0, r5
	mul r0, r4, r0
	sub fp, r1, r3
	mov r1, fp
	bl sub_020E1F6C
	sub r1, sb, r8
	mov sb, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_020E1F6C
	sub r1, r7, r6
	mov r7, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_020E1F6C
	add r1, r8, r7
	add r0, r6, r0
	add r2, r5, sb
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	add sp, sp, #4
	strh r0, [sl, #0x36]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_020A1CCC:
	cmp r2, fp
	bge _020A1D8C
	ldrh r7, [r4, #2]
	ldrh r8, [r0, #0x22]
	ldrh r0, [r4, #8]
	mov r5, r7, asr #5
	mov r4, r7, asr #0xa
	mov r3, r0, lsl #0x1d
	mov r6, r8, asr #5
	mov sb, r8, asr #0xa
	movs r3, r3, lsr #0x1f
	and r7, r7, #0x1f
	and r5, r5, #0x1f
	and r0, r4, #0x1f
	orreq r1, r7, r5, lsl #5
	orreq r0, r1, r0, lsl #10
	and r8, r8, #0x1f
	and r6, r6, #0x1f
	and sb, sb, #0x1f
	addeq sp, sp, #4
	streqh r0, [sl, #0x36]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	sub r4, r2, r1
	sub r0, r0, sb
	mul r0, r4, r0
	sub fp, fp, r1
	mov r1, fp
	bl sub_020E1F6C
	sub r1, r7, r8
	mov r7, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_020E1F6C
	sub r1, r5, r6
	mov r5, r0
	mul r0, r4, r1
	mov r1, fp
	bl sub_020E1F6C
	add r1, r8, r5
	add r0, r6, r0
	add r2, sb, r7
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	add sp, sp, #4
	strh r0, [sl, #0x36]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_020A1D8C:
	ldrh r0, [r4, #2]
	strh r0, [sl, #0x36]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end sub_020A1BD4

	arm_func_start sub_020A1DA0
sub_020A1DA0: ; 0x020A1DA0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr ip, [r1, #4]
	mov r4, r0
	ldrb r1, [ip, #6]
	ldrb r3, [ip, #7]
	cmp r2, r1
	bge _020A1DE8
	ldrsh r5, [ip]
	ldrsh r0, [ip, #2]
	sub r0, r0, r5
	mul r0, r2, r0
	bl sub_020E1F6C
	add r0, r5, r0
	add sp, sp, #4
	strh r0, [r4, #0x34]
	ldmia sp!, {r4, r5, lr}
	bx lr
_020A1DE8:
	cmp r2, r3
	ldrltsh r0, [ip, #2]
	addlt sp, sp, #4
	strlth r0, [r4, #0x34]
	ldmltia sp!, {r4, r5, lr}
	bxlt lr
	ldrsh r5, [ip, #4]
	ldrsh r0, [ip, #2]
	sub r2, r2, #0xff
	rsb r1, r3, #0xff
	sub r0, r5, r0
	mul r0, r2, r0
	bl sub_020E1F6C
	add r0, r5, r0
	strh r0, [r4, #0x34]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_020A1DA0

	arm_func_start sub_020A1E30
sub_020A1E30: ; 0x020A1E30
	stmfd sp!, {r4, lr}
	ldr lr, [r1, #8]
	ldr r2, [r0, #0]
	ldrsh r4, [r0, #0xc]
	sub r3, r2, lr
	mov r2, #0x800
	smull ip, r3, r4, r3
	adds r4, ip, r2
	adc r3, r3, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	add r3, lr, r4
	str r3, [r1, #8]
	ldr r4, [r1, #0xc]
	ldr r3, [r0, #4]
	ldrsh ip, [r0, #0xc]
	sub r3, r3, r4
	smull lr, r3, ip, r3
	adds ip, lr, r2
	adc r3, r3, #0
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	add r3, r4, ip
	str r3, [r1, #0xc]
	ldr lr, [r1, #0x10]
	ldr r3, [r0, #8]
	ldrsh ip, [r0, #0xc]
	sub r0, r3, lr
	smull r3, r0, ip, r0
	adds r2, r3, r2
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, lr, r2
	str r0, [r1, #0x10]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end sub_020A1E30

	arm_func_start sub_020A1EC4
sub_020A1EC4: ; 0x020A1EC4
	ldr r3, [r3, #0x74]
	ldr r2, [r0, #0]
	cmp r3, #-0x80000000
	movne r2, r3
	ldrh r3, [r0, #6]
	mov r3, r3, lsl #0x1e
	movs r3, r3, lsr #0x1e
	beq _020A1EF0
	cmp r3, #1
	beq _020A1F44
	bx lr
_020A1EF0:
	ldr r3, [r1, #0x3c]
	cmp r3, r2
	bge _020A1F1C
	ldr r0, [r1, #0xc]
	add r0, r3, r0
	cmp r0, r2
	subgt r0, r2, r3
	strgt r0, [r1, #0xc]
	ldrgth r0, [r1, #0x24]
	strgth r0, [r1, #0x26]
	bxgt lr
_020A1F1C:
	cmp r3, r2
	bxlt lr
	ldr r0, [r1, #0xc]
	add r0, r3, r0
	cmp r0, r2
	sublt r0, r2, r3
	strlt r0, [r1, #0xc]
	ldrlth r0, [r1, #0x24]
	strlth r0, [r1, #0x26]
	bx lr
_020A1F44:
	ldr ip, [r1, #0x3c]
	cmp ip, r2
	bge _020A1F94
	ldr r3, [r1, #0xc]
	add r3, ip, r3
	cmp r3, r2
	ble _020A1F94
	sub r2, r2, ip
	str r2, [r1, #0xc]
	ldrsh r2, [r0, #4]
	ldr r3, [r1, #0x18]
	mov r0, #0x800
	smull ip, r2, r3, r2
	adds r3, ip, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r0, r2, #0
	str r0, [r1, #0x18]
	bx lr
_020A1F94:
	cmp ip, r2
	bxlt lr
	ldr r3, [r1, #0xc]
	add r3, ip, r3
	cmp r3, r2
	bxge lr
	sub r2, r2, ip
	str r2, [r1, #0xc]
	ldrsh r2, [r0, #4]
	ldr r3, [r1, #0x18]
	mov r0, #0x800
	smull ip, r2, r3, r2
	adds r3, ip, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r0, r2, #0
	str r0, [r1, #0x18]
	bx lr
	arm_func_end sub_020A1EC4

	arm_func_start sub_020A1FE0
sub_020A1FE0: ; 0x020A1FE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x28
	ldrh r2, [r0, #2]
	mov r4, r1
	cmp r2, #0
	beq _020A200C
	cmp r2, #1
	beq _020A203C
	cmp r2, #2
	beq _020A206C
	b _020A2098
_020A200C:
	ldrh r1, [r0]
	ldr r3, _020A20B4 ; =0x020F983C
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	bl sub_020BB5AC
	b _020A2098
_020A203C:
	ldrh r1, [r0]
	ldr r3, _020A20B4 ; =0x020F983C
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	bl sub_020BB5C8
	b _020A2098
_020A206C:
	ldrh r1, [r0]
	ldr r3, _020A20B4 ; =0x020F983C
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	bl sub_020BB5E4
_020A2098:
	add r0, r4, #8
	add r1, sp, #0
	mov r2, r0
	bl sub_020BBB0C
	add sp, sp, #0x28
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020A20B4: .word 0x020F983C
	arm_func_end sub_020A1FE0

	arm_func_start sub_020A20B8
sub_020A20B8: ; 0x020A20B8
	stmfd sp!, {r4, lr}
	ldr ip, [r0]
	ldr r4, [r1, #8]
	ldrsh lr, [r0, #0xc]
	ldr r3, [r1, #0x14]
	sub r4, ip, r4
	sub r3, r4, r3
	mul r3, lr, r3
	ldr r4, [r2, #0]
	add r3, r4, r3, asr #12
	str r3, [r2, #0]
	ldr lr, [r0, #4]
	ldr ip, [r1, #0xc]
	ldrsh r4, [r0, #0xc]
	ldr r3, [r1, #0x18]
	sub ip, lr, ip
	sub r3, ip, r3
	mul r3, r4, r3
	ldr r4, [r2, #4]
	add r3, r4, r3, asr #12
	str r3, [r2, #4]
	ldr ip, [r0, #8]
	ldr r3, [r1, #0x10]
	ldrsh lr, [r0, #0xc]
	ldr r0, [r1, #0x1c]
	sub r1, ip, r3
	sub r0, r1, r0
	mul r0, lr, r0
	ldr r1, [r2, #8]
	add r0, r1, r0, asr #12
	str r0, [r2, #8]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end sub_020A20B8

	arm_func_start sub_020A213C
sub_020A213C: ; 0x020A213C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrh r0, [r1, #0x26]
	ldrh r1, [r5, #6]
	mov r4, r2
	bl sub_020E1F6C
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r2, _020A21F8 ; =0x021C3A38
	ldr r0, _020A21FC ; =0x5EEDF715
	ldr r3, [r2, #0]
	ldr r1, _020A2200 ; =0x1B0CB173
	mla ip, r3, r0, r1
	str ip, [r2]
	ldrsh lr, [r5]
	mov r3, ip, lsr #0x17
	ldr ip, [r4]
	mul r3, lr, r3
	sub r3, r3, lr, lsl #8
	add r3, ip, r3, asr #8
	str r3, [r4, #0]
	ldr r3, [r2, #0]
	mla ip, r3, r0, r1
	str ip, [r2]
	ldrsh lr, [r5, #2]
	mov r3, ip, lsr #0x17
	ldr ip, [r4, #4]
	mul r3, lr, r3
	sub r3, r3, lr, lsl #8
	add r3, ip, r3, asr #8
	str r3, [r4, #4]
	ldr r3, [r2, #0]
	mla r0, r3, r0, r1
	str r0, [r2, #0]
	ldrsh r2, [r5, #4]
	mov r0, r0, lsr #0x17
	ldr r1, [r4, #8]
	mul r0, r2, r0
	sub r0, r0, r2, lsl #8
	add r0, r1, r0, asr #8
	str r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	; .align 2, 0
_020A21F8: .word 0x021C3A38
_020A21FC: .word 0x5EEDF715
_020A2200: .word 0x1B0CB173
	arm_func_end sub_020A213C

	arm_func_start sub_020A2204
sub_020A2204: ; 0x020A2204
	ldrsh r1, [r0]
	ldr r3, [r2, #0]
	add r1, r3, r1
	str r1, [r2, #0]
	ldrsh r1, [r0, #2]
	ldr r3, [r2, #4]
	add r1, r3, r1
	str r1, [r2, #4]
	ldrsh r0, [r0, #4]
	ldr r1, [r2, #8]
	add r0, r1, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_020A2204

	arm_func_start sub_020A2238
sub_020A2238: ; 0x020A2238
	ldr r3, [r1, #0]
	cmp r3, #0
	bne _020A2278
	ldr r2, [r0, #0]
	cmp r2, r1
	moveq r2, #0
	streq r2, [r0]
	streq r2, [r0, #8]
	beq _020A22A4
	ldr r2, [r1, #4]
	mov r3, #0
	str r3, [r2, #0]
	ldr r2, [r0, #8]
	ldr r2, [r2, #4]
	str r2, [r0, #8]
	b _020A22A4
_020A2278:
	ldr r2, [r0, #0]
	cmp r2, r1
	streq r3, [r0]
	ldreq r2, [r0]
	moveq r3, #0
	streq r3, [r2, #4]
	ldrne r2, [r1, #4]
	strne r2, [r3, #4]
	ldrne r3, [r1]
	ldrne r2, [r1, #4]
	strne r3, [r2]
_020A22A4:
	ldr r2, [r0, #4]
	sub r2, r2, #1
	str r2, [r0, #4]
	mov r0, r1
	bx lr
	arm_func_end sub_020A2238

	arm_func_start sub_020A22B8
sub_020A22B8: ; 0x020A22B8
	ldr r2, [r0, #0]
	mov r3, #0
	mov ip, r3
	cmp r2, #0
	beq _020A22FC
	ldr r1, [r2, #0]
	mov ip, r2
	str r1, [r0, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	ldrne r1, [r2]
	strne r3, [r1, #4]
	streq r3, [r0]
	streq r3, [r0, #8]
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
_020A22FC:
	mov r0, ip
	bx lr
	arm_func_end sub_020A22B8

	arm_func_start sub_020A2304
sub_020A2304: ; 0x020A2304
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020A232C
	str r1, [r0, #0]
	str r1, [r0, #8]
	mov r2, #0
	str r2, [r1, #0]
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	b _020A2344
_020A232C:
	str r2, [r1, #0]
	mov r2, #0
	str r2, [r1, #4]
	ldr r2, [r0, #0]
	str r1, [r2, #4]
	str r1, [r0, #0]
_020A2344:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A2304

	arm_func_start sub_020A2354
sub_020A2354: ; 0x020A2354
	stmfd sp!, {r4, lr}
	ldr ip, _020A23A4 ; =0x021C3A38
	ldr r2, _020A23A8 ; =0x5EEDF715
	ldr r4, [ip]
	ldr r3, _020A23AC ; =0x1B0CB173
	mov r1, r0
	mla lr, r4, r2, r3
	str lr, [ip]
	mov r4, lr, asr #8
	str r4, [r0, #0]
	ldr r4, [ip]
	mov lr, #0
	mla r2, r4, r2, r3
	str r2, [ip]
	mov r2, r2, asr #8
	str r2, [r0, #4]
	str lr, [r0, #8]
	bl sub_020BD3E4
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020A23A4: .word 0x021C3A38
_020A23A8: .word 0x5EEDF715
_020A23AC: .word 0x1B0CB173
	arm_func_end sub_020A2354

	arm_func_start sub_020A23B0
sub_020A23B0: ; 0x020A23B0
	stmfd sp!, {r4, lr}
	ldr ip, _020A240C ; =0x021C3A38
	ldr r2, _020A2410 ; =0x5EEDF715
	ldr r4, [ip]
	ldr r3, _020A2414 ; =0x1B0CB173
	mov r1, r0
	mla lr, r4, r2, r3
	str lr, [ip]
	mov r4, lr, asr #8
	str r4, [r0, #0]
	ldr lr, [ip]
	mla r4, lr, r2, r3
	str r4, [ip]
	mov lr, r4, asr #8
	str lr, [r0, #4]
	ldr lr, [ip]
	mla r2, lr, r2, r3
	str r2, [ip]
	mov r2, r2, asr #8
	str r2, [r0, #8]
	bl sub_020BD3E4
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020A240C: .word 0x021C3A38
_020A2410: .word 0x5EEDF715
_020A2414: .word 0x1B0CB173
	arm_func_end sub_020A23B0

	arm_func_start sub_020A2418
sub_020A2418: ; 0x020A2418
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020C6350
	mov r0, #0xf
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _020A2640 ; =0x021C3A3C
	ldrh r0, [r8]
	cmp r0, #0
	bne _020A2478
	mvn r4, #2
_020A2458:
	bl sub_020C1A00
	cmp r0, r4
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	beq _020A2458
_020A2478:
	bl sub_020C3D98
	ldr r1, _020A2640 ; =0x021C3A3C
	mov r4, r0
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020A249C
	bl sub_020C3DAC
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A249C:
	ldrh r2, [r1, #2]
	cmp r2, #0
	beq _020A24B4
	bl sub_020C3DAC
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A24B4:
	cmp r7, #4
	beq _020A24D0
	cmp r7, #8
	beq _020A2510
	cmp r7, #0xc
	beq _020A2550
	b _020A2598
_020A24D0:
	ldrh r1, [r1]
	mov r0, #4
	bl sub_020C4090
	cmp r0, #0
	bne _020A24F4
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A24F4:
	ldr r0, _020A2640 ; =0x021C3A3C
	mov r2, #4
	ldr r1, _020A2644 ; =0x04000242
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	b _020A25A4
_020A2510:
	ldrh r1, [r1]
	mov r0, #8
	bl sub_020C4090
	cmp r0, #0
	bne _020A2534
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A2534:
	ldr r0, _020A2640 ; =0x021C3A3C
	mov r2, #8
	ldr r1, _020A2648 ; =0x04000243
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	b _020A25A4
_020A2550:
	ldrh r1, [r1]
	mov r0, #0xc
	bl sub_020C4090
	cmp r0, #0
	bne _020A2574
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A2574:
	ldr r0, _020A2640 ; =0x021C3A3C
	mov r2, #0xc
	ldr r1, _020A2644 ; =0x04000242
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	mov r0, #0x8a
	strb r0, [r1, #1]
	b _020A25A4
_020A2598:
	bl sub_020C3DAC
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A25A4:
	mov r0, #0xf
	mov r1, #0
	bl sub_020C64A8
	cmp r0, #0
	bne _020A25C4
	ldr r1, _020A264C ; =sub_020A2734
	mov r0, #0xf
	bl sub_020C645C
_020A25C4:
	cmp r6, #0
	ldrne r0, _020A2640 ; =0x021C3A3C
	strne r6, [r0, #8]
	bne _020A25E0
	ldr r1, _020A2650 ; =sub_020A280C
	ldr r0, _020A2640 ; =0x021C3A3C
	str r1, [r0, #8]
_020A25E0:
	ldr r3, _020A2640 ; =0x021C3A3C
	mov r0, #0xf
	mov r1, #0x10000
	mov r2, #0
	str r5, [r3, #4]
	bl sub_020C64CC
	cmp r0, #0
	bge _020A2630
	ldr r1, _020A2640 ; =0x021C3A3C
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	bl sub_020C4150
	ldr r1, _020A2640 ; =0x021C3A3C
	mov r2, #0
	strh r2, [r1, #2]
	mov r0, r4
	str r2, [r1, #8]
	bl sub_020C3DAC
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A2630:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020A2640: .word 0x021C3A3C
_020A2644: .word 0x04000242
_020A2648: .word 0x04000243
_020A264C: .word sub_020A2734
_020A2650: .word sub_020A280C
	arm_func_end sub_020A2418

	arm_func_start sub_020A2654
sub_020A2654: ; 0x020A2654
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_020C6350
	mov r0, #0xf
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_020C3D98
	ldr r1, _020A2728 ; =0x021C3A3C
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020A26A0
	bl sub_020C3DAC
	mov r0, #5
	ldmia sp!, {r4, r5, r6, pc}
_020A26A0:
	mov r0, #0xf
	mov r1, #0
	bl sub_020C64A8
	cmp r0, #0
	bne _020A26C0
	ldr r1, _020A272C ; =sub_020A2734
	mov r0, #0xf
	bl sub_020C645C
_020A26C0:
	cmp r6, #0
	ldrne r0, _020A2728 ; =0x021C3A3C
	strne r6, [r0, #8]
	bne _020A26DC
	ldr r1, _020A2730 ; =sub_020A280C
	ldr r0, _020A2728 ; =0x021C3A3C
	str r1, [r0, #8]
_020A26DC:
	ldr r3, _020A2728 ; =0x021C3A3C
	mov r0, #0xf
	mov r1, #0x20000
	mov r2, #0
	str r5, [r3, #4]
	bl sub_020C64CC
	cmp r0, #0
	bge _020A2718
	ldr r1, _020A2728 ; =0x021C3A3C
	mov r2, #0
	mov r0, r4
	str r2, [r1, #8]
	bl sub_020C3DAC
	mov r0, #4
	ldmia sp!, {r4, r5, r6, pc}
_020A2718:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A2728: .word 0x021C3A3C
_020A272C: .word sub_020A2734
_020A2730: .word sub_020A280C
	arm_func_end sub_020A2654

	arm_func_start sub_020A2734
sub_020A2734: ; 0x020A2734
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x10000
	ldr r2, _020A2808 ; =0x021C3A3C
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x10000
	and r6, r1, #0xff
	ldr r4, [r2, #8]
	ldr r5, [r2, #4]
	beq _020A2768
	cmp r0, #0x20000
	beq _020A27A0
	b _020A27E0
_020A2768:
	cmp r6, #7
	bne _020A27E0
	ldrh r0, [r2, #2]
	cmp r0, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	beq _020A27E0
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	bl sub_020C4150
	ldr r0, _020A2808 ; =0x021C3A3C
	mov r1, #0
	strh r1, [r0, #2]
	b _020A27E0
_020A27A0:
	cmp r6, #0
	bne _020A27D4
	ldrh r0, [r2, #2]
	cmp r0, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	beq _020A27D4
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	bl sub_020C4150
	ldr r0, _020A2808 ; =0x021C3A3C
	mov r1, #0
	strh r1, [r0, #2]
_020A27D4:
	mov r0, #0xf
	mov r1, #0
	bl sub_020C645C
_020A27E0:
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, _020A2808 ; =0x021C3A3C
	mov r3, #0
	str r3, [r2, #8]
	mov r0, r5
	mov r1, r6
	str r3, [r2, #4]
	blx r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A2808: .word 0x021C3A3C
	arm_func_end sub_020A2734

	arm_func_start sub_020A280C
sub_020A280C: ; 0x020A280C
	bx lr
	arm_func_end sub_020A280C

	arm_func_start sub_020A2810
sub_020A2810: ; 0x020A2810
	stmfd sp!, {r3, lr}
	ldr r1, _020A2838 ; =0x021C3A48
	mov r2, r0
	ldr r0, [r1, #8]
	mov r1, #0x300
	bl sub_020A3144
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A2838: .word 0x021C3A48
	arm_func_end sub_020A2810

	arm_func_start sub_020A283C
sub_020A283C: ; 0x020A283C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020A28FC ; =0x021C3A54
	mov r1, r4
	mov r2, #6
	bl sub_020C4DB0
	ldr r1, _020A2900 ; =0x000007FF
	ldr r3, [r4, #0]
	sub r0, r1, #0x800
	ldr r2, [r4, #4]
	and r0, r3, r0
	str r0, [r4, #0]
	and r1, r2, r1
	str r1, [r4, #4]
	ldr r0, _020A2904 ; =0x021C3A59
	add r1, r4, #8
	mov r2, #6
	bl sub_020C4DB0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, r1, lsr #3
	orr r1, r1, r0, lsl #29
	str r1, [r4, #8]
	mov r3, r0, lsr #3
	str r3, [r4, #0xc]
	ldr r1, _020A2900 ; =0x000007FF
	ldr r2, [r4, #8]
	sub r0, r1, #0x800
	and r0, r2, r0
	str r0, [r4, #8]
	and r1, r1, r3
	str r1, [r4, #0xc]
	ldr r0, _020A2908 ; =0x021C3A5E
	add r1, r4, #0x10
	mov r2, #2
	bl sub_020C4DB0
	ldrh r1, [r4, #0x10]
	ldr r3, _020A290C ; =0x000003FF
	ldr r0, _020A2910 ; =0x021C3A60
	mov r1, r1, asr #6
	strh r1, [r4, #0x10]
	ldrh ip, [r4, #0x10]
	add r1, r4, #0x12
	mov r2, #2
	and r3, ip, r3
	strh r3, [r4, #0x10]
	bl sub_020C4DB0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A28FC: .word 0x021C3A54
_020A2900: .word 0x000007FF
_020A2904: .word 0x021C3A59
_020A2908: .word 0x021C3A5E
_020A290C: .word 0x000003FF
_020A2910: .word 0x021C3A60
	arm_func_end sub_020A283C

	arm_func_start sub_020A2914
sub_020A2914: ; 0x020A2914
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _020A29E4 ; =0x021C3A48
	mov sl, r1
	ldr sb, [r2, #8]
	bl sub_020A3338
	ldr r1, _020A29E8 ; =0x0000A001
	add r0, sl, #0x200
	bl sub_020D316C
	mov r5, #0x100
	ldr r6, _020A29EC ; =0x021C3A54
	mov r8, #0
	mov r4, r5
	mov fp, #0xe
	mov r7, r5
_020A294C:
	mov r0, sb
	mov r1, r7
	mov r2, sl
	bl sub_020A3144
	cmp r0, #0
	bne _020A2970
	bl sub_020C42A8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A2970:
	mov r0, r6
	mov r2, fp
	add r1, sl, #0xf0
	bl sub_020C4DB0
	mov r1, sl
	mov r2, #0xfe
	add r0, sl, #0x200
	bl sub_020D32D4
	strh r0, [sl, #0xfe]
_020A2994:
	mov r0, sb
	mov r1, r5
	mov r2, sl
	bl sub_020A31D4
	mov r0, sl
	mov r1, sb
	mov r2, r4
	add r3, sl, #0x100
	bl sub_020A3250
	cmp r0, #0
	beq _020A2994
	add r8, r8, #1
	cmp r8, #2
	add sb, sb, #0x100
	blt _020A294C
	bl sub_020A329C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A29E4: .word 0x021C3A48
_020A29E8: .word 0x0000A001
_020A29EC: .word 0x021C3A54
	arm_func_end sub_020A2914

	arm_func_start sub_020A29F0
sub_020A29F0: ; 0x020A29F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x20
	mov r1, r0
	mov r2, r4
	bl sub_020A3144
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r4]
	ldr r1, _020A2A30 ; =0x021C3A48
	mov r0, #1
	mov r2, r2, lsl #3
	sub r2, r2, #0x400
	str r2, [r1, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A2A30: .word 0x021C3A48
	arm_func_end sub_020A29F0

	arm_func_start sub_020A2A34
sub_020A2A34: ; 0x020A2A34
	stmfd sp!, {r3, lr}
	ldr r1, _020A2A5C ; =0x021C3A48
	mov r2, r0
	ldr r0, [r1, #8]
	mov r1, #0x400
	bl sub_020A3144
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A2A5C: .word 0x021C3A48
	arm_func_end sub_020A2A34

	arm_func_start sub_020A2A60
sub_020A2A60: ; 0x020A2A60
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _020A2AE4 ; =0x021C3A48
	mov sl, #0x100
	ldr r5, [r3, #8]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
	mov sb, sl
_020A2A84:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _020A2ABC
_020A2A90:
	mov r0, r5
	mov r1, sl
	mov r2, r8
	bl sub_020A31D4
	mov r0, r8
	mov r1, r5
	mov r2, sb
	mov r3, r6
	bl sub_020A3250
	cmp r0, #0
	beq _020A2A90
_020A2ABC:
	add r4, r4, #1
	cmp r4, #4
	add r8, r8, #0x100
	add r5, r5, #0x100
	blt _020A2A84
	bl sub_020A329C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020A2AE4: .word 0x021C3A48
	arm_func_end sub_020A2A60

	arm_func_start sub_020A2AE8
sub_020A2AE8: ; 0x020A2AE8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _020A2B78 ; =0x021C3A48
	mov r8, r0
	mov sl, #0x100
	ldr r6, [r1, #8]
	mov r7, r8
	mov r5, #0
	mov sb, sl
	mov r4, #0xfe
_020A2B0C:
	mov r1, r7
	mov r2, r4
	add r0, r8, #0x500
	bl sub_020D32D4
	add r1, r8, r5, lsl #8
	strh r0, [r1, #0xfe]
_020A2B24:
	mov r0, r6
	mov r1, sl
	mov r2, r7
	bl sub_020A31D4
	mov r0, r7
	mov r1, r6
	mov r2, sb
	add r3, r8, #0x400
	bl sub_020A3250
	cmp r0, #0
	beq _020A2B24
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x100
	add r6, r6, #0x100
	blt _020A2B0C
	bl sub_020A329C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020A2B78: .word 0x021C3A48
	arm_func_end sub_020A2AE8

	arm_func_start sub_020A2B7C
sub_020A2B7C: ; 0x020A2B7C
	ldr ip, _020A2B8C ; =sub_020C4DB0
	ldr r1, _020A2B90 ; =0x021C3A54
	mov r2, #0xe
	bx ip
	; .align 2, 0
_020A2B8C: .word sub_020C4DB0
_020A2B90: .word 0x021C3A54
	arm_func_end sub_020A2B7C

	arm_func_start sub_020A2B94
sub_020A2B94: ; 0x020A2B94
	stmfd sp!, {r4, lr}
	mov ip, #0
	mov r3, ip
	mov r2, ip
_020A2BA4:
	ldrb r4, [r0, ip]
	mov lr, r2
_020A2BAC:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _020A2BAC
	add ip, ip, #1
	cmp ip, #4
	blt _020A2BA4
	and r0, r3, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A2B94

	arm_func_start sub_020A2BD8
sub_020A2BD8: ; 0x020A2BD8
	mvn r2, #0
	mov r3, #0
	eor r2, r2, r2, lsr r0
	mov ip, r3
_020A2BE8:
	rsb r0, ip, #0x18
	mov r0, r2, lsr r0
	strb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #8
	blt _020A2BE8
	bx lr
	arm_func_end sub_020A2BD8

	arm_func_start sub_020A2C08
sub_020A2C08: ; 0x020A2C08
	mov r2, #0
_020A2C0C:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _020A2C0C
	mov r0, #0
	bx lr
	arm_func_end sub_020A2C08

	arm_func_start sub_020A2C30
sub_020A2C30: ; 0x020A2C30
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl sub_020A2CAC
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, sp, #4
	mov r0, r5
	mov r2, #4
	bl sub_020C4DB0
	add r1, sp, #0
	mov r0, r4
	mov r2, #4
	bl sub_020C4DB0
	ldr r3, [sp]
	ldr r2, [sp, #4]
	mvn r0, #1
	orr r1, r2, r3
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mvn r0, r3
	tst r2, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A2C30

	arm_func_start sub_020A2CAC
sub_020A2CAC: ; 0x020A2CAC
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end sub_020A2CAC

	arm_func_start sub_020A2CD8
sub_020A2CD8: ; 0x020A2CD8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	ldr sl, _020A312C ; =0x021C3A80
	mov r8, r1, lsr #0x10
	mov r4, sl, lsl #8
	mov sb, r4
	and r4, r4, #0xff00
	mov r1, r1, lsl #0x10
	orr r4, r4, #0x20000
	mov r5, r3, lsr #0x10
	mov r7, r0
	ldr ip, _020A3130 ; =0x01020000
	mov r1, r1, lsr #0x10
	str r4, [sp, #0x30]
	orr r4, r1, #0x10000
	mov r3, r3, lsl #0x10
	add r1, ip, #0x30000
	orr r1, r1, r3, lsr #16
	str r1, [sp, #0x10]
	mov r1, r3, lsr #0x10
	orr r1, r1, #0x1040000
	ldr r0, _020A3134 ; =0x02002200
	str r1, [sp, #0x24]
	orr r1, r0, sl, lsr #24
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x30]
	mov sb, sb, lsr #0x10
	orr r1, r1, #0x1000000
	str r1, [sp, #0x30]
	add r1, r0, #0x300
	and r8, r8, #0xff
	add r0, r0, #0x100
	orr r0, r8, r0
	orr r1, r8, r1
	str r0, [sp]
	orr r0, r2, #0x20000
	str r0, [sp, #0x1c]
	orr r0, r5, #0x30000
	str r0, [sp, #0x20]
	orr r0, r5, #0x40000
	str r0, [sp, #0xc]
	ldr r0, _020A3138 ; =0x03002100
	mov r6, #0
	sub r0, r0, #0x100
	str r0, [sp, #0x14]
	mov r0, r2, lsr #0x10
	orr r0, r0, #0x20000
	str r0, [sp, #4]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orr sb, sb, #0x10000
	orr r0, r0, #0x30000
	str sb, [sp, #0x2c]
	str r1, [sp, #0x18]
	str r0, [sp, #8]
	mov r5, r6
	mov r8, #0xfa0
_020A2DBC:
	cmp r6, #0
	bne _020A2FFC
	ldr r0, _020A313C ; =0x021C3A48
	cmp r7, #7
	str r5, [r0, #4]
	addls pc, pc, r7, lsl #2
	b _020A2DBC
_020A2DD8: ; jump table
	b _020A2DBC ; case 0
	b _020A2DF8 ; case 1
	b _020A2EA4 ; case 2
	b _020A2EC4 ; case 3
	b _020A2F60 ; case 4
	b _020A2F60 ; case 5
	b _020A2FB8 ; case 6
	b _020A2FDC ; case 7
_020A2DF8:
	ldr r1, [sp]
	mov r0, #4
	mov r2, r5
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #4]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #8]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0xc]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0x10]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2EA4:
	ldr r1, [sp, #0x14]
	mov r0, #4
	mov r2, r5
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2EC4:
	ldr r1, [sp, #0x18]
	mov r0, #4
	mov r2, r5
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	ldr r1, [sp, #0x1c]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	ldr r1, [sp, #0x20]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	ldr r1, [sp, #0x24]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
_020A2F50:
	bl sub_020C3880
	str r0, [sp, #0x34]
	mov fp, r1
	b _020A2DBC
_020A2F60:
	ldr r1, [sp, #0x28]
	mov r0, #4
	mov r2, r5
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0x2c]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2FB8:
	ldr r1, _020A3138 ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	mov r2, r5
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2FDC:
	ldr r1, _020A3138 ; =0x03002100
	mov r0, #4
	mov r2, r5
	bl sub_020C64CC
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2FFC:
	ldr r0, _020A313C ; =0x021C3A48
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _020A2DBC
	ldr r0, _020A313C ; =0x021C3A48
	mov r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _020A3120
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	b _020A2DBC
_020A302C: ; jump table
	b _020A2DBC ; case 0
	b _020A304C ; case 1
	b _020A3058 ; case 2
	b _020A3060 ; case 3
	b _020A3068 ; case 4
	b _020A3068 ; case 5
	b _020A3108 ; case 6
	b _020A3114 ; case 7
_020A304C:
	add sp, sp, #0x3c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A3058:
	mov r7, #4
	b _020A2DBC
_020A3060:
	mov r7, #5
	b _020A2DBC
_020A3068:
	mov r0, sl
	mov r1, #1
	bl sub_020C2C1C
	cmp r7, #4
	ldrb r0, [sl]
	bne _020A3098
	tst r0, #2
	movne r7, #3
	bne _020A2DBC
	add sp, sp, #0x3c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A3098:
	tst r0, #1
	addeq sp, sp, #0x3c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	tst r0, #0x20
	bne _020A30F4
	bl sub_020C3880
	ldr r2, [sp, #0x34]
	mov ip, r6
	subs sb, r0, r2
	mov r0, #0x40
	sbc lr, r1, fp
	umull r0, r1, sb, r0
	mla r1, sb, ip, r1
	mov sb, #0x40
	mla r1, lr, sb, r1
	ldr r2, _020A3140 ; =0x000082EA
	mov r3, r6
	bl sub_020E1ED4
	mov r2, r6
	cmp r1, r2
	cmpeq r0, r8
	bls _020A30FC
_020A30F4:
	mov r7, #6
	b _020A2DBC
_020A30FC:
	mov r0, #0x4000
	bl sub_02000522
	b _020A2DBC
_020A3108:
	add sp, sp, #0x3c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A3114:
	add sp, sp, #0x3c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A3120:
	mov r0, r6
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A312C: .word 0x021C3A80
_020A3130: .word 0x01020000
_020A3134: .word 0x02002200
_020A3138: .word 0x03002100
_020A313C: .word 0x021C3A48
_020A3140: .word 0x000082EA
	arm_func_end sub_020A2CD8

	arm_func_start sub_020A3144
sub_020A3144: ; 0x020A3144
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl sub_020C2C1C
	mov r8, #4
	mov r7, #1
_020A3164:
	mov r0, r8
	mov r1, r7
	bl sub_020C64A8
	cmp r0, #0
	beq _020A3164
	ldr r1, _020A31D0 ; =sub_020A3308
	mov r0, #4
	bl sub_020C645C
	mov r0, r5, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r7, #0x40000
	mov sb, #1
_020A3194:
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl sub_020A2CD8
	cmp r0, #1
	beq _020A31BC
	mov r0, r7
	bl sub_02000522
	b _020A3194
_020A31BC:
	mov r0, r4
	mov r1, r5
	bl sub_020C2C1C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A31D0: .word sub_020A3308
	arm_func_end sub_020A3144

	arm_func_start sub_020A31D4
sub_020A31D4: ; 0x020A31D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #4
	mov r4, #1
_020A31EC:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020A31EC
	ldr r1, _020A324C ; =sub_020A3308
	mov r0, #4
	bl sub_020C645C
	mov r0, r6
	mov r1, r7
	bl sub_020C2C38
	mov r4, #0x40000
	mov r5, #2
_020A3220:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl sub_020A2CD8
	cmp r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_02000522
	b _020A3220
_020A3248:
	.byte 0xF0, 0x81, 0xBD, 0xE8
_020A324C: .word sub_020A3308
	arm_func_end sub_020A31D4

	arm_func_start sub_020A3250
sub_020A3250: ; 0x020A3250
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	mov r6, r0
	mov r0, r1
	mov r1, r5
	mov r2, r4
	bl sub_020A3144
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020D5190
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A3250

	arm_func_start sub_020A329C
sub_020A329C: ; 0x020A329C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #4
	mov r4, #1
_020A32A8:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020A32A8
	ldr r1, _020A3304 ; =sub_020A3308
	mov r0, #4
	bl sub_020C645C
	mov r4, #0x40000
	mov r6, #7
	mov r5, #0
_020A32D4:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl sub_020A2CD8
	cmp r0, #1
	beq _020A32FC
	mov r0, r4
	bl sub_02000522
	b _020A32D4
_020A32FC:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A3304: .word sub_020A3308
	arm_func_end sub_020A329C

	arm_func_start sub_020A3308
sub_020A3308: ; 0x020A3308
	ldr r0, _020A3334 ; =0x021C3A48
	and r1, r1, #0xff
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	cmp r2, #0
	movne r1, #0xff
	strneh r1, [r0]
	ldr r0, _020A3334 ; =0x021C3A48
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020A3334: .word 0x021C3A48
	arm_func_end sub_020A3308

	arm_func_start sub_020A3338
sub_020A3338: ; 0x020A3338
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r3, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r1, _020A33EC ; =0x021C3A54
	str r2, [sp, #4]
	str r3, [sp]
	mov r2, #5
	bl sub_020C4DB0
	ldr r2, [sp]
	ldr r1, [sp, #4]
	mov ip, r2, lsr #5
	ldr lr, [r4, #4]
	mov r3, r1, lsr #5
	orr ip, ip, r1, lsl #27
	mov r0, #7
	and r1, r0, lr, lsr #8
	and r0, r2, #0x1f
	orr lr, r1, r0, lsl #3
	ldr r2, _020A33EC ; =0x021C3A54
	ldr r1, _020A33F0 ; =0x021C3A5A
	strb lr, [r2, #5]
	add r0, sp, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r2, #4
	bl sub_020C4DB0
	ldrh r0, [r4, #0x10]
	ldr r1, [sp, #4]
	ldr r3, _020A33EC ; =0x021C3A54
	and r1, r1, #0x3f
	mov r0, r0, lsl #0x1e
	orr r0, r1, r0, lsr #24
	strb r0, [r3, #0xa]
	ldrh r2, [r4, #0x10]
	add r0, r4, #0x12
	ldr r1, _020A33F4 ; =0x021C3A60
	mov r4, r2, asr #2
	mov r2, #2
	strb r4, [r3, #0xb]
	bl sub_020C4DB0
	ldr r0, _020A33EC ; =0x021C3A54
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A33EC: .word 0x021C3A54
_020A33F0: .word 0x021C3A5A
_020A33F4: .word 0x021C3A60
	arm_func_end sub_020A3338

	arm_func_start sub_020A33F8
sub_020A33F8: ; 0x020A33F8
	ldr r0, _020A3400 ; =0x021C3A54
	bx lr
	; .align 2, 0
_020A3400: .word 0x021C3A54
	arm_func_end sub_020A33F8

	arm_func_start sub_020A3404
sub_020A3404: ; 0x020A3404
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r1, #0
	mov r2, #0x700
	bl sub_020C4CF4
	mov r0, r8
	bl sub_020A29F0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020A36F8 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _020A36FC ; =0x0000A001
	add r0, r8, #0x500
	bl sub_020D316C
	mov r0, r8
	bl sub_020A2A34
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020A36F8 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r6, r8
	mov r7, r8
	mov r5, #0
	mov sl, #1
	add sb, sp, #0
	mov r4, #0xfe
_020A3480:
	mov r1, r6
	mov r2, r4
	add r0, r8, #0x500
	bl sub_020D32D4
	add r1, r8, r5, lsl #8
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _020A34B0
	mov r0, r7
	bl sub_020A370C
	cmp r0, #0
	strne sl, [sb, r5, lsl #2]
_020A34B0:
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #0x100
	add r7, r7, #0x100
	blt _020A3480
	add r0, r8, #0x500
	add r1, r8, #0x300
	mov r2, #0xfe
	bl sub_020D32D4
	add r1, r8, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	moveq r0, #1
	ldr r1, [sp]
	streq r0, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	beq _020A3520
	add r0, r8, #0xf0
	bl sub_020A2B7C
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020A3520:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	bne _020A3564
	mov r0, r8
	bl sub_020A380C
	mov r0, r8
	bl sub_020A2AE8
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020A3700 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020A3564:
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	bne _020A35AC
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	bne _020A35AC
	mov r0, r8
	bl sub_020A380C
	mov r0, r8
	bl sub_020A2AE8
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020A3700 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020A35AC:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	bne _020A35E0
	mov r0, r8
	bl sub_020A380C
	mov r0, r8
	bl sub_020A2AE8
	cmp r0, #0
	ldrne r0, _020A3704 ; =0xFFFFD8ED
	add sp, sp, #0x10
	ldreq r0, _020A3700 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020A35E0:
	cmp r1, #0
	bne _020A3610
	mov r0, r8
	mov r1, #0
	bl sub_020A388C
	add r0, r8, #0x1f0
	add r1, r8, #0xf0
	mov r2, #0xe
	bl sub_020C4DB0
	ldrb r0, [r8, #0x1ef]
	strb r0, [r8, #0xef]
	b _020A3640
_020A3610:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020A3640
	mov r0, r8
	mov r1, #1
	bl sub_020A388C
	add r0, r8, #0xf0
	add r1, r8, #0x1f0
	mov r2, #0xe
	bl sub_020C4DB0
	ldrb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020A3640:
	add r0, r8, #0xf0
	bl sub_020A2B7C
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020A3660
	mov r0, r8
	mov r1, #2
	bl sub_020A388C
_020A3660:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020A367C
	add r1, r8, #0x300
	mov r0, #0
	mov r2, #0x100
	bl sub_020C4AF0
_020A367C:
	mov r4, #0
	mov r5, r4
	mov r2, #1
	add r3, sp, #0
_020A368C:
	ldr r0, [r3, r5, lsl #2]
	cmp r0, #0
	bne _020A36C0
	ldrb r0, [r8, #0xef]
	tst r0, r2, lsl r5
	beq _020A36C0
	mov r1, r0
	mvn r0, r2, lsl r5
	and r0, r1, r0
	strb r0, [r8, #0xef]
	and r0, r0, #0xff
	mov r4, r2
	strb r0, [r8, #0x1ef]
_020A36C0:
	add r5, r5, #1
	cmp r5, #3
	blt _020A368C
	mov r0, r8
	bl sub_020A2AE8
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020A3700 ; =0xFFFFD8F0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r4, #0
	ldrne r0, _020A3708 ; =0xFFFFD8EE
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020A36F8: .word 0xFFFFD8EF
_020A36FC: .word 0x0000A001
_020A3700: .word 0xFFFFD8F0
_020A3704: .word 0xFFFFD8ED
_020A3708: .word 0xFFFFD8EE
	arm_func_end sub_020A3404

	arm_func_start sub_020A370C
sub_020A370C: ; 0x020A370C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0xe7]
	cmp r0, #0xff
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #2
	addhi sp, sp, #4
	movhi r0, #0
	ldmhiia sp!, {r3, r4, pc}
	add r0, r4, #0x40
	bl sub_020A2C08
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, _020A3808 ; =0x020F9534
	add r0, r4, #0xc0
	mov r2, #4
	bl sub_020D5190
	cmp r0, #0
	beq _020A37BC
	add r0, r4, #0xc4
	bl sub_020A2CAC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #0x20
	addhi sp, sp, #4
	movhi r0, #0
	ldmhiia sp!, {r3, r4, pc}
	add r1, sp, #0
	bl sub_020A2BD8
	add r1, sp, #0
	add r0, r4, #0xc0
	bl sub_020A2C30
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
_020A37BC:
	ldr r1, _020A3808 ; =0x020F9534
	add r0, r4, #0xc8
	mov r2, #4
	bl sub_020D5190
	cmp r0, #0
	beq _020A37FC
	add r0, r4, #0xc8
	bl sub_020A2CAC
	cmp r0, #0
	bne _020A37FC
	add r0, r4, #0xcc
	bl sub_020A2CAC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
_020A37FC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020A3808: .word 0x020F9534
	arm_func_end sub_020A370C

	arm_func_start sub_020A380C
sub_020A380C: ; 0x020A380C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r1, r7
	mov r0, #0
	mov r2, #0x400
	bl sub_020C4AF0
	mov r2, #0
	mov r1, #0xff
_020A3830:
	add r0, r7, r2, lsl #8
	add r2, r2, #1
	strb r1, [r0, #0xe7]
	cmp r2, #3
	blt _020A3830
	add r0, sp, #0
	bl sub_020A3A3C
	add r0, sp, #0
	bl sub_020A3338
	mov r5, r0
	mov r6, #0
	mov r4, #0xe
_020A3860:
	mov r0, r5
	mov r2, r4
	add r1, r7, #0xf0
	bl sub_020C4DB0
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x100
	blt _020A3860
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_020A380C

	arm_func_start sub_020A388C
sub_020A388C: ; 0x020A388C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl sub_020C4AF0
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A388C

	arm_func_start sub_020A38B8
sub_020A38B8: ; 0x020A38B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _020A3A30 ; =0x0000FFFF
	mov lr, #0
	and ip, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, ip, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, ip, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r1, r0, r2, lsl #27
	mov r3, ip, lsl #0x1b
	orr r3, r3, r2, lsr #5
	orr r7, r7, r5, lsr #29
	orr r0, ip, r6
	orr r0, r7, r0
	orr r0, r3, r0
	add r2, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_020A391C:
	ldrb r0, [r2]
	add lr, lr, #1
	cmp lr, #6
	eor r0, r0, #0xd6
	strb r0, [r2], #1
	blt _020A391C
	ldr r2, _020A3A34 ; =0x020F9540
	add r4, sp, #8
	mov r5, #0
_020A3940:
	ldrb r3, [r4]
	add r5, r5, #1
	cmp r5, #5
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4], #1
	blt _020A3940
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl sub_020C4DB0
	ldr r4, _020A3A38 ; =0x020F9538
	add r3, sp, #0
	mov r5, #0
	add r0, sp, #8
_020A398C:
	ldrb r2, [r3], #1
	ldrb r1, [r4], #1
	add r5, r5, #1
	cmp r5, #5
	strb r2, [r0, r1]
	blt _020A398C
	ldrb r2, [sp, #0xd]
	mov r1, #0
	ldr r3, [sp, #8]
	and r2, r2, #7
	strb r1, [sp, #0xf]
	strb r1, [sp, #0xe]
	strb r2, [sp, #0xd]
	ldr r2, [sp, #0xc]
	mov r4, r3, lsl #1
	mov r2, r2, lsl #1
	orr r2, r2, r3, lsr #31
	str r2, [sp, #0xc]
	ldrb r2, [sp, #0xd]
	str r4, [sp, #8]
	ldrb r3, [sp, #8]
	mov r2, r2, asr #3
	and r2, r2, #1
	orr r2, r3, r2
	strb r2, [sp, #8]
_020A39F0:
	ldrb r2, [r0]
	add r1, r1, #1
	cmp r1, #6
	eor r2, r2, #0x67
	strb r2, [r0], #1
	blt _020A39F0
	ldrb r0, [sp, #0xd]
	mov r1, #0
	strb r1, [sp, #0xf]
	and r0, r0, #7
	strb r1, [sp, #0xe]
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A3A30: .word 0x0000FFFF
_020A3A34: .word 0x020F9540
_020A3A38: .word 0x020F9538
	arm_func_end sub_020A38B8

	arm_func_start sub_020A3A3C
sub_020A3A3C: ; 0x020A3A3C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	bl sub_020A283C
	bl sub_020CB8A8
	add r0, sp, #0x14
	bl sub_020CB984
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl sub_020CBA30
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl sub_020CC218
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_020C3808
	cmp r0, #0
	beq _020A3AB8
	ldr r0, _020A3C08 ; =sub_020C3880
	adds r4, r4, r0
_020A3AB8:
	add r0, sp, #0
	bl sub_020C3FA0
	ldrb r0, [sp, #1]
	ldr r5, _020A3C0C ; =0x5D588B65
	ldr r6, _020A3C10 ; =0x00269EC3
	ldrb r1, [sp]
	mla sb, r4, r5, r6
	mov r0, r0, lsl #8
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _020A3C14 ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	mov r2, r3, lsr #0x10
	movne r1, #1
	ldrb r0, [sp, #5]
	ldrb r4, [sp, #3]
	mov r3, r7, lsl #8
	moveq r1, #0
	orr r4, r3, r4, lsl #16
	strh r2, [sl, #0x10]
	mov r3, #0
	str r3, [sl]
	str r3, [sl, #4]
	ldrh r2, [sl, #0x12]
	and r7, r1, #0xff
	orr r8, r0, r4
	str r3, [sl, #8]
	cmp r2, #0
	str r3, [sl, #0xc]
	bne _020A3BA8
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _020A3BFC
	mov fp, r3
	mov r4, r3
_020A3B5C:
	mul r0, sb, r5
	adds sb, r0, r6
	bne _020A3B74
_020A3B68:
	mul r0, sb, r5
	adds sb, r0, r6
	beq _020A3B68
_020A3B74:
	strh sb, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl sub_020A38B8
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _020A3B5C
	b _020A3BFC
_020A3BA8:
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _020A3BFC
	mov r6, r3
	mov r5, r3
	mov r4, r3
_020A3BC4:
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	add r0, r0, #1
	strh r0, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r3, r6
	bl sub_020A38B8
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, r5
	cmpeq r0, r4
	beq _020A3BC4
_020A3BFC:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A3C08: .word sub_020C3880
_020A3C0C: .word 0x5D588B65
_020A3C10: .word 0x00269EC3
_020A3C14: .word 0x000009BF
	arm_func_end sub_020A3A3C

	arm_func_start sub_020A3C18
sub_020A3C18: ; 0x020A3C18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A3A3C
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	mov r1, r4
	bl sub_020A2914
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A3C18

	arm_func_start sub_020A3C5C
sub_020A3C5C: ; 0x020A3C5C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl sub_020A283C
	add ip, r5, #8
	ldmia ip, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia ip, {r2, r3}
	bl sub_020A2914
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_020A3C5C

	arm_func_start sub_020A3CAC
sub_020A3CAC: ; 0x020A3CAC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r2, sp, #0
	mov r1, #0
	mov sl, r0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r1, [r2, #4]
	strb r1, [r2, #5]
	bl sub_020A283C
	bl sub_020CB8A8
	add r0, sp, #0x14
	bl sub_020CB984
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl sub_020CBA30
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl sub_020CC218
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_020C3808
	cmp r0, #0
	beq _020A3D48
	ldr r0, _020A3E3C ; =sub_020C3880
	adds r4, r4, r0
_020A3D48:
	add r0, sp, #0
	bl sub_020C3FA0
	ldrb r0, [sp, #1]
	ldr r5, _020A3E40 ; =0x5D588B65
	ldr r6, _020A3E44 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla sb, r4, r5, r6
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _020A3E48 ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r4, r2, r0
	mov r2, r4, lsr #0x10
	ldrb r0, [sp, #5]
	ldrb r8, [sp, #3]
	mov r4, r7, lsl #8
	moveq r1, #0
	mov r3, #0
	strh r2, [sl, #0x10]
	str r3, [sl, #8]
	str r3, [sl, #0xc]
	orr r4, r4, r8, lsl #16
	ldr r2, [sl, #8]
	cmp r3, #0
	cmpeq r2, #0
	and r7, r1, #0xff
	orr r8, r0, r4
	bne _020A3E30
	mov fp, r3
	mov r4, r3
_020A3DD8:
	mla sb, r5, sb, r6
	b _020A3DE4
_020A3DE0:
	mla sb, r5, sb, r6
_020A3DE4:
	cmp sb, #0
	beq _020A3DE0
	ldrh r2, [sl, #0x12]
	mov r0, sb, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r2, r0, lsr #16
	beq _020A3DE0
	strh r1, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl sub_020A38B8
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _020A3DD8
_020A3E30:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A3E3C: .word sub_020C3880
_020A3E40: .word 0x5D588B65
_020A3E44: .word 0x00269EC3
_020A3E48: .word 0x000009BF
	arm_func_end sub_020A3CAC

	arm_func_start sub_020A3E4C
sub_020A3E4C: ; 0x020A3E4C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A283C
	add r0, sp, #0
	ldmia r0, {r2, r3}
	stmia r4, {r2, r3}
	add r1, sp, #8
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	mov r0, #0
	cmpeq r1, #0
	movne r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A3E4C

	arm_func_start sub_020A3EA0
sub_020A3EA0: ; 0x020A3EA0
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl sub_020A283C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	cmp r0, #0
	cmpeq r1, #0
	mov r0, #0
	bne _020A3EE4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
_020A3EE4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end sub_020A3EA0

	arm_func_start sub_020A3EF0
sub_020A3EF0: ; 0x020A3EF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _020A3F50 ; =0x02000BC4
	mov r5, #0
	bl sub_02000B9C
	mov r0, r6
	bl sub_020A3404
	mov r4, r0
	bl sub_020A3EA0
	cmp r0, #0
	beq _020A3F28
	mov r0, r6
	bl sub_020A3C18
	mov r5, #1
_020A3F28:
	cmp r4, #0
	bge _020A3F40
	cmp r5, #0
	movne r0, #2
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_020A3F40:
	cmp r5, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A3F50: .word 0x02000BC4
	arm_func_end sub_020A3EF0

	arm_func_start sub_020A3F54
sub_020A3F54: ; 0x020A3F54
	mvn ip, r3
	tst r1, ip
	movne r0, #0
	bxne lr
	mvn r3, r3, lsl r2
	ldr ip, [r0]
	and r3, ip, r3
	orr r1, r3, r1, lsl r2
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	arm_func_end sub_020A3F54

	arm_func_start sub_020A3F80
sub_020A3F80: ; 0x020A3F80
	ldr r2, [r0, #0]
	ldr r1, _020A3F9C ; =0x000007FF
	ldr r0, [r0, #4]
	and r1, r2, r1
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	; .align 2, 0
_020A3F9C: .word 0x000007FF
	arm_func_end sub_020A3F80

	arm_func_start sub_020A3FA0
sub_020A3FA0: ; 0x020A3FA0
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_020A3FA0

	arm_func_start sub_020A3FA8
sub_020A3FA8: ; 0x020A3FA8
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	arm_func_end sub_020A3FA8

	arm_func_start sub_020A3FBC
sub_020A3FBC: ; 0x020A3FBC
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_020A3FBC

	arm_func_start sub_020A3FC4
sub_020A3FC4: ; 0x020A3FC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020A3FE8 ; =0x000007FF
	mov r4, r1
	mov r1, r2
	mov r2, #0
	mov r5, r0
	bl sub_020A3F54
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A3FE8: .word 0x000007FF
	arm_func_end sub_020A3FC4

	arm_func_start sub_020A3FEC
sub_020A3FEC: ; 0x020A3FEC
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_020A3FEC

	arm_func_start sub_020A3FF4
sub_020A3FF4: ; 0x020A3FF4
	stmib r0, {r1, r2}
	bx lr
	arm_func_end sub_020A3FF4

	arm_func_start sub_020A3FFC
sub_020A3FFC: ; 0x020A3FFC
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A3FFC

	arm_func_start sub_020A4004
sub_020A4004: ; 0x020A4004
	ldr r1, [r0, #0]
	ldr r0, _020A4014 ; =0x001FFFFF
	and r0, r0, r1, lsr #11
	bx lr
	; .align 2, 0
_020A4014: .word 0x001FFFFF
	arm_func_end sub_020A4004

	arm_func_start sub_020A4018
sub_020A4018: ; 0x020A4018
	stmfd sp!, {r3, lr}
	bl sub_020A4004
	and r0, r0, #3
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4018

	arm_func_start sub_020A4028
sub_020A4028: ; 0x020A4028
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4018
	cmp r0, #3
	bne _020A4058
	mov r0, r4
	bl sub_020A4004
	and r0, r0, #4
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020A4058:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4028

	arm_func_start sub_020A4060
sub_020A4060: ; 0x020A4060
	ldr ip, _020A4068 ; =sub_020A4018
	bx ip
	; .align 2, 0
_020A4068: .word sub_020A4018
	arm_func_end sub_020A4060

	arm_func_start sub_020A406C
sub_020A406C: ; 0x020A406C
	ldr ip, _020A407C ; =sub_020A3F54
	ldr r3, _020A4080 ; =0x001FFFFF
	mov r2, #0xb
	bx ip
	; .align 2, 0
_020A407C: .word sub_020A3F54
_020A4080: .word 0x001FFFFF
	arm_func_end sub_020A406C

	arm_func_start sub_020A4084
sub_020A4084: ; 0x020A4084
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020A4004
	bic r1, r0, #3
	mov r0, r5
	orr r1, r1, r4
	bl sub_020A406C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A4084

	arm_func_start sub_020A40A8
sub_020A40A8: ; 0x020A40A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4018
	cmp r0, #3
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_020A4004
	orr r1, r0, #4
	mov r0, r4
	bl sub_020A406C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A40A8

	arm_func_start sub_020A40D4
sub_020A40D4: ; 0x020A40D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x108
	mov r4, r0
	str r1, [sp, #4]
	add r0, sp, #8
	mov r1, #7
	str r4, [sp]
	bl sub_020D30A8
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl sub_020D32AC
	and r0, r0, #0x7f
	orr r1, r0, #0
	orr r0, r4, #0
	add sp, sp, #0x108
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A40D4

	arm_func_start sub_020A4118
sub_020A4118: ; 0x020A4118
	ldr ip, _020A4130 ; =sub_020A4134
	mov r3, r0
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x24]
	bx ip
	; .align 2, 0
_020A4130: .word sub_020A4134
	arm_func_end sub_020A4118

	arm_func_start sub_020A4134
sub_020A4134: ; 0x020A4134
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x108
	mov r4, r1
	and r1, r4, #0
	cmp r1, #0
	and r3, r0, #0x80000000
	cmpeq r3, #0
	mov r1, #0
	addne sp, sp, #0x108
	movne r0, r1
	ldmneia sp!, {r4, pc}
	str r0, [sp]
	add r0, sp, #8
	mov r1, #7
	str r2, [sp, #4]
	bl sub_020D30A8
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl sub_020D32AC
	and r1, r0, #0x7f
	mov r0, r1, asr #0x1f
	cmp r0, #0
	cmpeq r1, r4
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x108
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4134

	arm_func_start sub_020A41A4
sub_020A41A4: ; 0x020A41A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4134
	cmp r0, #0
	mov r0, #0
	subne r0, r0, #1
	andne r0, r4, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A41A4

	arm_func_start sub_020A41C4
sub_020A41C4: ; 0x020A41C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr lr, _020A422C ; =0x66666667
	add r4, r2, #4
	smull ip, r2, lr, r4
	mov ip, r4, lsr #0x1f
	add r2, ip, r2, asr #1
	cmp r2, #0
	ldr r7, _020A4230 ; =0x02100DB8
	mov r6, #0
	ble _020A4220
	add r4, r3, r2
	sub r4, r4, #1
	mov ip, #0x1f
_020A41F8:
	and r5, r0, ip
	ldrsb r5, [r7, r5]
	mov r0, r0, lsr #5
	mov lr, r1, lsr #5
	strb r5, [r4, -r6]
	add r6, r6, #1
	orr r0, r0, r1, lsl #27
	mov r1, lr
	cmp r6, r2
	blt _020A41F8
_020A4220:
	mov r0, #0
	strb r0, [r3, r2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A422C: .word 0x66666667
_020A4230: .word 0x02100DB8
	arm_func_end sub_020A41C4

	arm_func_start sub_020A4234
sub_020A4234: ; 0x020A4234
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl sub_020A3F80
	add r3, sp, #0x29
	mov r2, #0x2b
	bl sub_020A41C4
	mov r0, r6
	bl sub_020A3FA0
	mov r1, #0
	mov r2, #0x20
	add r3, sp, #0x14
	bl sub_020A41C4
	mov r1, r4, lsr #0x18
	and r1, r1, #0xff
	str r1, [sp]
	mov r1, r4, lsr #0x10
	and r1, r1, #0xff
	str r1, [sp, #4]
	mov r1, r4, lsr #8
	and r1, r1, #0xff
	str r1, [sp, #8]
	and r1, r4, #0xff
	str r1, [sp, #0xc]
	add r2, sp, #0x14
	str r2, [sp, #0x10]
	ldr r2, _020A42C0 ; =0x02100DDC
	mov r0, r5
	mov r1, #0x15
	add r3, sp, #0x29
	bl sub_020C1AF0
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A42C0: .word 0x02100DDC
	arm_func_end sub_020A4234

	arm_func_start sub_020A42C4
sub_020A42C4: ; 0x020A42C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x400
	mov r4, r1
	mov r1, #0
	mov r2, #0x40
	mov r5, r0
	bl sub_020C4CF4
	mov r0, #0x40
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r5, #0x1c]
	add r0, r5, #4
	str r4, [r5, #0x24]
	bl sub_020A4340
	add r0, r5, #0x10
	mov r1, #0
	bl sub_020A4084
	ldr r1, _020A433C ; =0xEDB88320
	add r0, sp, #0
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x3c
	bl sub_020D3328
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x20]
	orr r0, r0, #1
	str r0, [r5, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A433C: .word 0xEDB88320
	arm_func_end sub_020A42C4

	arm_func_start sub_020A4340
sub_020A4340: ; 0x020A4340
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	mov r6, r0
	add r0, sp, #0
	bl sub_020C41D8
	mov r3, #1
	add r2, sp, #0
_020A435C:
	add r0, r2, r3, lsl #2
	ldr r1, [r2, r3, lsl #2]
	ldr r0, [r0, #-4]
	eor r0, r1, r0
	str r0, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #8
	blo _020A435C
	add r0, sp, #0x20
	ldr r5, [sp, #0x1c]
	mov r4, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _020A43AC
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r0, r6
	bl sub_020A3FC4
	b _020A43BC
_020A43AC:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r6
	bl sub_020A3FC4
_020A43BC:
	ldr r0, _020A43F8 ; =0x6C078965
	ldr r1, _020A43FC ; =0x5D588B65
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	ldr r1, _020A4400 ; =0x00269EC3
	mla r2, r4, r0, r2
	adds r0, r3, r1
	mov r0, r6
	adc r1, r2, #0
	bl sub_020A3FEC
	mov r0, r6
	mov r1, #1
	bl sub_020A4084
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020A43F8: .word 0x6C078965
_020A43FC: .word 0x5D588B65
_020A4400: .word 0x00269EC3
	arm_func_end sub_020A4340

	arm_func_start sub_020A4404
sub_020A4404: ; 0x020A4404
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, r4
	beq _020A444C
	bl sub_020A3F80
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	add sp, sp, #0x14
	movne r0, #0
	ldmia sp!, {r3, r4, pc}
_020A444C:
	bl sub_020A3F80
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A4404

	arm_func_start sub_020A4470
sub_020A4470: ; 0x020A4470
	stmfd sp!, {r3, lr}
	bl sub_020A4018
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4470

	arm_func_start sub_020A4488
sub_020A4488: ; 0x020A4488
	ldr ip, _020A4494 ; =sub_020A4470
	add r0, r0, #0x10
	bx ip
	; .align 2, 0
_020A4494: .word sub_020A4470
	arm_func_end sub_020A4488

	arm_func_start sub_020A4498
sub_020A4498: ; 0x020A4498
	stmfd sp!, {r3, lr}
	bl sub_020A4018
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4498

	arm_func_start sub_020A44B0
sub_020A44B0: ; 0x020A44B0
	ldr ip, _020A44B8 ; =sub_020A4498
	bx ip
	; .align 2, 0
_020A44B8: .word sub_020A4498
	arm_func_end sub_020A44B0

	arm_func_start sub_020A44BC
sub_020A44BC: ; 0x020A44BC
	ldr ip, _020A44C4 ; =sub_020A42C4
	bx ip
	; .align 2, 0
_020A44C4: .word sub_020A42C4
	arm_func_end sub_020A44BC

	arm_func_start sub_020A44C8
sub_020A44C8: ; 0x020A44C8
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	ldr r1, _020A4508 ; =0xEDB88320
	mov r4, r0
	add r0, sp, #0
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl sub_020D3328
	ldr r1, [r4, #0x3c]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4508: .word 0xEDB88320
	arm_func_end sub_020A44C8

	arm_func_start sub_020A450C
sub_020A450C: ; 0x020A450C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	bl sub_020A4470
	cmp r0, #0
	beq _020A4534
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
_020A4534:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A450C

	arm_func_start sub_020A453C
sub_020A453C: ; 0x020A453C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x10
	bl sub_020A4018
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x10
	bl sub_020A3F80
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A453C

	arm_func_start sub_020A45A4
sub_020A45A4: ; 0x020A45A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	add r3, r4, #0x10
	mov ip, r2
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, _020A45F8 ; =0xEDB88320
	add r0, sp, #0
	str ip, [r4, #0x1c]
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl sub_020D3328
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x20]
	orr r0, r0, #1
	str r0, [r4, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A45F8: .word 0xEDB88320
	arm_func_end sub_020A45A4

	arm_func_start sub_020A45FC
sub_020A45FC: ; 0x020A45FC
	ldr ip, _020A4604 ; =sub_020A4608
	bx ip
	; .align 2, 0
_020A4604: .word sub_020A4608
	arm_func_end sub_020A45FC

	arm_func_start sub_020A4608
sub_020A4608: ; 0x020A4608
	ldr r0, [r0, #0x20]
	and r0, r0, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A4608

	arm_func_start sub_020A4620
sub_020A4620: ; 0x020A4620
	ldr ip, _020A4628 ; =sub_020A462C
	bx ip
	; .align 2, 0
_020A4628: .word sub_020A462C
	arm_func_end sub_020A4620

	arm_func_start sub_020A462C
sub_020A462C: ; 0x020A462C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	ldr r1, [r4, #0x20]
	add r0, sp, #0
	bic r2, r1, #1
	ldr r1, _020A466C ; =0xEDB88320
	str r2, [r4, #0x20]
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl sub_020D3328
	str r0, [r4, #0x3c]
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A466C: .word 0xEDB88320
	arm_func_end sub_020A462C

	arm_func_start sub_020A4670
sub_020A4670: ; 0x020A4670
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4018
	cmp r0, #2
	movne r0, #0
	movne r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_020A3FA8
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4670

	arm_func_start sub_020A4698
sub_020A4698: ; 0x020A4698
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r0
	mov r0, r4
	bl sub_020A4018
	cmp r0, #1
	beq _020A470C
	cmp r0, #2
	beq _020A46C8
	cmp r0, #3
	beq _020A4700
	b _020A4714
_020A46C8:
	mov r0, r4
	bl sub_020A3FA8
	ldr r2, [r6, #0x24]
	mov r4, r0
	mov r5, r1
	bl sub_020A4134
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x24]
	mov r0, r4
	mov r1, r5
	bl sub_020A41A4
	ldmia sp!, {r4, r5, r6, pc}
_020A4700:
	mov r0, r4
	bl sub_020A3FBC
	ldmia sp!, {r4, r5, r6, pc}
_020A470C:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_020A4714:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A4698

	arm_func_start sub_020A471C
sub_020A471C: ; 0x020A471C
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0x1c]
	mov r2, #0
	mov r1, r2
	cmp r0, #0
	beq _020A4744
	ldr r1, [r3, #0x24]
	bl sub_020A40D4
	mov r2, r0
_020A4744:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A471C

	arm_func_start sub_020A474C
sub_020A474C: ; 0x020A474C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020A3FF4
	mov r0, r6
	mov r1, #2
	bl sub_020A4084
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A474C

	arm_func_start sub_020A4788
sub_020A4788: ; 0x020A4788
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, r5
	bl sub_020A4488
	cmp r0, #0
	addeq r0, r5, #4
	ldmeqia r0, {r0, r1, r2}
	stmeqia r4, {r0, r1, r2}
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl sub_020A3FFC
	mov r0, r4
	mov r1, #3
	bl sub_020A4084
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A4788

	arm_func_start sub_020A47DC
sub_020A47DC: ; 0x020A47DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, r5
	mov r1, r4
	bl sub_020A3FFC
	mov r0, r5
	mov r1, #3
	bl sub_020A4084
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A47DC

	arm_func_start sub_020A4810
sub_020A4810: ; 0x020A4810
	ldr ip, _020A4824 ; =sub_020A4234
	mov r3, r0
	mov r0, r1
	ldr r1, [r3, #0x24]
	bx ip
	; .align 2, 0
_020A4824: .word sub_020A4234
	arm_func_end sub_020A4810

	arm_func_start sub_020A4828
sub_020A4828: ; 0x020A4828
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl sub_020A4018
	mov r5, r0
	mov r0, r4
	bl sub_020A4018
	cmp r5, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #3
	bne _020A487C
	mov r0, r7
	bl sub_020A3FBC
	mov r5, r0
	mov r0, r4
	bl sub_020A3FBC
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A487C:
	cmp r5, #1
	bne _020A48D0
	mov r0, r7
	bl sub_020A3F80
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl sub_020A3F80
	cmp r6, r1
	cmpeq r5, r0
	bne _020A48C8
	mov r0, r7
	bl sub_020A3FA0
	mov r5, r0
	mov r0, r4
	bl sub_020A3FA0
	cmp r5, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020A48C8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A48D0:
	cmp r5, #2
	bne _020A4904
	mov r0, r7
	bl sub_020A3FA8
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl sub_020A3FA8
	cmp r6, r1
	cmpeq r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A4904:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A4828

	arm_func_start sub_020A490C
sub_020A490C: ; 0x020A490C
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0
	str r3, [r0, #0]
	cmp r2, #0x10
	str r3, [r0, #4]
	movhi r2, #0x10
	add r0, r0, #8
_020A4928:
	str r3, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020A4928
	mov r5, #0
	mov r6, r5
	mov lr, r5
	mov ip, r5
_020A4948:
	ldrb r3, [r1, r6]
	ldr r4, [r0, lr, lsl #2]
	add r6, r6, #1
	add r3, r4, r3
	add r3, r5, r3
	and r5, r3, #0xff
	ldr r3, [r0, r5, lsl #2]
	cmp r6, r2
	str r3, [r0, lr, lsl #2]
	add lr, lr, #1
	moveq r6, ip
	str r4, [r0, r5, lsl #2]
	cmp lr, #0x100
	blt _020A4948
	mov r2, #0
_020A4984:
	ldr r1, [r0, r2, lsl #2]
	mov r1, r1, lsl #0x18
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x100
	blt _020A4984
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end sub_020A490C

	arm_func_start sub_020A49A4
sub_020A49A4: ; 0x020A49A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r3, #0
	strb r3, [r0]
	cmp r2, #0x10
	strb r3, [r0, #1]
	movhi r2, #0x10
	add r0, r0, #4
_020A49C4:
	strb r3, [r0, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020A49C4
	mov r6, #0
	mov r7, r6
	mov r4, r6
	mov r3, r6
	and ip, r2, #0xff
_020A49E8:
	ldrb r5, [r0, r4]
	ldrb lr, [r1, r7]
	add r2, r7, #1
	and r7, r2, #0xff
	add r2, r5, lr
	add r2, r6, r2
	and r6, r2, #0xff
	ldrb r2, [r0, r6]
	add lr, r0, r4
	add r4, r4, #1
	strb r2, [lr]
	cmp r7, ip
	moveq r7, r3
	cmp r4, #0x100
	strb r5, [r0, r6]
	blt _020A49E8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_020A49A4

	arm_func_start sub_020A4A34
sub_020A4A34: ; 0x020A4A34
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	ldr r7, [r0, #0]
	ldr r6, [r0, #4]
	add r0, r0, #8
	mov lr, #0x1000000
	add r7, r7, lr
	subs r2, r2, #8
	ldr sb, [r0, r7, lsr #22]
	bmi _020A4BC0
_020A4A58:
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	add r6, r6, sb
	subs r2, r2, #8
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	bpl _020A4A58
_020A4BC0:
	adds r2, r2, #8
	ble _020A4BFC
_020A4BC8:
	add r6, r6, sb
	subs r2, r2, #1
	ldr r8, [r0, r6, lsr #22]
	ldrb r5, [r1], #1
	str r8, [r0, r7, lsr #22]
	str sb, [r0, r6, lsr #22]
	add r4, sb, r8
	add r7, r7, lr
	ldr r4, [r0, r4, lsr #22]
	ldr sb, [r0, r7, lsr #22]
	eor r5, r5, r4, lsr #24
	strb r5, [r3], #1
	bgt _020A4BC8
_020A4BFC:
	sub r7, r7, lr
	and r7, r7, #0xff000000
	str r6, [r0, #-4]
	str r7, [r0, #-8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020A4A34

	arm_func_start sub_020A4C10
sub_020A4C10: ; 0x020A4C10
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end sub_020A4C10

	arm_func_start sub_020A4C28
sub_020A4C28: ; 0x020A4C28
	ldrh r3, [r0, #0xa]
	mov r2, #0
	add ip, r1, r3
	str r2, [ip, #4]
	str r2, [r1, r3]
	str r1, [r0, #0]
	str r1, [r0, #4]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	bx lr
	arm_func_end sub_020A4C28

	arm_func_start sub_020A4C54
sub_020A4C54: ; 0x020A4C54
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020A4C6C
	bl sub_020A4C28
	ldmia sp!, {r3, pc}
_020A4C6C:
	ldrh ip, [r0, #0xa]
	ldr r3, [r0, #4]
	mov r2, #0
	str r3, [r1, ip]
	add r3, r1, ip
	str r2, [r3, #4]
	ldrh r2, [r0, #0xa]
	ldr r3, [r0, #4]
	add r2, r3, r2
	str r1, [r2, #4]
	str r1, [r0, #4]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4C54

	arm_func_start sub_020A4CA8
sub_020A4CA8: ; 0x020A4CA8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020A4CC0
	bl sub_020A4C28
	ldmia sp!, {r3, pc}
_020A4CC0:
	ldrh r3, [r0, #0xa]
	mov r2, #0
	str r2, [r1, r3]
	ldr r2, [r0, #0]
	add r3, r1, r3
	str r2, [r3, #4]
	ldrh r2, [r0, #0xa]
	ldr r3, [r0, #0]
	str r1, [r3, r2]
	str r1, [r0, #0]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4CA8

	arm_func_start sub_020A4CF8
sub_020A4CF8: ; 0x020A4CF8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _020A4D10
	mov r1, r2
	bl sub_020A4C54
	ldmia sp!, {r3, pc}
_020A4D10:
	ldr r3, [r0, #0]
	cmp r1, r3
	bne _020A4D28
	mov r1, r2
	bl sub_020A4CA8
	ldmia sp!, {r3, pc}
_020A4D28:
	ldrh lr, [r0, #0xa]
	ldr r3, [r1, lr]
	add ip, r2, lr
	str r3, [r2, lr]
	str r1, [ip, #4]
	add r3, r3, lr
	str r2, [r3, #4]
	ldrh r3, [r0, #0xa]
	str r2, [r1, r3]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4CF8

	arm_func_start sub_020A4D5C
sub_020A4D5C: ; 0x020A4D5C
	stmfd sp!, {r3, lr}
	ldrh ip, [r0, #0xa]
	ldr r3, [r1, ip]
	add lr, r1, ip
	cmp r3, #0
	ldreq r1, [lr, #4]
	streq r1, [r0]
	ldrne r2, [lr, #4]
	addne r1, r3, ip
	strne r2, [r1, #4]
	ldr r3, [lr, #4]
	cmp r3, #0
	ldreq r1, [lr]
	streq r1, [r0, #4]
	ldrneh r1, [r0, #0xa]
	ldrne r2, [lr]
	strne r2, [r3, r1]
	mov r1, #0
	str r1, [lr]
	str r1, [lr, #4]
	ldrh r1, [r0, #8]
	sub r1, r1, #1
	strh r1, [r0, #8]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4D5C

	arm_func_start sub_020A4DBC
sub_020A4DBC: ; 0x020A4DBC
	cmp r1, #0
	ldreq r0, [r0]
	ldrneh r0, [r0, #0xa]
	addne r0, r1, r0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_020A4DBC

	arm_func_start sub_020A4DD4
sub_020A4DD4: ; 0x020A4DD4
	cmp r1, #0
	ldreq r0, [r0, #4]
	ldrneh r0, [r0, #0xa]
	ldrne r0, [r1, r0]
	bx lr
	arm_func_end sub_020A4DD4

	arm_func_start sub_020A4DE8
sub_020A4DE8: ; 0x020A4DE8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0
	mov r6, r0
	bl sub_020A4DBC
	movs r4, r0
	beq _020A4E48
_020A4E04:
	ldr r0, [r4, #0x18]
	cmp r0, r5
	bhi _020A4E34
	ldr r0, [r4, #0x1c]
	cmp r5, r0
	bhs _020A4E34
	mov r1, r5
	add r0, r4, #0xc
	bl sub_020A4DE8
	cmp r0, #0
	moveq r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020A4E34:
	mov r0, r6
	mov r1, r4
	bl sub_020A4DBC
	movs r4, r0
	bne _020A4E04
_020A4E48:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A4DE8

	arm_func_start sub_020A4E50
sub_020A4E50: ; 0x020A4E50
	stmfd sp!, {r4, lr}
	ldr r4, _020A4E74 ; =0x021C3AA4
	mov r1, r0
	mov r0, r4
	bl sub_020A4DE8
	cmp r0, #0
	addne r4, r0, #0xc
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4E74: .word 0x021C3AA4
	arm_func_end sub_020A4E50

	arm_func_start sub_020A4E78
sub_020A4E78: ; 0x020A4E78
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [sp, #8]
	str r1, [r4, #0]
	mov ip, #0
	str r2, [r4, #0x18]
	bic r1, ip, #0xff
	and r0, r0, #0xff
	orr r2, r1, r0
	str r3, [r4, #0x1c]
	add r0, r4, #0xc
	mov r1, #4
	str r2, [r4, #0x20]
	bl sub_020A4C10
	ldr r0, _020A4EEC ; =0x021C3AA0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020A4ED8
	ldr r0, _020A4EF0 ; =0x021C3AA4
	mov r1, #4
	bl sub_020A4C10
	ldr r0, _020A4EEC ; =0x021C3AA0
	mov r1, #1
	str r1, [r0, #0]
_020A4ED8:
	mov r0, r4
	bl sub_020A4E50
	mov r1, r4
	bl sub_020A4C54
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4EEC: .word 0x021C3AA0
_020A4EF0: .word 0x021C3AA4
	arm_func_end sub_020A4E78

	arm_func_start sub_020A4EF4
sub_020A4EF4: ; 0x020A4EF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4E50
	mov r1, r4
	bl sub_020A4D5C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4EF4

	arm_func_start sub_020A4F0C
sub_020A4F0C: ; 0x020A4F0C
	ldrh r2, [r1, #2]
	add r3, r1, #0x10
	mov r2, r2, asr #8
	and r2, r2, #0x7f
	mov r2, r2, lsl #0x10
	sub r2, r1, r2, lsr #16
	str r2, [r0, #0]
	ldr r1, [r1, #4]
	add r1, r1, r3
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A4F0C

	arm_func_start sub_020A4F38
sub_020A4F38: ; 0x020A4F38
	ldr r2, [r1, #8]
	ldr r1, [r1, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0]
	cmp r1, #0
	strne r2, [r1, #8]
	streq r2, [r0, #4]
	mov r0, r2
	bx lr
	arm_func_end sub_020A4F38

	arm_func_start sub_020A4F60
sub_020A4F60: ; 0x020A4F60
	str r2, [r1, #8]
	cmp r2, #0
	ldrne r3, [r2, #0xc]
	strne r1, [r2, #0xc]
	ldreq r3, [r0]
	streq r1, [r0]
	str r3, [r1, #0xc]
	cmp r3, #0
	strne r1, [r3, #8]
	streq r1, [r0, #4]
	mov r0, r1
	bx lr
	arm_func_end sub_020A4F60

	arm_func_start sub_020A4F90
sub_020A4F90: ; 0x020A4F90
	ldr r3, [r0, #0]
	mov r2, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	ldr r1, [r0, #4]
	add r0, r3, #0x10
	sub r0, r1, r0
	stmib r3, {r0, r2}
	mov r0, r3
	str r2, [r3, #0xc]
	bx lr
	arm_func_end sub_020A4F90

	arm_func_start sub_020A4FBC
sub_020A4FBC: ; 0x020A4FBC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r3, r1
	mov r4, r0
	str r2, [sp]
	ldr r1, _020A5028 ; =0x45585048
	add r2, r4, #0x38
	bl sub_020A4E78
	mov r0, #0
	strh r0, [r4, #0x34]
	bic r0, r0, #1
	strh r0, [r4, #0x36]
	ldr r1, [r4, #0x18]
	add r0, sp, #4
	str r1, [sp, #4]
	ldr r2, [r4, #0x1c]
	ldr r1, _020A502C ; =0x00004652
	str r2, [sp, #8]
	bl sub_020A4F90
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [r4, #0x2c]
	mov r0, r4
	str r1, [r4, #0x30]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020A5028: .word 0x45585048
_020A502C: .word 0x00004652
	arm_func_end sub_020A4FBC

	arm_func_start sub_020A5030
sub_020A5030: ; 0x020A5030
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r0
	add r0, sp, #0x10
	mov r8, r1
	mov r6, r2
	mov r4, r3
	bl sub_020A4F0C
	ldr r3, [sp, #0x14]
	sub r5, r6, #0x10
	add r2, r4, r6
	mov r0, r7
	mov r1, r8
	str r5, [sp, #0x14]
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	bl sub_020A4F38
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r4, r0
	sub r0, r1, r2
	cmp r0, #0x14
	strlo r2, [sp, #0x14]
	blo _020A50B0
	ldr r1, _020A51A8 ; =0x00004652
	add r0, sp, #0x10
	bl sub_020A4F90
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl sub_020A4F60
	mov r4, r0
_020A50B0:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	cmp r0, #0x14
	strlo r1, [sp, #8]
	blo _020A50E4
	ldr r1, _020A51A8 ; =0x00004652
	add r0, sp, #8
	bl sub_020A4F90
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl sub_020A4F60
_020A50E4:
	ldr r0, [r7, #-4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #8]
	and r0, r0, #0xff
	tst r0, #1
	sub r2, r2, r1
	beq _020A5108
	mov r0, #0
	bl sub_020C4B4C
_020A5108:
	ldr r2, [sp, #8]
	ldr r1, _020A51AC ; =0x00005544
	add r0, sp, #0
	str r5, [sp]
	str r2, [sp, #4]
	bl sub_020A4F90
	mov r1, r0
	ldrh r3, [r1, #2]
	ldrh r2, [sp, #0x30]
	add r0, r7, #8
	bic r3, r3, #0x8000
	strh r3, [r1, #2]
	ldrh r3, [r1, #2]
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #16
	strh r2, [r1, #2]
	ldrh r2, [r1, #2]
	ldr r3, [sp, #0x14]
	bic r2, r2, #0x7f00
	strh r2, [r1, #2]
	sub r2, r1, r3
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldrh r3, [r1, #2]
	mov r2, r2, lsl #0x19
	orr r2, r3, r2, lsr #17
	strh r2, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r3, [r7, #0x10]
	bic r2, r2, #0xff
	strh r2, [r1, #2]
	ldrh r2, [r1, #2]
	and r3, r3, #0xff
	orr r2, r2, r3
	strh r2, [r1, #2]
	ldr r2, [r7, #0xc]
	bl sub_020A4F60
	mov r0, r6
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020A51A8: .word 0x00004652
_020A51AC: .word 0x00005544
	arm_func_end sub_020A5030

	arm_func_start sub_020A51B0
sub_020A51B0: ; 0x020A51B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrh r4, [r0, #0x36]
	mov r3, r1
	ldr ip, [r0, #0x24]
	and r1, r4, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r1, #0
	moveq r6, #1
	movne r6, #0
	mov r4, r1
	cmp ip, #0
	sub lr, r1, #1
	beq _020A5240
	sub r2, r2, #1
	mvn r5, r2
_020A51F0:
	add r8, ip, #0x10
	add r7, r2, r8
	and sb, r5, r7
	sub r7, sb, r8
	ldr r8, [ip, #4]
	add r7, r3, r7
	cmp r8, r7
	blo _020A5234
	cmp lr, r8
	bls _020A5234
	mov r1, ip
	mov lr, r8
	mov r4, sb
	cmp r6, #0
	bne _020A5240
	cmp r8, r3
	beq _020A5240
_020A5234:
	ldr ip, [ip, #0xc]
	cmp ip, #0
	bne _020A51F0
_020A5240:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r5, #0
	mov r2, r4
	add r0, r0, #0x24
	str r5, [sp]
	bl sub_020A5030
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020A51B0

	arm_func_start sub_020A5264
sub_020A5264: ; 0x020A5264
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrh r4, [r0, #0x36]
	mov r3, r1
	ldr ip, [r0, #0x28]
	and r1, r4, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r1, #0
	moveq r5, #1
	movne r5, #0
	mov r4, r1
	cmp ip, #0
	sub lr, r1, #1
	beq _020A52F0
	sub r2, r2, #1
	mvn r2, r2
_020A52A4:
	ldr r8, [ip, #4]
	add sb, ip, #0x10
	add r6, r8, sb
	sub r6, r6, r3
	and r7, r2, r6
	subs r6, r7, sb
	bmi _020A52E4
	cmp lr, r8
	bls _020A52E4
	mov r1, ip
	mov lr, r8
	mov r4, r7
	cmp r5, #0
	bne _020A52F0
	cmp r8, r3
	beq _020A52F0
_020A52E4:
	ldr ip, [ip, #8]
	cmp ip, #0
	bne _020A52A4
_020A52F0:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r5, #1
	mov r2, r4
	add r0, r0, #0x24
	str r5, [sp]
	bl sub_020A5030
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020A5264

	arm_func_start sub_020A5314
sub_020A5314: ; 0x020A5314
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	ldr r2, [r5, #0]
	ldr r1, [r5, #4]
	mov r6, r0
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, [r6, #0]
	mov r4, #0
	cmp r1, #0
	beq _020A5388
	ldr r0, [r5, #0]
_020A5348:
	cmp r1, r0
	movlo r4, r1
	blo _020A537C
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _020A5388
	ldr r2, [r1, #4]
	add r0, r1, #0x10
	add r2, r2, r0
	mov r0, r6
	str r2, [sp, #4]
	bl sub_020A4F38
	b _020A5388
_020A537C:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _020A5348
_020A5388:
	cmp r4, #0
	beq _020A53BC
	ldr r2, [r4, #4]
	add r1, r4, #0x10
	ldr r0, [r5, #0]
	add r1, r2, r1
	cmp r1, r0
	bne _020A53BC
	mov r0, r6
	mov r1, r4
	str r4, [sp]
	bl sub_020A4F38
	mov r4, r0
_020A53BC:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	cmp r0, #0x10
	addlo sp, sp, #8
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r1, _020A5400 ; =0x00004652
	add r0, sp, #0
	bl sub_020A4F90
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl sub_020A4F60
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A5400: .word 0x00004652
	arm_func_end sub_020A5314

	arm_func_start sub_020A5404
sub_020A5404: ; 0x020A5404
	stmfd sp!, {r3, lr}
	add r1, r1, r0
	add r0, r0, #3
	bic r1, r1, #3
	bic r0, r0, #3
	cmp r0, r1
	bhi _020A542C
	sub r3, r1, r0
	cmp r3, #0x4c
	bhs _020A5434
_020A542C:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020A5434:
	bl sub_020A4FBC
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5404

	arm_func_start sub_020A543C
sub_020A543C: ; 0x020A543C
	ldr ip, _020A5444 ; =sub_020A4EF4
	bx ip
	; .align 2, 0
_020A5444: .word sub_020A4EF4
	arm_func_end sub_020A543C

	arm_func_start sub_020A5448
sub_020A5448: ; 0x020A5448
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r1, #1
	add r1, r1, #3
	cmp r2, #0
	bic r1, r1, #3
	blt _020A546C
	bl sub_020A51B0
	ldmia sp!, {r3, pc}
_020A546C:
	rsb r2, r2, #0
	bl sub_020A5264
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5448

	arm_func_start sub_020A5478
sub_020A5478: ; 0x020A5478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov sb, r2
	sub r8, r4, #0x10
	add r1, sb, #3
	ldr r7, [r8, #4]
	bic sb, r1, #3
	cmp sb, r7
	mov r5, r0
	addeq sp, sp, #0x10
	moveq r0, sb
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bls _020A5598
	ldr r6, [r5, #0x24]
	add r0, r8, #0x10
	cmp r6, #0
	add r0, r7, r0
	beq _020A54D4
_020A54C4:
	cmp r6, r0
	ldrne r6, [r6, #0xc]
	cmpne r6, #0
	bne _020A54C4
_020A54D4:
	cmp r6, #0
	beq _020A54F0
	ldr r0, [r6, #4]
	add r1, r7, #0x10
	add r0, r1, r0
	cmp sb, r0
	bls _020A54FC
_020A54F0:
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020A54FC:
	add r0, sp, #8
	mov r1, r6
	bl sub_020A4F0C
	mov r1, r6
	add r0, r5, #0x24
	bl sub_020A4F38
	ldr r2, [sp, #0xc]
	add r3, sb, r4
	ldr r6, [sp, #8]
	sub r1, r2, r3
	str r3, [sp, #8]
	cmp r1, #0x10
	strlo r2, [sp, #8]
	mov r7, r0
	ldr r0, [sp, #8]
	sub r0, r0, r4
	str r0, [r8, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	cmp r0, #0x10
	blo _020A5570
	ldr r1, _020A55D4 ; =0x00004652
	add r0, sp, #8
	bl sub_020A4F90
	mov r1, r0
	mov r2, r7
	add r0, r5, #0x24
	bl sub_020A4F60
_020A5570:
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	and r0, r0, #0xff
	tst r0, #1
	sub r2, r1, r6
	beq _020A55C8
	mov r1, r6
	mov r0, #0
	bl sub_020C4B4C
	b _020A55C8
_020A5598:
	add r0, sb, r4
	str r0, [sp]
	ldr r1, [r8, #4]
	add r0, r8, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	add r1, sp, #0
	add r0, r5, #0x24
	str sb, [r8, #4]
	bl sub_020A5314
	cmp r0, #0
	streq r7, [r8, #4]
_020A55C8:
	ldr r0, [r8, #4]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A55D4: .word 0x00004652
	arm_func_end sub_020A5478

	arm_func_start sub_020A55D8
sub_020A55D8: ; 0x020A55D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	sub r4, r1, #0x10
	mov r5, r0
	add r0, sp, #0
	mov r1, r4
	bl sub_020A4F0C
	mov r1, r4
	add r0, r5, #0x2c
	bl sub_020A4F38
	add r1, sp, #0
	add r0, r5, #0x24
	bl sub_020A5314
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A55D8

	arm_func_start sub_020A5614
sub_020A5614: ; 0x020A5614
	ldr r2, [r0, #0x24]
	mov r0, #0
	cmp r2, #0
	bxeq lr
_020A5624:
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	add r0, r0, r1
	cmp r2, #0
	bne _020A5624
	bx lr
	arm_func_end sub_020A5614

	arm_func_start sub_020A563C
sub_020A563C: ; 0x020A563C
	ldrh r2, [r0, #0x34]
	strh r1, [r0, #0x34]
	mov r0, r2
	bx lr
	arm_func_end sub_020A563C

	arm_func_start sub_020A564C
sub_020A564C: ; 0x020A564C
	ldr r0, [r0, #-0xc]
	bx lr
	arm_func_end sub_020A564C

	arm_func_start sub_020A5654
sub_020A5654: ; 0x020A5654
	ldrh r0, [r0, #-0xe]
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_020A5654

	arm_func_start sub_020A5660
sub_020A5660: ; 0x020A5660
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, r1
	mov r4, r0
	str r2, [sp]
	ldr r1, _020A56A4 ; =0x46524D48
	add r2, r4, #0x30
	bl sub_020A4E78
	ldr r0, [r4, #0x18]
	mov r1, #0
	str r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	mov r0, r4
	str r2, [r4, #0x28]
	str r1, [r4, #0x2c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020A56A4: .word 0x46524D48
	arm_func_end sub_020A5660

	arm_func_start sub_020A56A8
sub_020A56A8: ; 0x020A56A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r3, [r4, #0]
	sub r0, r2, #1
	mvn r2, r0
	add r0, r0, r3
	and r5, r2, r0
	ldr r0, [r4, #4]
	add r6, r1, r5
	cmp r6, r0
	movhi r0, #0
	ldmhiia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #-4]
	sub r2, r6, r3
	and r0, r0, #0xff
	tst r0, #1
	beq _020A56F8
	mov r1, r3
	mov r0, #0
	bl sub_020C4B4C
_020A56F8:
	mov r0, r5
	str r6, [r4, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A56A8

	arm_func_start sub_020A5704
sub_020A5704: ; 0x020A5704
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #4]
	sub r0, r2, #1
	mvn r2, r0
	sub r1, r3, r1
	ldr r0, [r4, #0]
	and r5, r2, r1
	cmp r5, r0
	movlo r0, #0
	ldmloia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #-4]
	sub r2, r3, r5
	and r0, r0, #0xff
	tst r0, #1
	beq _020A5750
	mov r1, r5
	mov r0, #0
	bl sub_020C4B4C
_020A5750:
	mov r0, r5
	str r5, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A5704

	arm_func_start sub_020A575C
sub_020A575C: ; 0x020A575C
	ldr r2, [r0, #0x18]
	mov r1, #0
	str r2, [r0, #0x24]
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end sub_020A575C

	arm_func_start sub_020A5770
sub_020A5770: ; 0x020A5770
	ldr r2, [r0, #0x2c]
	cmp r2, #0
	beq _020A5790
_020A577C:
	ldr r1, [r0, #0x1c]
	str r1, [r2, #8]
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _020A577C
_020A5790:
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end sub_020A5770

	arm_func_start sub_020A579C
sub_020A579C: ; 0x020A579C
	stmfd sp!, {r3, lr}
	add r1, r1, r0
	add r0, r0, #3
	bic r1, r1, #3
	bic r0, r0, #3
	cmp r0, r1
	bhi _020A57C4
	sub r3, r1, r0
	cmp r3, #0x30
	bhs _020A57CC
_020A57C4:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020A57CC:
	bl sub_020A5660
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A579C

	arm_func_start sub_020A57D4
sub_020A57D4: ; 0x020A57D4
	ldr ip, _020A57DC ; =sub_020A4EF4
	bx ip
	; .align 2, 0
_020A57DC: .word sub_020A4EF4
	arm_func_end sub_020A57D4

	arm_func_start sub_020A57E0
sub_020A57E0: ; 0x020A57E0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r1, #1
	add r1, r1, #3
	cmp r2, #0
	bic r1, r1, #3
	add r0, r0, #0x24
	blt _020A5808
	bl sub_020A56A8
	ldmia sp!, {r3, pc}
_020A5808:
	rsb r2, r2, #0
	bl sub_020A5704
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A57E0

	arm_func_start sub_020A5814
sub_020A5814: ; 0x020A5814
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	tst r4, #1
	beq _020A582C
	bl sub_020A575C
_020A582C:
	tst r4, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_020A5770
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A5814

	arm_func_start sub_020A5840
sub_020A5840: ; 0x020A5840
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x24]
	mov r5, r1
	add r0, r6, #0x24
	mov r1, #0x10
	mov r2, #4
	bl sub_020A56A8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [r0, #0]
	str r4, [r0, #4]
	ldr r1, [r6, #0x28]
	str r1, [r0, #8]
	ldr r1, [r6, #0x2c]
	str r1, [r0, #0xc]
	str r0, [r6, #0x2c]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A5840

	arm_func_start sub_020A5890
sub_020A5890: ; 0x020A5890
	ldr r3, [r0, #0x2c]
	cmp r1, #0
	cmpne r3, #0
	beq _020A58B4
_020A58A0:
	ldr r2, [r3, #0]
	cmp r2, r1
	ldrne r3, [r3, #0xc]
	cmpne r3, #0
	bne _020A58A0
_020A58B4:
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	ldr r1, [r3, #4]
	str r1, [r0, #0x24]
	ldr r1, [r3, #8]
	str r1, [r0, #0x28]
	ldr r1, [r3, #0xc]
	str r1, [r0, #0x2c]
	mov r0, #1
	bx lr
	arm_func_end sub_020A5890

	arm_func_start sub_020A58E0
sub_020A58E0: ; 0x020A58E0
	ldr r2, [r0, #0]
	cmp r2, #0
	ldrne r1, [r2]
	strne r1, [r0]
	mov r0, r2
	bx lr
	arm_func_end sub_020A58E0

	arm_func_start sub_020A58F8
sub_020A58F8: ; 0x020A58F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x24
	bl sub_020A58E0
	movs r4, r0
	beq _020A5930
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x28]
	and r0, r0, #0xff
	tst r0, #1
	beq _020A5930
	mov r1, r4
	mov r0, #0
	bl sub_020C4B4C
_020A5930:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A58F8

	arm_func_start sub_020A5938
sub_020A5938: ; 0x020A5938
	ldr r2, [r0, #0x24]
	str r2, [r1, #0]
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_020A5938

	arm_func_start sub_020A5948
sub_020A5948: ; 0x020A5948
	ldr ip, _020A5958 ; =sub_020A5448
	mov r2, r0
	ldmib r2, {r0, r2}
	bx ip
	; .align 2, 0
_020A5958: .word sub_020A5448
	arm_func_end sub_020A5948

	arm_func_start sub_020A595C
sub_020A595C: ; 0x020A595C
	ldr ip, _020A5968 ; =sub_020A55D8
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_020A5968: .word sub_020A55D8
	arm_func_end sub_020A595C

	arm_func_start sub_020A596C
sub_020A596C: ; 0x020A596C
	ldr ip, _020A597C ; =sub_020A57E0
	mov r2, r0
	ldmib r2, {r0, r2}
	bx ip
	; .align 2, 0
_020A597C: .word sub_020A57E0
	arm_func_end sub_020A596C

	arm_func_start sub_020A5980
sub_020A5980: ; 0x020A5980
	bx lr
	arm_func_end sub_020A5980

	arm_func_start sub_020A5984
sub_020A5984: ; 0x020A5984
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x28]
	cmp r1, r2
	movhi r0, #0
	ldmhiia sp!, {r3, pc}
	bl sub_020A58F8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5984

	arm_func_start sub_020A59A4
sub_020A59A4: ; 0x020A59A4
	ldr ip, _020A59B0 ; =sub_020A5938
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_020A59B0: .word sub_020A5938
	arm_func_end sub_020A59A4

	arm_func_start sub_020A59B4
sub_020A59B4: ; 0x020A59B4
	ldr ip, _020A59CC ; =sub_020C3214
	mov r3, r0
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020A59CC: .word sub_020C3214
	arm_func_end sub_020A59B4

	arm_func_start sub_020A59D0
sub_020A59D0: ; 0x020A59D0
	ldr ip, _020A59E8 ; =sub_020C331C
	mov r3, r0
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020A59E8: .word sub_020C331C
	arm_func_end sub_020A59D0

	arm_func_start sub_020A59EC
sub_020A59EC: ; 0x020A59EC
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldr r2, [r2, #0]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A59EC

	arm_func_start sub_020A5A00
sub_020A5A00: ; 0x020A5A00
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5A00

	arm_func_start sub_020A5A14
sub_020A5A14: ; 0x020A5A14
	ldr ip, _020A5A28 ; =0x020F9560
	mov r3, #0
	str ip, [r0]
	stmib r0, {r1, r2, r3}
	bx lr
	; .align 2, 0
_020A5A28: .word 0x020F9560
	arm_func_end sub_020A5A14

	arm_func_start sub_020A5A2C
sub_020A5A2C: ; 0x020A5A2C
	mov r0, #0
	bx lr
	arm_func_end sub_020A5A2C

	arm_func_start sub_020A5A34
sub_020A5A34: ; 0x020A5A34
	mvn r0, #0
	bx lr
	arm_func_end sub_020A5A34

	arm_func_start sub_020A5A3C
sub_020A5A3C: ; 0x020A5A3C
	mov r0, #0
	bx lr
	arm_func_end sub_020A5A3C

	arm_func_start sub_020A5A44
sub_020A5A44: ; 0x020A5A44
	mvn r0, #0
	bx lr
	arm_func_end sub_020A5A44

	arm_func_start sub_020A5A4C
sub_020A5A4C: ; 0x020A5A4C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020A5A8C ; =0x02100E18
	mov ip, #0x18
	mla r6, r0, ip, r5
	ldr lr, [sp, #0x10]
	ldr r0, _020A5A90 ; =0x02100DFC
	mla r4, r1, ip, r5
	str r6, [r0, #8]
	mla r1, r2, ip, r5
	str r4, [r0, #0xc]
	mla r2, r3, ip, r5
	str r1, [r0, #0x10]
	mla r1, lr, ip, r5
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A5A8C: .word 0x02100E18
_020A5A90: .word 0x02100DFC
	arm_func_end sub_020A5A4C

	arm_func_start sub_020A5A94
sub_020A5A94: ; 0x020A5A94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r5, #2
	mov ip, #1
	mov r0, #4
	mov r1, #3
	bhi _020A5AC8
	mov r2, #2
	mov r3, #0
	str ip, [sp]
	bl sub_020A5A4C
	b _020A5AD8
_020A5AC8:
	mov r2, #0
	mov r3, #2
	str ip, [sp]
	bl sub_020A5A4C
_020A5AD8:
	ldr r0, _020A5B08 ; =0x021C3AB0
	strh r5, [r0]
	bl sub_020A5B1C
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, _020A5B0C ; =sub_020A5B90
	ldr r1, _020A5B10 ; =0x02100DEC
	ldr r2, _020A5B14 ; =sub_020A5D00
	ldr r0, _020A5B18 ; =0x02100DF0
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A5B08: .word 0x021C3AB0
_020A5B0C: .word sub_020A5B90
_020A5B10: .word 0x02100DEC
_020A5B14: .word sub_020A5D00
_020A5B18: .word 0x02100DF0
	arm_func_end sub_020A5A94

	arm_func_start sub_020A5B1C
sub_020A5B1C: ; 0x020A5B1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020A5B88 ; =0x021C3AB0
	mov r5, #0
	ldrh r7, [r0]
	ldr r6, _020A5B8C ; =0x02100E18
	mov lr, r5
	cmp r7, #1
	addhi r7, r7, #1
	mov r4, #1
	mov r1, r5
	mov r0, #0x20000
	mov r3, r5
	mov r2, #0x10000
_020A5B50:
	cmp r5, r7
	strlt r4, [r6, #8]
	strge lr, [r6, #8]
	ldr ip, [r6, #0xc]
	add r5, r5, #1
	cmp ip, #0
	strne r3, [r6]
	strne r2, [r6, #4]
	streq r1, [r6]
	streq r0, [r6, #4]
	cmp r5, #5
	add r6, r6, #0x18
	blt _020A5B50
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A5B88: .word 0x021C3AB0
_020A5B8C: .word 0x02100E18
	arm_func_end sub_020A5B1C

	arm_func_start sub_020A5B90
sub_020A5B90: ; 0x020A5B90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	cmp r0, #0
	moveq r3, #0x10
	addne r0, r0, #0xf
	bicne r3, r0, #0xf
	ldr r0, _020A5CEC ; =0x0007FFF0
	cmp r3, r0
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r1, #0
	beq _020A5C74
	mov r4, #0
	ldr r8, _020A5CF0 ; =0x02100E48
	ldr sb, _020A5CF4 ; =0x02100E30
	ldr r0, _020A5CF8 ; =0x02100DFC
	mov r7, r4
_020A5BD0:
	ldr lr, [r0, r4, lsl #2]
	ldr r5, [lr, #8]
	cmp r5, #0
	beq _020A5C60
	ldmia lr, {r5, r6}
	sub r5, r6, r5
	cmp r5, r3
	blo _020A5C60
	ldrh r5, [lr, #0x10]
	cmp r5, #0
	beq _020A5C08
	cmp r5, #3
	beq _020A5C10
	b _020A5C18
_020A5C08:
	mov ip, sb
	b _020A5C1C
_020A5C10:
	mov ip, r8
	b _020A5C1C
_020A5C18:
	mov ip, r7
_020A5C1C:
	ldr r5, [ip, #8]
	cmp r5, #0
	beq _020A5C60
	ldmia ip, {r5, r6}
	sub r5, r6, r5
	cmp r5, r3, lsr #1
	blo _020A5C60
	ldr r4, [lr]
	mov r0, #1
	add r2, r4, r3
	str r2, [lr]
	ldr r2, [ip]
	add r2, r2, r3, lsr #1
	str r2, [ip]
	ldr r2, [lr, #0x14]
	add r2, r4, r2
	b _020A5CC8
_020A5C60:
	add r4, r4, #1
	cmp r4, #2
	blt _020A5BD0
	mov r0, #0
	b _020A5CC8
_020A5C74:
	ldr lr, _020A5CFC ; =0x02100E04
	mov r5, #0
_020A5C7C:
	ldr ip, [lr, r5, lsl #2]
	ldr r0, [ip, #8]
	cmp r0, #0
	beq _020A5CB8
	ldmia ip, {r0, r4}
	sub r0, r4, r0
	cmp r0, r3
	blo _020A5CB8
	ldr r2, [ip, #4]
	mov r0, #1
	sub r4, r2, r3
	str r4, [ip, #4]
	ldr r2, [ip, #0x14]
	add r2, r4, r2
	b _020A5CC8
_020A5CB8:
	add r5, r5, #1
	cmp r5, #5
	blt _020A5C7C
	mov r0, #0
_020A5CC8:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r2, lsl #0xd
	mov r2, r3, lsr #4
	mov r0, r0, lsr #0x10
	orr r0, r0, r2, lsl #16
	orr r0, r0, r1, lsl #31
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A5CEC: .word 0x0007FFF0
_020A5CF0: .word 0x02100E48
_020A5CF4: .word 0x02100E30
_020A5CF8: .word 0x02100DFC
_020A5CFC: .word 0x02100E04
	arm_func_end sub_020A5B90

	arm_func_start sub_020A5D00
sub_020A5D00: ; 0x020A5D00
	mov r0, #0
	bx lr
	arm_func_end sub_020A5D00

	arm_func_start sub_020A5D08
sub_020A5D08: ; 0x020A5D08
	stmfd sp!, {r3, lr}
	mov r3, #0
	ldr ip, _020A5D44 ; =0x02100E18
	mov lr, r3
_020A5D18:
	ldr r1, [ip]
	add r3, r3, #1
	str r1, [r0, lr, lsl #2]
	ldr r2, [ip, #4]
	add r1, r0, lr, lsl #2
	str r2, [r1, #4]
	cmp r3, #5
	add ip, ip, #0x18
	add lr, lr, #2
	blt _020A5D18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A5D44: .word 0x02100E18
	arm_func_end sub_020A5D08

	arm_func_start sub_020A5D48
sub_020A5D48: ; 0x020A5D48
	stmfd sp!, {r3, lr}
	mov r3, #0
	ldr lr, _020A5D84 ; =0x02100E18
	mov ip, r3
_020A5D58:
	ldr r2, [r0, ip, lsl #2]
	add r1, r0, ip, lsl #2
	str r2, [lr]
	ldr r1, [r1, #4]
	add r3, r3, #1
	str r1, [lr, #4]
	cmp r3, #5
	add ip, ip, #2
	add lr, lr, #0x18
	blt _020A5D58
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A5D84: .word 0x02100E18
	arm_func_end sub_020A5D48

	arm_func_start sub_020A5D88
sub_020A5D88: ; 0x020A5D88
	stmfd sp!, {r4, lr}
	ldr r2, _020A5DC0 ; =0x021C3AB4
	mov r4, r1
	str r0, [r2, #8]
	bl sub_020A5F50
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _020A5DC4 ; =sub_020A5DD4
	ldr r1, _020A5DC8 ; =0x02100DF4
	ldr r2, _020A5DCC ; =sub_020A5F10
	ldr r0, _020A5DD0 ; =0x02100DF8
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A5DC0: .word 0x021C3AB4
_020A5DC4: .word sub_020A5DD4
_020A5DC8: .word 0x02100DF4
_020A5DCC: .word sub_020A5F10
_020A5DD0: .word 0x02100DF8
	arm_func_end sub_020A5D88

	arm_func_start sub_020A5DD4
sub_020A5DD4: ; 0x020A5DD4
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #8
	addne r0, r0, #7
	ldr ip, _020A5F08 ; =0x0007FFF8
	bicne r0, r0, #7
	cmp r0, ip
	mov r3, #0
	movhs r0, #0
	ldmhsia sp!, {r4, pc}
	cmp r2, #1
	bne _020A5E80
	ldr r2, _020A5F0C ; =0x021C3AB4
	cmp r1, #0
	ldr lr, [r2]
	andeq r2, lr, #0xf
	rsbeq r2, r2, #0x10
	andeq r4, r2, #0xf
	beq _020A5E2C
	and r2, lr, #7
	rsb r2, r2, #8
	and r4, r2, #7
_020A5E2C:
	ldr r2, _020A5F0C ; =0x021C3AB4
	add ip, r0, r4
	ldr r2, [r2, #4]
	sub r2, r2, lr
	cmp r2, ip
	blo _020A5E78
	cmp r1, #0
	add r1, lr, ip
	beq _020A5E5C
	cmp r1, #0x10000
	movhi lr, #0
	bhi _020A5EE8
_020A5E5C:
	ldr r1, _020A5F0C ; =0x021C3AB4
	add r3, lr, r4
	ldr r2, [r1, #0]
	mov lr, #1
	add r2, r2, ip
	str r2, [r1, #0]
	b _020A5EE8
_020A5E78:
	mov lr, #0
	b _020A5EE8
_020A5E80:
	ldr r2, _020A5F0C ; =0x021C3AB4
	ldr lr, [r2, #4]
	cmp lr, r0
	blo _020A5EE4
	sub r2, lr, r0
	cmp r1, #0
	andne r4, r2, #7
	andeq r4, r2, #0xf
	ldr r2, _020A5F0C ; =0x021C3AB4
	add ip, r0, r4
	ldr r2, [r2, #0]
	sub r2, lr, r2
	cmp r2, ip
	blo _020A5EE4
	cmp r1, #0
	beq _020A5ECC
	cmp lr, #0x10000
	movhi lr, #0
	bhi _020A5EE8
_020A5ECC:
	ldr r1, _020A5F0C ; =0x021C3AB4
	mov lr, #1
	ldr r2, [r1, #4]
	sub r3, r2, ip
	str r3, [r1, #4]
	b _020A5EE8
_020A5EE4:
	mov lr, #0
_020A5EE8:
	cmp lr, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, r3, lsl #0xd
	mov r2, r0, lsr #3
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A5F08: .word 0x0007FFF8
_020A5F0C: .word 0x021C3AB4
	arm_func_end sub_020A5DD4

	arm_func_start sub_020A5F10
sub_020A5F10: ; 0x020A5F10
	mov r0, #0
	bx lr
	arm_func_end sub_020A5F10

	arm_func_start sub_020A5F18
sub_020A5F18: ; 0x020A5F18
	ldr r1, _020A5F30 ; =0x021C3AB4
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020A5F30: .word 0x021C3AB4
	arm_func_end sub_020A5F18

	arm_func_start sub_020A5F34
sub_020A5F34: ; 0x020A5F34
	ldr r2, [r0, #0]
	ldr r1, _020A5F4C ; =0x021C3AB4
	str r2, [r1, #0]
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
_020A5F4C: .word 0x021C3AB4
	arm_func_end sub_020A5F34

	arm_func_start sub_020A5F50
sub_020A5F50: ; 0x020A5F50
	ldr r0, _020A5F68 ; =0x021C3AB4
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #8]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020A5F68: .word 0x021C3AB4
	arm_func_end sub_020A5F50

	arm_func_start sub_020A5F6C
sub_020A5F6C: ; 0x020A5F6C
	stmfd sp!, {r3, lr}
	mov r2, r0
	add r0, r1, #1
	ldr r1, [r2, #4]
	bl sub_020E2178
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5F6C

	arm_func_start sub_020A5F8C
sub_020A5F8C: ; 0x020A5F8C
	ldrh r1, [r0, #0xc]
	ldr r0, [r0, #4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A5F8C

	arm_func_start sub_020A5FA4
sub_020A5FA4: ; 0x020A5FA4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A5FA4

	arm_func_start sub_020A5FB8
sub_020A5FB8: ; 0x020A5FB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0D34
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0D90
	bl sub_020C0ED0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A5FB8

	arm_func_start sub_020A5FE4
sub_020A5FE4: ; 0x020A5FE4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0F1C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0F50
	bl sub_020C0FBC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A5FE4

	arm_func_start sub_020A6010
sub_020A6010: ; 0x020A6010
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_020C1000
	mov r0, r5
	mov r1, r4
	bl sub_020C1090
	bl sub_020C1164
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A6010

	arm_func_start sub_020A6034
sub_020A6034: ; 0x020A6034
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_020C1000
	mov r0, r5
	mov r1, r4
	bl sub_020C10F8
	bl sub_020C1164
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A6034

	arm_func_start sub_020A6058
sub_020A6058: ; 0x020A6058
	ldr ip, _020A6060 ; =sub_020C066C
	bx ip
	; .align 2, 0
_020A6060: .word sub_020C066C
	arm_func_end sub_020A6058

	arm_func_start sub_020A6064
sub_020A6064: ; 0x020A6064
	ldr ip, _020A606C ; =sub_020C072C
	bx ip
	; .align 2, 0
_020A606C: .word sub_020C072C
	arm_func_end sub_020A6064

	arm_func_start sub_020A6070
sub_020A6070: ; 0x020A6070
	ldr ip, _020A6078 ; =sub_020C07EC
	bx ip
	; .align 2, 0
_020A6078: .word sub_020C07EC
	arm_func_end sub_020A6070

	arm_func_start sub_020A607C
sub_020A607C: ; 0x020A607C
	ldr ip, _020A6084 ; =sub_020C08AC
	bx ip
	; .align 2, 0
_020A6084: .word sub_020C08AC
	arm_func_end sub_020A607C

	arm_func_start sub_020A6088
sub_020A6088: ; 0x020A6088
	ldr ip, _020A6090 ; =sub_020C036C
	bx ip
	; .align 2, 0
_020A6090: .word sub_020C036C
	arm_func_end sub_020A6088

	arm_func_start sub_020A6094
sub_020A6094: ; 0x020A6094
	ldr ip, _020A609C ; =sub_020C042C
	bx ip
	; .align 2, 0
_020A609C: .word sub_020C042C
	arm_func_end sub_020A6094

	arm_func_start sub_020A60A0
sub_020A60A0: ; 0x020A60A0
	ldr ip, _020A60A8 ; =sub_020C04EC
	bx ip
	; .align 2, 0
_020A60A8: .word sub_020C04EC
	arm_func_end sub_020A60A0

	arm_func_start sub_020A60AC
sub_020A60AC: ; 0x020A60AC
	ldr ip, _020A60B4 ; =sub_020C05AC
	bx ip
	; .align 2, 0
_020A60B4: .word sub_020C05AC
	arm_func_end sub_020A60AC

	arm_func_start sub_020A60B8
sub_020A60B8: ; 0x020A60B8
	ldr ip, _020A60C0 ; =sub_020C04EC
	bx ip
	; .align 2, 0
_020A60C0: .word sub_020C04EC
	arm_func_end sub_020A60B8

	arm_func_start sub_020A60C4
sub_020A60C4: ; 0x020A60C4
	ldr ip, _020A60CC ; =sub_020C05AC
	bx ip
	; .align 2, 0
_020A60CC: .word sub_020C05AC
	arm_func_end sub_020A60C4

	arm_func_start sub_020A60D0
sub_020A60D0: ; 0x020A60D0
	ldr ip, _020A60D8 ; =sub_020C0160
	bx ip
	; .align 2, 0
_020A60D8: .word sub_020C0160
	arm_func_end sub_020A60D0

	arm_func_start sub_020A60DC
sub_020A60DC: ; 0x020A60DC
	ldr ip, _020A60E4 ; =sub_020C00B4
	bx ip
	; .align 2, 0
_020A60E4: .word sub_020C00B4
	arm_func_end sub_020A60DC

	arm_func_start sub_020A60E8
sub_020A60E8: ; 0x020A60E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0AC4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0B0C
	bl sub_020C0B78
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A60E8

	arm_func_start sub_020A6114
sub_020A6114: ; 0x020A6114
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C096C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0A0C
	bl sub_020C0A7C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A6114

	arm_func_start sub_020A6140
sub_020A6140: ; 0x020A6140
	ldr ip, _020A6148 ; =sub_020C0210
	bx ip
	; .align 2, 0
_020A6148: .word sub_020C0210
	arm_func_end sub_020A6140

	arm_func_start sub_020A614C
sub_020A614C: ; 0x020A614C
	ldr ip, _020A6154 ; =sub_020C02BC
	bx ip
	; .align 2, 0
_020A6154: .word sub_020C02BC
	arm_func_end sub_020A614C

	arm_func_start sub_020A6158
sub_020A6158: ; 0x020A6158
	ldr ip, _020A6160 ; =sub_020C06CC
	bx ip
	; .align 2, 0
_020A6160: .word sub_020C06CC
	arm_func_end sub_020A6158

	arm_func_start sub_020A6164
sub_020A6164: ; 0x020A6164
	ldr ip, _020A616C ; =sub_020C078C
	bx ip
	; .align 2, 0
_020A616C: .word sub_020C078C
	arm_func_end sub_020A6164

	arm_func_start sub_020A6170
sub_020A6170: ; 0x020A6170
	ldr ip, _020A6178 ; =sub_020C084C
	bx ip
	; .align 2, 0
_020A6178: .word sub_020C084C
	arm_func_end sub_020A6170

	arm_func_start sub_020A617C
sub_020A617C: ; 0x020A617C
	ldr ip, _020A6184 ; =sub_020C090C
	bx ip
	; .align 2, 0
_020A6184: .word sub_020C090C
	arm_func_end sub_020A617C

	arm_func_start sub_020A6188
sub_020A6188: ; 0x020A6188
	ldr ip, _020A6190 ; =sub_020C03CC
	bx ip
	; .align 2, 0
_020A6190: .word sub_020C03CC
	arm_func_end sub_020A6188

	arm_func_start sub_020A6194
sub_020A6194: ; 0x020A6194
	ldr ip, _020A619C ; =sub_020C048C
	bx ip
	; .align 2, 0
_020A619C: .word sub_020C048C
	arm_func_end sub_020A6194

	arm_func_start sub_020A61A0
sub_020A61A0: ; 0x020A61A0
	ldr ip, _020A61A8 ; =sub_020C054C
	bx ip
	; .align 2, 0
_020A61A8: .word sub_020C054C
	arm_func_end sub_020A61A0

	arm_func_start sub_020A61AC
sub_020A61AC: ; 0x020A61AC
	ldr ip, _020A61B4 ; =sub_020C060C
	bx ip
	; .align 2, 0
_020A61B4: .word sub_020C060C
	arm_func_end sub_020A61AC

	arm_func_start sub_020A61B8
sub_020A61B8: ; 0x020A61B8
	ldr ip, _020A61C0 ; =sub_020C054C
	bx ip
	; .align 2, 0
_020A61C0: .word sub_020C054C
	arm_func_end sub_020A61B8

	arm_func_start sub_020A61C4
sub_020A61C4: ; 0x020A61C4
	ldr ip, _020A61CC ; =sub_020C060C
	bx ip
	; .align 2, 0
_020A61CC: .word sub_020C060C
	arm_func_end sub_020A61C4

	arm_func_start sub_020A61D0
sub_020A61D0: ; 0x020A61D0
	ldr ip, _020A61D8 ; =sub_020C01B8
	bx ip
	; .align 2, 0
_020A61D8: .word sub_020C01B8
	arm_func_end sub_020A61D0

	arm_func_start sub_020A61DC
sub_020A61DC: ; 0x020A61DC
	ldr ip, _020A61E4 ; =sub_020C0108
	bx ip
	; .align 2, 0
_020A61E4: .word sub_020C0108
	arm_func_end sub_020A61DC

	arm_func_start sub_020A61E8
sub_020A61E8: ; 0x020A61E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0C78
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0C90
	bl sub_020C0CF4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A61E8

	arm_func_start sub_020A6214
sub_020A6214: ; 0x020A6214
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0BBC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0BD4
	bl sub_020C0C38
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A6214

	arm_func_start sub_020A6240
sub_020A6240: ; 0x020A6240
	ldr ip, _020A6248 ; =sub_020C0264
	bx ip
	; .align 2, 0
_020A6248: .word sub_020C0264
	arm_func_end sub_020A6240

	arm_func_start sub_020A624C
sub_020A624C: ; 0x020A624C
	ldr ip, _020A6254 ; =sub_020C0314
	bx ip
	; .align 2, 0
_020A6254: .word sub_020C0314
	arm_func_end sub_020A624C

	arm_func_start sub_020A6258
sub_020A6258: ; 0x020A6258
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0]
	ldr r2, _020A6284 ; =0x020F9570
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r4, [r2, r3, lsl #2]
	bl sub_020C2C54
	ldmib r5, {r0, r1, r2}
	blx r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6284: .word 0x020F9570
	arm_func_end sub_020A6258

	arm_func_start sub_020A6288
sub_020A6288: ; 0x020A6288
	mov r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_020A6288

	arm_func_start sub_020A62A0
sub_020A62A0: ; 0x020A62A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A5F8C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #0xa]
	mov r0, r4
	bl sub_020A5F6C
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A62A0

	arm_func_start sub_020A62DC
sub_020A62DC: ; 0x020A62DC
	ldrh r1, [r0, #8]
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end sub_020A62DC

	arm_func_start sub_020A62EC
sub_020A62EC: ; 0x020A62EC
	ldrh r1, [r0, #0xa]
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end sub_020A62EC

	arm_func_start sub_020A62FC
sub_020A62FC: ; 0x020A62FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A5FA4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #8]
	mov r0, r4
	bl sub_020A5F6C
	strh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	mov r0, #1
	sub r1, r1, #1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A62FC

	arm_func_start sub_020A6338
sub_020A6338: ; 0x020A6338
	ldr r2, _020A6350 ; =0x021C3AC0
	ldr ip, _020A6354 ; =sub_020A6288
	str r0, [r2, #0]
	ldr r0, _020A6358 ; =0x021C3AC0
	str r1, [r2, #4]
	bx ip
	; .align 2, 0
_020A6350: .word 0x021C3AC0
_020A6354: .word sub_020A6288
_020A6358: .word 0x021C3AC0
	arm_func_end sub_020A6338

	arm_func_start sub_020A635C
sub_020A635C: ; 0x020A635C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020A63B8 ; =0x021C3AC0
	mov r0, r4
	bl sub_020A62DC
	mov r5, r0
	mov r0, r4
	bl sub_020A62FC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020A6380:
	mov r0, r5
	bl sub_020A6258
	ldr r2, [r4, #0x10]
	ldr r1, [r5, #0xc]
	mov r0, r4
	sub r1, r2, r1
	str r1, [r4, #0x10]
	bl sub_020A62DC
	mov r5, r0
	mov r0, r4
	bl sub_020A62FC
	cmp r0, #0
	bne _020A6380
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A63B8: .word 0x021C3AC0
	arm_func_end sub_020A635C

	arm_func_start sub_020A63BC
sub_020A63BC: ; 0x020A63BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r5, _020A6420 ; =0x021C3AC0
	mov sb, r0
	mov r0, r5
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_020A5F8C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl sub_020A62EC
	mov r4, r0
	str sb, [r4]
	stmib r4, {r7, r8}
	mov r0, r5
	str r6, [r4, #0xc]
	bl sub_020A62A0
	ldr r2, [r5, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #1
	add r1, r2, r1
	str r1, [r5, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A6420: .word 0x021C3AC0
	arm_func_end sub_020A63BC

	arm_func_start sub_020A6424
sub_020A6424: ; 0x020A6424
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, [r0, #0]
	mov lr, #0
	cmp r3, #0
	beq _020A6500
	mov r8, lr
	mov r4, lr
_020A6440:
	ldr r6, [r3, #0]
	ldr r5, [r2, #4]
	ldr ip, [r3, #0xc]
	cmp r6, r5
	bne _020A649C
	ldr r5, [r3, #4]
	orr lr, lr, #1
	add r5, r6, r5
	str r5, [r2, #4]
	ldr r6, [r3, #8]
	ldr r5, [r3, #0xc]
	cmp r6, #0
	strne r5, [r6, #0xc]
	streq r5, [r0]
	cmp r5, #0
	strne r6, [r5, #8]
	ldr r5, [r1, #0]
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r1, #0]
	str r5, [r3, #0xc]
	str r8, [r3, #8]
	str r3, [r1, #0]
_020A649C:
	ldr r7, [r3, #0]
	ldr r5, [r3, #4]
	ldr r6, [r2, #0]
	add r5, r7, r5
	cmp r6, r5
	bne _020A64F4
	str r7, [r2, #0]
	ldr r6, [r3, #8]
	ldr r5, [r3, #0xc]
	cmp r6, #0
	strne r5, [r6, #0xc]
	streq r5, [r0]
	cmp r5, #0
	strne r6, [r5, #8]
	ldr r5, [r1, #0]
	orr lr, lr, #1
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r1, #0]
	str r5, [r3, #0xc]
	str r4, [r3, #8]
	str r3, [r1, #0]
_020A64F4:
	mov r3, ip
	cmp ip, #0
	bne _020A6440
_020A6500:
	mov r0, lr
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020A6424

	arm_func_start sub_020A6508
sub_020A6508: ; 0x020A6508
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020A6508

	arm_func_start sub_020A6514
sub_020A6514: ; 0x020A6514
	stmfd sp!, {r4, lr}
	subs lr, r1, #1
	mov r2, #0
	beq _020A654C
	mov r4, r0
_020A6528:
	add r3, r2, #1
	add r2, r0, r2, lsl #4
	add ip, r0, r3, lsl #4
	str ip, [r2, #0xc]
	str r4, [r2, #0x18]
	mov r2, r3
	cmp r3, lr
	add r4, r4, #0x10
	blo _020A6528
_020A654C:
	mov r2, #0
	str r2, [r0, #8]
	add r1, r0, r1, lsl #4
	str r2, [r1, #-4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A6514

	arm_func_start sub_020A6560
sub_020A6560: ; 0x020A6560
	stmfd sp!, {r3, lr}
	ldr lr, [r1]
	cmp lr, #0
	ldrne ip, [lr, #0xc]
	strne ip, [r1]
	cmp lr, #0
	beq _020A65B4
	stmia lr, {r2, r3}
	mov r1, #0
	str r1, [lr, #8]
	str r1, [lr, #0xc]
	ldr r1, [r0, #0]
	cmp r1, #0
	strne lr, [r1, #8]
	ldr r2, [r0, #0]
	mov r1, #0
	str r2, [lr, #0xc]
	str r1, [lr, #8]
	str lr, [r0]
	mov r0, #1
	ldmia sp!, {r3, pc}
_020A65B4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A6560

	arm_func_start sub_020A65BC
sub_020A65BC: ; 0x020A65BC
	stmfd sp!, {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl sub_020A65D0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A65BC

	arm_func_start sub_020A65D0
sub_020A65D0: ; 0x020A65D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, [r0, #0]
	ldr sb, [sp, #0x28]
	cmp r7, #0
	mov r6, #0
	beq _020A6638
	sub ip, sb, #1
	mvn r8, ip
	mov fp, r6
_020A65F4:
	cmp sb, #1
	ldrls lr, [r7]
	movls r5, fp
	movls r4, r3
	bls _020A661C
	ldr r5, [r7, #0]
	add r4, r5, ip
	and lr, r8, r4
	sub r5, lr, r5
	add r4, r3, r5
_020A661C:
	ldr sl, [r7, #4]
	cmp sl, r4
	movhs r6, r7
	bhs _020A6638
	ldr r7, [r7, #0xc]
	cmp r7, #0
	bne _020A65F4
_020A6638:
	cmp r6, #0
	beq _020A6704
	cmp r5, #0
	beq _020A6698
	ldr r8, [r1]
	cmp r8, #0
	ldrne r3, [r8, #0xc]
	strne r3, [r1]
	cmp r8, #0
	beq _020A6704
	ldr r7, [r6, #0]
	mov r3, #0
	str r7, [r8]
	str r5, [r8, #4]
	str r3, [r8, #8]
	str r3, [r8, #0xc]
	ldr r3, [r0, #0]
	cmp r3, #0
	strne r8, [r3, #8]
	ldr r5, [r0, #0]
	mov r3, #0
	str r5, [r8, #0xc]
	str r3, [r8, #8]
	str r8, [r0]
_020A6698:
	ldr r3, [r6, #4]
	sub r3, r3, r4
	str r3, [r6, #4]
	ldr r3, [r6, #0]
	add r3, r3, r4
	str r3, [r6, #0]
	ldr r3, [r6, #4]
	cmp r3, #0
	bne _020A66F8
	ldr r4, [r6, #8]
	ldr r3, [r6, #0xc]
	cmp r4, #0
	strne r3, [r4, #0xc]
	streq r3, [r0]
	cmp r3, #0
	strne r4, [r3, #8]
	ldr r0, [r1, #0]
	cmp r0, #0
	strne r6, [r0, #8]
	ldr r3, [r1, #0]
	mov r0, #0
	str r3, [r6, #0xc]
	str r0, [r6, #8]
	str r6, [r1, #0]
_020A66F8:
	str lr, [r2]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A6704:
	mov r0, #0
	str r0, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020A65D0

	arm_func_start sub_020A6710
sub_020A6710: ; 0x020A6710
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r5, [r7, #0]
	mov r6, r1
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r4, sp, #0
_020A6734:
	ldr r1, [r5, #0]
	mov r0, r7
	str r1, [sp]
	ldr r3, [r5, #0]
	ldr r2, [r5, #4]
	mov r1, r6
	add r3, r3, r2
	mov r2, r4
	str r3, [sp, #4]
	bl sub_020A6424
	cmp r0, #0
	ldreq r5, [r5, #0xc]
	beq _020A6784
	ldr r0, [sp]
	str r0, [r5, #0]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #4]
	ldr r5, [r7, #0]
_020A6784:
	cmp r5, #0
	bne _020A6734
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A6710

	arm_func_start sub_020A6794
sub_020A6794: ; 0x020A6794
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r3, r2, r3
	str r2, [sp]
	add r2, sp, #0
	mov r5, r1
	str r3, [sp, #4]
	mov r4, r0
	bl sub_020A6424
	ldr r3, [r5, #0]
	cmp r3, #0
	ldrne r0, [r3, #0xc]
	strne r0, [r5]
	cmp r3, #0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	str r1, [r3, #0]
	ldr r2, [sp, #4]
	ldr r1, [sp]
	sub r1, r2, r1
	str r1, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #0xc]
	ldr r0, [r4, #0]
	cmp r0, #0
	strne r3, [r0, #8]
	ldr r1, [r4, #0]
	mov r0, #0
	str r1, [r3, #0xc]
	str r0, [r3, #8]
	str r3, [r4, #0]
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A6794

	arm_func_start sub_020A6824
sub_020A6824: ; 0x020A6824
	mov r0, r0, lsl #4
	bx lr
	arm_func_end sub_020A6824

	arm_func_start sub_020A682C
sub_020A682C: ; 0x020A682C
	stmfd sp!, {r3, lr}
	ldr ip, _020A6870 ; =0x021C3AD4
	str r0, [ip, #0xc]
	str r1, [ip, #0x10]
	str r2, [ip, #0x14]
	str r3, [ip, #0x18]
	bl sub_020A6988
	ldr r0, [sp, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, _020A6874 ; =sub_020A6884
	ldr r1, _020A6878 ; =0x02100DEC
	ldr r2, _020A687C ; =sub_020A6914
	ldr r0, _020A6880 ; =0x02100DF0
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6870: .word 0x021C3AD4
_020A6874: .word sub_020A6884
_020A6878: .word 0x02100DEC
_020A687C: .word sub_020A6914
_020A6880: .word 0x02100DF0
	arm_func_end sub_020A682C

	arm_func_start sub_020A6884
sub_020A6884: ; 0x020A6884
	stmfd sp!, {r3, r4, r5, lr}
	cmp r0, #0
	moveq r5, #0x10
	addne r0, r0, #0xf
	bicne r5, r0, #0xf
	ldr r0, _020A6904 ; =0x0007FFF0
	mov r4, r1
	cmp r5, r0
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	add r2, sp, #0
	beq _020A68CC
	ldr r0, _020A6908 ; =0x021C3AD8
	ldr r1, _020A690C ; =0x021C3ADC
	mov r3, r5
	bl sub_020A65BC
	b _020A68DC
_020A68CC:
	ldr r0, _020A6910 ; =0x021C3AD4
	ldr r1, _020A690C ; =0x021C3ADC
	mov r3, r5
	bl sub_020A65BC
_020A68DC:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	mov r1, r5, lsr #4
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	orr r0, r0, r4, lsl #31
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6904: .word 0x0007FFF0
_020A6908: .word 0x021C3AD8
_020A690C: .word 0x021C3ADC
_020A6910: .word 0x021C3AD4
	arm_func_end sub_020A6884

	arm_func_start sub_020A6914
sub_020A6914: ; 0x020A6914
	stmfd sp!, {r3, lr}
	ldr r1, _020A6978 ; =0x7FFF0000
	mov r2, r0, lsl #0x10
	and r1, r0, r1
	mov r1, r1, lsr #0x10
	and r0, r0, #0x80000000
	mov r2, r2, lsr #0xd
	movs r3, r1, lsl #4
	mov r0, r0, lsr #0x1f
	beq _020A6970
	cmp r0, #0
	beq _020A6954
	ldr r0, _020A697C ; =0x021C3AD8
	ldr r1, _020A6980 ; =0x021C3ADC
	bl sub_020A6794
	b _020A6960
_020A6954:
	ldr r0, _020A6984 ; =0x021C3AD4
	ldr r1, _020A6980 ; =0x021C3ADC
	bl sub_020A6794
_020A6960:
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r3, pc}
_020A6970:
	mov r0, #2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6978: .word 0x7FFF0000
_020A697C: .word 0x021C3AD8
_020A6980: .word 0x021C3ADC
_020A6984: .word 0x021C3AD4
	arm_func_end sub_020A6914

	arm_func_start sub_020A6988
sub_020A6988: ; 0x020A6988
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr lr, _020A6B70 ; =0x020F9600
	add r4, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	mov ip, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _020A6B74 ; =0x021C3AD4
	mov r3, #0
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0xc]
	add r0, r2, r2, lsr #1
	mov r4, r2, lsr #1
	sub r1, r1, r0
_020A69D0:
	cmp r3, #0
	cmpne r3, #2
	bne _020A6A10
	ldr lr, [ip]
	cmp lr, #0
	cmpne r2, #0
	beq _020A6A10
	ldr r0, [ip, #8]
	cmp lr, r2
	movhi lr, r2
	add r0, r0, lr
	str r0, [ip, #8]
	ldr r0, [ip]
	sub r2, r2, lr
	sub r0, r0, lr
	str r0, [ip]
_020A6A10:
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #0xc
	blo _020A69D0
	ldr r0, [sp, #0xc]
	add r2, sp, #0
	sub r0, r0, r4
	str r0, [sp, #0xc]
	mov r3, #0
_020A6A34:
	ldr ip, [r2]
	cmp ip, #0
	cmpne r1, #0
	beq _020A6A68
	ldr r0, [r2, #4]
	cmp ip, r1
	movhi ip, r1
	add r0, r0, ip
	str r0, [r2, #4]
	ldr r0, [r2, #0]
	sub r1, r1, ip
	sub r0, r0, ip
	str r0, [r2, #0]
_020A6A68:
	add r3, r3, #1
	cmp r3, #4
	add r2, r2, #0xc
	blo _020A6A34
	ldr r0, _020A6B78 ; =0x021C3AD4
	bl sub_020A6508
	ldr r0, _020A6B7C ; =0x021C3AD8
	bl sub_020A6508
	ldr r0, _020A6B74 ; =0x021C3AD4
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x14]
	mov r1, r1, lsr #4
	bl sub_020A6514
	ldr r3, [sp, #8]
	ldr r1, _020A6B74 ; =0x021C3AD4
	cmp r3, #0
	str r0, [r1, #8]
	beq _020A6AC0
	ldr r0, _020A6B7C ; =0x021C3AD8
	ldr r1, _020A6B80 ; =0x021C3ADC
	mov r2, #0
	bl sub_020A6560
_020A6AC0:
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	cmp r3, #0
	beq _020A6ADC
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	bl sub_020A6560
_020A6ADC:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _020A6AF8
	ldr r0, _020A6B7C ; =0x021C3AD8
	ldr r1, _020A6B80 ; =0x021C3ADC
	mov r2, #0x40000
	bl sub_020A6560
_020A6AF8:
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	cmp r3, #0
	beq _020A6B18
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	add r2, r2, #0x40000
	bl sub_020A6560
_020A6B18:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _020A6B34
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	mov r2, #0x60000
	bl sub_020A6560
_020A6B34:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _020A6B50
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	add r2, r4, #0x20000
	bl sub_020A6560
_020A6B50:
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	bl sub_020A6710
	ldr r0, _020A6B7C ; =0x021C3AD8
	ldr r1, _020A6B80 ; =0x021C3ADC
	bl sub_020A6710
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6B70: .word 0x020F9600
_020A6B74: .word 0x021C3AD4
_020A6B78: .word 0x021C3AD4
_020A6B7C: .word 0x021C3AD8
_020A6B80: .word 0x021C3ADC
	arm_func_end sub_020A6988

	arm_func_start sub_020A6B84
sub_020A6B84: ; 0x020A6B84
	mov r0, r0, lsl #4
	bx lr
	arm_func_end sub_020A6B84

	arm_func_start sub_020A6B8C
sub_020A6B8C: ; 0x020A6B8C
	stmfd sp!, {r4, lr}
	ldr ip, _020A6BCC ; =0x021C3AF0
	mov r4, r3
	str r0, [ip, #8]
	str r1, [ip, #0xc]
	str r2, [ip, #0x10]
	bl sub_020A6CF0
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _020A6BD0 ; =sub_020A6BE0
	ldr r1, _020A6BD4 ; =0x02100DF4
	ldr r2, _020A6BD8 ; =sub_020A6CAC
	ldr r0, _020A6BDC ; =0x02100DF8
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6BCC: .word 0x021C3AF0
_020A6BD0: .word sub_020A6BE0
_020A6BD4: .word 0x02100DF4
_020A6BD8: .word sub_020A6CAC
_020A6BDC: .word 0x02100DF8
	arm_func_end sub_020A6B8C

	arm_func_start sub_020A6BE0
sub_020A6BE0: ; 0x020A6BE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	cmp r0, #0
	moveq r4, #8
	addne r0, r0, #7
	bicne r4, r0, #7
	ldr r0, _020A6CA0 ; =0x0007FFF8
	cmp r4, r0
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsia sp!, {r4, pc}
	cmp r1, #0
	add r2, sp, #4
	beq _020A6C5C
	mov ip, #8
	ldr r0, _020A6CA4 ; =0x021C3AF0
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	str ip, [sp]
	bl sub_020A65D0
	ldr r2, [sp, #4]
	add r1, r2, r4
	cmp r1, #0x10000
	bls _020A6C74
	ldr r0, _020A6CA4 ; =0x021C3AF0
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	bl sub_020A6794
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_020A6C5C:
	ldr r0, _020A6CA4 ; =0x021C3AF0
	mov ip, #0x10
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	str ip, [sp]
	bl sub_020A65D0
_020A6C74:
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #4]
	mov r1, r4, lsr #3
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6CA0: .word 0x0007FFF8
_020A6CA4: .word 0x021C3AF0
_020A6CA8: .word 0x021C3AF4
	arm_func_end sub_020A6BE0

	arm_func_start sub_020A6CAC
sub_020A6CAC: ; 0x020A6CAC
	stmfd sp!, {r3, lr}
	mov r1, #0x10000
	rsb r1, r1, #0
	and r1, r0, r1
	mov r2, r0, lsl #0x10
	mov r3, r1, lsr #0x10
	ldr r0, _020A6CE8 ; =0x021C3AF0
	ldr r1, _020A6CEC ; =0x021C3AF4
	mov r2, r2, lsr #0xd
	mov r3, r3, lsl #3
	bl sub_020A6794
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6CE8: .word 0x021C3AF0
_020A6CEC: .word 0x021C3AF4
	arm_func_end sub_020A6CAC

	arm_func_start sub_020A6CF0
sub_020A6CF0: ; 0x020A6CF0
	stmfd sp!, {r3, lr}
	ldr r0, _020A6D40 ; =0x021C3AF0
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsr #4
	bl sub_020A6514
	ldr r1, _020A6D40 ; =0x021C3AF0
	str r0, [r1, #4]
	ldr r0, _020A6D44 ; =0x021C3AF0
	bl sub_020A6508
	ldr r1, _020A6D40 ; =0x021C3AF0
	ldr r0, _020A6D44 ; =0x021C3AF0
	ldr r3, [r1, #8]
	ldr r1, _020A6D48 ; =0x021C3AF4
	mov r2, #0
	bl sub_020A6560
	ldr r0, _020A6D44 ; =0x021C3AF0
	ldr r1, _020A6D48 ; =0x021C3AF4
	bl sub_020A6710
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6D40: .word 0x021C3AF0
_020A6D44: .word 0x021C3AF0
_020A6D48: .word 0x021C3AF4
	arm_func_end sub_020A6CF0

	arm_func_start sub_020A6D4C
sub_020A6D4C: ; 0x020A6D4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A6D84 ; =0x41424E4B
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A6DA0
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6D84: .word 0x41424E4B
	arm_func_end sub_020A6D4C

	arm_func_start sub_020A6D88
sub_020A6D88: ; 0x020A6D88
	ldr ip, _020A6D90 ; =sub_020A6D4C
	bx ip
	; .align 2, 0
_020A6D90: .word sub_020A6D4C
	arm_func_end sub_020A6D88

	arm_func_start sub_020A6D94
sub_020A6D94: ; 0x020A6D94
	ldr ip, _020A6D9C ; =sub_020A6D4C
	bx ip
	; .align 2, 0
_020A6D9C: .word sub_020A6D4C
	arm_func_end sub_020A6D94

	arm_func_start sub_020A6DA0
sub_020A6DA0: ; 0x020A6DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, [r0, #4]
	mov ip, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r0
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	add r6, r1, r0
	str r6, [r0, #0xc]
	ldrh r1, [r0]
	ldmib r0, {r4, r5}
	cmp r1, #0
	bls _020A6E44
	mov r1, ip
_020A6DE0:
	add r2, r4, ip, lsl #4
	ldr r7, [r2, #0xc]
	mov r3, ip, lsl #4
	add r7, r5, r7
	str r7, [r2, #0xc]
	ldrh r7, [r4, r3]
	mov lr, r1
	cmp r7, #0
	bls _020A6E2C
_020A6E04:
	ldr sb, [r2, #0xc]
	add r7, lr, #1
	ldr r8, [sb, lr, lsl #3]
	mov r7, r7, lsl #0x10
	add r8, r6, r8
	str r8, [sb, lr, lsl #3]
	ldrh r8, [r4, r3]
	mov lr, r7, lsr #0x10
	cmp r8, r7, lsr #16
	bhi _020A6E04
_020A6E2C:
	ldrh r3, [r0]
	add r2, ip, #1
	mov r2, r2, lsl #0x10
	cmp r3, r2, lsr #16
	mov ip, r2, lsr #0x10
	bhi _020A6DE0
_020A6E44:
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r2, r1, r0
	str r2, [r0, #0x14]
	add r4, r2, #8
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r4, #4]
	ldrh r1, [r2, #8]
	cmp r1, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r3, r0
	mov r7, r0
_020A6E80:
	ldr r6, [r4, #4]
	mov r1, r7
	add r2, r6, r3
	ldr r5, [r2, #4]
	add r5, r5, r4
	str r5, [r2, #4]
	ldr r5, [r2, #8]
	add r5, r5, r4
	str r5, [r2, #8]
	ldrh r5, [r6, r3]
	cmp r5, #0
	bls _020A6ED8
	mov r8, r7
_020A6EB4:
	ldr r6, [r2, #8]
	add r1, r1, #1
	ldr r5, [r6, r8]
	add r5, r5, r4
	str r5, [r6, r8]
	ldrh r5, [r2]
	add r8, r8, #4
	cmp r1, r5
	blo _020A6EB4
_020A6ED8:
	ldrh r1, [r4]
	add r0, r0, #1
	add r3, r3, #0xc
	cmp r0, r1
	blo _020A6E80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020A6DA0

	arm_func_start sub_020A6EF0
sub_020A6EF0: ; 0x020A6EF0
	ldrh r2, [r0]
	cmp r2, r1
	ldrhi r0, [r0, #4]
	addhi r0, r0, r1, lsl #4
	movls r0, #0
	bx lr
	arm_func_end sub_020A6EF0

	arm_func_start sub_020A6F08
sub_020A6F08: ; 0x020A6F08
	ldrh r1, [r0, #2]
	tst r1, #1
	ldrh r1, [r0]
	ldrne r0, [r0, #4]
	addne r0, r0, r1, lsl #4
	ldreq r0, [r0, #4]
	addeq r0, r0, r1, lsl #3
	bx lr
	arm_func_end sub_020A6F08

	arm_func_start sub_020A6F28
sub_020A6F28: ; 0x020A6F28
	ldr ip, _020A6F34 ; =sub_020A72C4
	add r0, r0, #8
	bx ip
	; .align 2, 0
_020A6F34: .word sub_020A72C4
	arm_func_end sub_020A6F28

	arm_func_start sub_020A6F38
sub_020A6F38: ; 0x020A6F38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A6F70 ; =0x4345424B
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A6F9C
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6F70: .word 0x4345424B
	arm_func_end sub_020A6F38

	arm_func_start sub_020A6F74
sub_020A6F74: ; 0x020A6F74
	ldrh r2, [r0]
	cmp r1, r2
	movhs r0, #0
	bxhs lr
	ldrh r2, [r0, #2]
	ldr r0, [r0, #4]
	tst r2, #1
	addne r0, r0, r1, lsl #4
	addeq r0, r0, r1, lsl #3
	bx lr
	arm_func_end sub_020A6F74

	arm_func_start sub_020A6F9C
sub_020A6F9C: ; 0x020A6F9C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	add r1, r1, r5
	str r1, [r5, #4]
	bl sub_020A6F08
	ldrh r1, [r5]
	mov r4, r0
	mov r6, #0
	cmp r1, #0
	bls _020A6FF8
_020A6FC8:
	mov r0, r5
	mov r1, r6
	bl sub_020A6F74
	ldr r2, [r0, #4]
	add r1, r6, #1
	add r2, r2, r4
	str r2, [r0, #4]
	mov r0, r1, lsl #0x10
	ldrh r1, [r5]
	mov r6, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A6FC8
_020A6FF8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020A701C
	add r1, r0, r5
	str r1, [r5, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, r1
	str r0, [r1, #4]
	str r1, [r5, #0xc]
_020A701C:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, r5
	str r0, [r5, #0x14]
	bl sub_020A6F28
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A6F9C

	arm_func_start sub_020A7038
sub_020A7038: ; 0x020A7038
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7070 ; =0x4D43424B
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7084
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7070: .word 0x4D43424B
	arm_func_end sub_020A7038

	arm_func_start sub_020A7074
sub_020A7074: ; 0x020A7074
	ldr ip, _020A7080 ; =sub_020A72C4
	add r0, r0, #8
	bx ip
	; .align 2, 0
_020A7080: .word sub_020A72C4
	arm_func_end sub_020A7074

	arm_func_start sub_020A7084
sub_020A7084: ; 0x020A7084
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #4]
	mov lr, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r0
	str r1, [r0, #8]
	ldrh r1, [r0]
	ldr r4, [r0, #4]
	cmp r1, #0
	bls _020A70E0
_020A70B4:
	add r3, r4, lr, lsl #3
	ldr ip, [r0, #8]
	ldr r2, [r3, #4]
	add r1, lr, #1
	add r2, ip, r2
	str r2, [r3, #4]
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov lr, r1, lsr #0x10
	cmp r2, r1, lsr #16
	bhi _020A70B4
_020A70E0:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	add r1, r1, r0
	str r1, [r0, #0x10]
	mov r0, r1
	bl sub_020A7074
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A7084

	arm_func_start sub_020A7100
sub_020A7100: ; 0x020A7100
	ldrh r2, [r0]
	cmp r1, r2
	ldrlo r0, [r0, #4]
	addlo r0, r0, r1, lsl #3
	movhs r0, #0
	bx lr
	arm_func_end sub_020A7100

	arm_func_start sub_020A7118
sub_020A7118: ; 0x020A7118
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7150 ; =0x43484152
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7154
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7150: .word 0x43484152
	arm_func_end sub_020A7118

	arm_func_start sub_020A7154
sub_020A7154: ; 0x020A7154
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_020A7154

	arm_func_start sub_020A7164
sub_020A7164: ; 0x020A7164
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A719C ; =0x43484152
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A71A0
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A719C: .word 0x43484152
	arm_func_end sub_020A7164

	arm_func_start sub_020A71A0
sub_020A71A0: ; 0x020A71A0
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_020A71A0

	arm_func_start sub_020A71B0
sub_020A71B0: ; 0x020A71B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A71E8 ; =0x504C5454
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7238
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A71E8: .word 0x504C5454
	arm_func_end sub_020A71B0

	arm_func_start sub_020A71EC
sub_020A71EC: ; 0x020A71EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7224 ; =0x50434D50
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7228
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7224: .word 0x50434D50
	arm_func_end sub_020A71EC

	arm_func_start sub_020A7228
sub_020A7228: ; 0x020A7228
	ldr r1, [r0, #4]
	add r1, r1, r0
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A7228

	arm_func_start sub_020A7238
sub_020A7238: ; 0x020A7238
	ldr r1, [r0, #0xc]
	add r1, r1, r0
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_020A7238

	arm_func_start sub_020A7248
sub_020A7248: ; 0x020A7248
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, _020A7278 ; =0x5343524E
	bl sub_020A727C
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4]
	ldmeqia sp!, {r4, pc}
	add r0, r0, #8
	str r0, [r4, #0]
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A7278: .word 0x5343524E
	arm_func_end sub_020A7248

	arm_func_start sub_020A727C
sub_020A727C: ; 0x020A727C
	ldrh r2, [r0, #0xc]
	ldrh ip, [r0, #0xe]
	mov r3, #0
	add r0, r0, r2
	cmp ip, #0
	bls _020A72BC
_020A7294:
	ldr r2, [r0, #0]
	cmp r2, r1
	bxeq lr
	add r2, r3, #1
	mov r2, r2, lsl #0x10
	ldr r3, [r0, #4]
	cmp ip, r2, lsr #16
	add r0, r0, r3
	mov r3, r2, lsr #0x10
	bhi _020A7294
_020A72BC:
	mov r0, #0
	bx lr
	arm_func_end sub_020A727C

	arm_func_start sub_020A72C4
sub_020A72C4: ; 0x020A72C4
	ldr r1, [r0, #4]
	mov ip, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0
	bxls lr
_020A72E0:
	ldr r3, [r0, #4]
	add r1, ip, #1
	ldr r2, [r3, ip, lsl #2]
	mov r1, r1, lsl #0x10
	add r2, r0, r2
	str r2, [r3, ip, lsl #2]
	ldrh r2, [r0]
	mov ip, r1, lsr #0x10
	cmp r2, r1, lsr #16
	bhi _020A72E0
	bx lr
	arm_func_end sub_020A72C4

	arm_func_start sub_020A730C
sub_020A730C: ; 0x020A730C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov ip, r3, lsl #8
	mov r0, r0, lsl #8
	ldr r3, _020A73BC ; =0x04000500
	mov r4, ip, asr #0x10
	mov r0, r0, asr #0x10
	mov lr, r4, lsl #0x10
	mov r4, r0, lsl #0x10
	mov r0, r1, lsl #8
	mov ip, #1
	mov r0, r0, asr #0x10
	mov r5, r0, lsl #0x10
	mov r0, #0x10000000
	mov r1, r2, lsl #8
	mov r1, r1, asr #0x10
	mov r2, r1, lsl #0x10
	mov r7, lr, lsr #0x10
	mov r1, r4, lsr #0x10
	mov r5, r5, lsr #0x10
	mov r2, r2, lsr #0x10
	str ip, [r3]
	orr r4, r1, r7, lsl #16
	sub r6, r3, #0x78
	str r4, [r6, #0]
	sub lr, r3, #0x74
	str r0, [lr]
	mov ip, #0
	str ip, [lr]
	orr r4, r5, r7, lsl #16
	str r4, [r6, #0]
	add r0, r0, #0x1000
	str r0, [lr]
	str ip, [lr]
	orr r0, r5, r2, lsl #16
	str r0, [r6, #0]
	mov r0, #0x1000
	str r0, [lr]
	str ip, [lr]
	orr r0, r1, r2, lsl #16
	str r0, [r6, #0]
	str ip, [lr]
	str ip, [lr]
	str ip, [r3, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A73BC: .word 0x04000500
	arm_func_end sub_020A730C

	arm_func_start sub_020A73C0
sub_020A73C0: ; 0x020A73C0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	ldr r2, _020A7470 ; =0xBFFF0000
	ldr r1, _020A7474 ; =0x04000580
	mov r0, r2, lsl #6
	str r2, [r1, #0]
	str r0, [sp]
	mov r1, #0x400000
	str r1, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r2, r0
	mov r1, #0xc0000
	mov r3, #0x100000
	str r0, [sp, #0x10]
	bl sub_020BFF50
	ldr r1, _020A7478 ; =0x0400044C
	mov r5, #0
	ldr r0, _020A747C ; =0x020F9640
	str r5, [r1, #0]
	add r4, sp, #0x2c
	ldr ip, _020A7480 ; =0x020F964C
	add lr, sp, #0x20
	ldmia r0, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	add r3, sp, #0x14
	ldmia ip, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r2, r3
	str r5, [r4, #0]
	str r5, [r4, #4]
	str r5, [r4, #8]
	mov r0, r4
	mov r1, lr
	mov r3, #1
	str r5, [sp]
	bl sub_020BFFB4
	ldr r0, _020A7484 ; =0x04000440
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7470: .word 0xBFFF0000
_020A7474: .word 0x04000580
_020A7478: .word 0x0400044C
_020A747C: .word 0x020F9640
_020A7480: .word 0x020F964C
_020A7484: .word 0x04000440
	arm_func_end sub_020A73C0

	arm_func_start sub_020A7488
sub_020A7488: ; 0x020A7488
	stmfd sp!, {r4, lr}
	ldr lr, _020A74EC ; =0x04000470
	mov r0, r0, lsl #0xc
	str r0, [lr]
	mov r4, r1, lsl #0xc
	ldr ip, [sp, #8]
	str r4, [lr]
	mov r4, r2, lsl #0xc
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r4, [lr]
	mov r4, r3, lsl #0xc
	ldr r3, [sp, #0x18]
	mov ip, ip, lsl #0xc
	str r4, [lr, #-4]!
	str ip, [lr]
	mov ip, #0x1000
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r3, r3, lsl #0xc
	str ip, [lr]
	bl sub_020A730C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A74EC: .word 0x04000470
	arm_func_end sub_020A7488

	arm_func_start sub_020A74F0
sub_020A74F0: ; 0x020A74F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	ldreq r0, [r0, #8]
	cmp r0, #3
	cmpne r0, #4
	bne _020A758C
	ldr r0, [r4, #8]
	eor r0, r0, #1
	str r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0]
	ldrh r0, [r1, #2]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, lsl #3
	sub r0, r0, #8
	cmp r2, r0
	bhi _020A75D4
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _020A755C
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	blx r2
_020A755C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	ldreq r0, [r0, #8]
	cmp r0, #2
	cmpne r0, #4
	movne r0, #0
	strne r0, [r4, #0xc]
	bne _020A75D4
	mov r0, r4
	bl sub_020A788C
	b _020A75D4
_020A758C:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _020A75A8
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	blx r2
_020A75A8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	ldreq r0, [r0, #8]
	cmp r0, #2
	cmpne r0, #4
	movne r0, #0
	strne r0, [r4, #0xc]
	bne _020A75D4
	mov r0, r4
	bl sub_020A788C
_020A75D4:
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0]
	ldrh r0, [r1]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, lsl #3
	sub r0, r0, #8
	cmp r2, r0
	strhi r0, [r4]
	ldmhiia sp!, {r4, pc}
	cmp r2, r1
	strlo r1, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A74F0

	arm_func_start sub_020A7604
sub_020A7604: ; 0x020A7604
	ldr r3, [r0, #0x1c]
	ldrh r2, [r3]
	cmp r1, r2
	bhs _020A7634
	ldr r2, [r3, #0xc]
	add r2, r2, r1, lsl #3
	str r2, [r0, #0]
	ldrh r1, [r2, #4]
	cmp r1, #0
	strne r2, [r0, #4]
	mov r0, #1
	bx lr
_020A7634:
	mov r0, #0
	bx lr
	arm_func_end sub_020A7604

	arm_func_start sub_020A763C
sub_020A763C: ; 0x020A763C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bx lr
	arm_func_end sub_020A763C

	arm_func_start sub_020A7648
sub_020A7648: ; 0x020A7648
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0xc]
	mov sb, #0
	cmp r0, #1
	movne r0, sb
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x14]
	smull r2, r1, r0, r1
	adds r0, r2, #0x800
	adc r1, r1, sb
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	bl sub_020D4070
	mov r4, #1
	ldr r1, [sl, #0x10]
	mov fp, sb
	add r0, r1, r0
	str r0, [sl, #0x10]
	mov r8, r4
	mov r7, sb
	mov r5, sb
	mov r6, r4
	b _020A77C4
_020A76A8:
	ldr r0, [sl]
	ldr r1, [sl, #0x10]
	ldrh r0, [r0, #4]
	mov sb, r8
	sub r0, r1, r0, lsl #12
	str r0, [sl, #0x10]
	ldr r0, [sl, #0x14]
	cmp r0, #0
	movgt r1, r8
	ldr r0, [sl, #8]
	movle r1, r7
	teq r1, r0
	ldr r0, [sl]
	addne r0, r0, #8
	subeq r0, r0, #8
	str r0, [sl]
	ldr r1, [sl, #0x14]
	ldr r0, [sl]
	cmp r1, #0
	movgt r2, r6
	ldr r1, [sl, #8]
	movle r2, r5
	teq r2, r1
	ldr r1, [sl, #0x1c]
	ldr r2, [r1, #0xc]
	beq _020A7728
	ldrh r1, [r1]
	add r1, r2, r1, lsl #3
	cmp r0, r1
	movhs r0, r4
	movlo r0, fp
	b _020A7740
_020A7728:
	ldrh r1, [r1, #2]
	add r1, r2, r1, lsl #3
	sub r1, r1, #8
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
_020A7740:
	cmp r0, #0
	beq _020A7750
	mov r0, sl
	bl sub_020A74F0
_020A7750:
	ldr r1, [sl]
	ldrh r0, [r1, #4]
	cmp r0, #0
	strne r1, [sl, #4]
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _020A77C4
	ldr r0, [sl, #0x1c]
	ldr r2, [sl, #0x20]
	ldr r0, [r0, #0xc]
	cmp r2, #2
	ldr r1, [sl]
	sub r0, r1, r0
	mov r0, r0, lsl #0xd
	mov r1, r0, lsr #0x10
	beq _020A779C
	cmp r2, #3
	beq _020A77B8
	b _020A77C4
_020A779C:
	ldrh r0, [sl, #0x2c]
	cmp r1, r0
	bne _020A77C4
	ldr r0, [sl, #0x24]
	ldr r2, [sl, #0x28]
	blx r2
	b _020A77C4
_020A77B8:
	ldr r0, [sl, #0x24]
	ldr r2, [sl, #0x28]
	blx r2
_020A77C4:
	ldr r0, [sl, #0xc]
	cmp r0, #0
	beq _020A77E8
	ldr r0, [sl]
	ldr r1, [sl, #0x10]
	ldrh r0, [r0, #4]
	cmp r1, r0, lsl #12
	movge r0, #1
	bge _020A77EC
_020A77E8:
	mov r0, #0
_020A77EC:
	cmp r0, #0
	bne _020A76A8
	mov r0, sb
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020A7648

	arm_func_start sub_020A77FC
sub_020A77FC: ; 0x020A77FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A7604
	cmp r0, #0
	movne r1, #0
	strne r1, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A77FC

	arm_func_start sub_020A7818
sub_020A7818: ; 0x020A7818
	ldr r1, [r0, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, [r1, #0xc]
	sub r0, r2, r0
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end sub_020A7818

	arm_func_start sub_020A7834
sub_020A7834: ; 0x020A7834
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x20
	bl sub_020A7874
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
	mov r0, #0x1000
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A7834

	arm_func_start sub_020A7874
sub_020A7874: ; 0x020A7874
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	bx lr
	arm_func_end sub_020A7874

	arm_func_start sub_020A788C
sub_020A788C: ; 0x020A788C
	ldr r1, [r0, #0x14]
	cmp r1, #0
	movgt r2, #1
	ldr r1, [r0, #8]
	movle r2, #0
	teq r2, r1
	ldr r2, [r0, #0x1c]
	beq _020A78BC
	ldrh r1, [r2, #2]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #3
	b _020A78CC
_020A78BC:
	ldrh r1, [r2]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #3
	sub r1, r1, #8
_020A78CC:
	str r1, [r0, #0]
	ldr r2, [r0, #0]
	ldr ip, _020A78E8 ; =sub_020A7648
	mov r1, #0
	str r2, [r0, #4]
	str r1, [r0, #0x10]
	bx ip
	; .align 2, 0
_020A78E8: .word sub_020A7648
	arm_func_end sub_020A788C

	arm_func_start sub_020A78EC
sub_020A78EC: ; 0x020A78EC
	ldr ip, _020A78F8 ; =sub_020A788C
	str r1, [r0, #0x1c]
	bx ip
	; .align 2, 0
_020A78F8: .word sub_020A788C
	arm_func_end sub_020A78EC

	arm_func_start sub_020A78FC
sub_020A78FC: ; 0x020A78FC
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldreq r0, [r0, #0x1c]
	ldreq r1, [r0, #8]
	cmp r1, #2
	cmpne r1, #4
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A78FC

	arm_func_start sub_020A7920
sub_020A7920: ; 0x020A7920
	ldr ip, _020A7930 ; =sub_020C4B18
	add r1, r1, #0x400
	add r1, r1, #0x7000000
	bx ip
	; .align 2, 0
_020A7930: .word sub_020C4B18
	arm_func_end sub_020A7920

	arm_func_start sub_020A7934
sub_020A7934: ; 0x020A7934
	ldr ip, _020A7940 ; =sub_020C4B18
	add r1, r1, #0x7000000
	bx ip
	; .align 2, 0
_020A7940: .word sub_020C4B18
	arm_func_end sub_020A7934

	arm_func_start sub_020A7944
sub_020A7944: ; 0x020A7944
	stmfd sp!, {r3, lr}
	ldr r1, _020A79DC ; =0x021C3C08
	mov r0, #0xc0
	mov r2, #0x400
	bl sub_020C4AF0
	ldr r1, _020A79E0 ; =0x021C4148
	mov r0, #0xc0
	mov r2, #0x400
	bl sub_020C4AF0
	ldr r1, _020A79E4 ; =0x021C4688
	mov r0, #0xc0
	mov r2, #0x400
	bl sub_020C4AF0
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79EC ; =0x021C3B08
	mov r2, #0x100
	bl sub_020C4AF0
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79F0 ; =0x021C4048
	mov r2, #0x100
	bl sub_020C4AF0
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79F4 ; =0x021C4588
	mov r2, #0x100
	bl sub_020C4AF0
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79F8 ; =0x021C4008
	mov r2, #0x40
	bl sub_020C4AF0
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79FC ; =0x021C4548
	mov r2, #0x40
	bl sub_020C4AF0
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A7A00 ; =0x021C4A88
	mov r2, #0x40
	bl sub_020C4AF0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A79DC: .word 0x021C3C08
_020A79E0: .word 0x021C4148
_020A79E4: .word 0x021C4688
_020A79E8: .word 0x0000FFFF
_020A79EC: .word 0x021C3B08
_020A79F0: .word 0x021C4048
_020A79F4: .word 0x021C4588
_020A79F8: .word 0x021C4008
_020A79FC: .word 0x021C4548
_020A7A00: .word 0x021C4A88
	arm_func_end sub_020A7944

	arm_func_start sub_020A7A04
sub_020A7A04: ; 0x020A7A04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x1c]
	ldr r6, _020A7B74 ; =0x021C3B08
	mov r4, #0x540
	mla r4, r5, r4, r6
	mov ip, r1
	sub r1, r2, #1
	add r1, ip, r1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	add lr, r4, ip, lsl #1
	add r7, r4, r2, lsl #1
	mov r6, r0
	mov r5, r3
	cmp lr, r7
	bhi _020A7A64
	ldr r0, _020A7B78 ; =0x0000FFFF
_020A7A48:
	ldrh r1, [lr]
	cmp r1, r0
	movne r0, #0
	bne _020A7A68
	add lr, lr, #2
	cmp lr, r7
	bls _020A7A48
_020A7A64:
	mov r0, #1
_020A7A68:
	cmp r0, #0
	beq _020A7AAC
	ldr r0, _020A7B7C ; =0x021C3B04
	sub r1, r2, ip
	ldrh r7, [r0]
	add r3, r1, #1
	add r1, r4, ip, lsl #1
	add lr, r7, #1
	strh lr, [r0]
	strh r7, [r6, #0x10]
	strh ip, [r6, #4]
	strh r2, [r6, #6]
	strh ip, [r6, #8]
	ldrh r0, [r6, #0x10]
	mov r2, r3, lsl #1
	bl sub_020C4AF0
	b _020A7AB4
_020A7AAC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A7AB4:
	ldrh r0, [sp, #0x18]
	add r3, r4, #0x500
	cmp r0, #0
	bne _020A7AE0
	mov r0, #0x20
	strh r0, [r6, #0xa]
	mov r0, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xa]
	strh r0, [r6, #0xe]
	b _020A7B5C
_020A7AE0:
	sub r0, r0, #1
	add r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	add r7, r3, r5, lsl #1
	add r4, r3, r2, lsl #1
	cmp r7, r4
	bhi _020A7B20
	ldr r0, _020A7B78 ; =0x0000FFFF
_020A7B04:
	ldrh r1, [r7]
	cmp r1, r0
	movne r0, #0
	bne _020A7B24
	add r7, r7, #2
	cmp r7, r4
	bls _020A7B04
_020A7B20:
	mov r0, #1
_020A7B24:
	cmp r0, #0
	beq _020A7B54
	strh r5, [r6, #0xa]
	strh r2, [r6, #0xc]
	strh r5, [r6, #0xe]
	sub r0, r2, r5
	add r2, r0, #1
	ldrh r0, [r6, #0x10]
	add r1, r3, r5, lsl #1
	mov r2, r2, lsl #1
	bl sub_020C4AF0
	b _020A7B5C
_020A7B54:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A7B5C:
	mov r1, #0
	ldr r0, [sp, #0x1c]
	str r1, [r6, #0x14]
	str r0, [r6, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A7B74: .word 0x021C3B08
_020A7B78: .word 0x0000FFFF
_020A7B7C: .word 0x021C3B04
	arm_func_end sub_020A7A04

	arm_func_start sub_020A7B80
sub_020A7B80: ; 0x020A7B80
	stmfd sp!, {r3, r4, r5, lr}
	ldrh ip, [r0, #6]
	ldrh r5, [r0, #8]
	mov r4, #0
	add r3, ip, #1
	cmp r5, r3
	bgt _020A7BA8
	ldrh r3, [r0, #4]
	cmp r3, ip
	movls r4, #1
_020A7BA8:
	cmp r4, #0
	moveq r3, #0
	beq _020A7BC4
	sub r3, ip, r5
	add r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
_020A7BC4:
	cmp r3, r2
	movhs r3, #1
	movlo r3, #0
	cmp r3, #0
	beq _020A7C44
	ldr lr, [r0]
	ldr ip, _020A7C4C ; =0x021C3B08
	mov r3, #0x540
	mla ip, lr, r3, ip
	ldrh r3, [r0, #8]
	add ip, ip, #0x100
	cmp r2, #0
	add r5, ip, r3, lsl #3
	mov r4, #0
	ble _020A7C3C
_020A7C00:
	ldrh lr, [r1]
	mov r3, r4, lsl #3
	add ip, r5, r4, lsl #3
	strh lr, [r5, r3]
	ldrh r3, [r1, #2]
	add r4, r4, #1
	cmp r4, r2
	strh r3, [ip, #2]
	ldrh r3, [r1, #4]
	add r1, r1, #8
	strh r3, [ip, #4]
	ldrh r3, [r0, #8]
	add r3, r3, #1
	strh r3, [r0, #8]
	blt _020A7C00
_020A7C3C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020A7C44:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7C4C: .word 0x021C3B08
	arm_func_end sub_020A7B80

	arm_func_start sub_020A7C50
sub_020A7C50: ; 0x020A7C50
	stmfd sp!, {r4, lr}
	ldrh lr, [r0, #6]
	ldrh ip, [r0, #8]
	mov r4, #0
	add r3, lr, #1
	cmp ip, r3
	bgt _020A7C78
	ldrh r3, [r0, #4]
	cmp r3, lr
	movls r4, #1
_020A7C78:
	cmp r4, #0
	moveq r3, #0
	beq _020A7C94
	sub r3, lr, ip
	add r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
_020A7C94:
	cmp r3, #1
	movhs r3, #1
	movlo r3, #0
	cmp r3, #0
	beq _020A7D24
	ldr r4, [r0, #0]
	ldr ip, _020A7D2C ; =0x021C3B08
	mov r3, #0x540
	mla ip, r4, r3, ip
	ldrh r3, [r0, #8]
	add r4, ip, #0x100
	ldrh ip, [r1]
	mov lr, r3, lsl #3
	add r3, r4, r3, lsl #3
	strh ip, [r4, lr]
	ldrh lr, [r1, #2]
	ldr ip, _020A7D30 ; =0x0000FFFE
	strh lr, [r3, #2]
	ldrh r1, [r1, #4]
	cmp r2, ip
	strh r1, [r3, #4]
	beq _020A7D10
	ldr r1, [r3, #0]
	mov ip, r1, lsl #0x16
	mov ip, ip, lsr #0x1e
	tst ip, #1
	beq _020A7D10
	bic ip, r1, #0x3e000000
	mov r1, r2, lsl #0x1b
	orr r1, ip, r1, lsr #2
	str r1, [r3, #0]
_020A7D10:
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	mov r0, #1
	ldmia sp!, {r4, pc}
_020A7D24:
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A7D2C: .word 0x021C3B08
_020A7D30: .word 0x0000FFFE
	arm_func_end sub_020A7C50

	arm_func_start sub_020A7D34
sub_020A7D34: ; 0x020A7D34
	stmfd sp!, {r3, lr}
	ldrh lr, [r0, #0xc]
	ldrh ip, [r0, #0xe]
	mov r3, #0
	add r2, lr, #1
	cmp ip, r2
	bgt _020A7D5C
	ldrh r2, [r0, #0xa]
	cmp r2, lr
	movls r3, #1
_020A7D5C:
	cmp r3, #0
	moveq r2, #0
	beq _020A7D78
	sub r2, lr, ip
	add r2, r2, #1
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
_020A7D78:
	cmp r2, #1
	movhs r2, #1
	movlo r2, #0
	cmp r2, #0
	ldreq r0, _020A7DF0 ; =0x0000FFFE
	ldmeqia sp!, {r3, pc}
	ldr lr, [r0]
	ldr r3, _020A7DF4 ; =0x021C3B08
	mov r2, #0x540
	mla ip, lr, r2, r3
	ldr r3, [r1, #0]
	ldrh r2, [r0, #0xe]
	add ip, ip, #0x100
	mov r3, r3, asr #4
	add ip, ip, r2, lsl #5
	strh r3, [ip, #6]
	ldr r3, [r1, #4]
	mov r3, r3, asr #4
	strh r3, [ip, #0xe]
	ldr r3, [r1, #8]
	mov r3, r3, asr #4
	strh r3, [ip, #0x16]
	ldr r1, [r1, #0xc]
	mov r1, r1, asr #4
	strh r1, [ip, #0x1e]
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	mov r0, r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A7DF0: .word 0x0000FFFE
_020A7DF4: .word 0x021C3B08
	arm_func_end sub_020A7D34

	arm_func_start sub_020A7DF8
sub_020A7DF8: ; 0x020A7DF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _020A7E8C
	ldr r6, [r7, #0]
	ldr r1, _020A7FF4 ; =0x021C3B08
	mov r0, #0x540
	mla r1, r6, r0, r1
	ldrh r3, [r7, #4]
	ldrh r0, [r7, #6]
	add r5, r1, #0x100
	mov r4, r3, lsl #3
	sub r0, r0, r3
	add r0, r0, #1
	mov r0, r0, lsl #0x13
	mov r8, r0, lsr #0x10
	mov r2, r4, lsl #0x10
	mov r1, r8
	add r0, r5, r3, lsl #3
	mov r7, r2, lsr #0x10
	bl sub_020C2C54
	cmp r6, #0
	beq _020A7E64
	cmp r6, #1
	beq _020A7E78
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A7E64:
	mov r1, r7
	mov r2, r8
	add r0, r5, r4
	bl sub_020C0210
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A7E78:
	mov r1, r7
	mov r2, r8
	add r0, r5, r4
	bl sub_020C0264
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A7E8C:
	ldr r0, [r7, #0]
	ldr r2, _020A7FF4 ; =0x021C3B08
	mov r1, #0x540
	mla r2, r0, r1, r2
	ldrh r5, [r7, #4]
	ldrh r1, [r7, #6]
	ldr r3, _020A7FF8 ; =0x02100E90
	add r4, r2, #0x100
	sub r1, r1, r5
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r5, lsl #0x13
	add r6, r4, r5, lsl #3
	movs r5, r1, lsr #0x10
	mov r4, r2, lsr #0x10
	ldr sb, [r3, r0, lsl #2]
	mov sl, #0
	beq _020A7F0C
	mov r8, #6
_020A7ED8:
	mov r0, r6
	mov r1, r4
	mov r2, r8
	blx sb
	add r2, r4, #8
	add r0, sl, #1
	mov r1, r0, lsl #0x10
	mov r0, r2, lsl #0x10
	cmp r5, r1, lsr #16
	mov r4, r0, lsr #0x10
	add r6, r6, #8
	mov sl, r1, lsr #0x10
	bhi _020A7ED8
_020A7F0C:
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r3, #0
	add r0, r2, #1
	cmp r1, r0
	bgt _020A7F30
	ldrh r0, [r7, #0xa]
	cmp r0, r2
	movls r3, #1
_020A7F30:
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r7, #0]
	ldr r2, _020A7FF4 ; =0x021C3B08
	mov r1, #0x540
	mla r2, r0, r1, r2
	ldr r3, _020A7FF8 ; =0x02100E90
	ldrh r5, [r7, #0xa]
	ldrh r1, [r7, #0xc]
	add r4, r2, #0x100
	mov r2, r5, lsl #0x15
	sub r1, r1, r5
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	ldr r6, [r3, r0, lsl #2]
	add sl, r4, r5, lsl #5
	movs sb, r1, lsr #0x10
	mov r8, r2, lsr #0x10
	mov r7, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #2
	mov r4, r5
	mov fp, r5
_020A7F8C:
	mov r2, r5
	add r0, sl, #6
	add r1, r8, #6
	blx r6
	mov r2, r4
	add r0, sl, #0xe
	add r1, r8, #0xe
	blx r6
	add r0, sl, #0x16
	add r1, r8, #0x16
	mov r2, fp
	blx r6
	add r0, sl, #0x1e
	add r1, r8, #0x1e
	mov r2, #2
	blx r6
	add r0, r8, #0x20
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	add sl, sl, #0x20
	cmp sb, r0, lsr #16
	mov r7, r0, lsr #0x10
	bhi _020A7F8C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A7FF4: .word 0x021C3B08
_020A7FF8: .word 0x02100E90
	arm_func_end sub_020A7DF8

	arm_func_start sub_020A7FFC
sub_020A7FFC: ; 0x020A7FFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020A80B4
	ldrh r3, [r5, #6]
	ldrh r1, [r5, #8]
	mov r2, #0
	add r0, r3, #1
	cmp r1, r0
	bgt _020A8034
	ldrh r0, [r5, #4]
	cmp r0, r3
	movls r2, #1
_020A8034:
	cmp r2, #0
	moveq r4, #0
	beq _020A8054
	ldrh r0, [r5, #4]
	sub r0, r3, r0
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0xd
_020A8054:
	ldr r2, [r5, #0]
	ldr r1, _020A811C ; =0x021C3B08
	mov r0, #0x540
	mla r1, r2, r0, r1
	add r2, r1, #0x100
	ldrh r0, [r5, #4]
	mov r1, r4
	add r6, r2, r0, lsl #3
	mov r0, r6
	bl sub_020C2C1C
	ldr r0, _020A8120 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	mov r1, r6
	beq _020A80A4
	mov r3, r4
	mov r2, #0xc0
	bl sub_020C42D4
	b _020A8108
_020A80A4:
	mov r2, r4
	mov r0, #0xc0
	bl sub_020C4B4C
	b _020A8108
_020A80B4:
	ldr r2, [r5, #0]
	ldr r1, _020A811C ; =0x021C3B08
	mov r0, #0x540
	mla r1, r2, r0, r1
	ldrh r2, [r5, #4]
	ldrh r0, [r5, #6]
	add r1, r1, #0x100
	add r3, r1, r2, lsl #3
	sub r0, r0, r2
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r2, r0, lsr #0x10
	mov r0, #0
	beq _020A8108
	mov r1, #0xc0
_020A80F0:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	strh r1, [r3], #8
	mov r0, r0, lsr #0x10
	bhi _020A80F0
_020A8108:
	ldrh r0, [r5, #4]
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xe]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A811C: .word 0x021C3B08
_020A8120: .word 0x02101148
	arm_func_end sub_020A7FFC

	arm_func_start sub_020A8124
sub_020A8124: ; 0x020A8124
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A7DF8
	mov r0, r4
	bl sub_020A7FFC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A8124

	arm_func_start sub_020A813C
sub_020A813C: ; 0x020A813C
	ldrh ip, [r0, #6]
	ldrh r3, [r0, #8]
	mov r2, #0
	add r1, ip, #1
	cmp r3, r1
	bgt _020A8160
	ldrh r0, [r0, #4]
	cmp r0, ip
	movls r2, #1
_020A8160:
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	sub r0, ip, r3
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end sub_020A813C

	arm_func_start sub_020A8180
sub_020A8180: ; 0x020A8180
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bx lr
	arm_func_end sub_020A8180

	arm_func_start sub_020A818C
sub_020A818C: ; 0x020A818C
	mov r2, #0
	mvn r1, #0
_020A8194:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blt _020A8194
	bx lr
	arm_func_end sub_020A818C

	arm_func_start sub_020A81A8
sub_020A81A8: ; 0x020A81A8
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_020A81A8

	arm_func_start sub_020A81B0
sub_020A81B0: ; 0x020A81B0
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_020A81B0

	arm_func_start sub_020A81B8
sub_020A81B8: ; 0x020A81B8
	ldr r1, [r0, r1, lsl #2]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_020A81B8

	arm_func_start sub_020A81D0
sub_020A81D0: ; 0x020A81D0
	mov r3, #0
	mvn r2, #0
_020A81D8:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #3
	blt _020A81D8
	bx lr
	arm_func_end sub_020A81D0

	arm_func_start sub_020A81F0
sub_020A81F0: ; 0x020A81F0
	add r0, r0, r1, lsl #2
	str r2, [r0, #8]
	bx lr
	arm_func_end sub_020A81F0

	arm_func_start sub_020A81FC
sub_020A81FC: ; 0x020A81FC
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_020A81FC

	arm_func_start sub_020A8208
sub_020A8208: ; 0x020A8208
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #8]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_020A8208

	arm_func_start sub_020A8224
sub_020A8224: ; 0x020A8224
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r5, r2
	mov r6, r1
	mov r4, r3
	ldr r0, [r7, #8]
	beq _020A8288
	cmp r5, #1
	beq _020A8254
	cmp r5, #2
	beq _020A8270
	b _020A8288
_020A8254:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _020A8448 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
	b _020A8288
_020A8270:
	ldr r3, _020A844C ; =0x04001000
	ldr r1, _020A8448 ; =0xFFCFFFEF
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
_020A8288:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl sub_020C2C54
	cmp r5, #0
	beq _020A82B0
	cmp r5, #1
	beq _020A82CC
	cmp r5, #2
	beq _020A82E0
	b _020A82F0
_020A82B0:
	bl sub_020C0D34
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl sub_020C0D90
	bl sub_020C0ED0
	b _020A82F0
_020A82CC:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl sub_020C02BC
	b _020A82F0
_020A82E0:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl sub_020C0314
_020A82F0:
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrh r0, [r7, #2]
	bne _020A8408
	cmp r0, #0x10
	bgt _020A833C
	bge _020A8368
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A8378
_020A8318: ; jump table
	b _020A8378 ; case 0
	b _020A8348 ; case 1
	b _020A8350 ; case 2
	b _020A8378 ; case 3
	b _020A8358 ; case 4
	b _020A8378 ; case 5
	b _020A8378 ; case 6
	b _020A8378 ; case 7
	b _020A8360 ; case 8
_020A833C:
	cmp r0, #0x20
	beq _020A8370
	b _020A8378
_020A8348:
	mov r0, #0
	b _020A837C
_020A8350:
	mov r0, #1
	b _020A837C
_020A8358:
	mov r0, #2
	b _020A837C
_020A8360:
	mov r0, #3
	b _020A837C
_020A8368:
	mov r0, #4
	b _020A837C
_020A8370:
	mov r0, #5
	b _020A837C
_020A8378:
	mov r0, #0
_020A837C:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	cmp r0, #0x10
	bgt _020A83C0
	bge _020A83EC
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A83FC
_020A839C: ; jump table
	b _020A83FC ; case 0
	b _020A83CC ; case 1
	b _020A83D4 ; case 2
	b _020A83FC ; case 3
	b _020A83DC ; case 4
	b _020A83FC ; case 5
	b _020A83FC ; case 6
	b _020A83FC ; case 7
	b _020A83E4 ; case 8
_020A83C0:
	cmp r0, #0x20
	beq _020A83F4
	b _020A83FC
_020A83CC:
	mov r0, #0
	b _020A8400
_020A83D4:
	mov r0, #1
	b _020A8400
_020A83DC:
	mov r0, #2
	b _020A8400
_020A83E4:
	mov r0, #3
	b _020A8400
_020A83EC:
	mov r0, #4
	b _020A8400
_020A83F4:
	mov r0, #5
	b _020A8400
_020A83FC:
	mov r0, #0
_020A8400:
	str r0, [r4, #0x10]
	b _020A8414
_020A8408:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	str r0, [r4, #0x10]
_020A8414:
	ldr r1, [r7, #4]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl sub_020A81A8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A8448: .word 0xFFCFFFEF
_020A844C: .word 0x04001000
	arm_func_end sub_020A8224

	arm_func_start sub_020A8450
sub_020A8450: ; 0x020A8450
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r5, r2
	mov r6, r1
	mov r4, r3
	ldr r0, [r7, #8]
	beq _020A84B4
	cmp r5, #1
	beq _020A8480
	cmp r5, #2
	beq _020A849C
	b _020A84B4
_020A8480:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _020A8674 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
	b _020A84B4
_020A849C:
	ldr r3, _020A8678 ; =0x04001000
	ldr r1, _020A8674 ; =0xFFCFFFEF
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
_020A84B4:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl sub_020C2C54
	cmp r5, #0
	beq _020A84DC
	cmp r5, #1
	beq _020A84F8
	cmp r5, #2
	beq _020A850C
	b _020A851C
_020A84DC:
	bl sub_020C0D34
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl sub_020C0D90
	bl sub_020C0ED0
	b _020A851C
_020A84F8:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl sub_020C02BC
	b _020A851C
_020A850C:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl sub_020C0314
_020A851C:
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrh r0, [r7, #2]
	bne _020A8634
	cmp r0, #0x10
	bgt _020A8568
	bge _020A8594
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A85A4
_020A8544: ; jump table
	b _020A85A4 ; case 0
	b _020A8574 ; case 1
	b _020A857C ; case 2
	b _020A85A4 ; case 3
	b _020A8584 ; case 4
	b _020A85A4 ; case 5
	b _020A85A4 ; case 6
	b _020A85A4 ; case 7
	b _020A858C ; case 8
_020A8568:
	cmp r0, #0x20
	beq _020A859C
	b _020A85A4
_020A8574:
	mov r0, #0
	b _020A85A8
_020A857C:
	mov r0, #1
	b _020A85A8
_020A8584:
	mov r0, #2
	b _020A85A8
_020A858C:
	mov r0, #3
	b _020A85A8
_020A8594:
	mov r0, #4
	b _020A85A8
_020A859C:
	mov r0, #5
	b _020A85A8
_020A85A4:
	mov r0, #0
_020A85A8:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	cmp r0, #0x10
	bgt _020A85EC
	bge _020A8618
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A8628
_020A85C8: ; jump table
	b _020A8628 ; case 0
	b _020A85F8 ; case 1
	b _020A8600 ; case 2
	b _020A8628 ; case 3
	b _020A8608 ; case 4
	b _020A8628 ; case 5
	b _020A8628 ; case 6
	b _020A8628 ; case 7
	b _020A8610 ; case 8
_020A85EC:
	cmp r0, #0x20
	beq _020A8620
	b _020A8628
_020A85F8:
	mov r0, #0
	b _020A862C
_020A8600:
	mov r0, #1
	b _020A862C
_020A8608:
	mov r0, #2
	b _020A862C
_020A8610:
	mov r0, #3
	b _020A862C
_020A8618:
	mov r0, #4
	b _020A862C
_020A8620:
	mov r0, #5
	b _020A862C
_020A8628:
	mov r0, #0
_020A862C:
	str r0, [r4, #0x10]
	b _020A8640
_020A8634:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	str r0, [r4, #0x10]
_020A8640:
	ldr r1, [r7, #4]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl sub_020A81A8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A8674: .word 0xFFCFFFEF
_020A8678: .word 0x04001000
	arm_func_end sub_020A8450

	arm_func_start sub_020A867C
sub_020A867C: ; 0x020A867C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	mov r5, r2
	mov r4, r3
	bl sub_020C2C54
	cmp r5, #0
	ldr r0, [r7, #8]
	beq _020A86F0
	cmp r5, #1
	beq _020A86BC
	cmp r5, #2
	beq _020A86D8
	b _020A86F0
_020A86BC:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _020A8848 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
	b _020A86F0
_020A86D8:
	ldr r3, _020A884C ; =0x04001000
	ldr r1, _020A8848 ; =0xFFCFFFEF
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
_020A86F0:
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrh r0, [r7, #2]
	bne _020A8808
	cmp r0, #0x10
	bgt _020A873C
	bge _020A8768
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A8778
_020A8718: ; jump table
	b _020A8778 ; case 0
	b _020A8748 ; case 1
	b _020A8750 ; case 2
	b _020A8778 ; case 3
	b _020A8758 ; case 4
	b _020A8778 ; case 5
	b _020A8778 ; case 6
	b _020A8778 ; case 7
	b _020A8760 ; case 8
_020A873C:
	cmp r0, #0x20
	beq _020A8770
	b _020A8778
_020A8748:
	mov r0, #0
	b _020A877C
_020A8750:
	mov r0, #1
	b _020A877C
_020A8758:
	mov r0, #2
	b _020A877C
_020A8760:
	mov r0, #3
	b _020A877C
_020A8768:
	mov r0, #4
	b _020A877C
_020A8770:
	mov r0, #5
	b _020A877C
_020A8778:
	mov r0, #0
_020A877C:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	cmp r0, #0x10
	bgt _020A87C0
	bge _020A87EC
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A87FC
_020A879C: ; jump table
	b _020A87FC ; case 0
	b _020A87CC ; case 1
	b _020A87D4 ; case 2
	b _020A87FC ; case 3
	b _020A87DC ; case 4
	b _020A87FC ; case 5
	b _020A87FC ; case 6
	b _020A87FC ; case 7
	b _020A87E4 ; case 8
_020A87C0:
	cmp r0, #0x20
	beq _020A87F4
	b _020A87FC
_020A87CC:
	mov r0, #0
	b _020A8800
_020A87D4:
	mov r0, #1
	b _020A8800
_020A87DC:
	mov r0, #2
	b _020A8800
_020A87E4:
	mov r0, #3
	b _020A8800
_020A87EC:
	mov r0, #4
	b _020A8800
_020A87F4:
	mov r0, #5
	b _020A8800
_020A87FC:
	mov r0, #0
_020A8800:
	str r0, [r4, #0x10]
	b _020A8814
_020A8808:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	str r0, [r4, #0x10]
_020A8814:
	ldr r1, [r7, #4]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl sub_020A81A8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A8848: .word 0xFFCFFFEF
_020A884C: .word 0x04001000
	arm_func_end sub_020A867C

	arm_func_start sub_020A8850
sub_020A8850: ; 0x020A8850
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, [sb, #0xc]
	ldr r5, [sb, #8]
	mov r8, r1
	mov r7, r2
	mov r0, r4
	mov r1, r5
	mov r6, r3
	bl sub_020C2C54
	cmp r7, #0
	beq _020A890C
	cmp r7, #1
	beq _020A8894
	cmp r7, #2
	beq _020A88D0
	b _020A8924
_020A8894:
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _020A88BC
	bl sub_020C0AC4
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl sub_020C0B0C
	bl sub_020C0B78
	b _020A8924
_020A88BC:
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl sub_020C0160
	b _020A8924
_020A88D0:
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _020A88F8
	bl sub_020C0C78
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl sub_020C0C90
	bl sub_020C0CF4
	b _020A8924
_020A88F8:
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl sub_020C01B8
	b _020A8924
_020A890C:
	bl sub_020C0F1C
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl sub_020C0F50
	bl sub_020C0FBC
_020A8924:
	ldr r1, [sb]
	mov r0, r6
	str r1, [r6, #0]
	ldr r3, [sb, #4]
	mov r1, r7
	mov r2, r8
	str r3, [r6, #4]
	bl sub_020A81F0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020A8850

	arm_func_start sub_020A8948
sub_020A8948: ; 0x020A8948
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r0, [sl]
	str r1, [sp]
	cmp r0, #3
	ldr r0, [sp, #0x30]
	moveq r8, #0x20
	str r0, [sp, #0x30]
	ldr r0, [sp]
	mov sb, r2
	ldrh r0, [r0]
	mov fp, r3
	movne r8, #0x200
	str r0, [sp, #4]
	mov r7, #0
	movs r0, r0
	beq _020A8A7C
_020A8990:
	ldr r0, [sp]
	ldr r5, [sl, #0xc]
	ldr r1, [r0, #4]
	mov r0, r7, lsl #1
	ldrh r0, [r1, r0]
	mul r4, r8, r7
	mul r6, r8, r0
	ldr r1, [sl, #8]
	mov r0, r5
	bl sub_020C2C54
	cmp fp, #0
	beq _020A8A4C
	cmp fp, #1
	beq _020A89D4
	cmp fp, #2
	beq _020A8A10
	b _020A8A64
_020A89D4:
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _020A89FC
	bl sub_020C0AC4
	add r0, r5, r4
	mov r2, r8
	add r1, sb, r6
	bl sub_020C0B0C
	bl sub_020C0B78
	b _020A8A64
_020A89FC:
	mov r2, r8
	add r0, r5, r4
	add r1, sb, r6
	bl sub_020C0160
	b _020A8A64
_020A8A10:
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _020A8A38
	bl sub_020C0C78
	add r0, r5, r4
	mov r2, r8
	add r1, sb, r6
	bl sub_020C0C90
	bl sub_020C0CF4
	b _020A8A64
_020A8A38:
	mov r2, r8
	add r0, r5, r4
	add r1, sb, r6
	bl sub_020C01B8
	b _020A8A64
_020A8A4C:
	bl sub_020C0F1C
	add r0, r5, r4
	mov r2, r8
	add r1, sb, r6
	bl sub_020C0F50
	bl sub_020C0FBC
_020A8A64:
	add r0, r7, #1
	mov r1, r0, lsl #0x10
	ldr r0, [sp, #4]
	mov r7, r1, lsr #0x10
	cmp r0, r1, lsr #16
	bhi _020A8990
_020A8A7C:
	ldr r0, [sp, #0x30]
	ldr r2, [sl]
	mov r1, r0
	str r2, [r1, #0]
	ldr r4, [sl, #4]
	mov r3, r0
	mov r1, fp
	mov r2, sb
	str r4, [r3, #4]
	bl sub_020A81F0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020A8948

	arm_func_start sub_020A8AAC
sub_020A8AAC: ; 0x020A8AAC
	mov r2, #0
	mvn r1, #0
_020A8AB4:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blt _020A8AB4
	bx lr
	arm_func_end sub_020A8AAC

	arm_func_start sub_020A8AC8
sub_020A8AC8: ; 0x020A8AC8
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_020A8AC8

	arm_func_start sub_020A8AD0
sub_020A8AD0: ; 0x020A8AD0
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_020A8AD0

	arm_func_start sub_020A8AD8
sub_020A8AD8: ; 0x020A8AD8
	ldr r3, [r0, #0]
	cmp r3, #1
	bxne lr
	ldrh r3, [r0, #0x12]
	orr r3, r3, #8
	strh r3, [r0, #0x12]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	arm_func_end sub_020A8AD8

	arm_func_start sub_020A8AFC
sub_020A8AFC: ; 0x020A8AFC
	ldr r2, [r0, #0]
	cmp r2, #1
	bxne lr
	ldrh r2, [r0, #0x12]
	orr r2, r2, #4
	strh r2, [r0, #0x12]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end sub_020A8AFC

	arm_func_start sub_020A8B1C
sub_020A8B1C: ; 0x020A8B1C
	ldr r3, [r0, #0]
	cmp r3, #1
	bxne lr
	ldrh r3, [r0, #0x12]
	orr r3, r3, #2
	strh r3, [r0, #0x12]
	stmib r0, {r1, r2}
	bx lr
	arm_func_end sub_020A8B1C

	arm_func_start sub_020A8B3C
sub_020A8B3C: ; 0x020A8B3C
	ldr ip, _020A8B48 ; =sub_020A8B4C
	str r1, [r0, #0]
	bx ip
	; .align 2, 0
_020A8B48: .word sub_020A8B4C
	arm_func_end sub_020A8B3C

	arm_func_start sub_020A8B4C
sub_020A8B4C: ; 0x020A8B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #4
	mov r0, #0
	mov r2, #0x18
	bl sub_020C4AF0
	mov r0, #0x1000
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A8B4C

	arm_func_start sub_020A8B74
sub_020A8B74: ; 0x020A8B74
	mov r2, #0
	str r2, [r0, #0]
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	ldr ip, _020A8B94 ; =sub_020A8B3C
	add r0, r0, #0xc
	bx ip
	; .align 2, 0
_020A8B94: .word sub_020A8B3C
	arm_func_end sub_020A8B74

	arm_func_start sub_020A8B98
sub_020A8B98: ; 0x020A8B98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	ldrh r1, [r1, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020A763C
	mov r0, r4
	bl sub_020A763C
	mov r5, r0
	ldr r6, [r4, #0x34]
	ldrh r1, [r5]
	mov r0, r6
	bl sub_020A6F74
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x1c]
	add r0, r4, #0x3c
	ldr r2, [r1, #4]
	mov r1, #1
	and r7, r2, #0xff
	bl sub_020A8B3C
	cmp r7, #0
	beq _020A8C38
	cmp r7, #2
	bne _020A8C10
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x3c
	bl sub_020A8AD8
	b _020A8C38
_020A8C10:
	add r0, r4, #0x3c
	ldmib r5, {r1, r2}
	bl sub_020A8B1C
	ldrh r1, [r5, #2]
	add r0, r4, #0x3c
	bl sub_020A8AFC
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x3c
	bl sub_020A8AD8
_020A8C38:
	ldr r2, [r6, #0xc]
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x38]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	ldr r0, [r4, #0x38]
	add r3, r2, r1, lsl #3
	ldmia r3, {r1, r2}
	bl sub_020AB3A8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A8B98

	arm_func_start sub_020A8C88
sub_020A8C88: ; 0x020A8C88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	str r2, [r5, #0x34]
	mvn r2, #0
	add r0, r5, #0x3c
	mov r1, #1
	str r2, [r5, #0x38]
	bl sub_020A8B3C
	mov r0, r5
	bl sub_020A7834
	mov r0, r5
	mov r1, r4
	bl sub_020A8D48
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A8C88

	arm_func_start sub_020A8CC4
sub_020A8CC4: ; 0x020A8CC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r2
	ldr r2, [r4, #0xc]
	mov r5, r1
	ldr r1, [r2, #0]
	ldr r2, [sp, #0x34]
	str r1, [sp]
	ldr r1, [sp, #0x38]
	str r2, [sp, #4]
	mov r6, r3
	mov r7, r0
	ldr ip, [sp, #0x3c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r6
	str ip, [sp, #0xc]
	bl sub_020AB17C
	str r6, [r7, #0x38]
	str r4, [r7, #0x34]
	add r0, r7, #0x3c
	mov r1, #1
	str r6, [r7, #0x38]
	bl sub_020A8B3C
	mov r0, r7
	bl sub_020A7834
	mov r0, r7
	mov r1, r5
	bl sub_020A8D48
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A8CC4

	arm_func_start sub_020A8D48
sub_020A8D48: ; 0x020A8D48
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A78EC
	mov r0, r4
	bl sub_020A8B98
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A8D48

	arm_func_start sub_020A8D60
sub_020A8D60: ; 0x020A8D60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A7648
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_020A8B98
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A8D60

	arm_func_start sub_020A8D80
sub_020A8D80: ; 0x020A8D80
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A77FC
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_020A8B98
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A8D80

	arm_func_start sub_020A8DA0
sub_020A8DA0: ; 0x020A8DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldrh r5, [r2]
	ldr r4, [sp, #0x50]
	ldr sb, [sp, #0x48]
	str r4, [sp, #0x50]
	cmp r1, r5
	movhs r1, r5
	mov r4, #0
	cmp r1, #0
	str r4, [sp]
	bls _020A90E0
	ldrh r4, [sp, #0x4c]
	str r4, [sp, #4]
_020A8DD8:
	ldr r5, [sp]
	ldr r4, [sp]
	add r8, r0, r5, lsl #3
	mov r6, r5
	mov r5, #6
	mul r5, r6, r5
	ldr r7, [r2, #4]
	mov r4, r4, lsl #3
	add r6, r7, r5
	ldrh r5, [r7, r5]
	cmp r3, #0
	cmpeq sb, #0
	strh r5, [r0, r4]
	ldrh r4, [r6, #2]
	strh r4, [r8, #2]
	ldrh r4, [r6, #4]
	strh r4, [r8, #4]
	beq _020A90C4
	ldr r5, [r8]
	ldr r4, _020A90EC ; =0x01FF0000
	and r4, r5, r4
	mov r4, r4, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	cmp r4, #0xff
	orrgt r4, r4, #0xff00
	movgt r4, r4, lsl #0x10
	movgt r4, r4, asr #0x10
	mov r4, r4, lsl #0xc
	str r4, [sp, #0x18]
	ldr r4, [r8]
	and r4, r4, #0xff
	cmp r4, #0x7f
	orrgt r4, r4, #0xff00
	movgt r4, r4, lsl #0x10
	movgt r4, r4, asr #0x10
	mov r4, r4, lsl #0xc
	str r4, [sp, #0x1c]
	cmp r3, #0
	beq _020A9064
	ldr r6, [r8]
	and r5, r6, #0x300
	cmp r5, #0x100
	cmpne r5, #0x300
	andne r4, r6, #0x30000000
	orrne r5, r5, r4
	cmp r5, #0x300
	bne _020A8EE4
	ldr r4, _020A90F0 ; =0xC000C000
	ldr r7, _020A90F4 ; =0x020F9670
	and r5, r6, r4
	and r4, r5, #0xc000
	mov r6, r4, asr #0xe
	and r4, r5, #0xc0000000
	mov r4, r4, lsr #0x1e
	mov r4, r4, lsl #1
	add r7, r7, r6, lsl #3
	ldrh sl, [r4, r7]
	ldr r7, _020A90F8 ; =0x020F9658
	ldr r5, [sp, #0x18]
	add r6, r7, r6, lsl #3
	add r5, r5, sl, lsl #11
	str r5, [sp, #0x18]
	ldrh r4, [r4, r6]
	ldr r5, [sp, #0x1c]
	add r4, r5, r4, lsl #11
	str r4, [sp, #0x1c]
_020A8EE4:
	ldr sl, [r3, #8]
	ldr fp, [sp, #0x1c]
	ldr r4, [sp, #0x50]
	smull ip, fp, sl, fp
	cmp r4, #0
	movne r5, #0x300
	moveq r5, #0x100
	cmp r5, #0x300
	moveq r6, #1
	add r4, sp, #0x18
	movne r6, #0
	cmp r4, r4
	addeq r4, sp, #0x10
	adds sl, ip, #0x1000
	adc ip, fp, #0
	ldr r7, [r3, #0]
	ldr fp, [sp, #0x18]
	smlal sl, ip, r7, fp
	mov r7, sl, lsr #0xc
	orr r7, r7, ip, lsl #20
	str r7, [r4, #0]
	ldr sl, [r3, #0xc]
	ldr fp, [sp, #0x1c]
	ldr r7, [r3, #4]
	smull ip, fp, sl, fp
	adds ip, ip, #0x1000
	adc sl, fp, #0
	add fp, sp, #0x10
	cmp r4, fp
	ldr fp, [sp, #0x18]
	smlal ip, sl, r7, fp
	mov r7, ip, lsr #0xc
	orr r7, r7, sl, lsl #20
	str r7, [r4, #4]
	bne _020A8F80
	ldr r7, [sp, #0x10]
	ldr r4, [sp, #0x14]
	str r7, [sp, #0x18]
	str r4, [sp, #0x1c]
_020A8F80:
	cmp r5, #0x100
	cmpne r5, #0x300
	ldr r7, [r8]
	ldr r4, _020A90FC ; =0xC1FFFCFF
	beq _020A8FA0
	and r4, r7, r4
	orr r4, r4, r5
	b _020A8FB0
_020A8FA0:
	and r4, r7, r4
	orr r5, r4, r5
	ldr r4, [sp, #4]
	orr r4, r5, r4, lsl #25
_020A8FB0:
	str r4, [r8]
	cmp r6, #0
	ldr r6, [r8]
	ldr r5, _020A90F0 ; =0xC000C000
	ldr fp, [r3]
	and r7, r6, r5
	and r5, r7, #0xc000
	mov r6, r5, asr #0xe
	and r5, r7, #0xc0000000
	ldr r7, _020A90F4 ; =0x020F9670
	mov r5, r5, lsr #0x1e
	mov r5, r5, lsl #1
	add r7, r7, r6, lsl #3
	ldrh sl, [r5, r7]
	ldr r7, _020A90F8 ; =0x020F9658
	ldr r4, [sp, #0x18]
	add r6, r7, r6, lsl #3
	mov r7, sl, asr #1
	ldrh r6, [r5, r6]
	mov r5, r7, lsl #0xc
	rsb ip, r5, #0
	mov r6, r6, asr #1
	mla ip, fp, r7, ip
	ldr sl, [r3, #8]
	mov lr, r6, lsl #0xc
	mla fp, sl, r6, ip
	add r4, r4, fp
	str r4, [sp, #0x18]
	ldr sl, [r3, #4]
	rsb fp, lr, #0
	str sl, [sp, #0xc]
	ldr sl, [r3, #0xc]
	ldr ip, [sp, #0x1c]
	str sl, [sp, #8]
	ldr sl, [sp, #0xc]
	mla r7, sl, r7, fp
	ldr sl, [sp, #8]
	mla r6, sl, r6, r7
	add r6, ip, r6
	str r6, [sp, #0x1c]
	beq _020A9064
	sub r5, r4, r5
	sub r4, r6, lr
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
_020A9064:
	cmp sb, #0
	beq _020A908C
	ldr r6, [sp, #0x18]
	ldr r4, [sb]
	ldr r5, [sp, #0x1c]
	add r4, r6, r4
	str r4, [sp, #0x18]
	ldr r4, [sb, #4]
	add r4, r5, r4
	str r4, [sp, #0x1c]
_020A908C:
	ldr r6, [r8]
	ldr r5, _020A9100 ; =0xFE00FF00
	ldr r4, [sp, #0x18]
	and r6, r6, r5
	ldr r5, [sp, #0x1c]
	add r4, r4, #0x800
	add r5, r5, #0x800
	mov r5, r5, asr #0xc
	mov r4, r4, asr #0xc
	and r5, r5, #0xff
	mov r4, r4, lsl #0x17
	orr r5, r6, r5
	orr r4, r5, r4, lsr #7
	str r4, [r8]
_020A90C4:
	ldr r4, [sp]
	add r4, r4, #1
	mov r4, r4, lsl #0x10
	cmp r1, r4, lsr #16
	mov r4, r4, lsr #0x10
	str r4, [sp]
	bhi _020A8DD8
_020A90E0:
	mov r0, r1
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A90EC: .word 0x01FF0000
_020A90F0: .word 0xC000C000
_020A90F4: .word 0x020F9670
_020A90F8: .word 0x020F9658
_020A90FC: .word 0xC1FFFCFF
_020A9100: .word 0xFE00FF00
	arm_func_end sub_020A8DA0

	arm_func_start sub_020A9104
sub_020A9104: ; 0x020A9104
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r1
	str r0, [sp]
	str sl, [r0]
	ldr r0, [r0, #8]
	mov sb, r2
	cmp r0, #1
	bne _020A926C
	ldrh r1, [sl, #2]
	ldr r0, [sp]
	mov r4, #0
	ldr r5, [r0, #0xc]
	cmp r1, #0
	bls _020A9164
	mov r3, r4
	mov r0, #0x5c
_020A9144:
	mla r1, r4, r0, r5
	str r3, [r1, #0x58]
	ldrh r2, [sl, #2]
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	cmp r2, r1, lsr #16
	mov r4, r1, lsr #0x10
	bhi _020A9144
_020A9164:
	ldrh r0, [sl]
	mov r8, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9174:
	ldr r0, [sl, #4]
	mov r1, #0x5c
	add r6, r0, r8, lsl #3
	ldrh r0, [r6, #6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	mla r7, r0, r1, r5
	ldr r0, [r7, #0x58]
	cmp r0, #0
	bne _020A9250
	ldr r0, [sp]
	ldrh r1, [r6]
	ldr r0, [r0, #4]
	bl sub_020A6EF0
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl sub_020A8D48
	mov r0, #1
	str r0, [r7, #0xc]
	ldrh r0, [r6, #6]
	and r0, r0, #0xf
	cmp r0, #1
	bne _020A9248
	ldrh r3, [r4]
	mov r6, #0
	mov r1, r6
	cmp r3, #0
	bls _020A9208
	ldr r2, [r4, #0xc]
_020A91F0:
	add r0, r2, r1, lsl #3
	ldrh r0, [r0, #4]
	add r1, r1, #1
	cmp r1, r3
	add r6, r6, r0
	blo _020A91F0
_020A9208:
	mov r0, r7
	bl sub_020A78FC
	cmp r0, #0
	beq _020A9234
	mov r0, sb
	mov r1, r6
	bl sub_020E2178
	mov r0, r7
	mov r1, r1, lsl #0xc
	bl sub_020A8D60
	b _020A9248
_020A9234:
	cmp sb, r6
	movlo r6, sb
	mov r0, r7
	mov r1, r6, lsl #0xc
	bl sub_020A8D60
_020A9248:
	mov r0, #1
	str r0, [r7, #0x58]
_020A9250:
	ldrh r1, [sl]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020A9174
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A926C:
	ldr r0, [sp]
	ldrh r1, [sl]
	ldr fp, [r0, #0xc]
	mov r7, #0
	cmp r1, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9284:
	mov r0, #0x28
	mul r2, r7, r0
	ldr r3, [sl, #4]
	mov r0, r7, lsl #3
	ldrh r1, [r3, r0]
	ldr r0, [sp]
	ldr r6, [fp, r2]
	ldr r0, [r0, #4]
	add r5, r3, r7, lsl #3
	bl sub_020A6EF0
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl sub_020A8D48
	mov r0, #1
	str r0, [r6, #0xc]
	ldrh r0, [r5, #6]
	and r0, r0, #0xf
	cmp r0, #1
	bne _020A9344
	ldrh r3, [r4]
	mov r8, #0
	mov r1, r8
	cmp r3, #0
	bls _020A9304
	ldr r2, [r4, #0xc]
_020A92EC:
	add r0, r2, r1, lsl #3
	ldrh r0, [r0, #4]
	add r1, r1, #1
	cmp r1, r3
	add r8, r8, r0
	blo _020A92EC
_020A9304:
	mov r0, r6
	bl sub_020A78FC
	cmp r0, #0
	beq _020A9330
	mov r0, sb
	mov r1, r8
	bl sub_020E2178
	mov r0, r6
	mov r1, r1, lsl #0xc
	bl sub_020A8D60
	b _020A9344
_020A9330:
	cmp sb, r8
	movlo r8, sb
	mov r0, r6
	mov r1, r8, lsl #0xc
	bl sub_020A8D60
_020A9344:
	mov r0, #0x28
	mla r3, r7, r0, fp
	mov r0, #1
	str r0, [r3, #8]
	ldrsh r1, [r5, #2]
	ldrsh r2, [r5, #4]
	add r0, r3, #0xc
	bl sub_020A8AD8
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [sl]
	mov r7, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A9284
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020A9104

	arm_func_start sub_020A9380
sub_020A9380: ; 0x020A9380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_020A78EC
	mov r0, #0
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl sub_020A763C
	mov r5, r0
	ldrh r1, [r5]
	ldr r0, [r4, #0x44]
	bl sub_020A7100
	ldr r1, [r4, #0x1c]
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, r4, #0x48
	and r6, r1, #0xff
	mov r1, #1
	bl sub_020A8B3C
	cmp r6, #0
	beq _020A9424
	cmp r6, #2
	bne _020A93FC
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x48
	bl sub_020A8AD8
	b _020A9424
_020A93FC:
	add r0, r4, #0x48
	ldmib r5, {r1, r2}
	bl sub_020A8B1C
	ldrh r1, [r5, #2]
	add r0, r4, #0x48
	bl sub_020A8AFC
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x48
	bl sub_020A8AD8
_020A9424:
	ldrh r2, [r4, #0x30]
	mov r1, r7
	add r0, r4, #0x34
	bl sub_020A9104
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A9380

	arm_func_start sub_020A9438
sub_020A9438: ; 0x020A9438
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r4]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	bls _020A9484
_020A9454:
	mov r0, r4
	mov r1, r6
	bl sub_020A7100
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r5
	movhi r5, r0
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r6, r0, lsr #0x10
	bhi _020A9454
_020A9484:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A9438

	arm_func_start sub_020A948C
sub_020A948C: ; 0x020A948C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #1
	ldr r0, [r7, #0]
	mov r4, #0
	ldr r5, [r7, #0xc]
	bne _020A94EC
	ldrh r0, [r0, #2]
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x5c
_020A94C0:
	mla r0, r4, r8, r5
	mov r1, r6
	bl sub_020A8D60
	ldr r1, [r7, #0]
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #2]
	mov r4, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A94C0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A94EC:
	ldrh r0, [r0]
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x28
_020A94FC:
	mul r0, r4, r8
	ldr r0, [r5, r0]
	mov r1, r6
	bl sub_020A8D60
	ldr r1, [r7, #0]
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1]
	mov r4, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A94FC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020A948C

	arm_func_start sub_020A952C
sub_020A952C: ; 0x020A952C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r2, [r4, #0]
	mov r6, r1
	ldrh r5, [r2, #4]
	bl sub_020A7648
	cmp r0, #0
	beq _020A95FC
	ldrh r0, [r4, #0x30]
	add r0, r0, r5
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl sub_020A763C
	mov r5, r0
	ldrh r1, [r5]
	ldr r0, [r4, #0x44]
	bl sub_020A7100
	ldr r1, [r4, #0x1c]
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, r4, #0x48
	and r6, r1, #0xff
	mov r1, #1
	bl sub_020A8B3C
	cmp r6, #0
	beq _020A95E8
	cmp r6, #2
	bne _020A95C0
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x48
	bl sub_020A8AD8
	b _020A95E8
_020A95C0:
	add r0, r4, #0x48
	ldmib r5, {r1, r2}
	bl sub_020A8B1C
	ldrh r1, [r5, #2]
	add r0, r4, #0x48
	bl sub_020A8AFC
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x48
	bl sub_020A8AD8
_020A95E8:
	ldrh r2, [r4, #0x30]
	mov r1, r7
	add r0, r4, #0x34
	bl sub_020A9104
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A95FC:
	mov r1, r6
	add r0, r4, #0x34
	bl sub_020A948C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A952C

	arm_func_start sub_020A960C
sub_020A960C: ; 0x020A960C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_020A77FC
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldrneh r0, [r0, #4]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl sub_020A763C
	mov r5, r0
	ldrh r1, [r5]
	ldr r0, [r4, #0x44]
	bl sub_020A7100
	ldr r1, [r4, #0x1c]
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, r4, #0x48
	and r6, r1, #0xff
	mov r1, #1
	bl sub_020A8B3C
	cmp r6, #0
	beq _020A96AC
	cmp r6, #2
	bne _020A9684
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x48
	bl sub_020A8AD8
	b _020A96AC
_020A9684:
	add r0, r4, #0x48
	ldmib r5, {r1, r2}
	bl sub_020A8B1C
	ldrh r1, [r5, #2]
	add r0, r4, #0x48
	bl sub_020A8AFC
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x48
	bl sub_020A8AD8
_020A96AC:
	ldrh r2, [r4, #0x30]
	mov r1, r7
	add r0, r4, #0x34
	bl sub_020A9104
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A960C

	arm_func_start sub_020A96C0
sub_020A96C0: ; 0x020A96C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, #0
	str r5, [r0, #0x3c]
	ldr r7, [sp, #0x28]
	str r5, [r0, #0x34]
	mov sl, r1
	str r7, [r0, #0x38]
	str r0, [sp]
	movs r8, r3
	mov sb, r2
	str sl, [r0, #0x40]
	ldr fp, [sp, #0x2c]
	beq _020A9744
_020A96F4:
	mov r0, #0x28
	mul r4, r5, r0
	mov r1, #1
	add r0, sl, r4
	bl sub_020A8B74
	mov r0, #0x58
	mla r6, r5, r0, sb
	mov r0, r7
	mov r1, #0
	str r6, [sl, r4]
	bl sub_020A6EF0
	mov r1, r0
	mov r0, r6
	mov r2, fp
	bl sub_020A8C88
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, lsr #16
	mov r5, r0, lsr #0x10
	bhi _020A96F4
_020A9744:
	ldr r0, [sp]
	bl sub_020A7834
	ldr r0, [sp]
	ldr r3, [sp, #0x30]
	ldr r2, [sp]
	add r0, r0, #0x48
	mov r1, #1
	str r3, [r2, #0x44]
	bl sub_020A8B3C
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020A96C0

	arm_func_start sub_020A9778
sub_020A9778: ; 0x020A9778
	stmfd sp!, {r4, lr}
	ldr r0, _020A9800 ; =0x021C4AC8
	ldr ip, [r0, #0xc]
	ldr r1, [r0, #4]
	mov r0, #0x18
	mul r3, ip, r0
	cmp r1, #0
	beq _020A97B0
	ldr r1, _020A9804 ; =0x021C4C68
	mov r2, #0
	ldr r0, _020A9808 ; =0x021C4C6C
	str r2, [r1, r3]
	str r2, [r0, r3]
	b _020A97F0
_020A97B0:
	ldr r1, _020A980C ; =0x021C4C58
	mov r2, #0x1000
	str r2, [r1, r3]
	add r4, r1, r3
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, _020A9810 ; =0x021C4F58
	str r1, [r4, #8]
	str r2, [r4, #0xc]
	str r1, [r4, #0x10]
	add lr, r0, r3
	str r1, [r4, #0x14]
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
_020A97F0:
	ldr r0, _020A9814 ; =0x021C4AD8
	mov r1, #0
	str r1, [r0, ip, lsl #2]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A9800: .word 0x021C4AC8
_020A9804: .word 0x021C4C68
_020A9808: .word 0x021C4C6C
_020A980C: .word 0x021C4C58
_020A9810: .word 0x021C4F58
_020A9814: .word 0x021C4AD8
	arm_func_end sub_020A9778

	arm_func_start sub_020A9818
sub_020A9818: ; 0x020A9818
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020A993C ; =0x021C4AC8
	ldr r1, _020A9940 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	mov r2, #1
	mov r0, r0, lsl #0x10
	add r3, r1, r0, lsr #13
	ldrh r0, [r3, #4]
	cmp r0, #1
	cmpne r0, #2
	movne r2, #0
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020A993C ; =0x021C4AC8
	ldrh r4, [r3, #2]
	ldrh r5, [r0]
	mov r2, #0x10
	cmp r5, #0x1f
	addlo r1, r5, #1
	strloh r1, [r0]
	ldr r0, _020A9944 ; =0x021C5258
	strh r5, [r3]
	add r0, r0, r5, lsl #5
	add r1, r0, #0x10
	mvn r0, #0
	bl sub_020C4BB8
	ldr r0, _020A993C ; =0x021C4AC8
	ldr r1, [r0, #4]
	ldr ip, [r0, #0xc]
	cmp r1, #0
	ldreq r1, _020A9948 ; =0x021C4F58
	mov r0, #0x18
	mlaeq r1, ip, r0, r1
	beq _020A98C4
	mul r3, ip, r0
	ldr r1, _020A994C ; =0x021C4C68
	ldr r0, _020A9950 ; =0x02100EA4
	ldr r2, [r1, r3]
	ldr r1, _020A9954 ; =0x021C4C6C
	str r2, [r0, #0x18]
	ldr r2, [r1, r3]
	ldr r1, _020A9958 ; =0x02100EAC
	str r2, [r0, #0x1c]
_020A98C4:
	mov r2, ip, lsl #0x10
	ldr r0, _020A9940 ; =0x021C4B58
	mov r2, r2, lsr #0xd
	ldrh ip, [r0, r2]
	ldr lr, _020A9944 ; =0x021C5258
	ldr r3, [r1, #0]
	ldr r2, _020A993C ; =0x021C4AC8
	str r3, [lr, ip, lsl #5]
	ldr r3, [r1, #4]
	add ip, lr, ip, lsl #5
	str r3, [ip, #4]
	ldr r3, [r1, #8]
	ldr r2, [r2, #0xc]
	str r3, [ip, #8]
	ldr r3, [r1, #0xc]
	mov r1, r2, lsl #0x10
	str r3, [ip, #0xc]
	movs lr, r1, lsr #0x10
	ldmmiia sp!, {r3, r4, r5, pc}
	mov r1, #3
_020A9914:
	add r3, r0, lr, lsl #3
	ldrh r2, [r3, #2]
	mov ip, lr, lsl #3
	cmp r4, r2
	ldmneia sp!, {r3, r4, r5, pc}
	strh r1, [r3, #4]
	strh r5, [r0, ip]
	subs lr, lr, #1
	bpl _020A9914
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A993C: .word 0x021C4AC8
_020A9940: .word 0x021C4B58
_020A9944: .word 0x021C5258
_020A9948: .word 0x021C4F58
_020A994C: .word 0x021C4C68
_020A9950: .word 0x02100EA4
_020A9954: .word 0x021C4C6C
_020A9958: .word 0x02100EAC
	arm_func_end sub_020A9818

	arm_func_start sub_020A995C
sub_020A995C: ; 0x020A995C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020A9A58 ; =0x021C4AC8
	mov r6, r0
	ldr r0, [r2, #8]
	mov r5, r1
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _020A99EC
	ldr r0, [r2, #4]
	cmp r0, #0
	ldreq r2, [r2, #0xc]
	ldreq r1, _020A9A5C ; =0x021C4C58
	mov r0, #0x18
	mlaeq r1, r2, r0, r1
	beq _020A99C4
	ldr r1, [r2, #0xc]
	mul r3, r1, r0
	ldr r1, _020A9A60 ; =0x021C4C68
	ldr r0, _020A9A64 ; =0x02100EA4
	ldr r2, [r1, r3]
	ldr r1, _020A9A68 ; =0x021C4C6C
	str r2, [r0, #0x18]
	ldr r2, [r1, r3]
	ldr r1, _020A9A6C ; =0x02100EAC
	str r2, [r0, #0x1c]
_020A99C4:
	ldr r3, [r4, #0x34]
	mov r0, r5
	mov r2, r4
	blx r3
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x30]
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #1
	str r0, [r6, #0x30]
_020A99EC:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020A9A58 ; =0x021C4AC8
	ldr r1, [r0, #4]
	cmp r1, #0
	ldr r1, [r0, #0xc]
	ldreq r2, _020A9A5C ; =0x021C4C58
	mov r0, #0x18
	mlaeq r3, r1, r0, r2
	beq _020A9A3C
	mul r3, r1, r0
	ldr r1, _020A9A60 ; =0x021C4C68
	ldr r0, _020A9A64 ; =0x02100EA4
	ldr r2, [r1, r3]
	ldr r1, _020A9A68 ; =0x021C4C6C
	str r2, [r0, #0x18]
	ldr r1, [r1, r3]
	ldr r3, _020A9A6C ; =0x02100EAC
	str r1, [r0, #0x1c]
_020A9A3C:
	ldr r0, _020A9A58 ; =0x021C4AC8
	ldr r6, [r4, #0x38]
	ldr r0, [r0, #8]
	mov r1, r4
	mov r2, r5
	blx r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A9A58: .word 0x021C4AC8
_020A9A5C: .word 0x021C4C58
_020A9A60: .word 0x021C4C68
_020A9A64: .word 0x02100EA4
_020A9A68: .word 0x021C4C6C
_020A9A6C: .word 0x02100EAC
	arm_func_end sub_020A995C

	arm_func_start sub_020A9A70
sub_020A9A70: ; 0x020A9A70
	stmfd sp!, {r4, lr}
	ldr r3, _020A9ADC ; =0x021C4AC8
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r0, #0x74]
	ldr r4, [r1, #0x3c]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r4, [r3, #4]
	ldr ip, [r3, #0xc]
	cmp r4, #0
	ldreq lr, _020A9AE0 ; =0x021C4C58
	mov r3, #0x18
	mlaeq r3, ip, r3, lr
	beq _020A9AD0
	mul r4, ip, r3
	ldr r3, _020A9AE4 ; =0x021C4C68
	ldr ip, _020A9AE8 ; =0x02100EA4
	ldr lr, [r3, r4]
	ldr r3, _020A9AEC ; =0x021C4C6C
	str lr, [ip, #0x18]
	ldr lr, [r3, r4]
	ldr r3, _020A9AF0 ; =0x02100EAC
	str lr, [ip, #0x1c]
_020A9AD0:
	ldr ip, [r1, #0x3c]
	blx ip
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A9ADC: .word 0x021C4AC8
_020A9AE0: .word 0x021C4C58
_020A9AE4: .word 0x021C4C68
_020A9AE8: .word 0x02100EA4
_020A9AEC: .word 0x021C4C6C
_020A9AF0: .word 0x02100EAC
	arm_func_end sub_020A9A70

	arm_func_start sub_020A9AF4
sub_020A9AF4: ; 0x020A9AF4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r3, _020A9CC8 ; =0x021C4AC8
	mov r6, r0
	ldr r0, [r3, #8]
	mov r5, r1
	mov r4, r2
	bl sub_020AB02C
	cmp r0, #0
	beq _020A9B44
	ldrh r1, [r6, #0x3c]
	and r1, r1, #0xf000
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	bl sub_020A8180
	ldr r1, [r6, #0x3c]
	mov r0, r0, lsl #0x1c
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsr #16
	str r0, [r6, #0x3c]
_020A9B44:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	cmp r0, #0
	beq _020A9C50
	ldr r0, [r1, #0x84]
	tst r0, #1
	beq _020A9B7C
	ldrh r0, [r1, #0x88]
	ldr r1, [r6, #0x3c]
	bic r1, r1, #0xc00
	mov r0, r0, lsl #0x1e
	orr r0, r1, r0, lsr #20
	str r0, [r6, #0x3c]
_020A9B7C:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #2
	beq _020A9BA8
	ldrh r0, [r1, #0x8a]
	ldr r1, [r6, #0x3c]
	bic r1, r1, #0xf000
	mov r0, r0, lsl #0x1c
	orr r0, r1, r0, lsr #16
	str r0, [r6, #0x3c]
_020A9BA8:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #0x10
	beq _020A9BDC
	ldr r2, [r6, #0x3c]
	ldrh r0, [r1, #0x94]
	mov r1, r2, lsl #0x10
	bic r2, r2, #0xf000
	add r0, r0, r1, lsr #28
	mov r0, r0, lsl #0x1c
	orr r0, r2, r0, lsr #16
	str r0, [r6, #0x3c]
_020A9BDC:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #4
	beq _020A9C0C
	ldr r0, [r1, #0x90]
	cmp r0, #0
	ldr r0, [r6, #0x38]
	orrne r0, r0, #0x1000
	strne r0, [r6, #0x38]
	biceq r0, r0, #0x1000
	streq r0, [r6, #0x38]
_020A9C0C:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #8
	beq _020A9C50
	ldr r0, [r6, #0x38]
	ldrh r2, [r6, #0x3c]
	ldr r1, [r1, #0x8c]
	bic r0, r0, #0xc00
	orr r0, r0, r1, lsl #10
	str r0, [r6, #0x38]
	ldrh r0, [r6, #0x3c]
	and r1, r2, #0xf000
	mov r1, r1, asr #0xc
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r6, #0x3c]
_020A9C50:
	ldr r2, _020A9CC8 ; =0x021C4AC8
	ldr r0, [r2, #8]
	ldr r1, [r0, #0x74]
	ldr r3, [r1, #0x40]
	cmp r3, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r3, [r2, #4]
	cmp r3, #0
	ldr r3, [r2, #0xc]
	ldreq r6, _020A9CCC ; =0x021C4C58
	mov r2, #0x18
	mlaeq r6, r3, r2, r6
	beq _020A9CAC
	mul ip, r3, r2
	ldr r3, _020A9CD0 ; =0x021C4C68
	ldr r2, _020A9CD4 ; =0x02100EA4
	ldr r6, [r3, ip]
	ldr r3, _020A9CD8 ; =0x021C4C6C
	str r6, [r2, #0x18]
	ldr r3, [r3, ip]
	ldr r6, _020A9CDC ; =0x02100EAC
	str r3, [r2, #0x1c]
_020A9CAC:
	str r6, [sp]
	ldr r6, [r1, #0x40]
	mov r2, r5
	mov r3, r4
	blx r6
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020A9CC8: .word 0x021C4AC8
_020A9CCC: .word 0x021C4C58
_020A9CD0: .word 0x021C4C68
_020A9CD4: .word 0x02100EA4
_020A9CD8: .word 0x021C4C6C
_020A9CDC: .word 0x02100EAC
	arm_func_end sub_020A9AF4

	arm_func_start sub_020A9CE0
sub_020A9CE0: ; 0x020A9CE0
	stmfd sp!, {r3, r4, r5, lr}
	ldr lr, _020A9D5C ; =0x021C4AC8
	mov ip, r1
	ldr r0, [lr, #8]
	mov r3, r2
	ldr r1, [r0, #0x74]
	ldr r2, [r1, #0x44]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [lr, #4]
	cmp r2, #0
	ldreq lr, [lr, #0xc]
	ldreq r4, _020A9D60 ; =0x021C4C58
	mov r2, #0x18
	mlaeq r5, lr, r2, r4
	beq _020A9D48
	ldr r4, [lr, #0xc]
	mul r5, r4, r2
	ldr r4, _020A9D64 ; =0x021C4C68
	ldr r2, _020A9D68 ; =0x02100EA4
	ldr lr, [r4, r5]
	ldr r4, _020A9D6C ; =0x021C4C6C
	str lr, [r2, #0x18]
	ldr r4, [r4, r5]
	ldr r5, _020A9D70 ; =0x02100EAC
	str r4, [r2, #0x1c]
_020A9D48:
	str r5, [sp]
	ldr lr, [r1, #0x44]
	mov r2, ip
	blx lr
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A9D5C: .word 0x021C4AC8
_020A9D60: .word 0x021C4C58
_020A9D64: .word 0x021C4C68
_020A9D68: .word 0x02100EA4
_020A9D6C: .word 0x021C4C6C
_020A9D70: .word 0x02100EAC
	arm_func_end sub_020A9CE0

	arm_func_start sub_020A9D74
sub_020A9D74: ; 0x020A9D74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _020AA190 ; =0x021C4AC8
	mov r4, r0
	ldr fp, [r7, #8]
	ldr r0, [fp, #0x7c]
	ldr sb, [fp, #0x70]
	tst r0, #2
	beq _020A9F64
	ldr r0, [sb, #0x14]
	cmp r0, #0
	beq _020A9ED4
	ldr r0, [r7, #4]
	mov r1, #0
	cmp r0, #0
	bne _020A9DC8
	ldr r2, _020AA194 ; =0x02100EA4
	ldr r0, _020AA198 ; =0x0000FFFE
	ldrh r2, [r2]
	cmp r2, r0
	movne r0, #1
	bne _020A9DCC
_020A9DC8:
	mov r0, #0
_020A9DCC:
	cmp r0, #0
	beq _020A9E58
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r0, [r0, #0xf94]
	cmp r0, #0
	beq _020A9E34
	ldr r0, _020AA19C ; =0x021C55C8
	ldr r1, _020AA1A0 ; =0x021C565C
	ldrh r0, [r0, #0x90]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne _020A9E58
	bl sub_020A9818
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r2, _020AA1A4 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	ldr r1, _020AA19C ; =0x021C55C8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	ldrh r3, [r2, r0]
	ldr r5, _020AA1A8 ; =0x021C5258
	ldrh r2, [r1, #0x90]
	ldr r0, _020AA1A0 ; =0x021C565C
	add r1, r5, r3, lsl #5
	str r1, [r0, r2, lsl #2]
	b _020A9E58
_020A9E34:
	bl sub_020A9818
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r1, _020AA1A4 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	ldr r2, _020AA1A8 ; =0x021C5258
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	ldrh r0, [r1, r0]
	add r1, r2, r0, lsl #5
_020A9E58:
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r2, [r0, #4]
	cmp r2, #0
	ldr r2, [r0, #0xc]
	ldreq r3, _020AA1AC ; =0x021C4C58
	mov r0, #0x18
	mlaeq r0, r2, r0, r3
	beq _020A9E9C
	mul r5, r2, r0
	ldr r0, _020AA1B0 ; =0x021C4C68
	ldr r2, _020AA194 ; =0x02100EA4
	ldr r3, [r0, r5]
	ldr r0, _020AA1B4 ; =0x021C4C6C
	str r3, [r2, #0x18]
	ldr r3, [r0, r5]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r3, [r2, #0x1c]
_020A9E9C:
	bl sub_020AC41C
	ldr r1, _020AA194 ; =0x02100EA4
	mvn r0, #0
	ldr r1, [r1, #4]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020A9ECC
	bl sub_020AC6BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9ECC:
	bl sub_020AC608
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9ED4:
	ldr r2, [r7, #0xc]
	ldr r1, _020AA1BC ; =0x021C4AD8
	mov r0, fp
	ldr r1, [r1, r2, lsl #2]
	bl sub_020AC434
	mov r0, r7
	ldr r1, [r0, #4]
	cmp r1, #0
	ldr r1, [r0, #0xc]
	ldreq r2, _020AA1AC ; =0x021C4C58
	mov r0, #0x18
	mlaeq r0, r1, r0, r2
	beq _020A9F2C
	mul r3, r1, r0
	ldr r0, _020AA1B0 ; =0x021C4C68
	ldr r1, _020AA194 ; =0x02100EA4
	ldr r2, [r0, r3]
	ldr r0, _020AA1B4 ; =0x021C4C6C
	str r2, [r1, #0x18]
	ldr r2, [r0, r3]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r2, [r1, #0x1c]
_020A9F2C:
	bl sub_020AC3B4
	ldr r1, _020AA194 ; =0x02100EA4
	mvn r0, #0
	ldr r1, [r1, #4]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020A9F5C
	bl sub_020AC6BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9F5C:
	bl sub_020AC608
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9F64:
	cmp sb, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r8, _020AA1AC ; =0x021C4C58
	ldr r6, _020AA194 ; =0x02100EA4
	mvn r5, #0
_020A9F78:
	ldr r0, [sb, #0x10]
	cmp r0, #0
	beq _020AA180
	ldr r0, [sb, #0x14]
	ldr sl, [r7, #8]
	cmp r0, #0
	mov r1, sb
	beq _020AA0E4
	str sb, [sl, #0x74]
	mov r0, sl
	bl sub_020AC43C
	ldr r1, [sb, #0x28]
	ldr r2, [sb, #0x2c]
	mov r0, sl
	bl sub_020AC3A0
	mov r0, sl
	bl sub_020AC498
	ldr r0, [r7, #4]
	mov r1, #0
	cmp r0, #0
	bne _020A9FE0
	ldrh r2, [r6]
	ldr r0, _020AA198 ; =0x0000FFFE
	cmp r2, r0
	movne r0, #1
	bne _020A9FE4
_020A9FE0:
	mov r0, #0
_020A9FE4:
	cmp r0, #0
	beq _020AA06C
	ldr r0, [r7, #0xf94]
	cmp r0, #0
	beq _020AA04C
	ldr r0, _020AA19C ; =0x021C55C8
	ldrh r1, [r0, #0x90]
	ldr r0, _020AA1C0 ; =0x021C5658
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020AA06C
	bl sub_020A9818
	ldr r0, _020AA19C ; =0x021C55C8
	ldr r2, [r7, #0xc]
	ldrh r1, [r0, #0x90]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0xd
	ldr r0, _020AA1A4 ; =0x021C4B58
	ldrh r3, [r0, r2]
	ldr r0, _020AA1C0 ; =0x021C5658
	add r2, r0, r1, lsl #2
	ldr r0, _020AA1A8 ; =0x021C5258
	add r1, r0, r3, lsl #5
	str r1, [r2, #4]
	b _020AA06C
_020AA04C:
	bl sub_020A9818
	ldr r0, [r7, #0xc]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, _020AA1A4 ; =0x021C4B58
	ldrh r1, [r0, r1]
	ldr r0, _020AA1A8 ; =0x021C5258
	add r1, r0, r1, lsl #5
_020AA06C:
	ldr r0, [r7, #4]
	cmp r0, #0
	ldreq r2, [r7, #0xc]
	moveq r0, #0x18
	mlaeq r0, r2, r0, r8
	beq _020AA0A4
	ldr r3, [r7, #0xc]
	mov r2, #0x18
	mla sl, r3, r2, r8
	ldr r2, [sl, #0x10]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r2, [r6, #0x18]
	ldr r2, [sl, #0x14]
	str r2, [r6, #0x1c]
_020AA0A4:
	bl sub_020AC41C
	ldr r1, [r6, #4]
	cmp r1, r5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020AA0CC
	bl sub_020AC6BC
	b _020AA0D0
_020AA0CC:
	bl sub_020AC608
_020AA0D0:
	ldr r1, [r7, #8]
	mov r0, #0
	str r0, [r1, #0x74]
	bl sub_020AC5A4
	b _020AA180
_020AA0E4:
	mov r0, sl
	str sb, [sl, #0x74]
	bl sub_020AC43C
	mov r0, sl
	bl sub_020AC498
	ldr r2, [r7, #0xc]
	ldr r1, _020AA1BC ; =0x021C4AD8
	mov r0, fp
	ldr r1, [r1, r2, lsl #2]
	bl sub_020AC434
	ldr r0, [r7, #4]
	cmp r0, #0
	ldreq r1, [r7, #0xc]
	moveq r0, #0x18
	mlaeq r0, r1, r0, r8
	beq _020AA144
	ldr r2, [r7, #0xc]
	mov r1, #0x18
	mla r3, r2, r1, r8
	ldr r1, [r3, #0x10]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r1, [r6, #0x18]
	ldr r1, [r3, #0x14]
	str r1, [r6, #0x1c]
_020AA144:
	bl sub_020AC3B4
	ldr r1, [r6, #4]
	cmp r1, r5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020AA16C
	bl sub_020AC6BC
	b _020AA170
_020AA16C:
	bl sub_020AC608
_020AA170:
	ldr r1, [r7, #8]
	mov r0, #0
	str r0, [r1, #0x74]
	bl sub_020AC5A4
_020AA180:
	ldr sb, [sb, #0x30]
	cmp sb, #0
	bne _020A9F78
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AA190: .word 0x021C4AC8
_020AA194: .word 0x02100EA4
_020AA198: .word 0x0000FFFE
_020AA19C: .word 0x021C55C8
_020AA1A0: .word 0x021C565C
_020AA1A4: .word 0x021C4B58
_020AA1A8: .word 0x021C5258
_020AA1AC: .word 0x021C4C58
_020AA1B0: .word 0x021C4C68
_020AA1B4: .word 0x021C4C6C
_020AA1B8: .word 0x02100EAC
_020AA1BC: .word 0x021C4AD8
_020AA1C0: .word 0x021C5658
	arm_func_end sub_020A9D74

	arm_func_start sub_020AA1C4
sub_020AA1C4: ; 0x020AA1C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrh r0, [r5, #0x4e]
	ldr r4, [r5, #0x30]
	cmp r0, #0
	bne _020AA224
	ldr r2, [r5, #0x38]
	mvn r0, #0
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AA218
	ldr r1, _020AA314 ; =0x02100EA4
	mov r0, r4
	str r2, [r1, #4]
	bl sub_020A9D74
	ldr r0, _020AA314 ; =0x02100EA4
	mvn r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020AA218:
	mov r0, r4
	bl sub_020A9D74
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020AA224:
	bl sub_020AAA48
	ldrh r0, [r5, #0x4e]
	tst r0, #8
	beq _020AA274
	ldr r0, _020AA318 ; =0x021C4AC8
	ldrsh r7, [r5, #0x4a]
	ldr r0, [r0, #8]
	ldrsh r6, [r5, #0x48]
	bl sub_020AC444
	cmp r0, #0
	ldr r0, _020AA318 ; =0x021C4AC8
	rsbne r6, r6, #0
	ldr r0, [r0, #8]
	bl sub_020AC458
	cmp r0, #0
	rsbne r7, r7, #0
	mov r0, r6, lsl #0xc
	mov r1, r7, lsl #0xc
	mov r2, #0
	bl sub_020AACBC
_020AA274:
	ldrh r0, [r5, #0x4e]
	tst r0, #4
	beq _020AA2A8
	ldrh r0, [r5, #0x4c]
	ldr r2, _020AA31C ; =0x020F983C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl sub_020AAF0C
_020AA2A8:
	ldrh r0, [r5, #0x4e]
	tst r0, #2
	beq _020AA2C4
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	mov r2, #0x1000
	bl sub_020AADB8
_020AA2C4:
	ldr r2, [r5, #0x38]
	mvn r0, #0
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AA300
	ldr r1, _020AA314 ; =0x02100EA4
	mov r0, r4
	str r2, [r1, #4]
	bl sub_020A9D74
	ldr r0, _020AA314 ; =0x02100EA4
	mvn r1, #0
	str r1, [r0, #4]
	b _020AA308
_020AA300:
	mov r0, r4
	bl sub_020A9D74
_020AA308:
	mov r0, #1
	bl sub_020AAC6C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AA314: .word 0x02100EA4
_020AA318: .word 0x021C4AC8
_020AA31C: .word 0x020F983C
	arm_func_end sub_020AA1C4

	arm_func_start sub_020AA320
sub_020AA320: ; 0x020AA320
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r5, #0]
	bl sub_020AAA48
	ldrh r0, [r5, #0x1e]
	tst r0, #8
	beq _020AA388
	ldr r0, _020AA3EC ; =0x021C4AC8
	ldrsh r7, [r5, #0x1a]
	ldr r0, [r0, #8]
	ldrsh r6, [r5, #0x18]
	bl sub_020AC444
	cmp r0, #0
	ldr r0, _020AA3EC ; =0x021C4AC8
	rsbne r6, r6, #0
	ldr r0, [r0, #8]
	bl sub_020AC458
	cmp r0, #0
	rsbne r7, r7, #0
	mov r0, r6, lsl #0xc
	mov r1, r7, lsl #0xc
	mov r2, #0
	bl sub_020AACBC
_020AA388:
	ldrh r0, [r5, #0x1e]
	tst r0, #4
	beq _020AA3BC
	ldrh r0, [r5, #0x1c]
	ldr r2, _020AA3F0 ; =0x020F983C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl sub_020AAF0C
_020AA3BC:
	ldrh r0, [r5, #0x1e]
	tst r0, #2
	beq _020AA3D8
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	mov r2, #0x1000
	bl sub_020AADB8
_020AA3D8:
	mov r0, r4
	bl sub_020AA1C4
	mov r0, #1
	bl sub_020AAC6C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AA3EC: .word 0x021C4AC8
_020AA3F0: .word 0x020F983C
	arm_func_end sub_020AA320

	arm_func_start sub_020AA3F4
sub_020AA3F4: ; 0x020AA3F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_020AC354
	mov r6, #0
	str r6, [r4, #0x70]
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	str r6, [r4, #0x80]
	str r6, [r4, #0x84]
	strh r6, [r4, #0x88]
	strh r6, [r4, #0x8a]
	str r6, [r4, #0x8c]
	str r6, [r4, #0x90]
	strh r6, [r4, #0x94]
	ldr r1, _020AA49C ; =0x021C4AC8
	ldr r2, _020AA4A0 ; =0x0000FFFE
	ldr r0, _020AA4A4 ; =0x02100EA4
	ldr r7, _020AA4A8 ; =0x021C5258
	str r6, [r1, #0xc]
	strh r2, [r0]
	mvn r5, #0
	mov r4, #0x10
_020AA450:
	mov r0, r5
	mov r2, r4
	add r1, r7, #0x10
	bl sub_020C4BB8
	add r6, r6, #1
	cmp r6, #0x20
	add r7, r7, #0x20
	blt _020AA450
	ldr r3, _020AA49C ; =0x021C4AC8
	mov r0, #0
	strh r0, [r3]
	ldr r1, _020AA4AC ; =0x021C4B58
	mov r2, #0x100
	strh r0, [r3, #2]
	bl sub_020C4BB8
	ldr r0, _020AA49C ; =0x021C4AC8
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AA49C: .word 0x021C4AC8
_020AA4A0: .word 0x0000FFFE
_020AA4A4: .word 0x02100EA4
_020AA4A8: .word 0x021C5258
_020AA4AC: .word 0x021C4B58
	arm_func_end sub_020AA3F4

	arm_func_start sub_020AA4B0
sub_020AA4B0: ; 0x020AA4B0
	ldr r2, [r0, #0x70]
	str r2, [r1, #0x30]
	str r1, [r0, #0x70]
	bx lr
	arm_func_end sub_020AA4B0

	arm_func_start sub_020AA4C0
sub_020AA4C0: ; 0x020AA4C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0x48
	bl sub_020C4AF0
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #3
	ldr r1, _020AA50C ; =sub_020A995C
	str r0, [r4, #0x14]
	ldr r0, _020AA510 ; =sub_020A9A70
	str r1, [r4, #0x18]
	ldr r1, _020AA514 ; =sub_020A9AF4
	str r0, [r4, #0x1c]
	ldr r0, _020AA518 ; =sub_020A9CE0
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AA50C: .word sub_020A995C
_020AA510: .word sub_020A9A70
_020AA514: .word sub_020A9AF4
_020AA518: .word sub_020A9CE0
	arm_func_end sub_020AA4C0

	arm_func_start sub_020AA51C
sub_020AA51C: ; 0x020AA51C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020AA5AC ; =0x021C4AC8
	mov r4, #0
	str r0, [r5, #8]
	ldr r1, _020AA5B0 ; =0x0000FFFE
	ldr r0, _020AA5B4 ; =0x02100EA4
	str r4, [r5, #0xc]
	strh r1, [r0]
	ldrh r0, [r5]
	cmp r0, #0
	ble _020AA578
	ldr r8, _020AA5B8 ; =0x021C5258
	mvn r7, #0
	mov r6, #0x10
_020AA554:
	mov r0, r7
	mov r2, r6
	add r1, r8, #0x10
	bl sub_020C4BB8
	ldrh r0, [r5]
	add r4, r4, #1
	add r8, r8, #0x20
	cmp r4, r0
	blt _020AA554
_020AA578:
	ldr r3, _020AA5AC ; =0x021C4AC8
	mov r0, #0
	strh r0, [r3]
	ldr r1, _020AA5BC ; =0x021C4B58
	mov r2, #0x100
	strh r0, [r3, #2]
	bl sub_020C4BB8
	ldr r0, _020AA5C0 ; =0x04000444
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x10]
	bl sub_020A9778
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020AA5AC: .word 0x021C4AC8
_020AA5B0: .word 0x0000FFFE
_020AA5B4: .word 0x02100EA4
_020AA5B8: .word 0x021C5258
_020AA5BC: .word 0x021C4B58
_020AA5C0: .word 0x04000444
	arm_func_end sub_020AA51C

	arm_func_start sub_020AA5C4
sub_020AA5C4: ; 0x020AA5C4
	stmfd sp!, {r3, lr}
	ldr r1, _020AA628 ; =0x04000448
	mov r2, #1
	ldr r0, _020AA62C ; =0x021C4AC8
	str r2, [r1, #0]
	ldr r3, [r0, #8]
	ldr r2, [r3, #0x7c]
	cmp r2, #0
	beq _020AA618
	tst r2, #1
	movne r1, #0
	strne r1, [r0, #4]
	tst r2, #2
	beq _020AA608
	mov r0, #0
	str r0, [r3, #0x74]
	bl sub_020AC5A4
_020AA608:
	ldr r0, _020AA62C ; =0x021C4AC8
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0x7c]
_020AA618:
	ldr r0, _020AA62C ; =0x021C4AC8
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AA628: .word 0x04000448
_020AA62C: .word 0x021C4AC8
	arm_func_end sub_020AA5C4

	arm_func_start sub_020AA630
sub_020AA630: ; 0x020AA630
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020AA694 ; =0x021C4AC8
	mov r5, r0
	ldr r1, [r1, #8]
	ldr r1, [r1, #0x80]
	cmp r1, #0
	beq _020AA68C
	bl sub_020AB70C
	mov r4, r0
	mov r0, #1
	bl sub_020AB6D8
	ldr r0, _020AA694 ; =0x021C4AC8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	bl sub_020AB6FC
	mov r0, r5
	bl sub_020AA1C4
	mov r0, #0
	bl sub_020AB6D8
	mov r0, r4
	bl sub_020AB6FC
	bl sub_020AB6E8
	ldmia sp!, {r3, r4, r5, pc}
_020AA68C:
	bl sub_020AA1C4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AA694: .word 0x021C4AC8
	arm_func_end sub_020AA630

	arm_func_start sub_020AA698
sub_020AA698: ; 0x020AA698
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _020AA894
	ldr r0, [r5, #0]
	mov r2, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _020AA6EC
	ldr r3, _020AA960 ; =0x021C5658
	mov r4, r2
_020AA6C8:
	add r0, r3, r2, lsl #2
	str r4, [r0, #4]
	ldr r0, [r5, #0]
	add r2, r2, #1
	ldrh r1, [r0, #2]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA6C8
_020AA6EC:
	ldr r6, _020AA964 ; =0x021C4AC8
	mov r0, #1
	str r0, [r6, #0xf94]
	ldr r0, [r6, #8]
	mov sl, #0
	ldr r0, [r0, #0x80]
	cmp r0, #0
	beq _020AA7E4
	bl sub_020AB70C
	str r0, [sp]
	mov r0, #1
	bl sub_020AB6D8
	mov r0, r6
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	bl sub_020AB6FC
	ldr r2, [r5, #0]
	ldrh r0, [r2]
	cmp r0, #0
	bls _020AA7CC
	ldr fp, _020AA968 ; =0x021C55C8
_020AA740:
	ldr r0, [r2, #4]
	ldr r8, [r5, #0xc]
	add r7, r0, sl, lsl #3
	ldrh r0, [r7, #6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #8
	mov sb, r0, lsr #0x10
	strh sb, [fp, #0x90]
	bl sub_020AAA48
	ldrsh r4, [r7, #4]
	ldr r0, [r6, #8]
	ldrsh r7, [r7, #2]
	bl sub_020AC444
	cmp r0, #0
	ldr r0, [r6, #8]
	rsbne r7, r7, #0
	bl sub_020AC458
	cmp r0, #0
	rsbne r4, r4, #0
	mov r2, #0
	mov r0, r7, lsl #0xc
	mov r1, r4, lsl #0xc
	bl sub_020AACBC
	mov r0, #0x5c
	mla r0, sb, r0, r8
	bl sub_020AA1C4
	mov r0, #1
	bl sub_020AAC6C
	ldr r2, [r5, #0]
	add r0, sl, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r2]
	mov sl, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA740
_020AA7CC:
	mov r0, #0
	bl sub_020AB6D8
	ldr r0, [sp]
	bl sub_020AB6FC
	bl sub_020AB6E8
	b _020AA884
_020AA7E4:
	ldr r2, [r5, #0]
	ldrh r0, [r2]
	cmp r0, #0
	bls _020AA884
	ldr fp, _020AA968 ; =0x021C55C8
_020AA7F8:
	ldr r0, [r2, #4]
	ldr r8, [r5, #0xc]
	add r7, r0, sl, lsl #3
	ldrh r0, [r7, #6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #8
	mov sb, r0, lsr #0x10
	strh sb, [fp, #0x90]
	bl sub_020AAA48
	ldrsh r4, [r7, #4]
	ldr r0, [r6, #8]
	ldrsh r7, [r7, #2]
	bl sub_020AC444
	cmp r0, #0
	ldr r0, [r6, #8]
	rsbne r7, r7, #0
	bl sub_020AC458
	cmp r0, #0
	rsbne r4, r4, #0
	mov r2, #0
	mov r0, r7, lsl #0xc
	mov r1, r4, lsl #0xc
	bl sub_020AACBC
	mov r0, #0x5c
	mla r0, sb, r0, r8
	bl sub_020AA1C4
	mov r0, #1
	bl sub_020AAC6C
	ldr r2, [r5, #0]
	add r0, sl, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r2]
	mov sl, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA7F8
_020AA884:
	ldr r0, _020AA964 ; =0x021C4AC8
	mov r1, #0
	str r1, [r0, #0xf94]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AA894:
	ldr r0, _020AA964 ; =0x021C4AC8
	ldr r4, [r5, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	cmp r0, #0
	beq _020AA920
	bl sub_020AB70C
	mov r6, r0
	mov r0, #1
	bl sub_020AB6D8
	ldr r0, _020AA964 ; =0x021C4AC8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	bl sub_020AB6FC
	ldr r0, [r5, #0]
	mov r7, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _020AA908
	mov r8, #0x28
_020AA8E4:
	mla r0, r7, r8, r4
	bl sub_020AA320
	ldr r1, [r5, #0]
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1]
	mov r7, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA8E4
_020AA908:
	mov r0, #0
	bl sub_020AB6D8
	mov r0, r6
	bl sub_020AB6FC
	bl sub_020AB6E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AA920:
	ldr r0, [r5, #0]
	mov r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, #0x28
_020AA938:
	mla r0, r6, r7, r4
	bl sub_020AA320
	ldr r1, [r5, #0]
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1]
	mov r6, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA938
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AA960: .word 0x021C5658
_020AA964: .word 0x021C4AC8
_020AA968: .word 0x021C55C8
	arm_func_end sub_020AA698

	arm_func_start sub_020AA96C
sub_020AA96C: ; 0x020AA96C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r4, #0x5a]
	cmp r0, #0
	bne _020AA98C
	add r0, r4, #0x34
	bl sub_020AA698
	ldmia sp!, {r4, r5, r6, pc}
_020AA98C:
	bl sub_020AAA48
	ldrh r0, [r4, #0x5a]
	tst r0, #8
	beq _020AA9DC
	ldr r0, _020AAA40 ; =0x021C4AC8
	ldrsh r6, [r4, #0x56]
	ldr r0, [r0, #8]
	ldrsh r5, [r4, #0x54]
	bl sub_020AC444
	cmp r0, #0
	ldr r0, _020AAA40 ; =0x021C4AC8
	rsbne r5, r5, #0
	ldr r0, [r0, #8]
	bl sub_020AC458
	cmp r0, #0
	rsbne r6, r6, #0
	mov r0, r5, lsl #0xc
	mov r1, r6, lsl #0xc
	mov r2, #0
	bl sub_020AACBC
_020AA9DC:
	ldrh r0, [r4, #0x5a]
	tst r0, #4
	beq _020AAA10
	ldrh r0, [r4, #0x58]
	ldr r2, _020AAA44 ; =0x020F983C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl sub_020AAF0C
_020AAA10:
	ldrh r0, [r4, #0x5a]
	tst r0, #2
	beq _020AAA2C
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	mov r2, #0x1000
	bl sub_020AADB8
_020AAA2C:
	add r0, r4, #0x34
	bl sub_020AA698
	mov r0, #1
	bl sub_020AAC6C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AAA40: .word 0x021C4AC8
_020AAA44: .word 0x020F983C
	arm_func_end sub_020AA96C

	arm_func_start sub_020AAA48
sub_020AAA48: ; 0x020AAA48
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r1, [r1, #0x7c]
	tst r1, #1
	bne _020AAB88
	ldr r1, [r0, #0xc]
	mov r0, r1, lsl #0x10
	add r6, r1, #1
	cmp r6, #0x20
	mov r5, r0, lsr #0x10
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	beq _020AAB28
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020AAACC
	ldr r3, [r0, #0xc]
	mov r0, #0x18
	mul r8, r3, r0
	ldr r4, _020AAC50 ; =0x021C4C68
	ldr r1, _020AAC54 ; =0x021C4AD8
	mul r7, r6, r0
	ldr r2, [r4, r8]
	ldr r0, [r1, r3, lsl #2]
	ldr r3, _020AAC58 ; =0x021C4C6C
	str r2, [r4, r7]
	ldr r2, [r3, r8]
	str r0, [r1, r6, lsl #2]
	str r2, [r3, r7]
	b _020AAB20
_020AAACC:
	ldr r4, [r0, #0xc]
	mov r0, #0x18
	mul lr, r4, r0
	ldr r1, _020AAC5C ; =0x021C4C58
	mul ip, r6, r0
	ldr r8, _020AAC60 ; =0x021C4F58
	add sl, r1, lr
	ldr r7, _020AAC54 ; =0x021C4AD8
	add sb, r1, ip
	ldmia sl!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	ldmia sl, {r0, r1}
	stmia sb, {r0, r1}
	add sb, r8, lr
	ldr r4, [r7, r4, lsl #2]
	add r8, r8, ip
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	str r4, [r7, r6, lsl #2]
	ldmia sb, {r0, r1}
	stmia r8, {r0, r1}
_020AAB20:
	ldr r0, _020AAC4C ; =0x021C4AC8
	str r6, [r0, #0xc]
_020AAB28:
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r2, _020AAC64 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	mov r6, r5, lsl #3
	mov r0, r0, lsl #0x10
	add r4, r2, r5, lsl #3
	mov r3, r0, lsr #0x10
	mov r5, r3, lsl #3
	ldrh r1, [r2, r6]
	ldrh r0, [r4, #2]
	add r3, r2, r3, lsl #3
	strh r1, [r2, r5]
	strh r0, [r3, #2]
	ldrh r2, [r4, #4]
	ldrh r0, [r4, #6]
	ldr r1, _020AAC68 ; =0x021C4B5C
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldrh r0, [r1, r6]
	cmp r0, #1
	moveq r0, #2
	streqh r0, [r1, r5]
	strneh r0, [r1, r5]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020AAB88:
	ldr r0, [r0, #0xc]
	add r4, r0, #1
	cmp r4, #0x20
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020AABEC
	ldr r3, [r0, #0xc]
	mov r0, #0x18
	mul r7, r3, r0
	ldr r5, _020AAC50 ; =0x021C4C68
	ldr r1, _020AAC54 ; =0x021C4AD8
	mul r6, r4, r0
	ldr r2, [r5, r7]
	ldr r0, [r1, r3, lsl #2]
	ldr r3, _020AAC58 ; =0x021C4C6C
	str r2, [r5, r6]
	ldr r2, [r3, r7]
	str r0, [r1, r4, lsl #2]
	str r2, [r3, r6]
	b _020AAC40
_020AABEC:
	ldr sb, [r0, #0xc]
	mov r0, #0x18
	mul lr, sb, r0
	ldr r1, _020AAC5C ; =0x021C4C58
	mul r8, r4, r0
	ldr ip, _020AAC60 ; =0x021C4F58
	add r5, r1, lr
	ldr r6, _020AAC54 ; =0x021C4AD8
	add r7, r1, r8
	ldmia r5!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	ldr r5, [r6, sb, lsl #2]
	add lr, ip, lr
	stmia r7, {r0, r1}
	add ip, ip, r8
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	str r5, [r6, r4, lsl #2]
_020AAC40:
	ldr r0, _020AAC4C ; =0x021C4AC8
	str r4, [r0, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020AAC4C: .word 0x021C4AC8
_020AAC50: .word 0x021C4C68
_020AAC54: .word 0x021C4AD8
_020AAC58: .word 0x021C4C6C
_020AAC5C: .word 0x021C4C58
_020AAC60: .word 0x021C4F58
_020AAC64: .word 0x021C4B58
_020AAC68: .word 0x021C4B5C
	arm_func_end sub_020AAA48

	arm_func_start sub_020AAC6C
sub_020AAC6C: ; 0x020AAC6C
	ldr r0, _020AACB0 ; =0x021C4AC8
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	cmp r0, #0
	bxne lr
	ldr r1, _020AACB0 ; =0x021C4AC8
	ldr r0, _020AACB4 ; =0x02100EA4
	ldr r3, [r1, #0xc]
	ldrh r2, [r0]
	sub r3, r3, #1
	str r3, [r1, #0xc]
	cmp r2, r3
	ldrgt r1, _020AACB8 ; =0x0000FFFE
	strgth r1, [r0]
	bx lr
	; .align 2, 0
_020AACB0: .word 0x021C4AC8
_020AACB4: .word 0x02100EA4
_020AACB8: .word 0x0000FFFE
	arm_func_end sub_020AAC6C

	arm_func_start sub_020AACBC
sub_020AACBC: ; 0x020AACBC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r3, _020AADA0 ; =0x021C4AC8
	mov r4, r2
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _020AAD1C
	ldr r2, [r3, #0xc]
	mov r3, #0x18
	mul r6, r2, r3
	ldr r5, _020AADA4 ; =0x021C4C68
	ldr r3, _020AADA8 ; =0x021C4AD8
	ldr ip, [r5, r6]
	ldr lr, _020AADAC ; =0x021C4C6C
	add r0, ip, r0
	str r0, [r5, r6]
	ldr r0, [r3, r2, lsl #2]
	ldr ip, [lr, r6]
	add r0, r0, r4
	add r1, ip, r1
	str r0, [r3, r2, lsl #2]
	add sp, sp, #0x18
	str r1, [lr, r6]
	ldmia sp!, {r4, r5, r6, pc}
_020AAD1C:
	mov ip, #0x1000
	mov r2, #0
	str r0, [sp, #0x10]
	str ip, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str ip, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r3, #0xc]
	mov r0, #0x18
	mul r3, r1, r0
	ldr r2, _020AADB0 ; =0x021C4C58
	add r0, sp, #0
	add r1, r2, r3
	add r2, r2, r3
	bl sub_020AB040
	ldr r1, _020AADA0 ; =0x021C4AC8
	mov r0, #0x18
	ldr r1, [r1, #0xc]
	ldr r2, _020AADB4 ; =0x021C4F58
	mul r3, r1, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl sub_020AB040
	ldr r0, _020AADA0 ; =0x021C4AC8
	ldr r2, _020AADA8 ; =0x021C4AD8
	ldr r1, [r0, #0xc]
	ldr r0, [r2, r1, lsl #2]
	add r0, r0, r4
	str r0, [r2, r1, lsl #2]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AADA0: .word 0x021C4AC8
_020AADA4: .word 0x021C4C68
_020AADA8: .word 0x021C4AD8
_020AADAC: .word 0x021C4C6C
_020AADB0: .word 0x021C4C58
_020AADB4: .word 0x021C4F58
	arm_func_end sub_020AACBC

	arm_func_start sub_020AADB8
sub_020AADB8: ; 0x020AADB8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r2, _020AAEF4 ; =0x021C4AC8
	mov lr, #0
	ldr r3, [r2, #0xc]
	mov r2, #0x18
	mul ip, r3, r2
	mov r5, r0
	mov r4, r1
	ldr r2, _020AAEF8 ; =0x021C4C58
	add r0, sp, #0
	add r1, r2, ip
	add r2, r2, ip
	str r5, [sp]
	str lr, [sp, #4]
	str lr, [sp, #8]
	str r4, [sp, #0xc]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	bl sub_020AB040
	mov r0, r5
	bl sub_020BCFE0
	mov r1, #0
	str r0, [sp]
	mov r0, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	bl sub_020BCFE0
	mov ip, #0
	ldr r1, _020AAEF4 ; =0x021C4AC8
	str r0, [sp, #0xc]
	ldr r1, [r1, #0xc]
	mov r0, #0x18
	mul r3, r1, r0
	ldr r2, _020AAEFC ; =0x021C4F58
	add r0, sp, #0
	add r1, r2, r3
	add r2, r2, r3
	str ip, [sp, #0x10]
	str ip, [sp, #0x14]
	bl sub_020AB040
	ldr r0, _020AAEF4 ; =0x021C4AC8
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020AAE84
	ldr r1, _020AAF00 ; =0x02100EA4
	ldr r0, _020AAF04 ; =0x0000FFFE
	ldrh r1, [r1]
	cmp r1, r0
	movne r0, #1
	bne _020AAE88
_020AAE84:
	mov r0, #0
_020AAE88:
	cmp r0, #0
	bne _020AAEA0
	ldr r1, _020AAEF4 ; =0x021C4AC8
	ldr r0, _020AAF00 ; =0x02100EA4
	ldr r1, [r1, #0xc]
	strh r1, [r0]
_020AAEA0:
	ldr r1, _020AAEF4 ; =0x021C4AC8
	ldr r2, _020AAF08 ; =0x021C4B58
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x10
	add ip, r2, r0, lsr #13
	ldrh r0, [ip, #4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AAEEC
_020AAEC4: ; jump table
	b _020AAED4 ; case 0
	b _020AAEEC ; case 1
	b _020AAED4 ; case 2
	b _020AAED4 ; case 3
_020AAED4:
	ldrh r3, [r1, #2]
	mov r0, #1
	add r2, r3, #1
	strh r2, [r1, #2]
	strh r3, [ip, #2]
	strh r0, [ip, #4]
_020AAEEC:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AAEF4: .word 0x021C4AC8
_020AAEF8: .word 0x021C4C58
_020AAEFC: .word 0x021C4F58
_020AAF00: .word 0x02100EA4
_020AAF04: .word 0x0000FFFE
_020AAF08: .word 0x021C4B58
	arm_func_end sub_020AADB8

	arm_func_start sub_020AAF0C
sub_020AAF0C: ; 0x020AAF0C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, _020AB014 ; =0x021C4AC8
	mov lr, #0
	ldr r3, [r2, #0xc]
	mov r2, #0x18
	mul ip, r3, r2
	rsb r3, r0, #0
	str r0, [sp, #4]
	ldr r2, _020AB018 ; =0x021C4C58
	add r0, sp, #0
	str r1, [sp]
	str r1, [sp, #0xc]
	add r1, r2, ip
	add r2, r2, ip
	str r3, [sp, #8]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	bl sub_020AB040
	ldr r1, _020AB014 ; =0x021C4AC8
	mov r0, #0x18
	ldr r1, [r1, #0xc]
	ldr r2, _020AB01C ; =0x021C4F58
	mul r3, r1, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl sub_020AB040
	ldr r0, _020AB014 ; =0x021C4AC8
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020AAFA4
	ldr r1, _020AB020 ; =0x02100EA4
	ldr r0, _020AB024 ; =0x0000FFFE
	ldrh r1, [r1]
	cmp r1, r0
	movne r0, #1
	bne _020AAFA8
_020AAFA4:
	mov r0, #0
_020AAFA8:
	cmp r0, #0
	bne _020AAFC0
	ldr r1, _020AB014 ; =0x021C4AC8
	ldr r0, _020AB020 ; =0x02100EA4
	ldr r1, [r1, #0xc]
	strh r1, [r0]
_020AAFC0:
	ldr r1, _020AB014 ; =0x021C4AC8
	ldr r2, _020AB028 ; =0x021C4B58
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x10
	add ip, r2, r0, lsr #13
	ldrh r0, [ip, #4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AB00C
_020AAFE4: ; jump table
	b _020AAFF4 ; case 0
	b _020AB00C ; case 1
	b _020AAFF4 ; case 2
	b _020AAFF4 ; case 3
_020AAFF4:
	ldrh r3, [r1, #2]
	mov r0, #1
	add r2, r3, #1
	strh r2, [r1, #2]
	strh r3, [ip, #2]
	strh r0, [ip, #4]
_020AB00C:
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AB014: .word 0x021C4AC8
_020AB018: .word 0x021C4C58
_020AB01C: .word 0x021C4F58
_020AB020: .word 0x02100EA4
_020AB024: .word 0x0000FFFE
_020AB028: .word 0x021C4B58
	arm_func_end sub_020AAF0C

	arm_func_start sub_020AB02C
sub_020AB02C: ; 0x020AB02C
	ldr r0, [r0, #0x78]
	bx lr
	arm_func_end sub_020AB02C

	arm_func_start sub_020AB034
sub_020AB034: ; 0x020AB034
	ldr ip, _020AB03C ; =sub_020AC394
	bx ip
	; .align 2, 0
_020AB03C: .word sub_020AC394
	arm_func_end sub_020AB034

	arm_func_start sub_020AB040
sub_020AB040: ; 0x020AB040
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r4, [r0, #4]
	ldr r3, [r1, #8]
	mov ip, r2
	smull r6, r5, r4, r3
	ldr r4, [r0, #0]
	ldr r3, [r1, #0]
	cmp ip, r1
	smlal r6, r5, r4, r3
	mov r3, r6, lsr #0xc
	addeq r2, sp, #0
	orr r3, r3, r5, lsl #20
	str r3, [r2, #0]
	ldr r4, [r0, #4]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0]
	smull r7, r6, r4, r3
	ldr r3, [r1, #4]
	add lr, sp, #0
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	str r3, [r2, #4]
	ldr r4, [r0, #0xc]
	ldr r3, [r1, #8]
	ldr r5, [r0, #8]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0]
	cmp r2, lr
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	str r3, [r2, #8]
	ldr r4, [r0, #0xc]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #8]
	smull r7, r6, r4, r3
	ldr r3, [r1, #4]
	addne sp, sp, #0x18
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	str r3, [r2, #0xc]
	ldr r4, [r0, #0x14]
	ldr r3, [r1, #8]
	ldr r5, [r0, #0x10]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0]
	ldr r4, [r1, #0x10]
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	add r3, r4, r3
	str r3, [r2, #0x10]
	ldr r4, [r0, #0x14]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0x10]
	ldr r0, [r1, #4]
	smull r6, r3, r4, r3
	smlal r6, r3, r5, r0
	mov r0, r6, lsr #0xc
	ldr r1, [r1, #0x14]
	orr r0, r0, r3, lsl #20
	add r0, r1, r0
	str r0, [r2, #0x14]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020AB040

	arm_func_start sub_020AB164
sub_020AB164: ; 0x020AB164
	ldr r2, _020AB178 ; =0x021C5A60
	mov r1, #0x30
	ldr r2, [r2, #8]
	mla r0, r1, r0, r2
	bx lr
	; .align 2, 0
_020AB178: .word 0x021C5A60
	arm_func_end sub_020AB164

	arm_func_start sub_020AB17C
sub_020AB17C: ; 0x020AB17C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _020AB21C ; =0x021C5A60
	mov r4, #0x30
	ldr ip, [ip, #8]
	mov r7, r1
	mla r4, r0, r4, ip
	mov r0, r4
	mov r6, r2
	mov r5, r3
	bl sub_020A8AAC
	mvn r0, #0
	cmp r7, r0
	beq _020AB1C0
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl sub_020A8AC8
_020AB1C0:
	mvn r0, #0
	cmp r6, r0
	beq _020AB1DC
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl sub_020A8AC8
_020AB1DC:
	mvn r0, #0
	cmp r5, r0
	beq _020AB1F8
	mov r0, r4
	mov r2, r5
	mov r1, #2
	bl sub_020A8AC8
_020AB1F8:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0xc]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x24]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AB21C: .word 0x021C5A60
	arm_func_end sub_020AB17C

	arm_func_start sub_020AB220
sub_020AB220: ; 0x020AB220
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020AB280 ; =0x021C5A60
	movs r6, r1
	mov r7, r0
	mov r5, #0
	stmia r3, {r2, r6, r7}
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, r5
_020AB240:
	mov r0, r7
	bl sub_020A8AAC
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	str r4, [r7, #0x14]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	add r5, r5, #1
	str r4, [r7, #0x2c]
	cmp r5, r6
	add r7, r7, #0x30
	blo _020AB240
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AB280: .word 0x021C5A60
	arm_func_end sub_020AB220

	arm_func_start sub_020AB284
sub_020AB284: ; 0x020AB284
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r1, _020AB3A0 ; =0x021C5A60
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r1, #4]
	cmp r0, #0
	addls sp, sp, #8
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	str r0, [sp]
_020AB2B0:
	ldr r4, _020AB3A0 ; =0x021C5A60
	ldr r0, [sp]
	ldr r1, [r4, #8]
	add r8, r1, r0
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	beq _020AB36C
	mov r7, #0
	cmp r7, #3
	bge _020AB364
	ldr r5, _020AB3A4 ; =0x020F9688
	mov fp, r7
	mov r6, #1
_020AB2E4:
	ldr r0, [r8, #0x24]
	mov r1, fp
	tst r0, r6, lsl r7
	beq _020AB300
	ldr r0, [r8, #0x20]
	tst r0, r6, lsl r7
	movne r1, r6
_020AB300:
	cmp r1, #0
	beq _020AB358
	cmp r7, #0
	ldreq sl, [r8, #0x14]
	ldr sb, [r5, r7, lsl #2]
	mov r0, r8
	mov r1, r7
	ldrne sl, [r8, #0x10]
	bl sub_020A8AD0
	ldr r2, [r8, #0x28]
	mov r1, r0
	mov r0, sb
	ldr r3, [r8, #0x2c]
	ldr sb, [r4]
	add r2, sl, r2
	blx sb
	cmp r0, #0
	beq _020AB358
	mvn r0, r6, lsl r7
	ldr r1, [r8, #0x24]
	and r0, r1, r0
	str r0, [r8, #0x24]
_020AB358:
	add r7, r7, #1
	cmp r7, #3
	blt _020AB2E4
_020AB364:
	mov r0, #0
	str r0, [r8, #0x20]
_020AB36C:
	ldr r0, [sp, #4]
	ldr r1, _020AB3A0 ; =0x021C5A60
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	add r0, r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, r1
	blo _020AB2B0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AB3A0: .word 0x021C5A60
_020AB3A4: .word 0x020F9688
	arm_func_end sub_020AB284

	arm_func_start sub_020AB3A8
sub_020AB3A8: ; 0x020AB3A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl sub_020AB164
	mvn r1, #0
	str r1, [r0, #0x24]
	str r5, [r0, #0x28]
	str r4, [r0, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AB3A8

	arm_func_start sub_020AB3CC
sub_020AB3CC: ; 0x020AB3CC
	ldr r1, _020AB420 ; =0x021C5A60
	mov r0, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	bls _020AB418
	ldr ip, [r1, #8]
	mov r2, ip
_020AB3E8:
	ldr r1, [r2, #0x1c]
	cmp r1, #1
	beq _020AB408
	mov r1, #0x30
	mla r1, r0, r1, ip
	mov r2, #1
	str r2, [r1, #0x1c]
	bx lr
_020AB408:
	add r0, r0, #1
	cmp r0, r3
	add r2, r2, #0x30
	blo _020AB3E8
_020AB418:
	mvn r0, #0
	bx lr
	; .align 2, 0
_020AB420: .word 0x021C5A60
	arm_func_end sub_020AB3CC

	arm_func_start sub_020AB424
sub_020AB424: ; 0x020AB424
	stmfd sp!, {r4, lr}
	ldr r2, _020AB46C ; =0x021C5A60
	mov r1, #0x30
	ldr r2, [r2, #8]
	mla r4, r0, r1, r2
	mov r0, r4
	bl sub_020A8AAC
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AB46C: .word 0x021C5A60
	arm_func_end sub_020AB424

	arm_func_start sub_020AB470
sub_020AB470: ; 0x020AB470
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, _020AB6B0 ; =0xC000C000
	ldmia r6, {r4, r5}
	and r0, r4, r0
	and r4, r0, #0xc0000000
	mov lr, r4, lsr #0x1e
	and r0, r0, #0xc000
	mov r5, r5, lsl #0x16
	mov ip, r0, asr #0xe
	mov r5, r5, lsr #0x16
	ldr r4, _020AB6B4 ; =0x020F9670
	mov r7, r5, lsl #0x10
	ldr r0, _020AB6B8 ; =0x020F9658
	add r5, r4, ip, lsl #3
	mov r8, lr, lsl #1
	add r4, r0, ip, lsl #3
	ldrh r5, [r8, r5]
	ldr r0, [sp, #0x20]
	ldrh r4, [r8, r4]
	str r5, [r0, #0x10]
	mov r5, r1
	str r4, [r0, #0x14]
	ldr r8, [r5, #0x14]
	mov r4, r3
	cmp r8, #0
	mov r1, r7, lsr #0x10
	bne _020AB550
	ldr r3, [r5, #8]
	ldr r7, [r5, #0]
	mov r3, r3, lsl #0x1a
	orr r2, r3, r2, lsr #3
	orr r2, r2, #0x40000000
	orr r2, r2, r7, lsl #20
	ldr r3, [r5, #4]
	ldr r7, [r5, #0x10]
	orr r3, r2, r3, lsl #23
	ldr r2, _020AB6BC ; =0x040004A8
	orr r3, r3, r7, lsl #29
	str r3, [r2, #0]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0]
	cmp r2, #4
	ldr r2, _020AB6C0 ; =0x020F96A4
	moveq r1, r1, lsl #0xf
	ldr r2, [r2, r3, lsl #2]
	moveq r1, r1, lsr #0x10
	sub r2, r2, #1
	and r2, r1, r2
	mov r2, r2, lsl #0xf
	str r2, [r0, #0]
	ldr r2, [r5, #0]
	mov r1, r1, asr r2
	mov r1, r1, lsl #0xf
	b _020AB5B8
_020AB550:
	and r3, r8, #0x700000
	mov r3, r3, asr #0x14
	add r7, r3, #5
	mov r3, ip, lsl #0x10
	add ip, r2, r1, lsl r7
	mov r1, lr, lsl #0x10
	mov r8, r3, lsr #0x10
	ldr r7, _020AB6C4 ; =0x020F96C4
	ldr lr, [r5, #8]
	mov r3, ip, lsr #3
	orr ip, r3, lr, lsl #26
	ldr r2, _020AB6C8 ; =0x020F96F4
	mov lr, r1, lsr #0x10
	add r1, r2, r8, lsl #4
	add r3, r7, r8, lsl #4
	ldr r2, [r3, lr, lsl #2]
	orr r3, ip, #0x40000000
	orr r2, r3, r2, lsl #20
	ldr r1, [r1, lr, lsl #2]
	ldr r3, [r5, #0x10]
	orr r2, r2, r1, lsl #23
	ldr r1, _020AB6BC ; =0x040004A8
	orr r2, r2, r3, lsl #29
	str r2, [r1, #0]
	mov r1, #0
	str r1, [r0, #0]
_020AB5B8:
	str r1, [r0, #4]
	ldr r2, [r0, #0]
	ldr r1, [r0, #0x10]
	add r1, r2, r1, lsl #12
	str r1, [r0, #8]
	ldr r2, [r0, #4]
	ldr r1, [r0, #0x14]
	add r1, r2, r1, lsl #12
	str r1, [r0, #0xc]
	ldr r1, [r6, #0]
	mov r2, r1, lsl #2
	mov r1, r1, lsl #3
	mov ip, r2, lsr #0x1f
	movs r3, r1, lsr #0x1f
	beq _020AB604
	ldr r2, [r0, #0]
	ldr r1, [r0, #8]
	str r1, [r0, #0]
	str r2, [r0, #8]
_020AB604:
	cmp ip, #0
	beq _020AB61C
	ldr r2, [r0, #4]
	ldr r1, [r0, #0xc]
	str r1, [r0, #4]
	str r2, [r0, #0xc]
_020AB61C:
	ldr r1, _020AB6CC ; =0x021C5A6C
	ldr r7, [r1, #0]
	cmp r7, #0
	beq _020AB644
	str r3, [sp]
	add r1, r0, #4
	add r2, r0, #8
	add r3, r0, #0xc
	str ip, [sp, #4]
	blx r7
_020AB644:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1c
	mov r3, r1, lsl #0x12
	ldr r1, [r5, #0xc]
	mov r0, r0, lsl #0x10
	ldr r2, _020AB6D0 ; =0x020F969C
	mov r3, r3, lsr #0x1f
	cmp r1, #0
	mov r0, r0, lsr #0x10
	ldr r1, [r2, r3, lsl #2]
	movne r0, r0, lsl #9
	bne _020AB688
	cmp r1, #4
	moveq r0, #0
	movne r0, r0, lsl #5
_020AB688:
	cmp r1, #2
	moveq r2, #1
	movne r2, #0
	add r1, r4, r0
	rsb r0, r2, #4
	mov r1, r1, lsr r0
	ldr r0, _020AB6D4 ; =0x040004AC
	str r1, [r0, #0]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020AB6B0: .word 0xC000C000
_020AB6B4: .word 0x020F9670
_020AB6B8: .word 0x020F9658
_020AB6BC: .word 0x040004A8
_020AB6C0: .word 0x020F96A4
_020AB6C4: .word 0x020F96C4
_020AB6C8: .word 0x020F96F4
_020AB6CC: .word 0x021C5A6C
_020AB6D0: .word 0x020F969C
_020AB6D4: .word 0x040004AC
	arm_func_end sub_020AB470

	arm_func_start sub_020AB6D8
sub_020AB6D8: ; 0x020AB6D8
	ldr r1, _020AB6E4 ; =0x021C5A6C
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
_020AB6E4: .word 0x021C5A6C
	arm_func_end sub_020AB6D8

	arm_func_start sub_020AB6E8
sub_020AB6E8: ; 0x020AB6E8
	ldr r0, _020AB6F8 ; =0x021C5A6C
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020AB6F8: .word 0x021C5A6C
	arm_func_end sub_020AB6E8

	arm_func_start sub_020AB6FC
sub_020AB6FC: ; 0x020AB6FC
	ldr r1, _020AB708 ; =0x02100EC4
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020AB708: .word 0x02100EC4
	arm_func_end sub_020AB6FC

	arm_func_start sub_020AB70C
sub_020AB70C: ; 0x020AB70C
	ldr r0, _020AB718 ; =0x02100EC4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020AB718: .word 0x02100EC4
	arm_func_end sub_020AB70C

	arm_func_start sub_020AB71C
sub_020AB71C: ; 0x020AB71C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add ip, sp, #4
	mov r5, r1
	mov r4, r2
	mov r7, r3
	mov r6, r0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	mov r0, r7
	str ip, [sp]
	bl sub_020AB470
	ldr r2, [r7, #0]
	and r1, r2, #0x300
	cmp r1, #0x100
	cmpne r1, #0x300
	andne r0, r2, #0x30000000
	orrne r1, r1, r0
	cmp r1, #0x300
	bne _020AB7E0
	ldr r0, _020AB950 ; =0xC000C000
	ldr r3, _020AB954 ; =0x020F9670
	and r2, r2, r0
	and r0, r2, #0xc0000000
	and r2, r2, #0xc000
	mov ip, r2, asr #0xe
	mov lr, r0, lsr #0x1e
	ldr r1, _020AB958 ; =0x021C5A6C
	ldr r2, _020AB95C ; =0x020F9658
	ldr r0, [r1, #8]
	mov lr, lr, lsl #1
	cmp r0, #0
	ldrne r0, [r1, #4]
	add r3, r3, ip, lsl #3
	add r2, r2, ip, lsl #3
	ldrh ip, [lr, r3]
	ldrh r3, [lr, r2]
	addne r4, r0, r4, lsl #12
	add r2, r6, ip, asr #1
	add r0, r5, r3, asr #1
	ldr r1, _020AB960 ; =0x04000470
	mov r2, r2, lsl #0xc
	str r2, [r1, #0]
	mov r0, r0, lsl #0xc
	moveq r4, r4, lsl #0xc
	str r0, [r1, #0]
	str r4, [r1, #0]
	b _020AB810
_020AB7E0:
	ldr r0, _020AB958 ; =0x021C5A6C
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrne r0, [r0, #4]
	ldr r1, _020AB960 ; =0x04000470
	addne r2, r0, r4, lsl #12
	mov r0, r6, lsl #0xc
	str r0, [r1, #0]
	mov r0, r5, lsl #0xc
	moveq r2, r4, lsl #0xc
	str r0, [r1, #0]
	str r2, [r1, #0]
_020AB810:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r1, _020AB964 ; =0x0400046C
	mov r0, r0, lsl #0xc
	str r0, [r1, #0]
	mov r0, r2, lsl #0xc
	str r0, [r1, #0]
	mov r0, #0x1000
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #0x94]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #4]
	mov r0, r0, lsl #8
	mov r2, r0, asr #0x10
	mov r0, r3, lsl #8
	mov r2, r2, lsl #0x10
	mov r4, r0, asr #0x10
	mov r3, r2, lsr #0x10
	mov r2, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	orr r2, r3, r2, lsr #16
	mov r0, #0x10000
	str r2, [r1, #0x1c]
	str r0, [r1, #0x24]
	ldr r2, [sp, #0x10]
	ldr r4, [sp, #0xc]
	mov r2, r2, lsl #8
	mov r3, r2, asr #0x10
	mov r2, r4, lsl #8
	mov r3, r3, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	orr r2, r3, r2, lsr #16
	str r2, [r1, #0x1c]
	add r0, r0, #0x40
	str r0, [r1, #0x24]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r0, lsl #8
	mov r2, r0, asr #0x10
	mov r0, r3, lsl #8
	mov r2, r2, lsl #0x10
	mov r0, r0, asr #0x10
	mov r2, r2, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r0, r2, r0, lsr #16
	str r0, [r1, #0x1c]
	mov r0, #0x40
	str r0, [r1, #0x24]
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	mov r0, r0, lsl #8
	mov r2, r0, asr #0x10
	mov r0, r3, lsl #8
	mov r2, r2, lsl #0x10
	mov r0, r0, asr #0x10
	mov r2, r2, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r0, r2, r0, lsr #16
	str r0, [r1, #0x1c]
	mov r0, #0
	str r0, [r1, #0x24]
	ldr r2, _020AB958 ; =0x021C5A6C
	str r0, [r1, #0x98]
	ldr r0, [r2, #8]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020AB968 ; =0x02100EC4
	ldr r1, [r2, #4]
	ldr r0, [r0, #0]
	add r0, r1, r0
	str r0, [r2, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020AB950: .word 0xC000C000
_020AB954: .word 0x020F9670
_020AB958: .word 0x021C5A6C
_020AB95C: .word 0x020F9658
_020AB960: .word 0x04000470
_020AB964: .word 0x0400046C
_020AB968: .word 0x02100EC4
	arm_func_end sub_020AB71C

	arm_func_start sub_020AB96C
sub_020AB96C: ; 0x020AB96C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [r1, #0]
	ldr r3, _020ABC10 ; =0x01FF0000
	and r3, r4, r3
	mov r3, r3, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	cmp r3, #0xff
	orrgt r3, r3, #0xff00
	movgt r3, r3, lsl #0x10
	movgt r3, r3, asr #0x10
	mov r3, r3, lsl #0xc
	str r3, [sp, #8]
	ldr r3, [r1, #0]
	and r3, r3, #0xff
	cmp r3, #0x7f
	orrgt r3, r3, #0xff00
	movgt r3, r3, lsl #0x10
	movgt r3, r3, asr #0x10
	mov r3, r3, lsl #0xc
	str r3, [sp, #0xc]
	ldr r5, [r1, #0]
	and r4, r5, #0x300
	cmp r4, #0x100
	cmpne r4, #0x300
	andne r3, r5, #0x30000000
	orrne r4, r4, r3
	cmp r4, #0x300
	bne _020ABA30
	ldr r3, _020ABC14 ; =0xC000C000
	ldr r4, _020ABC18 ; =0x020F9670
	and r3, r5, r3
	and r5, r3, #0xc0000000
	and r3, r3, #0xc000
	mov r6, r5, lsr #0x1e
	mov r5, r3, asr #0xe
	ldr r3, _020ABC1C ; =0x020F9658
	mov r6, r6, lsl #1
	add r4, r4, r5, lsl #3
	add r3, r3, r5, lsl #3
	ldrh r5, [r6, r4]
	ldr r7, [sp, #8]
	ldrh r3, [r6, r3]
	ldr r4, [sp, #0xc]
	add r5, r7, r5, lsl #11
	add r3, r4, r3, lsl #11
	str r5, [sp, #8]
	str r3, [sp, #0xc]
_020ABA30:
	ldr r6, [r0, #8]
	ldr r4, [sp, #0xc]
	add r3, sp, #8
	smull r4, r7, r6, r4
	cmp r3, r3
	addeq r3, sp, #0
	adds r8, r4, #0x1000
	ldr r5, [r0, #0]
	ldr r4, [sp, #8]
	adc r6, r7, #0
	smlal r8, r6, r5, r4
	mov r4, r8, lsr #0xc
	orr r4, r4, r6, lsl #20
	str r4, [r3, #0]
	ldr r6, [r0, #0xc]
	ldr r4, [sp, #0xc]
	ldr r5, [r0, #4]
	smull r4, r7, r6, r4
	adds r8, r4, #0x1000
	ldr r4, [sp, #8]
	adc r6, r7, #0
	smlal r8, r6, r5, r4
	mov r5, r8, lsr #0xc
	add r4, sp, #0
	orr r5, r5, r6, lsl #20
	str r5, [r3, #4]
	cmp r3, r4
	bne _020ABAB0
	ldr r4, [sp]
	ldr r3, [sp, #4]
	str r4, [sp, #8]
	str r3, [sp, #0xc]
_020ABAB0:
	ldr r3, _020ABC20 ; =0x021C5A88
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	cmp r3, #0
	beq _020ABAF8
	cmp r3, #2
	moveq r5, #0x300
	movne r5, #0x100
	ldr r4, [r1, #0]
	ldr r3, _020ABC24 ; =0xC1FFFCFF
	cmp r5, #0x100
	andeq r3, r4, r3
	orreq r3, r3, r5
	streq r3, [r1]
	beq _020ABAF8
	and r3, r4, r3
	orr r3, r3, r5
	str r3, [r1, #0]
_020ABAF8:
	ldr r6, [r1, #0]
	ldr r5, _020ABC18 ; =0x020F9670
	and r4, r6, #0x300
	cmp r4, #0x100
	cmpne r4, #0x300
	andne r3, r6, #0x30000000
	orrne r4, r4, r3
	ldr r3, _020ABC14 ; =0xC000C000
	ldr r8, _020ABC1C ; =0x020F9658
	and r3, r6, r3
	and r6, r3, #0xc0000000
	and r3, r3, #0xc000
	mov lr, r3, asr #0xe
	mov r6, r6, lsr #0x1e
	mov r3, r6, lsl #1
	add r5, r5, lr, lsl #3
	ldrh r5, [r3, r5]
	add lr, r8, lr, lsl #3
	ldrh r3, [r3, lr]
	mov ip, r5, asr #1
	mov r5, ip, lsl #0xc
	ldr r6, [r0, #0]
	rsb r7, r5, #0
	mla r7, r6, ip, r7
	ldr r6, [r0, #8]
	mov r3, r3, asr #1
	mla r7, r6, r3, r7
	ldr lr, [sp, #8]
	cmp r4, #0x300
	add r6, lr, r7
	str r6, [sp, #8]
	mov lr, r3, lsl #0xc
	ldr r6, [r0, #4]
	rsb r7, lr, #0
	mla r7, r6, ip, r7
	ldr r0, [r0, #0xc]
	ldr r6, [sp, #0xc]
	mla r3, r0, r3, r7
	add r0, r6, r3
	str r0, [sp, #0xc]
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020ABBC0
	ldr r3, [sp, #8]
	ldr r0, [sp, #0xc]
	sub r3, r3, r5
	sub r0, r0, lr
	str r3, [sp, #8]
	str r0, [sp, #0xc]
_020ABBC0:
	ldr r4, [sp, #8]
	ldr r0, [r2, #0]
	ldr r3, [sp, #0xc]
	add r4, r4, r0
	str r4, [sp, #8]
	ldr r0, [r2, #4]
	mov r4, r4, asr #0xc
	add r0, r3, r0
	str r0, [sp, #0xc]
	mov r2, r0, asr #0xc
	ldr r3, [r1, #0]
	ldr r0, _020ABC28 ; =0xFE00FF00
	and r2, r2, #0xff
	and r0, r3, r0
	mov r3, r4, lsl #0x17
	orr r0, r0, r2
	orr r0, r0, r3, lsr #7
	str r0, [r1, #0]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020ABC10: .word 0x01FF0000
_020ABC14: .word 0xC000C000
_020ABC18: .word 0x020F9670
_020ABC1C: .word 0x020F9658
_020ABC20: .word 0x021C5A88
_020ABC24: .word 0xC1FFFCFF
_020ABC28: .word 0xFE00FF00
	arm_func_end sub_020AB96C

	arm_func_start sub_020ABC2C
sub_020ABC2C: ; 0x020ABC2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldr r2, _020AC02C ; =0x021C5A88
	mov r6, r0
	ldr r4, [r2, #0]
	ldr r0, _020AC02C ; =0x021C5A88
	ldr r5, [r4, #0x2c]
	mov fp, r1
	cmp r5, #0
	ldreq r5, _020AC030 ; =0x020F972C
	ldr r2, [r0, #0]
	ldr r3, [r5, #0x10]
	str r3, [sp, #0x18]
	ldr r1, [r5, #0x14]
	str r1, [sp, #0x1c]
	ldr r0, [r6, #0]
	sub r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r6, #4]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r1, [r2, #0x24]
	ldr r0, [r2, #0x10]
	cmp r1, #0
	str r0, [sp, #0xc]
	bne _020ABCA8
	ldr r0, [r2, #0x28]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp]
	bne _020ABCB0
_020ABCA8:
	mov r0, #0
	str r0, [sp]
_020ABCB0:
	ldrh r0, [fp]
	mov r8, #0
	cmp r0, #0
	addls sp, sp, #0x40
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0x400
	str r0, [sp, #0x10]
	ldr r0, _020AC034 ; =0x0000FFFE
	ldr r7, _020AC02C ; =0x021C5A88
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	rsb r0, r0, #0
	str r0, [sp, #0x10]
_020ABCE8:
	mov r0, #6
	mul r1, r8, r0
	ldr r2, [r7, #0]
	mov r0, #1
	str r0, [r2, #0x30]
	ldr r0, [fp, #4]
	add r2, r0, r1
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x38]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x3a]
	ldrh r0, [r2, #4]
	strh r0, [r4, #0x3c]
	ldr r3, [r6, #0x20]
	cmp r3, #0
	beq _020ABD38
	ldr r0, [r7, #0]
	mov r1, fp
	mov r2, r8
	blx r3
_020ABD38:
	ldr r0, [r7, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC00C
	ldr r0, [sp]
	ldr r1, [r4, #0x3c]
	cmp r0, #0
	ldr r0, [sp, #0x10]
	and r2, r1, r0
	ldr r0, [sp, #0xc]
	mov r1, r1, lsl #0x16
	add r1, r0, r1, lsr #22
	ldr r0, [sp, #0x10]
	and r0, r1, r0, lsr #22
	orr r0, r2, r0
	str r0, [r4, #0x3c]
	beq _020ABE7C
	ldr r0, [r4, #0x38]
	ldr lr, [r7]
	mov r1, r0, lsl #2
	mov r0, r0, lsl #3
	mov r1, r1, lsr #0x1f
	mov r0, r0, lsr #0x1f
	orr sl, r0, r1, lsl #1
	ldr sb, [lr, #0x28]
	ldr r1, [r6, #0x14]
	add r0, sb, sl, lsl #2
	add r0, r0, r1, lsl #1
	ldrh r1, [r0, #0xe]
	ldr r0, [sp, #0x14]
	str r1, [sp, #8]
	cmp r1, r0
	bne _020ABE48
	cmp sl, #0
	bne _020ABDD8
	ldr r1, [lr, #0x20]
	mov r0, sb
	blx r1
	str r0, [sp, #8]
	b _020ABE34
_020ABDD8:
	add ip, sp, #0x20
	ldmia sb, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	tst sl, #1
	beq _020ABE04
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	rsb r1, r1, #0
	str r1, [sp, #0x20]
	rsb r0, r0, #0
	str r0, [sp, #0x24]
_020ABE04:
	tst sl, #2
	beq _020ABE24
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	rsb r1, r1, #0
	str r1, [sp, #0x28]
	rsb r0, r0, #0
	str r0, [sp, #0x2c]
_020ABE24:
	ldr r1, [lr, #0x20]
	add r0, sp, #0x20
	blx r1
	str r0, [sp, #8]
_020ABE34:
	ldr r1, [r6, #0x14]
	add r0, sb, sl, lsl #2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #8]
	strh r0, [r1, #0xe]
_020ABE48:
	ldr r1, [r5, #0]
	add r0, sp, #0x30
	str r1, [sp, #0x30]
	ldr r2, [r5, #4]
	add r1, r4, #0x38
	str r2, [sp, #0x34]
	ldr r3, [r5, #8]
	add r2, sp, #0x18
	str r3, [sp, #0x38]
	ldr r3, [r5, #0xc]
	str r3, [sp, #0x3c]
	bl sub_020AB96C
	b _020ABFCC
_020ABE7C:
	ldr r0, _020AC034 ; =0x0000FFFE
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020ABF84
	ldr r2, [r4, #0x38]
	ldr r1, _020AC038 ; =0xC000C000
	mov sl, r2, lsl #3
	and sb, r2, r1
	bl sub_020AC444
	eor r0, r0, sl, lsr #31
	ldr r1, [r4, #0x38]
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	mov sl, r1, lsl #2
	bl sub_020AC458
	eor r2, r0, sl, lsr #31
	ldr r0, [r4, #0x38]
	bic r1, r0, #0x10000000
	ldr r0, [sp, #4]
	orr r0, r1, r0, lsl #28
	bic r0, r0, #0x20000000
	orr r0, r0, r2, lsl #29
	str r0, [r4, #0x38]
	ldr r0, [r7, #0]
	bl sub_020AC444
	cmp r0, #0
	beq _020ABF34
	and r1, sb, #0xc000
	mov r2, r1, asr #0xe
	ldr r1, _020AC03C ; =0x020F9670
	and r3, sb, #0xc0000000
	mov r3, r3, lsr #0x1e
	add r2, r1, r2, lsl #3
	mov r3, r3, lsl #1
	ldr r0, [r4, #0x38]
	ldr r1, _020AC040 ; =0xFE00FFFF
	ldrh r2, [r3, r2]
	and r1, r0, r1
	mov r0, r0, lsl #7
	add r0, r2, r0, lsr #23
	rsb r0, r0, #0
	mov r0, r0, lsl #0x17
	orr r0, r1, r0, lsr #7
	str r0, [r4, #0x38]
_020ABF34:
	ldr r0, [r7, #0]
	bl sub_020AC458
	cmp r0, #0
	beq _020ABF84
	and r1, sb, #0xc000
	mov r3, r1, asr #0xe
	and r1, sb, #0xc0000000
	mov r1, r1, lsr #0x1e
	mov r2, r1, lsl #1
	ldr r1, _020AC044 ; =0x020F9658
	ldr r0, [r4, #0x38]
	add r1, r1, r3, lsl #3
	ldrh r1, [r2, r1]
	bic r2, r0, #0xff
	mov r0, r0, lsl #0x18
	add r0, r1, r0, lsr #24
	rsb r0, r0, #0
	and r0, r0, #0xff
	orr r0, r2, r0
	str r0, [r4, #0x38]
_020ABF84:
	ldr r2, [r4, #0x38]
	ldr r0, _020AC040 ; =0xFE00FFFF
	ldr r1, [sp, #0x18]
	and r3, r2, r0
	mov r2, r2, lsl #7
	mov r0, r1, asr #0xc
	add r0, r0, r2, lsr #23
	mov r0, r0, lsl #0x17
	orr r0, r3, r0, lsr #7
	str r0, [r4, #0x38]
	bic r2, r0, #0xff
	mov r1, r0, lsl #0x18
	ldr r0, [sp, #0x1c]
	mov r0, r0, asr #0xc
	add r0, r0, r1, lsr #24
	and r0, r0, #0xff
	orr r0, r2, r0
	str r0, [r4, #0x38]
_020ABFCC:
	ldr r3, [r7, #0]
	ldr r1, [sp, #8]
	ldr r3, [r3, #0x1c]
	add r0, r4, #0x38
	mov r2, #0
	blx r3
	cmp r0, #1
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [r6, #0x24]
	cmp r3, #0
	beq _020AC00C
	ldr r0, [r7, #0]
	mov r1, fp
	mov r2, r8
	blx r3
_020AC00C:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	ldrh r1, [fp]
	cmp r1, r0, lsr #16
	bhi _020ABCE8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AC02C: .word 0x021C5A88
_020AC030: .word 0x020F972C
_020AC034: .word 0x0000FFFE
_020AC038: .word 0xC000C000
_020AC03C: .word 0x020F9670
_020AC040: .word 0xFE00FFFF
_020AC044: .word 0x020F9658
	arm_func_end sub_020ABC2C

	arm_func_start sub_020AC048
sub_020AC048: ; 0x020AC048
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r1, _020AC27C ; =0x021C5A88
	mov r7, r0
	ldr r0, [r1, #0]
	add r0, r0, #0x40
	bl sub_020BF958
	ldr r0, _020AC27C ; =0x021C5A88
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020AC20C
	ldr r2, [r7, #0]
	ldr r1, _020AC280 ; =0xC000C000
	and r4, r2, r1
	bl sub_020AC444
	cmp r0, #0
	ldr r0, [r7, #0]
	beq _020AC0D8
	mov r0, r0, lsl #7
	mov r3, r0, lsr #0x17
	and r2, r4, #0xc000
	and r1, r4, #0xc0000000
	mov r1, r1, lsr #0x1e
	ldr r0, _020AC284 ; =0x020F9670
	mov r2, r2, asr #0xe
	mov r1, r1, lsl #1
	add r0, r0, r2, lsl #3
	cmp r3, #0xff
	ldrh r1, [r1, r0]
	orrgt r0, r3, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r3, r0, asr #0x10
	add r0, r3, r1
	rsb r0, r0, #0
	b _020AC0F0
_020AC0D8:
	mov r0, r0, lsl #7
	mov r0, r0, lsr #0x17
	cmp r0, #0xff
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r0, r0, asr #0x10
_020AC0F0:
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, _020AC27C ; =0x021C5A88
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0]
	mov r5, r1, asr #0x10
	bl sub_020AC458
	cmp r0, #0
	ldr r0, [r7, #0]
	beq _020AC15C
	mov r0, r0, lsl #0x18
	mov r3, r0, lsr #0x18
	and r2, r4, #0xc000
	and r1, r4, #0xc0000000
	mov r1, r1, lsr #0x1e
	ldr r0, _020AC288 ; =0x020F9658
	mov r2, r2, asr #0xe
	mov r1, r1, lsl #1
	add r0, r0, r2, lsl #3
	cmp r3, #0x7f
	ldrh r1, [r1, r0]
	orrgt r0, r3, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r3, r0, asr #0x10
	add r0, r3, r1
	rsb r0, r0, #0
	b _020AC174
_020AC15C:
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	cmp r0, #0x7f
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r0, r0, asr #0x10
_020AC174:
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	ldr r0, _020AC27C ; =0x021C5A88
	ldr r1, [r7, #0]
	ldr r0, [r0, #0]
	mov r6, r1, lsl #3
	bl sub_020AC444
	ldr r2, [r7, #0]
	ldr r1, _020AC27C ; =0x021C5A88
	eor r6, r0, r6, lsr #31
	ldr r0, [r1, #0]
	mov r8, r2, lsl #2
	bl sub_020AC458
	ldr r1, [r7, #0]
	eor r3, r0, r8, lsr #31
	bic r2, r1, #0x10000000
	orr r2, r2, r6, lsl #28
	bic r2, r2, #0x20000000
	mov r1, r4, lsl #0x10
	orr r3, r2, r3, lsl #29
	str r2, [r7, #0]
	str r3, [r7, #0]
	ldr r2, _020AC27C ; =0x021C5A88
	mov r0, r5
	ldr r5, [r2, #0]
	mov r1, r1, asr #0x10
	ldr r4, [r5, #8]
	mov r3, r7
	add r4, r4, #0xc
	str r4, [sp]
	ldr r4, [r5, #0x14]
	mvn r2, #0
	str r4, [sp, #4]
	ldr r4, [r5, #0x18]
	str r4, [sp, #8]
	bl sub_020AB71C
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020AC20C:
	ldr r2, _020AC27C ; =0x021C5A88
	ldr r0, [r7, #0]
	ldr r5, [r2, #0]
	mov r0, r0, lsl #7
	ldr r1, [r7, #0]
	ldr r4, [r5, #8]
	mov r0, r0, lsr #0x17
	cmp r0, #0xff
	orrgt r0, r0, #0xff00
	mov r1, r1, lsl #0x18
	add r4, r4, #0xc
	movgt r0, r0, lsl #0x10
	str r4, [sp]
	ldr r4, [r5, #0x14]
	mov r1, r1, lsr #0x18
	movgt r0, r0, asr #0x10
	cmp r1, #0x7f
	orrgt r1, r1, #0xff00
	movgt r1, r1, lsl #0x10
	str r4, [sp, #4]
	ldr r4, [r5, #0x18]
	movgt r1, r1, asr #0x10
	mov r3, r7
	mvn r2, #0
	str r4, [sp, #8]
	bl sub_020AB71C
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020AC27C: .word 0x021C5A88
_020AC280: .word 0xC000C000
_020AC284: .word 0x020F9670
_020AC288: .word 0x020F9658
	arm_func_end sub_020AC048

	arm_func_start sub_020AC28C
sub_020AC28C: ; 0x020AC28C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	ldr r5, _020AC350 ; =0x021C5A88
	ldrh r1, [sb]
	ldr r7, [r5, #0]
	mov sl, r0
	mov r8, #0
	cmp r1, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r6, #1
	mov r4, #6
_020AC2B8:
	mul r1, r8, r4
	ldr r0, [r5, #0]
	str r6, [r0, #0x30]
	ldr r2, [sb, #4]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	strh r0, [r7, #0x38]
	ldrh r0, [r1, #2]
	strh r0, [r7, #0x3a]
	ldrh r0, [r1, #4]
	strh r0, [r7, #0x3c]
	ldr r3, [sl, #0x20]
	cmp r3, #0
	beq _020AC300
	ldr r0, [r5, #0]
	mov r1, sb
	mov r2, r8
	blx r3
_020AC300:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC318
	add r0, r7, #0x38
	bl sub_020AC048
_020AC318:
	ldr r3, [sl, #0x24]
	cmp r3, #0
	beq _020AC334
	ldr r0, [r5, #0]
	mov r1, sb
	mov r2, r8
	blx r3
_020AC334:
	ldrh r1, [sb]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020AC2B8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020AC350: .word 0x021C5A88
	arm_func_end sub_020AC28C

	arm_func_start sub_020AC354
sub_020AC354: ; 0x020AC354
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0x70
	bl sub_020C4AF0
	mov r1, #0
	str r1, [r4, #0]
	mov r0, #2
	stmib r4, {r0, r1}
	str r1, [r4, #0xc]
	str r1, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x30]
	str r1, [r4, #0x28]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020AC354

	arm_func_start sub_020AC394
sub_020AC394: ; 0x020AC394
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end sub_020AC394

	arm_func_start sub_020AC3A0
sub_020AC3A0: ; 0x020AC3A0
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	arm_func_end sub_020AC3A0

	arm_func_start sub_020AC3AC
sub_020AC3AC: ; 0x020AC3AC
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020AC3AC

	arm_func_start sub_020AC3B4
sub_020AC3B4: ; 0x020AC3B4
	ldr r1, _020AC418 ; =0x021C5A88
	mov r3, #0
	ldr ip, [r1]
	mov r1, #0x1000
	str r0, [ip, #0x2c]
	ldr r2, [r0, #0]
	str r2, [ip, #0x40]
	ldr r2, [r0, #4]
	str r2, [ip, #0x44]
	str r3, [ip, #0x48]
	ldr r2, [r0, #8]
	str r2, [ip, #0x4c]
	ldr r2, [r0, #0xc]
	str r2, [ip, #0x50]
	str r3, [ip, #0x54]
	str r3, [ip, #0x58]
	str r3, [ip, #0x5c]
	str r1, [ip, #0x60]
	ldr r1, [r0, #0x10]
	str r1, [ip, #0x64]
	ldr r0, [r0, #0x14]
	str r0, [ip, #0x68]
	ldr r0, [ip, #0x34]
	str r0, [ip, #0x6c]
	bx lr
	; .align 2, 0
_020AC418: .word 0x021C5A88
	arm_func_end sub_020AC3B4

	arm_func_start sub_020AC41C
sub_020AC41C: ; 0x020AC41C
	ldr r2, _020AC430 ; =0x021C5A88
	ldr r2, [r2, #0]
	str r0, [r2, #0x2c]
	str r1, [r2, #0x28]
	bx lr
	; .align 2, 0
_020AC430: .word 0x021C5A88
	arm_func_end sub_020AC41C

	arm_func_start sub_020AC434
sub_020AC434: ; 0x020AC434
	str r1, [r0, #0x34]
	bx lr
	arm_func_end sub_020AC434

	arm_func_start sub_020AC43C
sub_020AC43C: ; 0x020AC43C
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020AC43C

	arm_func_start sub_020AC444
sub_020AC444: ; 0x020AC444
	ldr r0, [r0, #0x24]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_020AC444

	arm_func_start sub_020AC458
sub_020AC458: ; 0x020AC458
	ldr r0, [r0, #0x24]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_020AC458

	arm_func_start sub_020AC46C
sub_020AC46C: ; 0x020AC46C
	cmp r1, #0
	ldr r1, [r0, #0x24]
	orrne r1, r1, #1
	biceq r1, r1, #1
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x24]
	cmp r2, #0
	orrne r1, r1, #2
	biceq r1, r1, #2
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_020AC46C

	arm_func_start sub_020AC498
sub_020AC498: ; 0x020AC498
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020AC59C ; =0x021C5A88
	mov r4, r0
	str r4, [r2, #0]
	ldr r0, [r4, #0]
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _020AC550
	ldr lr, _020AC5A0 ; =0x04000440
	mov r1, #0
	str r1, [lr]
	str r1, [lr, #4]
	ldr ip, [r4]
	mov r0, #1
	ldmia ip, {r3, ip}
	rsb r3, r3, #0
	str r3, [lr, #0x30]
	rsb r3, ip, #0
	str r3, [lr, #0x30]
	str r1, [lr, #0x30]
	str r0, [lr]
	ldr r0, [r2, #0]
	ldr r5, [r0, #8]
	mov r0, r5
	bl sub_020A81B8
	cmp r0, #0
	moveq r0, #0
	beq _020AC514
	mov r0, r5
	mov r1, #0
	bl sub_020A81B0
_020AC514:
	ldr r1, _020AC59C ; =0x021C5A88
	str r0, [r4, #0x14]
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r5, [r0, #0xc]
	mov r0, r5
	bl sub_020A8208
	cmp r0, #0
	moveq r0, #0
	beq _020AC548
	mov r0, r5
	mov r1, #0
	bl sub_020A81FC
_020AC548:
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, pc}
_020AC550:
	ldr r4, [r4, #8]
	mov r1, r5
	mov r0, r4
	bl sub_020A81B8
	cmp r0, #0
	moveq r1, #0
	beq _020AC58C
	mov r0, r4
	mov r1, r5
	bl sub_020A81B0
	ldr r1, [r4, #0x20]
	and r1, r1, #0x700000
	mov r1, r1, asr #0x14
	add r1, r1, #5
	mov r1, r0, lsr r1
_020AC58C:
	ldr r0, _020AC59C ; =0x021C5A88
	ldr r0, [r0, #0]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AC59C: .word 0x021C5A88
_020AC5A0: .word 0x04000440
	arm_func_end sub_020AC498

	arm_func_start sub_020AC5A4
sub_020AC5A4: ; 0x020AC5A4
	ldr r0, _020AC600 ; =0x021C5A88
	ldr r3, [r0, #0]
	ldr r1, [r3, #0]
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _020AC5D8
	ldr r1, _020AC604 ; =0x04000440
	mov r0, #0
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #8]
	str r0, [r1, #0]
	b _020AC5F0
_020AC5D8:
	mov r2, #0
	str r2, [r3, #0x10]
	ldr r1, [r0, #0]
	str r2, [r1, #0x2c]
	ldr r0, [r0, #0]
	str r2, [r0, #0x28]
_020AC5F0:
	ldr r0, _020AC600 ; =0x021C5A88
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020AC600: .word 0x021C5A88
_020AC604: .word 0x04000440
	arm_func_end sub_020AC5A4

	arm_func_start sub_020AC608
sub_020AC608: ; 0x020AC608
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020AC6B8 ; =0x021C5A88
	mov r5, r0
	ldr r2, [r1, #0]
	ldr r4, [r2, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #1
	str r0, [r2, #0x30]
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _020AC648
	ldr r0, [r1, #0]
	mov r1, r5
	blx r2
_020AC648:
	ldr r0, _020AC6B8 ; =0x021C5A88
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC698
	ldr r0, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AC698
_020AC66C: ; jump table
	b _020AC67C ; case 0
	b _020AC68C ; case 1
	b _020AC68C ; case 2
	b _020AC698 ; case 3
_020AC67C:
	mov r0, r4
	mov r1, r5
	bl sub_020AC28C
	b _020AC698
_020AC68C:
	mov r0, r4
	mov r1, r5
	bl sub_020ABC2C
_020AC698:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020AC6B8 ; =0x021C5A88
	mov r1, r5
	ldr r0, [r0, #0]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AC6B8: .word 0x021C5A88
	arm_func_end sub_020AC608

	arm_func_start sub_020AC6BC
sub_020AC6BC: ; 0x020AC6BC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020AC7A0 ; =0x021C5A88
	mov r6, r0
	ldr r3, [r2, #0]
	mov r4, r1
	ldr r5, [r3, #0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #1
	str r0, [r3, #0x30]
	ldr r3, [r5, #0x18]
	cmp r3, #0
	beq _020AC700
	ldr r0, [r2, #0]
	mov r1, r6
	blx r3
_020AC700:
	ldr r0, _020AC7A0 ; =0x021C5A88
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC780
	mvn r0, #0
	cmp r4, r0
	beq _020AC744
	mov r0, r4
	ldr r4, [r5, #0x14]
	bl sub_020AB164
	mov r3, #1
	mvn r1, r3, lsl r4
	ldr r2, [r0, #0x20]
	and r1, r2, r1
	orr r1, r1, r3, lsl r4
	str r1, [r0, #0x20]
_020AC744:
	ldr r0, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AC780
_020AC754: ; jump table
	b _020AC764 ; case 0
	b _020AC774 ; case 1
	b _020AC774 ; case 2
	b _020AC780 ; case 3
_020AC764:
	mov r0, r5
	mov r1, r6
	bl sub_020AC28C
	b _020AC780
_020AC774:
	mov r0, r5
	mov r1, r6
	bl sub_020ABC2C
_020AC780:
	ldr r2, [r5, #0x1c]
	cmp r2, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020AC7A0 ; =0x021C5A88
	mov r1, r6
	ldr r0, [r0, #0]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AC7A0: .word 0x021C5A88
	arm_func_end sub_020AC6BC

	arm_func_start sub_020AC7A4
sub_020AC7A4: ; 0x020AC7A4
	stmfd sp!, {r3, lr}
	ldrh r3, [r0, #4]
	ldr r2, _020AC868 ; =0x0000FFFF
	cmp r3, #0
	beq _020AC7CC
	cmp r3, #1
	beq _020AC7E8
	cmp r3, #2
	beq _020AC7FC
	b _020AC860
_020AC7CC:
	ldrh r2, [r0]
	ldrh r3, [r0, #0xc]
	sub r0, r1, r2
	add r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	b _020AC860
_020AC7E8:
	ldrh r2, [r0]
	sub r1, r1, r2
	add r0, r0, r1, lsl #1
	ldrh r2, [r0, #0xc]
	b _020AC860
_020AC7FC:
	ldrh r3, [r0, #0xc]
	add ip, r0, #0xe
	sub r0, r3, #1
	add lr, ip, r0, lsl #2
	cmp ip, lr
	bhi _020AC860
_020AC814:
	sub r3, lr, ip
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r0, r0, asr #2
	add r0, r0, r0, lsr #31
	mov r3, r0, asr #1
	mov r0, r3, lsl #2
	ldrh r0, [ip, r0]
	add r3, ip, r3, lsl #2
	cmp r0, r1
	addlo ip, r3, #4
	blo _020AC858
	cmp r1, r0
	sublo lr, r3, #4
	blo _020AC858
	ldrh r2, [r3, #2]
	b _020AC860
_020AC858:
	cmp ip, lr
	bls _020AC814
_020AC860:
	mov r0, r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AC868: .word 0x0000FFFF
	arm_func_end sub_020AC7A4

	arm_func_start sub_020AC86C
sub_020AC86C: ; 0x020AC86C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	bl sub_020AE1EC
	ldr r0, _020AC88C ; =sub_020AE47C
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AC88C: .word sub_020AE47C
	arm_func_end sub_020AC86C

	arm_func_start sub_020AC890
sub_020AC890: ; 0x020AC890
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020AC8CC
_020AC8A4:
	ldrh r2, [r0]
	cmp r2, r1
	ldrlsh r2, [r0, #2]
	cmpls r1, r2
	bhi _020AC8C0
	bl sub_020AC7A4
	ldmia sp!, {r3, pc}
_020AC8C0:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020AC8A4
_020AC8CC:
	ldr r0, _020AC8D4 ; =0x0000FFFF
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AC8D4: .word 0x0000FFFF
	arm_func_end sub_020AC890

	arm_func_start sub_020AC8D8
sub_020AC8D8: ; 0x020AC8D8
	ldr ip, [r0]
	ldr r3, [ip, #0xc]
	cmp r3, #0
	beq _020AC91C
_020AC8E8:
	ldrh r2, [r3]
	cmp r2, r1
	ldrlsh r0, [r3, #2]
	cmpls r1, r0
	bhi _020AC910
	sub r0, r1, r2
	add r1, r3, #8
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	bx lr
_020AC910:
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _020AC8E8
_020AC91C:
	add r0, ip, #4
	bx lr
	arm_func_end sub_020AC8D8

	arm_func_start sub_020AC924
sub_020AC924: ; 0x020AC924
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r8, r0
	str r2, [sp]
	ldr r5, [r8, #4]
	add r0, sp, #0
	mov r7, r1
	mov r6, r3
	mov r4, #0
	blx r5
	movs r1, r0
	beq _020AC9A0
	ldr sb, _020AC9CC ; =0x0000FFFF
	add sl, sp, #0
_020AC95C:
	cmp r1, #0xa
	beq _020AC9A0
	mov r0, r8
	bl sub_020AC890
	mov r1, r0
	cmp r1, sb
	ldreq r0, [r8]
	ldreqh r1, [r0, #2]
	mov r0, r8
	bl sub_020AC8D8
	ldrsb r1, [r0, #2]
	mov r0, sl
	add r1, r7, r1
	add r4, r4, r1
	blx r5
	movs r1, r0
	bne _020AC95C
_020AC9A0:
	cmp r6, #0
	beq _020AC9B8
	cmp r1, #0xa
	ldreq r0, [sp]
	movne r0, #0
	str r0, [r6, #0]
_020AC9B8:
	cmp r4, #0
	subgt r4, r4, r7
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020AC9CC: .word 0x0000FFFF
	arm_func_end sub_020AC924

	arm_func_start sub_020AC9D0
sub_020AC9D0: ; 0x020AC9D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	add r4, sp, #0
	mov r3, #0
	mov r8, r0
	str r2, [sp, #8]
	str r3, [r4, #0]
	str r3, [r4, #4]
	ldr r7, [r8, #4]
	add r0, sp, #8
	mov r4, r1
	mov r6, #1
	blx r7
	cmp r0, #0
	beq _020ACA28
	add r5, sp, #8
_020ACA10:
	cmp r0, #0xa
	mov r0, r5
	addeq r6, r6, #1
	blx r7
	cmp r0, #0
	bne _020ACA10
_020ACA28:
	ldr r0, [r8]
	ldrsb r0, [r0, #1]
	add r0, r4, r0
	mul r0, r6, r0
	sub r0, r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020AC9D0

	arm_func_start sub_020ACA44
sub_020ACA44: ; 0x020ACA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r6, r2
	ldr r2, [sp, #0x28]
	add sb, sp, #0
	mov r4, #0
	mov r8, r0
	mov r7, r1
	mov r5, r3
	str r4, [sb]
	str r4, [sb, #4]
	cmp r2, #0
	mov r4, #1
	beq _020ACAAC
	add sb, sp, #0x28
_020ACA80:
	mov r0, r7
	mov r1, r6
	mov r3, sb
	bl sub_020AC924
	ldr r1, [sp]
	ldr r2, [sp, #0x28]
	cmp r0, r1
	strgt r0, [sp]
	add r4, r4, #1
	cmp r2, #0
	bne _020ACA80
_020ACAAC:
	ldr r0, [r7, #0]
	sub r2, r4, #1
	ldrsb r1, [r0, #1]
	ldr r0, [sp]
	add r1, r5, r1
	mul r1, r2, r1
	sub r1, r1, r5
	str r1, [sp, #4]
	stmia r8, {r0, r1}
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020ACA44

	arm_func_start sub_020ACAD8
sub_020ACAD8: ; 0x020ACAD8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, #3
	ldr r7, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r8, _020ACBCC ; =0x020F9774
	mov r5, #0
	mov sb, sl
	mvn r4, #0
_020ACAF8:
	and ip, r3, r4, lsl r6
	cmp ip, r1
	and lr, r2, r4, lsl r7
	bhi _020ACB3C
	mla r5, r2, ip, r5
	cmp lr, r0
	bhi _020ACB2C
	sub r3, r3, ip
	mla r5, lr, r3, r5
	sub r0, r0, lr
	sub r1, r1, ip
	sub r2, r2, lr
	b _020ACB84
_020ACB2C:
	mov r2, lr
	sub r1, r1, ip
	sub r3, r3, ip
	b _020ACB84
_020ACB3C:
	cmp lr, r0
	mvn r3, r4, lsl r6
	bhi _020ACB5C
	mla r5, lr, ip, r5
	mov r3, ip
	sub r0, r0, lr
	sub r2, r2, lr
	b _020ACB84
_020ACB5C:
	and r2, r1, r4, lsl r6
	mla r5, lr, r2, r5
	and r2, r0, r4, lsl r7
	mvn r4, r4, lsl r7
	add r2, r5, r2, lsl r6
	and r1, r1, r3
	add r1, r2, r1, lsl r7
	and r0, r0, r4
	add r0, r1, r0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020ACB84:
	cmp r2, #8
	movge r6, sl
	movlt r6, r2
	clzlt r6, r6
	rsblt r6, r6, #0x1f
	cmp r3, #8
	movge r7, sb
	movlt r7, r3
	clzlt r7, r7
	rsblt r7, r7, #0x1f
	add r7, r8, r7, lsl #3
	add ip, r7, r6, lsl #1
	ldrb r7, [r7, r6, lsl #1]
	ldrb r6, [ip, #1]
	str r7, [sp, #0x20]
	str r6, [sp, #0x24]
	b _020ACAF8
_020ACBC8:
	.byte 0xF0, 0x87, 0xBD, 0xE8
_020ACBCC: .word 0x020F9774
	arm_func_end sub_020ACAD8

	arm_func_start sub_020ACBD0
sub_020ACBD0: ; 0x020ACBD0
	ldrb r3, [r0, #1]
	ldr r2, _020ACBE8 ; =0x020F9794
	ldrb r1, [r0]
	add r0, r2, r3, lsl #4
	ldr r0, [r0, r1, lsl #2]
	bx lr
	; .align 2, 0
_020ACBE8: .word 0x020F9794
	arm_func_end sub_020ACBD0

	arm_func_start sub_020ACBEC
sub_020ACBEC: ; 0x020ACBEC
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #8
	ldreq r4, [sp, #0x10]
	mov ip, r0
	ldr r0, [sp, #0x14]
	cmpeq r4, #8
	bne _020ACC1C
	ldr r2, [sp, #0x18]
	mov r1, ip
	mov r2, r2, lsl #3
	bl sub_020C4BB8
	ldmia sp!, {r3, r4, r5, pc}
_020ACC1C:
	ldr r4, [sp, #0x18]
	cmp r4, #4
	bne _020ACC7C
	mov r5, r1, lsl #2
	add r4, r5, r3, lsl #2
	mvn r3, #0
	rsb r4, r4, #0x20
	mov r3, r3, lsr r5
	add r1, r4, r1, lsl #2
	mov r3, r3, lsl r1
	ldr r1, [sp, #0x10]
	add r2, ip, r2, lsl #2
	add r5, r2, r1, lsl #2
	and r1, r0, r3, lsr r4
	mvn r3, r3, lsr r4
	cmp r2, r5
	ldmhsia sp!, {r3, r4, r5, pc}
_020ACC60:
	ldr r0, [r2, #0]
	and r0, r0, r3
	orr r0, r1, r0
	str r0, [r2, #0], #4
	cmp r2, r5
	blo _020ACC60
	ldmia sp!, {r3, r4, r5, pc}
_020ACC7C:
	mov r1, r1, lsl #3
	mvn r4, #0
	add r3, r1, r3, lsl #3
	rsb r3, r3, #0x40
	mov r5, r4, lsr r1
	cmp r3, #0x20
	movlo r5, r5, lsl r1
	blo _020ACCAC
	sub lr, r3, #0x20
	add r4, r1, lr
	mov r4, r5, lsl r4
	mov r5, r4, lsr lr
_020ACCAC:
	mvn lr, #0
	mov r4, lr, lsl r3
	cmp r1, #0x20
	movlo r3, r4, lsr r3
	blo _020ACCD0
	sub lr, r1, #0x20
	add r1, lr, r3
	mov r1, r4, lsr r1
	mov r3, r1, lsl lr
_020ACCD0:
	ldr r1, [sp, #0x10]
	add r4, ip, r2, lsl #3
	add ip, r4, r1, lsl #3
	and r1, r0, r5
	and r2, r0, r3
	mvn r5, r5
	mvn r3, r3
	cmp r4, ip
	ldmhsia sp!, {r3, r4, r5, pc}
_020ACCF4:
	ldr r0, [r4, #0]
	and r0, r0, r5
	orr r0, r1, r0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	and r0, r0, r3
	orr r0, r2, r0
	str r0, [r4, #4]
	add r4, r4, #8
	cmp r4, ip
	blo _020ACCF4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020ACBEC

	arm_func_start sub_020ACD24
sub_020ACD24: ; 0x020ACD24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	ldr r5, [r0, #8]
	ldr r4, [r0, #0xc]
	cmp r5, #0
	strge r5, [sp]
	movlt r1, #0
	strlt r1, [sp]
	ldr r1, [r0, #0x10]
	cmp r4, #0
	add sl, r5, r1
	ldr r1, [r0, #0x14]
	movge r2, r4
	movlt r2, #0
	cmp sl, #8
	add r3, r4, r1
	movge sl, #8
	cmp r3, #8
	movge r3, #8
	cmp r4, #0
	movgt r4, #0
	cmp r5, #0
	ldr r7, [r0, #0x20]
	movgt r5, #0
	rsb r1, r4, #0
	mul r6, sl, r7
	ldr r8, [r0, #0x1c]
	rsb r4, r5, #0
	mul sb, r8, r4
	ldr r4, [r0, #0x18]
	mov sl, r6
	str r4, [sp, #0x10]
	ldr r4, [sp]
	cmp r7, #4
	mul r5, r4, r7
	ldr r4, [sp, #0x10]
	str r5, [sp]
	mla r4, r1, r4, sb
	ldr r1, [r0, #4]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0]
	bne _020ACE94
	ldr r7, [r0, #0x24]
	add r0, r1, r2, lsl #2
	str r0, [sp, #0xc]
	add r0, r1, r3, lsl #2
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	cmp r1, r0
	addhs sp, sp, #0x28
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #0xf
	add r5, sp, #0x20
_020ACDF8:
	ldr r0, [sp, #0xc]
	mov r1, r4, lsr #0x1f
	ldr sb, [r0]
	ldr r0, [sp, #0x14]
	rsb r2, r1, r4, lsl #29
	add r0, r0, r4, lsr #3
	str r0, [sp, #0x20]
	mov r0, #0
	strb r0, [sp, #0x24]
	strb r0, [sp, #0x25]
	mov r0, r5
	add r1, r1, r2, ror #29
	bl sub_020AE41C
	ldr r6, [sp]
	mov r0, r6
	cmp r0, sl
	bhs _020ACE6C
_020ACE3C:
	mov r0, r5
	mov r1, r8
	bl sub_020AE41C
	cmp r0, #0
	beq _020ACE60
	add r0, r7, r0
	mvn r1, fp, lsl r6
	and r1, sb, r1
	orr sb, r1, r0, lsl r6
_020ACE60:
	add r6, r6, #4
	cmp r6, sl
	blo _020ACE3C
_020ACE6C:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str sb, [r1], #4
	cmp r1, r0
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	add r4, r4, r0
	blo _020ACDF8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020ACE94:
	ldr r5, [r0, #0x24]
	add r0, r1, r3, lsl #3
	add fp, r1, r2, lsl #3
	str r0, [sp, #4]
	cmp fp, r0
	addhs sp, sp, #0x28
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020ACEB0:
	mov r1, r4, lsr #0x1f
	rsb r0, r1, r4, lsl #29
	add r1, r1, r0, ror #29
	ldr r0, [sp, #0x14]
	ldmia fp, {r6, r7}
	mov r2, #0
	add r0, r0, r4, lsr #3
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	strb r2, [sp, #0x1c]
	strb r2, [sp, #0x1d]
	bl sub_020AE41C
	ldr sb, [sp]
	mov r0, sb
	cmp r0, sl
	bhs _020ACF40
_020ACEF0:
	add r0, sp, #0x18
	mov r1, r8
	bl sub_020AE41C
	cmp r0, #0
	beq _020ACF34
	add r1, r5, r0
	cmp sb, #0x20
	mov r0, #0xff
	bhs _020ACF24
	mvn r0, r0, lsl sb
	and r0, r6, r0
	orr r6, r0, r1, lsl sb
	b _020ACF34
_020ACF24:
	sub r2, sb, #0x20
	mvn r0, r0, lsl r2
	and r0, r7, r0
	orr r7, r0, r1, lsl r2
_020ACF34:
	add sb, sb, #8
	cmp sb, sl
	blo _020ACEF0
_020ACF40:
	ldr r0, [sp, #4]
	stmia fp, {r6, r7}
	add fp, fp, #8
	cmp fp, r0
	ldr r0, [sp, #0x10]
	add r4, r4, r0
	blo _020ACEB0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020ACD24

	arm_func_start sub_020ACF64
sub_020ACF64: ; 0x020ACF64
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	ldr r4, [sp, #0x54]
	ldrb r6, [r0, #0xc]
	str r4, [sp, #0x54]
	ldr r4, [r4, #0]
	ldr r5, [r1, #0]
	mov r7, r6, lsl #6
	ldrb r4, [r4, #1]
	mov r6, r7, asr #2
	add r6, r7, r6, lsr #29
	cmp r4, #0
	ldr r5, [r5, #8]
	mov sl, r2
	mov sb, r3
	mov r8, r6, asr #3
	addeq sp, sp, #0x2c
	ldmib r0, {fp, ip}
	ldr lr, [r0]
	ldrb r2, [r5, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	adds r7, sl, r4
	addmi sp, sp, #0x2c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	adds r3, sb, r2
	addmi sp, sp, #0x2c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	movle r5, #0
	movgt r5, sl, lsr #3
	cmp sb, #0
	movle r6, #0
	add r7, r7, #7
	movgt r6, sb, lsr #3
	cmp fp, r7, lsr #3
	mov r7, r7, lsr #3
	add r3, r3, #7
	movls r7, fp
	mov fp, r3, lsr #3
	cmp ip, r3, lsr #3
	movls fp, ip
	subs r3, r7, r5
	sub fp, fp, r6
	addmi sp, sp, #0x2c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp fp, #0
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [r0, #0x10]
	cmp sl, #0
	mla r6, r7, r6, r5
	sub r5, r7, r3
	mul r5, r8, r5
	str r5, [sp]
	ldr r5, [sp, #0x54]
	mla r7, r8, r6, lr
	ldr ip, [r5, #4]
	ldr r6, [sp, #0x50]
	str ip, [sp, #8]
	sub r5, r6, #1
	str r4, [sp, #0x14]
	str r5, [sp, #0x28]
	str r2, [sp, #0x18]
	ldr r2, [r1, #0]
	andge sl, sl, #7
	ldr r2, [r2, #8]
	cmp sb, #0
	ldrb r2, [r2, #6]
	andge sb, sb, #7
	sub fp, sb, fp, lsl #3
	str r2, [sp, #0x20]
	ldrb r0, [r0, #0xc]
	cmp sb, fp
	sub r6, sl, r3, lsl #3
	str r0, [sp, #0x24]
	ldr r0, [r1, #0]
	ldr r0, [r0, #8]
	ldrb r0, [r0]
	smulbb r0, r2, r0
	str r0, [sp, #0x1c]
	addle sp, sp, #0x2c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #4
_020AD0B0:
	mov r5, sl
	str sb, [sp, #0x10]
	cmp sl, r6
	ble _020AD0E0
_020AD0C0:
	mov r0, r4
	str r7, [sp, #4]
	str r5, [sp, #0xc]
	bl sub_020ACD24
	sub r5, r5, #8
	cmp r5, r6
	add r7, r7, r8
	bgt _020AD0C0
_020AD0E0:
	ldr r0, [sp]
	sub sb, sb, #8
	cmp sb, fp
	add r7, r7, r0
	bgt _020AD0B0
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020ACF64

	arm_func_start sub_020AD0FC
sub_020AD0FC: ; 0x020AD0FC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r6, [sp, #0x74]
	ldrb r5, [r0, #0xc]
	ldr r4, [r6, #0]
	ldr r7, [r1, #0]
	mov r8, r5, lsl #6
	ldrb r4, [r4, #1]
	mov r5, r8, asr #2
	add r5, r8, r5, lsr #29
	ldr r7, [r7, #8]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r4, #0
	mov sb, r5, asr #3
	addeq sp, sp, #0x4c
	ldmib r0, {r3, r5}
	ldrb r2, [r7, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [sp, #8]
	adds r7, r7, r4
	addmi sp, sp, #0x4c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r8, [sp, #0xc]
	adds r8, r8, r2
	addmi sp, sp, #0x4c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr sl, [sp, #8]
	add r7, r7, #7
	cmp sl, #0
	movle sl, #0
	strle sl, [sp, #0x10]
	movgt sl, sl, lsr #3
	strgt sl, [sp, #0x10]
	ldr sl, [sp, #0xc]
	cmp sl, #0
	movle sl, #0
	movgt sl, sl, lsr #3
	cmp r3, r7, lsr #3
	mov r7, r7, lsr #3
	movls r7, r3
	add r3, r8, #7
	cmp r5, r3, lsr #3
	mov r8, r3, lsr #3
	ldr r3, [sp, #0x10]
	movls r8, r5
	subs r5, r7, r3
	sub r7, r8, sl
	addmi sp, sp, #0x4c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0
	addlt sp, sp, #0x4c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [sp, #8]
	ldr fp, [r0]
	cmp r3, #0
	andge r3, r3, #7
	strge r3, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r8, [sp, #8]
	ldr r6, [r6, #4]
	cmp r3, #0
	andge r3, r3, #7
	strge r3, [sp, #0xc]
	ldr r3, [sp, #0x70]
	sub r5, r8, r5, lsl #3
	ldr r8, [sp, #0xc]
	sub r3, r3, #1
	str r3, [sp, #0x48]
	sub r7, r8, r7, lsl #3
	str r2, [sp, #0x38]
	str r6, [sp, #0x28]
	str r4, [sp, #0x34]
	ldr r4, [r1, #0]
	mov r3, r8
	mov r2, r7
	cmp r3, r2
	ldr r2, [r4, #8]
	str r7, [sp, #0x1c]
	ldrb r3, [r2, #6]
	str r3, [sp, #0x40]
	ldrb r2, [r0, #0xc]
	str r2, [sp, #0x44]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	ldrb r1, [r1]
	smulbb r1, r3, r1
	str r1, [sp, #0x3c]
	ldr r3, [r0, #0x10]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	str r1, [sp, #0x14]
	mov r2, r3, lsl #0x18
	mov r1, r3, lsl #0x10
	str r3, [sp, #0x20]
	str r0, [sp, #0x18]
	mov r8, r2, lsr #0x18
	mov r7, r1, lsr #0x18
	addle sp, sp, #0x4c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AD28C:
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [sp, #8]
	cmp r0, r5
	mov r4, r0
	ble _020AD2E8
_020AD2A8:
	ldr r2, [sp, #0x14]
	str r8, [sp]
	ldr r3, [sp, #0x18]
	mov r0, r6
	mov r1, sl
	str r7, [sp, #4]
	bl sub_020ACAD8
	mla r1, r0, sb, fp
	add r0, sp, #0x24
	str r4, [sp, #0x2c]
	str r1, [sp, #0x24]
	bl sub_020ACD24
	sub r4, r4, #8
	add r6, r6, #1
	cmp r4, r5
	bgt _020AD2A8
_020AD2E8:
	ldr r0, [sp, #0xc]
	add sl, sl, #1
	sub r1, r0, #8
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _020AD28C
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AD0FC

	arm_func_start sub_020AD30C
sub_020AD30C: ; 0x020AD30C
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldrb r2, [r3, #0xc]
	ldr ip, [r3, #4]
	cmp r2, #4
	orreq r0, r1, r1, lsl #4
	orreq r0, r0, r0, lsl #8
	orrne r0, r1, r1, lsl #8
	orr r1, r0, r0, lsl #16
	ldr r0, [r3, #8]
	mov r2, r2, lsl #6
	mul lr, ip, r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r2, r0, asr #3
	mov r0, r1
	mul r2, lr, r2
	ldr r1, [r3, #0]
	bl sub_020C4BB8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020AD30C

	arm_func_start sub_020AD35C
sub_020AD35C: ; 0x020AD35C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	ldrb r2, [r7, #0xc]
	mov r6, r1
	ldr sb, [r7]
	cmp r2, #4
	orreq r0, r6, r6, lsl #4
	orreq r0, r0, r0, lsl #8
	orrne r0, r6, r6, lsl #8
	mov r1, r2, lsl #6
	orr r6, r0, r0, lsl #16
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r3, r0, asr #3
	ldr r2, [r7, #0x10]
	ldr r1, [r7, #4]
	ldr r0, [r7, #8]
	mul r5, r3, r2
	mul r4, r3, r1
	mov r8, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020AD3B4:
	mov r0, r6
	mov r1, sb
	mov r2, r4
	bl sub_020C4BB8
	ldr r0, [r7, #8]
	add r8, r8, #1
	cmp r8, r0
	add sb, sb, r5
	blt _020AD3B4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020AD35C

	arm_func_start sub_020AD3DC
sub_020AD3DC: ; 0x020AD3DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	ldr r4, [sp, #0x58]
	mov sb, r2
	ldrb fp, [r0, #0xc]
	mov sl, r1
	add r1, sb, r4
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x5c]
	mov r1, r3
	add r1, r1, r2
	cmp fp, #4
	str r1, [sp, #0x24]
	orreq r1, sl, sl, lsl #4
	orreq r1, r1, r1, lsl #8
	orrne r1, sl, sl, lsl #8
	str r3, [sp, #0xc]
	orr sl, r1, r1, lsl #16
	ldr r1, [sp, #0xc]
	mov r6, fp, lsl #6
	bic r1, r1, #7
	mov r4, r6, asr #2
	mov r2, r1, asr #2
	str r1, [sp, #0x2c]
	add r1, r1, r2, lsr #29
	ldr r2, [r0, #0x10]
	mov r3, r1, asr #3
	mul r1, r3, r2
	bic r3, sb, #7
	mov r5, r3, asr #2
	add r4, r6, r4, lsr #29
	str r3, [sp, #0x18]
	add r5, r3, r5, lsr #29
	mov r3, r4, asr #3
	str r3, [sp, #0x14]
	add r4, r1, r5, asr #3
	ldr r3, [sp, #0x24]
	ldr r5, [r0, #0]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	mla r4, r1, r4, r5
	add r3, r3, #7
	bic r1, r3, #7
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x14]
	add r0, r0, #7
	mul r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	str r4, [sp, #0x1c]
	cmp r2, r1
	bic r6, r0, #7
	addge sp, sp, #0x30
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AD4B8:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	movge r8, #0
	bge _020AD4D8
	mov r1, r0
	ldr r0, [sp, #0x2c]
	sub r8, r1, r0
_020AD4D8:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	ldr r7, [sp, #0x1c]
	sub r0, r1, r0
	cmp r0, #8
	movgt r0, #8
	sub r5, r0, r8
	ldr r0, [sp, #0x18]
	cmp r0, r6
	mov r4, r0
	bge _020AD548
_020AD504:
	ldr r0, [sp, #0x28]
	cmp r4, sb
	sublt r1, sb, r4
	sub r0, r0, r4
	movge r1, #0
	cmp r0, #8
	movgt r0, #8
	sub r3, r0, r1
	mov r0, r7
	mov r2, r8
	stmia sp, {r5, sl, fp}
	bl sub_020ACBEC
	ldr r0, [sp, #0x14]
	add r4, r4, #8
	add r7, r7, r0
	cmp r4, r6
	blt _020AD504
_020AD548:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r1, r0, #8
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x2c]
	cmp r1, r0
	blt _020AD4B8
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AD3DC

	arm_func_start sub_020AD578
sub_020AD578: ; 0x020AD578
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	ldrb r4, [r0, #0xc]
	mov sl, r2
	mov fp, r1
	str r4, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r4, [sp, #0x70]
	cmp r1, #4
	add r1, sl, r4
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x74]
	mov r1, r3
	add r1, r1, r2
	bic r2, sl, #7
	str r1, [sp, #0x38]
	str r3, [sp, #0xc]
	str r2, [sp, #0x28]
	ldr r2, [sp, #0xc]
	orreq r1, fp, fp, lsl #4
	bic r2, r2, #7
	str r2, [sp, #0x40]
	ldr r2, [sp, #0x10]
	orreq r1, r1, r1, lsl #8
	mov r5, r2, lsl #6
	ldr r2, [sp, #0x38]
	mov r3, r5, asr #2
	add r6, r2, #7
	ldr r2, [sp, #0x28]
	add r3, r5, r3, lsr #29
	mov r4, r2, asr #2
	ldr r2, [sp, #0x40]
	orrne r1, fp, fp, lsl #8
	mov r5, r2, asr #2
	bic r2, r6, #7
	str r2, [sp, #0x34]
	mov r2, r3, asr #3
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x28]
	orr fp, r1, r1, lsl #16
	add r2, r2, r4, lsr #29
	mov r2, r2, asr #3
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x40]
	ldr r1, [r0, #0x10]
	add r2, r2, r5, lsr #29
	mov r8, r2, asr #3
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x34]
	str r1, [sp, #0x44]
	cmp r3, r2
	ldr r2, [sp, #0x3c]
	add r2, r2, #7
	bic r7, r2, #7
	ldr r2, [r0, #4]
	str r2, [sp, #0x18]
	ldr r2, [r0, #8]
	ldr r0, [r0, #0]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x30]
	mov r0, r1, lsl #0x18
	mov r0, r0, lsr #0x18
	str r0, [sp, #0x20]
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x18
	str r0, [sp, #0x24]
	addge sp, sp, #0x48
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AD688:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	movge sb, #0
	bge _020AD6A8
	mov r1, r0
	ldr r0, [sp, #0x40]
	sub sb, r1, r0
_020AD6A8:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x40]
	ldr r6, [sp, #0x2c]
	sub r0, r1, r0
	cmp r0, #8
	movgt r0, #8
	sub r5, r0, sb
	ldr r0, [sp, #0x28]
	cmp r0, r7
	mov r4, r0
	bge _020AD748
_020AD6D4:
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r8
	bl sub_020ACAD8
	ldr r2, [sp, #0x3c]
	cmp r4, sl
	sublt r1, sl, r4
	sub r2, r2, r4
	movge r1, #0
	cmp r2, #8
	movgt r2, #8
	stmia sp, {r5, fp}
	sub r3, r2, r1
	ldr r2, [sp, #0x10]
	ldr ip, [sp, #0x14]
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	mla r0, ip, r0, r2
	mov r2, sb
	bl sub_020ACBEC
	add r4, r4, #8
	add r6, r6, #1
	cmp r4, r7
	blt _020AD6D4
_020AD748:
	ldr r0, [sp, #0x40]
	add r8, r8, #1
	add r1, r0, #8
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x40]
	cmp r1, r0
	blt _020AD688
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AD578

	arm_func_start sub_020AD76C
sub_020AD76C: ; 0x020AD76C
	str r2, [r0, #4]
	ldr r2, [sp]
	str r3, [r0, #8]
	strb r2, [r0, #0xc]
	ldr r2, [sp, #4]
	str r1, [r0, #0]
	ldr r1, [sp, #8]
	str r2, [r0, #0x14]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_020AD76C

	arm_func_start sub_020AD794
sub_020AD794: ; 0x020AD794
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r1
	ldrh r1, [sp, #0x2c]
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl sub_020AC890
	ldr r1, _020AD8B4 ; =0x0000FFFF
	mov r4, r0
	cmp r4, r1
	ldreq r0, [r7]
	ldreqh r4, [r0, #2]
	mov r0, r7
	mov r1, r4
	bl sub_020AC8D8
	str r0, [sp, #8]
	ldr r1, [r7, #0]
	ldr r2, [r1, #8]
	ldrh r1, [r2, #2]
	add r2, r2, #8
	mla r1, r4, r1, r2
	str r1, [sp, #0xc]
	ldr r1, [r7, #0]
	ldr r3, [r1, #8]
	ldrb r1, [r3, #7]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _020AD878
_020AD80C: ; jump table
	b _020AD82C ; case 0
	b _020AD838 ; case 1
	b _020AD838 ; case 2
	b _020AD84C ; case 3
	b _020AD84C ; case 4
	b _020AD868 ; case 5
	b _020AD868 ; case 6
	b _020AD82C ; case 7
_020AD82C:
	ldrsb r0, [r0]
	add r6, r6, r0
	b _020AD878
_020AD838:
	ldrb r1, [r3]
	ldrsb r0, [r0]
	sub r6, r6, r1
	add r5, r5, r0
	b _020AD878
_020AD84C:
	ldrsb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r0, [r3, #1]
	add r1, r2, r1
	sub r6, r6, r1
	sub r5, r5, r0
	b _020AD878
_020AD868:
	ldrsb r1, [r0]
	ldrb r0, [r3, #1]
	add r0, r1, r0
	sub r5, r5, r0
_020AD878:
	ldr r1, [sp, #0x28]
	add r0, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r8, #0x14]
	mov r0, r8
	ldr r4, [r1, #0]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	blx r4
	ldr r0, [sp, #8]
	ldrsb r0, [r0, #2]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020AD8B4: .word 0x0000FFFF
	arm_func_end sub_020AD794

	arm_func_start sub_020AD8B8
sub_020AD8B8: ; 0x020AD8B8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x10]
	ldr ip, _020AD8E0 ; =0x020F975C
	str lr, [sp]
	str ip, [sp, #4]
	str r2, [sp, #8]
	bl sub_020AD76C
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020AD8E0: .word 0x020F975C
	arm_func_end sub_020AD8B8

	arm_func_start sub_020AD8E4
sub_020AD8E4: ; 0x020AD8E4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	cmp r2, #8
	movlt r4, r2
	movge ip, #3
	clzlt r4, r4
	rsblt ip, r4, #0x1f
	cmp r3, #8
	movlt r4, r3
	movge r5, #3
	clzlt r4, r4
	rsblt r5, r4, #0x1f
	ldr r4, _020AD964 ; =0x020F9774
	ldr lr, [sp, #0xc]
	add r5, r4, r5, lsl #3
	add r4, r5, ip, lsl #1
	ldrb ip, [r5, ip, lsl #1]
	bic r5, lr, #0xff
	ldrb r4, [r4, #1]
	ldr lr, [sp, #0x20]
	orr r5, r5, ip
	str lr, [sp]
	ldr ip, _020AD968 ; =0x020F9768
	bic lr, r5, #0xff00
	mov r4, r4, lsl #0x18
	orr r4, lr, r4, lsr #16
	str ip, [sp, #4]
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	bl sub_020AD76C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AD964: .word 0x020F9774
_020AD968: .word 0x020F9768
	arm_func_end sub_020AD8E4

	arm_func_start sub_020AD96C
sub_020AD96C: ; 0x020AD96C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x24]
	ldr lr, [sp, #0x20]
	cmp r5, #0x20
	ldr ip, [sp, #0x28]
	bgt _020AD9A8
	mla r4, r5, lr, r3
	ldr lr, [sp, #0x2c]
	mov r3, r5
	add r0, r0, r4, lsl #1
	stmia sp, {ip, lr}
	bl sub_020ADA1C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020AD9A8:
	add r6, lr, r2
	ldr r4, [sp, #0x2c]
	cmp lr, r6
	add r5, r3, r1
	addge sp, sp, #8
	mov r1, r4, lsl #0x1c
	ldmgeia sp!, {r4, r5, r6, r7, r8, pc}
_020AD9C4:
	cmp lr, #0x20
	movlt r2, lr
	addge r2, lr, #0x20
	mov r7, r3
	cmp r3, r5
	add r8, r0, r2, lsl #6
	bge _020ADA08
_020AD9E0:
	cmp r7, #0x20
	movlt r2, r7
	addge r2, r7, #0x3e0
	orr r4, ip, r1, lsr #16
	mov r2, r2, lsl #1
	add r7, r7, #1
	strh r4, [r8, r2]
	cmp r7, r5
	add ip, ip, #1
	blt _020AD9E0
_020ADA08:
	add lr, lr, #1
	cmp lr, r6
	blt _020AD9C4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020AD96C

	arm_func_start sub_020ADA1C
sub_020ADA1C: ; 0x020ADA1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [sp, #0x1c]
	ldr r8, [sp, #0x18]
	mov r6, #0
	cmp r2, #0
	mov ip, r4, lsl #0x1c
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, r6
_020ADA3C:
	mov r7, r0
	mov r5, r4
	cmp r1, #0
	ble _020ADA64
_020ADA4C:
	orr lr, r8, ip, lsr #16
	add r5, r5, #1
	cmp r5, r1
	add r8, r8, #1
	strh lr, [r7], #2
	blt _020ADA4C
_020ADA64:
	add r6, r6, #1
	cmp r6, r2
	add r0, r0, r3, lsl #1
	blt _020ADA3C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020ADA1C

	arm_func_start sub_020ADA78
sub_020ADA78: ; 0x020ADA78
	stmfd sp!, {r3, r4, r5, lr}
	mov r3, r0, lsr #3
	mov r5, r1, lsr #3
	mov r2, #0
	mla lr, r3, r5, r2
	and r4, r0, #2
	and r2, r0, #1
	add r2, r2, r4, lsr #1
	and r0, r0, #4
	mov ip, r2, lsl #1
	add ip, ip, r0, lsr #2
	mla ip, r5, ip, lr
	and r4, r1, #2
	and lr, r1, #1
	add r4, lr, r4, lsr #1
	and lr, r1, #4
	mov r1, r4, lsl #1
	add r1, r1, lr, lsr #2
	mla ip, r3, r1, ip
	add r1, r2, r0, lsr #2
	add r0, r4, lr, lsr #2
	mla r0, r1, r0, ip
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020ADA78

	arm_func_start sub_020ADAD4
sub_020ADAD4: ; 0x020ADAD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x38
	mov r7, r0
	mov r0, r1
	cmp r0, #8
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x10]
	str r0, [sp, #0x60]
	str r2, [sp, #0x14]
	ldrlt r0, [sp, #0x10]
	str r3, [sp, #0x34]
	ldr r6, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r4, [sp, #0x6c]
	movge r2, #3
	clzlt r0, r0
	rsblt r2, r0, #0x1f
	ldr r0, [sp, #0x14]
	cmp r0, #8
	ldrlt r0, [sp, #0x14]
	movge r1, #3
	clzlt r0, r0
	rsblt r1, r0, #0x1f
	ldr r0, _020ADDC0 ; =0x020F9774
	mvn r3, #0
	add r1, r0, r1, lsl #3
	add r0, r1, r2, lsl #1
	ldrb fp, [r1, r2, lsl #1]
	ldrb r1, [r0, #1]
	ldr r2, [sp, #0x14]
	cmp r6, #0
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x10]
	and r1, r1, r3, lsl fp
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	and r1, r2, r3, lsl r1
	str r1, [sp, #0x28]
	moveq r1, #1
	streq r1, [sp, #0x18]
	movne r1, #2
	strne r1, [sp, #0x18]
	mov r1, #0
	str r1, [sp, #0x24]
	bl sub_020ACBD0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov sb, r1, asr fp
	ldr r1, [sp, #0x30]
	mov r1, r2, asr r1
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x18]
	mov r2, r1, lsl fp
	ldr r1, [sp, #0x30]
	mov r8, r2, lsl r1
	mov r1, #0
	str r1, [sp, #0x1c]
	b _020ADC54
_020ADBBC:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	mov sl, #0
	mov r2, r2, lsl r1
	ldr r1, [sp, #0x60]
	add r1, r1, r2, lsl #3
	mov r2, #0x400
	and r3, r1, #0xff
	rsb r2, r2, #0
	b _020ADC40
_020ADBE4:
	mov ip, sl, lsl fp
	ldr r1, [sp, #0x34]
	add sl, sl, #1
	add r1, r1, ip, lsl #3
	mov lr, r1, lsl #0x17
	ldr ip, [r7]
	ldr r1, _020ADDC4 ; =0xFE00FF00
	and r1, ip, r1
	orr r1, r1, r3
	orr ip, r1, lr, lsr #7
	ldr r1, _020ADDC8 ; =0x3FFF3FFF
	and r1, ip, r1
	orr r1, r1, r0
	str r1, [r7, #0]
	ldrh r1, [r7, #4]
	and r1, r1, r2
	orr r1, r1, r5
	strh r1, [r7, #4]
	ldr r1, [r7, #0]
	add r5, r5, r8, asr r4
	bic r1, r1, #0x2000
	orr r1, r1, r6, lsl #13
	str r1, [r7, #0], #8
_020ADC40:
	cmp sl, sb
	blt _020ADBE4
	ldr r1, [sp, #0x1c]
	add r1, r1, #1
	str r1, [sp, #0x1c]
_020ADC54:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	cmp r2, r1
	blt _020ADBBC
	ldr r0, [sp, #0x24]
	mla r0, sb, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhs _020ADCDC
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x10]
	stmia sp, {r0, r6}
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x2c]
	sub r8, r1, r0
	ldr r1, [sp, #0x34]
	str r5, [sp, #8]
	add r3, r1, r2, lsl #3
	ldr r2, [sp, #0x28]
	mov r0, r7
	mov r1, r8
	str r4, [sp, #0xc]
	bl sub_020ADAD4
	ldr r1, [sp, #0x18]
	add r7, r7, r0, lsl #3
	mul r2, r1, r8
	ldr r1, [sp, #0x28]
	mul r2, r1, r2
	ldr r1, [sp, #0x24]
	add r5, r5, r2, lsr r4
	add r0, r1, r0
	str r0, [sp, #0x24]
_020ADCDC:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _020ADD48
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x34]
	add r0, r1, r0, lsl #3
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	str r4, [sp, #0xc]
	sub r8, r1, r0
	ldr r1, [sp, #0x2c]
	mov r0, r7
	mov r2, r8
	bl sub_020ADAD4
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	add r7, r7, r0, lsl #3
	mul r1, r2, r1
	mul r1, r8, r1
	add r5, r5, r1, lsr r4
	ldr r1, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x24]
_020ADD48:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	ldrlo r1, [sp, #0x28]
	ldrlo r0, [sp, #0x14]
	cmplo r1, r0
	bhs _020ADDB4
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	add r0, r1, r0, lsl #3
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x14]
	sub r1, r2, r1
	ldr r2, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	sub r2, r3, r2
	ldr r3, [sp, #0x34]
	mov r0, r7
	add r3, r3, r5, lsl #3
	str r4, [sp, #0xc]
	bl sub_020ADAD4
	ldr r1, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x24]
_020ADDB4:
	ldr r0, [sp, #0x24]
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020ADDC0: .word 0x020F9774
_020ADDC4: .word 0xFE00FF00
_020ADDC8: .word 0x3FFF3FFF
	arm_func_end sub_020ADAD4

	arm_func_start sub_020ADDCC
sub_020ADDCC: ; 0x020ADDCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov fp, r0
	ldr r4, [fp, #8]
	ldr r5, [fp, #4]
	ldr r6, [sp, #0x38]
	add r0, sp, #0xc
	str r6, [sp, #0xc]
	ldr r6, [r5, #4]
	mov sl, r1
	mov sb, r2
	str r3, [sp, #8]
	ldrsb r8, [sp, #0x41]
	blx r6
	cmp r0, #0
	beq _020ADE54
	ldrsb r7, [sp, #0x40]
_020ADE10:
	cmp r0, #0xa
	beq _020ADE54
	ldr r1, [sp, #8]
	mov r2, sl
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [fp]
	mov r1, r5
	mov r3, sb
	bl sub_020AD794
	add r0, r4, r0
	mla sl, r0, r7, sl
	mla sb, r0, r8, sb
	add r0, sp, #0xc
	blx r6
	cmp r0, #0
	bne _020ADE10
_020ADE54:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xa
	ldreq r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	movne r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020ADDCC

	arm_func_start sub_020ADE80
sub_020ADE80: ; 0x020ADE80
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov sl, r0
	ldr r0, [sl, #4]
	ldr r4, [sp, #0x60]
	ldr r0, [r0, #0]
	ldrsb r8, [sp, #0x65]
	ldrsb r0, [r0, #1]
	ldr r5, [sl, #0xc]
	ldrsb sb, [sp, #0x64]
	add r5, r5, r0
	rsb r0, r8, #0
	mul r0, r5, r0
	str r0, [sp, #0x20]
	mul r0, r5, r9
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov fp, r3
	str r4, [sp, #0x30]
	cmp r4, #0
	str r0, [sp, #0x58]
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [sp, #0x5c]
	mov r6, #0
	and r0, r2, #0x800
	add r1, fp, #1
	str r0, [sp, #0x18]
	add r0, r1, r1, lsr #31
	str r0, [sp, #0x2c]
	and r0, r2, #0x400
	str r0, [sp, #0x14]
	ldrb r0, [sp, #0x64]
	mov r7, r6
	str r0, [sp, #0x24]
	ldrb r0, [sp, #0x65]
	str r0, [sp, #0x28]
_020ADF1C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldr r0, [sp, #0xc]
	add r4, r0, r6
	ldr r0, [sp, #0x10]
	add r5, r0, r7
	beq _020ADF58
	ldr r2, [sp, #0x30]
	mov r3, #0
	ldmib sl, {r0, r1}
	bl sub_020AC924
	sub r0, fp, r0
	mla r4, r0, sb, r4
	mla r5, r0, r8, r5
	b _020ADF90
_020ADF58:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _020ADF90
	ldr r2, [sp, #0x30]
	mov r3, #0
	ldmib sl, {r0, r1}
	bl sub_020AC924
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	mov r1, r0, asr #1
	ldr r0, [sp, #0x2c]
	rsb r0, r1, r0, asr #1
	mla r4, r0, sb, r4
	mla r5, r0, r8, r5
_020ADF90:
	ldr r3, [sp, #0x30]
	mov r1, r4
	str r3, [sp]
	add r3, sp, #0x30
	str r3, [sp, #4]
	ldr r3, [sp, #0x24]
	mov r2, r5
	strb r3, [sp, #8]
	ldr r3, [sp, #0x28]
	mov r0, sl
	strb r3, [sp, #9]
	ldr r3, [sp, #0x58]
	bl sub_020ADDCC
	ldr r0, [sp, #0x20]
	add r6, r6, r0
	ldr r0, [sp, #0x1c]
	add r7, r7, r0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020ADF1C
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020ADE80

	arm_func_start sub_020ADFE8
sub_020ADFE8: ; 0x020ADFE8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	ldr r4, [sp, #0x44]
	mov r8, r0
	str r4, [sp]
	add r0, sp, #0x18
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldmib r8, {r1, r2, r3}
	ldr r4, [sp, #0x40]
	bl sub_020ACA44
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	tst r4, #0x10
	beq _020AE05C
	add r0, r2, #1
	rsb r0, r0, #0
	add r0, r0, r0, lsr #31
	ldrsb r1, [sp, #0x48]
	mov r2, r0, asr #1
	ldrsb r0, [sp, #0x49]
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
	b _020AE078
_020AE05C:
	tst r4, #0x20
	beq _020AE078
	ldrsb r1, [sp, #0x48]
	ldrsb r0, [sp, #0x49]
	rsb r2, r2, #0
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
_020AE078:
	tst r4, #2
	beq _020AE0AC
	ldr r0, [sp, #0x24]
	ldrsb r2, [sp, #0x49]
	add r0, r0, #1
	rsb r0, r0, #0
	add r0, r0, r0, lsr #31
	ldrsb r1, [sp, #0x48]
	mov r3, r0, asr #1
	rsb r0, r2, #0
	mla r7, r3, r0, r7
	mla r6, r3, r1, r6
	b _020AE0D0
_020AE0AC:
	tst r4, #4
	beq _020AE0D0
	ldrsb r1, [sp, #0x49]
	ldr r2, [sp, #0x24]
	ldrsb r0, [sp, #0x48]
	rsb r2, r2, #0
	rsb r1, r1, #0
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
_020AE0D0:
	str r5, [sp]
	ldr r1, [sp, #0x44]
	str r4, [sp, #4]
	ldrb r0, [sp, #0x48]
	str r1, [sp, #8]
	ldrb r4, [sp, #0x49]
	strb r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	strb r4, [sp, #0xd]
	bl sub_020ADE80
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020ADFE8

	arm_func_start sub_020AE10C
sub_020AE10C: ; 0x020AE10C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr ip, [sp, #0x30]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	tst ip, #0x100
	beq _020AE160
	ldr r0, [r7, #4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x34]
	bl sub_020AC9D0
	ldrsb r2, [sp, #0x39]
	ldr r3, [sp, #0x28]
	ldrsb r1, [sp, #0x38]
	sub r3, r3, r0
	rsb r0, r2, #0
	mla r6, r3, r0, r6
	mla r5, r3, r1, r5
	b _020AE1A8
_020AE160:
	tst ip, #0x80
	beq _020AE1A8
	ldr r0, [r7, #4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x34]
	bl sub_020AC9D0
	ldr r1, [sp, #0x28]
	add r0, r0, #1
	ldrsb r3, [sp, #0x39]
	add ip, r1, #1
	add r1, r0, r0, lsr #31
	ldrsb r2, [sp, #0x38]
	add r0, ip, ip, lsr #31
	mov r1, r1, asr #1
	rsb r1, r1, r0, asr #1
	rsb r0, r3, #0
	mla r6, r1, r0, r6
	mla r5, r1, r2, r5
_020AE1A8:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x34]
	str r0, [sp, #4]
	ldrb r0, [sp, #0x38]
	str r1, [sp, #8]
	ldrb ip, [sp, #0x39]
	strb r0, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb ip, [sp, #0xd]
	bl sub_020ADE80
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020AE10C

	arm_func_start sub_020AE1EC
sub_020AE1EC: ; 0x020AE1EC
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, #0
	beq _020AE264
	cmp r6, #0
	beq _020AE21C
	ldr r1, [r6, #0]
	ldr r0, _020AE334 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _020AE220
_020AE21C:
	mov r0, #0
_020AE220:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AE268
	cmp r6, #0
	beq _020AE250
	ldrh r1, [r6, #6]
	ldr r0, _020AE338 ; =0x00000101
	cmp r1, r0
	movhs r0, #1
	bhs _020AE254
_020AE250:
	mov r0, #0
_020AE254:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _020AE268
_020AE264:
	mov r0, r4
_020AE268:
	cmp r0, #0
	bne _020AE2E8
	cmp r6, #0
	beq _020AE2D4
	beq _020AE290
	ldr r1, [r6, #0]
	ldr r0, _020AE334 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _020AE294
_020AE290:
	mov r0, #0
_020AE294:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AE2D8
	cmp r6, #0
	beq _020AE2C0
	ldrh r0, [r6, #6]
	cmp r0, #0x100
	movhs r0, #1
	bhs _020AE2C4
_020AE2C0:
	mov r0, #0
_020AE2C4:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _020AE2D8
_020AE2D4:
	mov r0, #0
_020AE2D8:
	cmp r0, #0
	bne _020AE2E4
	bl sub_020C42A8
_020AE2E4:
	mov r4, #1
_020AE2E8:
	mov r0, r6
	bl sub_020AE340
	ldr r1, _020AE33C ; =0x46494E46
	mov r0, r6
	bl sub_020A727C
	cmp r0, #0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, #8
	str r0, [r5, #0]
	cmp r4, #0
	beq _020AE32C
	ldr r0, [r5, #0]
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #7]
_020AE32C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AE334: .word 0x4E465452
_020AE338: .word 0x00000101
_020AE33C: .word 0x46494E46
	arm_func_end sub_020AE1EC

	arm_func_start sub_020AE340
sub_020AE340: ; 0x020AE340
	stmfd sp!, {r4, r5, r6, lr}
	ldrh r1, [r0, #0xc]
	ldrh r3, [r0, #0xe]
	mov r2, #0
	add r1, r0, r1
	cmp r3, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r3, _020AE40C ; =0x46494E46
	ldr ip, _020AE410 ; =0x43574448
	ldr r4, _020AE414 ; =0x434D4150
	ldr lr, _020AE418 ; =0x43474C50
_020AE36C:
	ldr r5, [r1, #0]
	cmp r5, r4
	bhi _020AE384
	bhs _020AE3E0
	cmp r5, lr
	b _020AE3F0
_020AE384:
	cmp r5, ip
	bhi _020AE394
	beq _020AE3CC
	b _020AE3F0
_020AE394:
	cmp r5, r3
	bne _020AE3F0
	ldr r5, [r1, #0x10]
	add r5, r5, r0
	str r5, [r1, #0x10]
	ldr r5, [r1, #0x14]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x14]
	ldr r5, [r1, #0x18]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x18]
	b _020AE3F0
_020AE3CC:
	ldr r5, [r1, #0xc]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0xc]
	b _020AE3F0
_020AE3E0:
	ldr r5, [r1, #0x10]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x10]
_020AE3F0:
	ldrh r5, [r0, #0xe]
	ldr r6, [r1, #4]
	add r2, r2, #1
	cmp r2, r5
	add r1, r1, r6
	blt _020AE36C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AE40C: .word 0x46494E46
_020AE410: .word 0x43574448
_020AE414: .word 0x434D4150
_020AE418: .word 0x43474C50
	arm_func_end sub_020AE340

	arm_func_start sub_020AE41C
sub_020AE41C: ; 0x020AE41C
	stmfd sp!, {r4, r5, r6, lr}
	ldrsb r3, [r0, #4]
	ldrb r4, [r0, #5]
	mov r5, r1
	cmp r3, r5
	subge r1, r3, r5
	movge r2, r4, lsr r1
	strgeb r1, [r0, #4]
	bge _020AE46C
	ldr r2, [r0, #0]
	sub r6, r5, r3
	add r1, r2, #1
	str r1, [r0, #0]
	ldrb r3, [r2]
	mov r1, r6
	mov r2, #8
	strb r3, [r0, #5]
	strb r2, [r0, #4]
	bl sub_020AE41C
	orr r2, r0, r4, lsl r6
_020AE46C:
	rsb r0, r5, #8
	mov r1, #0xff
	and r0, r2, r1, asr r0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020AE41C

	arm_func_start sub_020AE47C
sub_020AE47C: ; 0x020AE47C
	ldr r1, [r0, #0]
	ldrh r2, [r1], #2
	str r1, [r0, #0]
	mov r0, r2
	bx lr
	arm_func_end sub_020AE47C

	arm_func_start sub_020AE490
sub_020AE490: ; 0x020AE490
	cmp r0, #0
	cmpne r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _020AE4D4
	cmp r0, #0x4d
	beq _020AE4C0
	cmp r0, #0x56
	beq _020AE4D4
	b _020AE4E8
_020AE4C0:
	ldrb r0, [r1, #0x18]
	mov r0, r0, lsl #1
	add r0, r0, #0x1c
	bic r0, r0, #3
	bx lr
_020AE4D4:
	ldrb r0, [r1, #0x17]
	mov r0, r0, lsl #1
	add r0, r0, #0x1c
	bic r0, r0, #3
	bx lr
_020AE4E8:
	mov r0, #0
	bx lr
	arm_func_end sub_020AE490

	arm_func_start sub_020AE4F0
sub_020AE4F0: ; 0x020AE4F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov ip, #0
	str ip, [r0]
	str r1, [r0, #8]
	str ip, [r0, #0x10]
	mov r4, #0x7f
	strb r4, [r0, #0x18]
	mov r4, #0x1000
	str r4, [r0, #4]
	str r3, [r0, #0x14]
	strb ip, [r0, #0x19]
	ldr r3, _020AE584 ; =0x02100EC8
	str ip, [r0, #0xc]
	ldr r7, [r3, #0]
	cmp r7, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r6, [r1]
	ldr r4, _020AE588 ; =0x02100EEC
_020AE538:
	ldrb r3, [r4, ip, lsl #3]
	mov r5, ip, lsl #3
	cmp r6, r3
	bne _020AE574
	add r3, r4, r5
	ldrh lr, [r1, #2]
	ldrh r3, [r3, #2]
	cmp lr, r3
	bne _020AE574
	ldr r3, _020AE58C ; =0x02100EF0
	ldr r3, [r3, r5]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	blx r3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020AE574:
	add ip, ip, #1
	cmp ip, r7
	blo _020AE538
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AE584: .word 0x02100EC8
_020AE588: .word 0x02100EEC
_020AE58C: .word 0x02100EF0
	arm_func_end sub_020AE4F0

	arm_func_start sub_020AE590
sub_020AE590: ; 0x020AE590
	cmp r1, #0
	bxlt lr
	ldrb r2, [r0, #0x19]
	cmp r1, r2
	bxge lr
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #0x1a]
	mov r3, r1, lsl #1
	tst r2, #0x100
	bxeq lr
	add r1, r0, #0x1a
	ldrh r0, [r1, r3]
	bic r0, r0, #0x200
	strh r0, [r1, r3]
	bx lr
	arm_func_end sub_020AE590

	arm_func_start sub_020AE5CC
sub_020AE5CC: ; 0x020AE5CC
	cmp r1, #0
	bxlt lr
	ldrb r2, [r0, #0x19]
	cmp r1, r2
	bxge lr
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #0x1a]
	mov r3, r1, lsl #1
	tst r2, #0x100
	bxeq lr
	add r1, r0, #0x1a
	ldrh r0, [r1, r3]
	orr r0, r0, #0x200
	strh r0, [r1, r3]
	bx lr
	arm_func_end sub_020AE5CC

	arm_func_start sub_020AE608
sub_020AE608: ; 0x020AE608
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x54
	bl sub_020C4B4C
	ldr r0, _020AE650 ; =0x02100EE8
	ldr r1, _020AE654 ; =0x02100EE4
	ldr r2, [r0, #0]
	ldr r0, _020AE658 ; =0x02100EE0
	str r2, [r5, #0xc]
	ldr r1, [r1, #0]
	str r1, [r5, #0x14]
	ldr r0, [r0, #0]
	str r0, [r5, #0x1c]
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AE650: .word 0x02100EE8
_020AE654: .word 0x02100EE4
_020AE658: .word 0x02100EE0
	arm_func_end sub_020AE608

	arm_func_start sub_020AE65C
sub_020AE65C: ; 0x020AE65C
	ldr ip, [r0]
	cmp ip, #0
	streq r1, [r0]
	bxeq lr
	ldr r2, [ip, #0x10]
	cmp r2, #0
	bne _020AE6BC
	ldrb r3, [ip, #0x18]
	ldrb r2, [r1, #0x18]
	cmp r3, r2
	bls _020AE6B4
	ldr r2, [r1, #0x10]
	mov r3, r1
	cmp r2, #0
	beq _020AE6A8
_020AE698:
	ldr r3, [r3, #0x10]
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bne _020AE698
_020AE6A8:
	str ip, [r3, #0x10]
	str r1, [r0, #0]
	bx lr
_020AE6B4:
	str r1, [ip, #0x10]
	bx lr
_020AE6BC:
	beq _020AE70C
	ldrb r3, [r1, #0x18]
_020AE6C4:
	ldrb r0, [r2, #0x18]
	cmp r0, r3
	blo _020AE6FC
	ldr r0, [r1, #0x10]
	mov r3, r1
	cmp r0, #0
	beq _020AE6F0
_020AE6E0:
	ldr r3, [r3, #0x10]
	ldr r0, [r3, #0x10]
	cmp r0, #0
	bne _020AE6E0
_020AE6F0:
	str r1, [ip, #0x10]
	str r2, [r3, #0x10]
	bx lr
_020AE6FC:
	mov ip, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020AE6C4
_020AE70C:
	str r1, [ip, #0x10]
	bx lr
	arm_func_end sub_020AE65C

	arm_func_start sub_020AE714
sub_020AE714: ; 0x020AE714
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, #1
	mov r4, #0
_020AE728:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0
	ble _020AE76C
_020AE738:
	add r2, r1, r5, lsl #1
	ldrh r2, [r2, #0x1a]
	tst r2, #0x100
	beq _020AE75C
	mov lr, r5, asr #5
	ldr ip, [r0, lr, lsl #2]
	and r2, r5, #0x1f
	orr r2, ip, r3, lsl r2
	str r2, [r0, lr, lsl #2]
_020AE75C:
	ldrb r2, [r1, #0x19]
	add r5, r5, #1
	cmp r5, r2
	blt _020AE738
_020AE76C:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020AE728
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AE714

	arm_func_start sub_020AE77C
sub_020AE77C: ; 0x020AE77C
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _020AE7CC
	cmp r0, #0x4d
	beq _020AE7B4
	cmp r0, #0x56
	beq _020AE7E4
	ldmia sp!, {r3, r4, r5, pc}
_020AE7B4:
	add r0, r5, #0x3c
	bl sub_020AE714
	mov r1, r4
	add r0, r5, #8
	bl sub_020AE65C
	ldmia sp!, {r3, r4, r5, pc}
_020AE7CC:
	add r0, r5, #0x44
	bl sub_020AE714
	mov r1, r4
	add r0, r5, #0x10
	bl sub_020AE65C
	ldmia sp!, {r3, r4, r5, pc}
_020AE7E4:
	add r0, r5, #0x4c
	bl sub_020AE714
	mov r1, r4
	add r0, r5, #0x18
	bl sub_020AE65C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AE77C

	arm_func_start sub_020AE7FC
sub_020AE7FC: ; 0x020AE7FC
	ldr r3, [r0, #0]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r3, r1
	bne _020AE82C
	ldr r3, [r3, #0x10]
	mov r2, #0
	str r3, [r0, #0]
	str r2, [r1, #0x10]
	mov r0, #1
	bx lr
_020AE82C:
	ldr r2, [r3, #0x10]
	cmp r2, #0
	beq _020AE868
_020AE838:
	cmp r2, r1
	bne _020AE858
	ldr r1, [r2, #0x10]
	mov r0, #0
	str r1, [r3, #0x10]
	str r0, [r2, #0x10]
	mov r0, #1
	bx lr
_020AE858:
	mov r3, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020AE838
_020AE868:
	mov r0, #0
	bx lr
	arm_func_end sub_020AE7FC

	arm_func_start sub_020AE870
sub_020AE870: ; 0x020AE870
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl sub_020AE7FC
	cmp r0, #0
	bne _020AE8B4
	mov r1, r4
	add r0, r5, #0x10
	bl sub_020AE7FC
	cmp r0, #0
	bne _020AE8B4
	mov r1, r4
	add r0, r5, #0x18
	bl sub_020AE7FC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020AE8B4:
	ldr r0, [r5, #0]
	orr r0, r0, #0x10
	str r0, [r5, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AE870

	arm_func_start sub_020AE8C4
sub_020AE8C4: ; 0x020AE8C4
	cmp r0, #0
	ldrneh r0, [r0, #0xc]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end sub_020AE8C4

	arm_func_start sub_020AE8D8
sub_020AE8D8: ; 0x020AE8D8
	cmp r0, #0
	ldrneh r0, [r0, #0x1c]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end sub_020AE8D8

	arm_func_start sub_020AE8EC
sub_020AE8EC: ; 0x020AE8EC
	cmp r1, #0
	strne r1, [r0, #8]
	cmp r2, #0
	strne r2, [r0, #0x18]
	bx lr
	arm_func_end sub_020AE8EC

	arm_func_start sub_020AE900
sub_020AE900: ; 0x020AE900
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r8, r1
	mov sb, r0
	beq _020AE914
	bl sub_020C0D34
_020AE914:
	ldrh r0, [sb, #0xc]
	movs r2, r0, lsl #3
	beq _020AE944
	ldr r0, [sb, #8]
	ldr r3, [sb, #0x14]
	mov r1, r0, lsl #0x10
	add r0, sb, r3
	mov r1, r1, lsr #0xd
	bl sub_020C0D90
	ldrh r0, [sb, #0x10]
	orr r0, r0, #1
	strh r0, [sb, #0x10]
_020AE944:
	ldrh r0, [sb, #0x1c]
	movs r6, r0, lsl #3
	beq _020AE9A4
	ldr r1, [sb, #0x18]
	ldr r0, [sb, #0x24]
	mov r4, r1, lsl #0x10
	mov r7, r4, lsr #0xd
	mov r1, r7
	mov r2, r6
	add r0, sb, r0
	ldr r5, [sb, #0x28]
	bl sub_020C0D90
	ldr r0, _020AE9B4 ; =0x0001FFFF
	and r1, r7, #0x40000
	and r0, r0, r4, lsr #13
	mov r0, r0, lsr #1
	add r2, r0, #0x20000
	add r0, sb, r5
	add r1, r2, r1, lsr #2
	mov r2, r6, lsr #1
	bl sub_020C0D90
	ldrh r0, [sb, #0x20]
	orr r0, r0, #1
	strh r0, [sb, #0x20]
_020AE9A4:
	cmp r8, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl sub_020C0ED0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020AE9B4: .word 0x0001FFFF
	arm_func_end sub_020AE900

	arm_func_start sub_020AE9B8
sub_020AE9B8: ; 0x020AE9B8
	cmp r1, #0
	beq _020AE9DC
	ldrh ip, [r0, #0x10]
	mov r3, #0
	bic ip, ip, #1
	strh ip, [r0, #0x10]
	ldr ip, [r0, #8]
	str ip, [r1]
	str r3, [r0, #8]
_020AE9DC:
	cmp r2, #0
	bxeq lr
	ldrh r3, [r0, #0x20]
	mov r1, #0
	bic r3, r3, #1
	strh r3, [r0, #0x20]
	ldr r3, [r0, #0x18]
	str r3, [r2, #0]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end sub_020AE9B8

	arm_func_start sub_020AEA04
sub_020AEA04: ; 0x020AEA04
	cmp r0, #0
	ldrneh r0, [r0, #0x30]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end sub_020AEA04

	arm_func_start sub_020AEA18
sub_020AEA18: ; 0x020AEA18
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end sub_020AEA18

	arm_func_start sub_020AEA20
sub_020AEA20: ; 0x020AEA20
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r0
	beq _020AEA34
	bl sub_020C0F1C
_020AEA34:
	ldr r0, [r4, #0x2c]
	ldrh r2, [r4, #0x30]
	mov r1, r0, lsl #0x10
	ldr r3, [r4, #0x38]
	mov r1, r1, lsr #0xd
	add r0, r4, r3
	mov r2, r2, lsl #3
	bl sub_020C0F50
	ldrh r0, [r4, #0x32]
	cmp r5, #0
	orr r0, r0, #1
	strh r0, [r4, #0x32]
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020C0FBC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AEA20

	arm_func_start sub_020AEA70
sub_020AEA70: ; 0x020AEA70
	ldrh r2, [r0, #0x32]
	mov r1, #0
	bic r2, r2, #1
	strh r2, [r0, #0x32]
	ldr r2, [r0, #0x2c]
	str r1, [r0, #0x2c]
	mov r0, r2
	bx lr
	arm_func_end sub_020AEA70

	arm_func_start sub_020AEA90
sub_020AEA90: ; 0x020AEA90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov r8, r3
	ldr r1, [r8]
	mov sl, r0
	and r0, r1, #0x1c000000
	ldrh r3, [sb]
	cmp r0, #0x14000000
	mov r5, #0
	add r0, sl, r3
	str r0, [sp]
	ldrne r0, [r2, #8]
	ldreq r0, [r2, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bic fp, r0, #0xe0000000
	ldrb r0, [sb, #2]
	cmp r0, #0
	bls _020AEBAC
	add r4, sl, #4
_020AEAE0:
	ldr r0, [sp]
	cmp sl, #0
	ldrb r2, [r0, r5]
	beq _020AEB30
	cmp r4, #0
	beq _020AEB1C
	ldrb r0, [sl, #5]
	cmp r2, r0
	bhs _020AEB1C
	ldrh r0, [sl, #0xa]
	add r1, r4, r0
	add r1, r1, #4
	ldrh r0, [r4, r0]
	mla r1, r0, r2, r1
	b _020AEB20
_020AEB1C:
	mov r1, #0
_020AEB20:
	cmp r1, #0
	ldrne r0, [r1]
	addne r7, sl, r0
	bne _020AEB34
_020AEB30:
	mov r7, #0
_020AEB34:
	ldr r0, [r8]
	ldr r1, [r7, #0x14]
	add r0, r0, fp
	orr r0, r1, r0
	str r0, [r7, #0x14]
	ldr r3, [r8, #4]
	ldr r0, _020AEBBC ; =0x000007FF
	ldrh r1, [r7, #0x20]
	and r2, r3, r0
	and r0, r3, r0, lsl #11
	mov r6, r0, lsr #0xb
	cmp r2, r1
	moveq r0, #0x1000
	beq _020AEB78
	mov r0, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_020BCFD0
_020AEB78:
	str r0, [r7, #0x24]
	ldrh r1, [r7, #0x22]
	cmp r6, r1
	moveq r0, #0x1000
	beq _020AEB98
	mov r0, r6, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_020BCFD0
_020AEB98:
	str r0, [r7, #0x28]
	ldrb r0, [sb, #2]
	add r5, r5, #1
	cmp r5, r0
	blo _020AEAE0
_020AEBAC:
	ldrb r0, [sb, #3]
	orr r0, r0, #1
	strb r0, [sb, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AEBBC: .word 0x000007FF
	arm_func_end sub_020AEA90

	arm_func_start sub_020AEBC0
sub_020AEBC0: ; 0x020AEBC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrh r3, [r1]
	ldrb r2, [r1, #2]
	mov lr, #0
	add ip, r0, r3
	cmp r2, #0
	bls _020AEC64
	ldr r4, _020AEC74 ; =0xC00F0000
	add r2, r0, #4
	mov r7, lr
	mov r6, lr
	mov r5, #0x1000
_020AEBF0:
	cmp r0, #0
	ldrb r3, [ip, lr]
	beq _020AEC3C
	cmp r2, #0
	beq _020AEC28
	ldrb r8, [r0, #5]
	cmp r3, r8
	bhs _020AEC28
	ldrh sb, [r0, #0xa]
	ldrh r8, [r2, sb]
	add sb, r2, sb
	add sb, sb, #4
	mla r3, r8, r3, sb
	b _020AEC2C
_020AEC28:
	mov r3, r7
_020AEC2C:
	cmp r3, #0
	ldrne r3, [r3]
	addne r8, r0, r3
	bne _020AEC40
_020AEC3C:
	mov r8, r6
_020AEC40:
	ldr r3, [r8, #0x14]
	add lr, lr, #1
	and r3, r3, r4
	str r3, [r8, #0x14]
	str r5, [r8, #0x24]
	str r5, [r8, #0x28]
	ldrb r3, [r1, #2]
	cmp lr, r3
	blo _020AEBF0
_020AEC64:
	ldrb r0, [r1, #3]
	bic r0, r0, #1
	strb r0, [r1, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020AEC74: .word 0xC00F0000
	arm_func_end sub_020AEBC0

	arm_func_start sub_020AEC78
sub_020AEC78: ; 0x020AEC78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r7, #1
	cmpne r1, #0
	addne r8, r0, r1
	moveq r8, #0
	ldrh r0, [r8]
	mov r6, #0
	add r5, r8, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bls _020AED70
	mov sb, r6
	mov r4, r6
	mov fp, r6
_020AECBC:
	cmp r5, #0
	beq _020AECE8
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AECE8
	ldrh r0, [r5, #6]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, sb
	b _020AECEC
_020AECE8:
	mov r1, r4
_020AECEC:
	cmp sl, #0
	moveq r3, fp
	beq _020AED04
	add r0, sl, #0x3c
	bl sub_020B38E4
	mov r3, r0
_020AED04:
	cmp r3, #0
	beq _020AED58
	cmp r5, #0
	beq _020AED38
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AED38
	ldrh r1, [r5, #6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020AED3C
_020AED38:
	mov r1, #0
_020AED3C:
	ldrb r0, [r1, #3]
	tst r0, #1
	bne _020AED5C
	mov r0, r8
	mov r2, sl
	bl sub_020AEA90
	b _020AED5C
_020AED58:
	mov r7, #0
_020AED5C:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	add sb, sb, #0x10
	cmp r6, r0
	blo _020AECBC
_020AED70:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AEC78

	arm_func_start sub_020AED78
sub_020AED78: ; 0x020AED78
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	addne r0, r0, r1
	moveq r0, #0
	ldrh r1, [r0]
	cmp ip, #0
	add r1, r0, r1
	beq _020AEDD8
	adds r5, ip, #0x3c
	beq _020AEDD0
	ldrb r4, [ip, #0x3d]
	cmp r3, r4
	bhs _020AEDD0
	ldrh lr, [ip, #0x42]
	ldrh r4, [r5, lr]
	add lr, r5, lr
	add lr, lr, #4
	mla r3, r4, r3, lr
	b _020AEDDC
_020AEDD0:
	mov r3, #0
	b _020AEDDC
_020AEDD8:
	mov r3, #0
_020AEDDC:
	cmp r1, #0
	beq _020AEE08
	ldrb r4, [r1, #1]
	cmp r2, r4
	bhs _020AEE08
	ldrh r4, [r1, #6]
	ldrh lr, [r1, r4]
	add r1, r1, r4
	add r1, r1, #4
	mla r1, lr, r2, r1
	b _020AEE0C
_020AEE08:
	mov r1, #0
_020AEE0C:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, ip
	bl sub_020AEA90
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AED78

	arm_func_start sub_020AEE28
sub_020AEE28: ; 0x020AEE28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r5, #0
	cmpne r1, #0
	addne r6, r0, r1
	moveq r6, #0
	ldrh r0, [r6]
	add r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, r5
_020AEE5C:
	cmp r4, #0
	beq _020AEE88
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _020AEE88
	ldrh r1, [r4, #6]
	ldrh r0, [r4, r1]
	add r1, r4, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020AEE8C
_020AEE88:
	mov r1, r7
_020AEE8C:
	ldrb r0, [r1, #3]
	tst r0, #1
	beq _020AEEA0
	mov r0, r6
	bl sub_020AEBC0
_020AEEA0:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blo _020AEE5C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020AEE28

	arm_func_start sub_020AEEB4
sub_020AEEB4: ; 0x020AEEB4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, [r2, #0x2c]
	ldrh r5, [r1]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldrh r4, [r3, #2]
	bic r2, r2, #0xe0000000
	mov r2, r2, lsl #0x10
	tst r4, #1
	add ip, r0, r5
	mov r5, r2, lsr #0x10
	ldrh r4, [r3]
	bne _020AEEF8
	mov r2, r4, lsl #0xf
	mov r3, r5, lsl #0xf
	mov r4, r2, lsr #0x10
	mov r5, r3, lsr #0x10
_020AEEF8:
	ldrb r2, [r1, #2]
	mov r3, #0
	cmp r2, #0
	bls _020AEF84
	add r2, r4, r5
	mov lr, r2, lsl #0x10
	add r2, r0, #4
	mov r4, lr, lsr #0x10
	mov r6, r3
	mov r5, r3
_020AEF20:
	cmp r0, #0
	ldrb r8, [ip, r3]
	beq _020AEF6C
	cmp r2, #0
	beq _020AEF58
	ldrb r7, [r0, #5]
	cmp r8, r7
	bhs _020AEF58
	ldrh r7, [r0, #0xa]
	ldrh lr, [r2, r7]
	add r7, r2, r7
	add r7, r7, #4
	mla r7, lr, r8, r7
	b _020AEF5C
_020AEF58:
	mov r7, r6
_020AEF5C:
	cmp r7, #0
	ldrne lr, [r7]
	addne r7, r0, lr
	bne _020AEF70
_020AEF6C:
	mov r7, r5
_020AEF70:
	strh r4, [r7, #0x1c]
	ldrb lr, [r1, #2]
	add r3, r3, #1
	cmp r3, lr
	blo _020AEF20
_020AEF84:
	ldrb r0, [r1, #3]
	orr r0, r0, #1
	strb r0, [r1, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020AEEB4

	arm_func_start sub_020AEF94
sub_020AEF94: ; 0x020AEF94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r7, #1
	cmpne r1, #0
	addne r8, r0, r1
	moveq r8, #0
	ldrh r0, [r8, #2]
	mov r6, #0
	add r5, r8, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bls _020AF094
	mov sb, r6
	mov r4, r6
	mov fp, r6
_020AEFD8:
	cmp r5, #0
	beq _020AF004
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AF004
	ldrh r0, [r5, #6]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, sb
	b _020AF008
_020AF004:
	mov r1, r4
_020AF008:
	cmp sl, #0
	ldrneh r0, [sl, #0x34]
	cmpne r0, #0
	moveq r3, fp
	beq _020AF028
	add r0, sl, r0
	bl sub_020B38E4
	mov r3, r0
_020AF028:
	cmp r3, #0
	beq _020AF07C
	cmp r5, #0
	beq _020AF05C
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AF05C
	ldrh r1, [r5, #6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020AF060
_020AF05C:
	mov r1, #0
_020AF060:
	ldrb r0, [r1, #3]
	tst r0, #1
	bne _020AF080
	mov r0, r8
	mov r2, sl
	bl sub_020AEEB4
	b _020AF080
_020AF07C:
	mov r7, #0
_020AF080:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	add sb, sb, #0x10
	cmp r6, r0
	blo _020AEFD8
_020AF094:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AEF94

	arm_func_start sub_020AF09C
sub_020AF09C: ; 0x020AF09C
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	addne r0, r0, r1
	moveq r0, #0
	ldrh r1, [r0, #2]
	cmp ip, #0
	ldrneh r4, [ip, #0x34]
	add r1, r0, r1
	cmpne r4, #0
	beq _020AF104
	adds r5, ip, r4
	beq _020AF0FC
	ldrb r4, [r5, #1]
	cmp r3, r4
	bhs _020AF0FC
	ldrh lr, [r5, #6]
	ldrh r4, [r5, lr]
	add lr, r5, lr
	add lr, lr, #4
	mla r3, r4, r3, lr
	b _020AF108
_020AF0FC:
	mov r3, #0
	b _020AF108
_020AF104:
	mov r3, #0
_020AF108:
	cmp r1, #0
	beq _020AF134
	ldrb r4, [r1, #1]
	cmp r2, r4
	bhs _020AF134
	ldrh r4, [r1, #6]
	ldrh lr, [r1, r4]
	add r1, r1, r4
	add r1, r1, #4
	mla r1, lr, r2, r1
	b _020AF138
_020AF134:
	mov r1, #0
_020AF138:
	cmp r1, #0
	beq _020AF15C
	ldrb r2, [r1, #3]
	tst r2, #1
	bne _020AF15C
	mov r2, ip
	bl sub_020AEEB4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020AF15C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AF09C

	arm_func_start sub_020AF164
sub_020AF164: ; 0x020AF164
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov ip, #0
	cmpne r1, #0
	addne r1, r0, r1
	moveq r1, #0
	ldrh r0, [r1, #2]
	add r3, r1, r0
	ldrb r0, [r3, #1]
	cmp r0, #0
	bxls lr
	mov r1, ip
_020AF194:
	cmp r3, #0
	beq _020AF1C0
	ldrb r0, [r3, #1]
	cmp ip, r0
	bhs _020AF1C0
	ldrh r2, [r3, #6]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r2, r0, ip, r2
	b _020AF1C4
_020AF1C0:
	mov r2, r1
_020AF1C4:
	ldrb r0, [r2, #3]
	add ip, ip, #1
	tst r0, #1
	bicne r0, r0, #1
	strneb r0, [r2, #3]
	ldrb r0, [r3, #1]
	cmp ip, r0
	blo _020AF194
	bx lr
	arm_func_end sub_020AF164

	arm_func_start sub_020AF1E8
sub_020AF1E8: ; 0x020AF1E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r0, [sl, #9]
	mov sb, r1
	mov r7, #1
	cmp r0, #0
	mov r6, #0
	bls _020AF290
	add r5, sl, #8
	mov r4, r6
	mov fp, r6
_020AF214:
	cmp sl, #0
	beq _020AF25C
	cmp r5, #0
	beq _020AF248
	ldrb r0, [sl, #9]
	cmp r6, r0
	bhs _020AF248
	ldrh r1, [sl, #0xe]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020AF24C
_020AF248:
	mov r1, r4
_020AF24C:
	cmp r1, #0
	ldrne r0, [r1]
	addne r8, sl, r0
	bne _020AF260
_020AF25C:
	mov r8, fp
_020AF260:
	mov r0, r8
	mov r1, sb
	bl sub_020AEC78
	and r7, r7, r0
	mov r0, r8
	mov r1, sb
	bl sub_020AEF94
	ldrb r1, [sl, #9]
	add r6, r6, #1
	and r7, r7, r0
	cmp r6, r1
	blo _020AF214
_020AF290:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AF1E8

	arm_func_start sub_020AF298
sub_020AF298: ; 0x020AF298
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrb r0, [r6, #9]
	mov r5, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r4, r6, #8
	mov r8, r5
	mov r7, r5
_020AF2BC:
	cmp r6, #0
	beq _020AF304
	cmp r4, #0
	beq _020AF2F0
	ldrb r0, [r6, #9]
	cmp r5, r0
	bhs _020AF2F0
	ldrh r1, [r6, #0xe]
	ldrh r0, [r4, r1]
	add r1, r4, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020AF2F4
_020AF2F0:
	mov r1, r8
_020AF2F4:
	cmp r1, #0
	ldrne r0, [r1]
	addne sb, r6, r0
	bne _020AF308
_020AF304:
	mov sb, r7
_020AF308:
	mov r0, sb
	bl sub_020AEE28
	mov r0, sb
	bl sub_020AF164
	ldrb r0, [r6, #9]
	add r5, r5, #1
	cmp r5, r0
	blo _020AF2BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020AF298

	arm_func_start sub_020AF32C
sub_020AF32C: ; 0x020AF32C
	stmfd sp!, {r3, lr}
	ldr r2, _020AF440 ; =0x17101610
	ldr r1, _020AF444 ; =0x021C5A8C
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #4]
	mov r2, #2
	ldr r0, _020AF448 ; =0x32323232
	str r2, [r1, #0x48]
	ldr r2, _020AF44C ; =0x60293130
	str r0, [r1, #0x7c]
	ldr r0, _020AF450 ; =0x33333333
	str r2, [r1, #0x90]
	ldr r2, _020AF454 ; =0x002A1B19
	str r0, [r1, #0xa4]
	ldr r0, _020AF458 ; =0x021C5AD8
	str r2, [r1, #0xb8]
	bl sub_020BBB88
	ldr r0, _020AF45C ; =0x021C5A94
	bl sub_020BC474
	ldr ip, _020AF460 ; =0x40000200
	ldr r3, _020AF464 ; =0xC0080000
	ldr r2, _020AF468 ; =0x2D8B62D8
	ldr r1, _020AF444 ; =0x021C5A8C
	sub r0, ip, #-0x3fffffff
	str r2, [r1, #0x80]
	str ip, [r1, #0x84]
	str r0, [r1, #0x88]
	ldr r2, _020AF46C ; =0x4210C210
	str r3, [r1, #0x8c]
	str r2, [r1, #0x94]
	ldr r0, _020AF470 ; =0x001F008F
	str r2, [r1, #0x98]
	str r0, [r1, #0x9c]
	sub r2, r3, #0x90000
	ldr r0, _020AF474 ; =0x00007FFF
	str r2, [r1, #0xa0]
	str r0, [r1, #0xa8]
	mov r2, #0x4000001f
	ldr r0, _020AF478 ; =0x800003E0
	str r2, [r1, #0xac]
	str r0, [r1, #0xb0]
	rsb r0, ip, #0x7e00
	str r0, [r1, #0xb4]
	mov r2, #0
	str r2, [r1, #0xe0]
	str r2, [r1, #0xe4]
	ldr r0, _020AF47C ; =0x021C5B48
	str r2, [r1, #0xe8]
	bl sub_020BB4C8
	mov r1, #0
	ldr r0, _020AF444 ; =0x021C5A8C
	mov r2, #0x1000
	str r2, [r0, #0xec]
	str r2, [r0, #0xf0]
	str r2, [r0, #0xf4]
	str r1, [r0, #0xf8]
	str r1, [r0, #0xfc]
	str r1, [r0, #0x248]
	str r1, [r0, #0x244]
	str r1, [r0, #0x240]
	str r1, [r0, #0x254]
	str r1, [r0, #0x24c]
	str r2, [r0, #0x250]
	str r1, [r0, #0x25c]
	str r1, [r0, #0x258]
	sub r1, r1, #0x1000
	str r1, [r0, #0x260]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF440: .word 0x17101610
_020AF444: .word 0x021C5A8C
_020AF448: .word 0x32323232
_020AF44C: .word 0x60293130
_020AF450: .word 0x33333333
_020AF454: .word 0x002A1B19
_020AF458: .word 0x021C5AD8
_020AF45C: .word 0x021C5A94
_020AF460: .word 0x40000200
_020AF464: .word 0xC0080000
_020AF468: .word 0x2D8B62D8
_020AF46C: .word 0x4210C210
_020AF470: .word 0x001F008F
_020AF474: .word 0x00007FFF
_020AF478: .word 0x800003E0
_020AF47C: .word 0x021C5B48
	arm_func_end sub_020AF32C

	arm_func_start sub_020AF480
sub_020AF480: ; 0x020AF480
	stmfd sp!, {r3, lr}
	ldr r0, _020AF4B4 ; =0x021C5A8C
	ldr r1, _020AF4B8 ; =0x021C5A8C
	ldr r0, [r0, #0]
	add r1, r1, #4
	mov r2, #0x3e
	bl sub_020B275C
	ldr r0, _020AF4B4 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	bic r1, r1, #1
	bic r1, r1, #2
	str r1, [r0, #0xfc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF4B4: .word 0x021C5A8C
_020AF4B8: .word 0x021C5A8C
	arm_func_end sub_020AF480

	arm_func_start sub_020AF4BC
sub_020AF4BC: ; 0x020AF4BC
	cmp r0, #0
	bxeq lr
	ldr r3, _020AF4E4 ; =0x021C5B6C
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, _020AF4E8 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xa4
	str r1, [r0, #0xfc]
	bx lr
	; .align 2, 0
_020AF4E4: .word 0x021C5B6C
_020AF4E8: .word 0x021C5A8C
	arm_func_end sub_020AF4BC

	arm_func_start sub_020AF4EC
sub_020AF4EC: ; 0x020AF4EC
	cmp r0, #0
	bxeq lr
	ldr r3, _020AF514 ; =0x021C5B78
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, _020AF518 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xa4
	str r1, [r0, #0xfc]
	bx lr
	; .align 2, 0
_020AF514: .word 0x021C5B78
_020AF518: .word 0x021C5A8C
	arm_func_end sub_020AF4EC

	arm_func_start sub_020AF51C
sub_020AF51C: ; 0x020AF51C
	stmfd sp!, {r3, lr}
	ldr ip, _020AF550 ; =0x000003FF
	mov r2, r2, asr #3
	mov lr, r3, asr #3
	and r3, ip, r1, asr #3
	mov r1, r2, lsl #0x16
	mov r2, lr, lsl #0x16
	orr r1, r3, r1, lsr #12
	orr r2, r1, r2, lsr #2
	ldr r1, _020AF554 ; =0x021C5B0C
	orr r2, r2, r0, lsl #30
	str r2, [r1, r0, lsl #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF550: .word 0x000003FF
_020AF554: .word 0x021C5B0C
	arm_func_end sub_020AF51C

	arm_func_start sub_020AF558
sub_020AF558: ; 0x020AF558
	ldr r2, _020AF568 ; =0x021C5B34
	orr r1, r1, r0, lsl #30
	str r1, [r2, r0, lsl #2]
	bx lr
	; .align 2, 0
_020AF568: .word 0x021C5B34
	arm_func_end sub_020AF558

	arm_func_start sub_020AF56C
sub_020AF56C: ; 0x020AF56C
	cmp r2, #0
	movne r2, #1
	orr r1, r0, r1, lsl #16
	moveq r2, #0
	ldr r0, _020AF58C ; =0x021C5A8C
	orr r1, r1, r2, lsl #15
	str r1, [r0, #0x94]
	bx lr
	; .align 2, 0
_020AF58C: .word 0x021C5A8C
	arm_func_end sub_020AF56C

	arm_func_start sub_020AF590
sub_020AF590: ; 0x020AF590
	cmp r2, #0
	movne r2, #1
	orr r1, r0, r1, lsl #16
	moveq r2, #0
	ldr r0, _020AF5B0 ; =0x021C5A8C
	orr r1, r1, r2, lsl #15
	str r1, [r0, #0x98]
	bx lr
	; .align 2, 0
_020AF5B0: .word 0x021C5A8C
	arm_func_end sub_020AF590

	arm_func_start sub_020AF5B4
sub_020AF5B4: ; 0x020AF5B4
	orr r0, r0, r1, lsl #4
	ldr r1, [sp, #4]
	orr r0, r0, r2, lsl #6
	orr r0, r1, r0
	ldr r2, [sp]
	orr r1, r0, r3, lsl #24
	ldr r0, _020AF5DC ; =0x021C5A8C
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0x9c]
	bx lr
	; .align 2, 0
_020AF5DC: .word 0x021C5A8C
	arm_func_end sub_020AF5B4

	arm_func_start sub_020AF5E0
sub_020AF5E0: ; 0x020AF5E0
	stmfd sp!, {r3, lr}
	ldr r0, _020AF618 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #8
	bne _020AF610
	ldr r0, _020AF61C ; =0x021C5AD8
	ldr r1, _020AF620 ; =0x021C5B8C
	bl sub_020BBC6C
	ldr r0, _020AF618 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	orr r1, r1, #8
	str r1, [r0, #0xfc]
_020AF610:
	ldr r0, _020AF620 ; =0x021C5B8C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF618: .word 0x021C5A8C
_020AF61C: .word 0x021C5AD8
_020AF620: .word 0x021C5B8C
	arm_func_end sub_020AF5E0

	arm_func_start sub_020AF624
sub_020AF624: ; 0x020AF624
	stmfd sp!, {r3, lr}
	ldr r0, _020AF668 ; =0x021C5B48
	ldr r1, _020AF66C ; =0x021C5AD8
	ldr r2, _020AF670 ; =0x021C5BBC
	bl sub_020BBFF8
	ldr r3, _020AF674 ; =0x021C5A8C
	ldr r0, _020AF670 ; =0x021C5BBC
	ldr r2, [r3, #0xf4]
	mov r1, r0
	str r2, [sp]
	ldr r2, [r3, #0xec]
	ldr r3, [r3, #0xf0]
	bl sub_020BBBFC
	ldr r0, _020AF670 ; =0x021C5BBC
	ldr r1, _020AF678 ; =0x021C5BEC
	bl sub_020BBC6C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF668: .word 0x021C5B48
_020AF66C: .word 0x021C5AD8
_020AF670: .word 0x021C5BBC
_020AF674: .word 0x021C5A8C
_020AF678: .word 0x021C5BEC
	arm_func_end sub_020AF624

	arm_func_start sub_020AF67C
sub_020AF67C: ; 0x020AF67C
	stmfd sp!, {r3, lr}
	ldr r0, _020AF6AC ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #0x80
	bne _020AF6A4
	bl sub_020AF624
	ldr r0, _020AF6AC ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x80
	str r1, [r0, #0xfc]
_020AF6A4:
	ldr r0, _020AF6B0 ; =0x021C5BBC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF6AC: .word 0x021C5A8C
_020AF6B0: .word 0x021C5BBC
	arm_func_end sub_020AF67C

	arm_func_start sub_020AF6B4
sub_020AF6B4: ; 0x020AF6B4
	stmfd sp!, {r3, lr}
	ldr r0, _020AF6E4 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #0x80
	bne _020AF6DC
	bl sub_020AF624
	ldr r0, _020AF6E4 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x80
	str r1, [r0, #0xfc]
_020AF6DC:
	ldr r0, _020AF6E8 ; =0x021C5BEC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF6E4: .word 0x021C5A8C
_020AF6E8: .word 0x021C5BEC
	arm_func_end sub_020AF6B4

	arm_func_start sub_020AF6EC
sub_020AF6EC: ; 0x020AF6EC
	cmp r0, #0
	beq _020AF704
	ldr ip, _020AF75C ; =0x021C5A8C
	ldr ip, [ip, #0xa0]
	and ip, ip, #0xff
	str ip, [r0]
_020AF704:
	cmp r1, #0
	beq _020AF720
	ldr r0, _020AF75C ; =0x021C5A8C
	ldr r0, [r0, #0xa0]
	mov r0, r0, lsr #8
	and r0, r0, #0xff
	str r0, [r1, #0]
_020AF720:
	cmp r2, #0
	beq _020AF73C
	ldr r0, _020AF75C ; =0x021C5A8C
	ldr r0, [r0, #0xa0]
	mov r0, r0, lsr #0x10
	and r0, r0, #0xff
	str r0, [r2, #0]
_020AF73C:
	cmp r3, #0
	bxeq lr
	ldr r0, _020AF75C ; =0x021C5A8C
	ldr r0, [r0, #0xa0]
	mov r0, r0, lsr #0x18
	and r0, r0, #0xff
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_020AF75C: .word 0x021C5A8C
	arm_func_end sub_020AF6EC

	arm_func_start sub_020AF760
sub_020AF760: ; 0x020AF760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	movs r5, r1
	mov r4, r2
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #1
_020AF77C:
	ldrb r1, [r5, #0x19]
	cmp r4, r1
	bhs _020AF7BC
	add r1, r5, r4, lsl #1
	ldrh r2, [r1, #0x1a]
	and r1, r2, #0x300
	cmp r1, #0x100
	bne _020AF7BC
	ldr r3, [r5, #0xc]
	cmp r3, #0
	beq _020AF7BC
	mov r0, r6
	mov r1, r5
	and r2, r2, #0xff
	blx r3
	mov r0, r7
_020AF7BC:
	ldr r5, [r5, #0x10]
	cmp r5, #0
	bne _020AF77C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020AF760

	arm_func_start sub_020AF7CC
sub_020AF7CC: ; 0x020AF7CC
	cmp r3, #0
	beq _020AF7FC
	ldr r1, [r0, #0]
	add r1, r1, r2
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r2
	str r1, [r0, #8]
	bx lr
_020AF7FC:
	ldr r3, [r1, #0]
	ldr ip, [r0]
	mul r3, r2, r3
	add r3, ip, r3, asr #12
	str r3, [r0, #0]
	ldr r3, [r1, #4]
	ldr ip, [r0, #4]
	mul r3, r2, r3
	add r3, ip, r3, asr #12
	str r3, [r0, #4]
	ldr r1, [r1, #8]
	ldr r3, [r0, #8]
	mul r1, r2, r1
	add r1, r3, r1, asr #12
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_020AF7CC

	arm_func_start sub_020AF83C
sub_020AF83C: ; 0x020AF83C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	movs sb, r1
	mov sl, r0
	mov r8, r2
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [sb, #0x10]
	cmp r2, #0
	bne _020AF8C8
	ldrb r2, [sb, #0x19]
	cmp r8, r2
	bhs _020AF8BC
	add r2, sb, r8, lsl #1
	ldrh r4, [r2, #0x1a]
	and r2, r4, #0x300
	cmp r2, #0x100
	bne _020AF8B0
	ldr r3, [sb, #0xc]
	cmp r3, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	and r2, r4, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF8B0:
	add sp, sp, #0x70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF8BC:
	add sp, sp, #0x70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF8C8:
	mov r5, #0
	mov r3, r5
	mov r6, r5
	mov r2, sb
_020AF8D8:
	ldrb r0, [r2, #0x19]
	cmp r8, r0
	bhs _020AF918
	add r0, r2, r8, lsl #1
	ldrh r0, [r0, #0x1a]
	and r0, r0, #0x300
	cmp r0, #0x100
	bne _020AF918
	ldr r0, [r2, #4]
	cmp r0, #0x1000
	addgt r5, r5, #0x1000
	bgt _020AF910
	cmp r0, #0
	addgt r5, r5, r0
_020AF910:
	mov r1, r2
	add r3, r3, #1
_020AF918:
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020AF8D8
	cmp r5, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, #1
	bne _020AF970
	ldr r3, [r1, #0xc]
	add r0, r1, r8, lsl #1
	cmp r3, #0
	ldrh r2, [r0, #0x1a]
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	and r2, r2, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF970:
	mov r1, sl
	mov r0, #0
	mov r2, #0x58
	bl sub_020C4BB8
	mvn r0, #0
	str r0, [sl]
	add fp, sp, #0x40
	add r4, sp, #0x18
_020AF990:
	ldrb r0, [sb, #0x19]
	cmp r8, r0
	bhs _020AFB74
	add r0, sb, r8, lsl #1
	ldrh r1, [r0, #0x1a]
	and r0, r1, #0x300
	cmp r0, #0x100
	bne _020AFB74
	ldr r0, [sb, #4]
	cmp r0, #0
	ble _020AFB74
	ldr r3, [sb, #0xc]
	cmp r3, #0
	beq _020AFB74
	and r2, r1, #0xff
	mov r0, r4
	mov r1, sb
	blx r3
	cmp r6, #0
	bne _020AFA00
	mov r0, fp
	add r1, sp, #0xc
	mov r2, #0xc
	bl sub_020C4B68
	add r0, sp, #0x58
	add r1, sp, #0
	mov r2, #0xc
	bl sub_020C4B68
_020AFA00:
	cmp r5, #0x1000
	ldreq r7, [sb, #4]
	beq _020AFA1C
	ldr r0, [sb, #4]
	mov r1, r5
	bl sub_020BCFD0
	mov r7, r0
_020AFA1C:
	ldr r3, [sp, #0x18]
	add r0, sl, #4
	add r1, sp, #0x1c
	mov r2, r7
	and r3, r3, #1
	bl sub_020AF7CC
	ldr r3, [sp, #0x18]
	add r0, sl, #0x10
	add r1, sp, #0x28
	mov r2, r7
	and r3, r3, #8
	bl sub_020AF7CC
	ldr r3, [sp, #0x18]
	add r0, sl, #0x1c
	add r1, sp, #0x34
	mov r2, r7
	and r3, r3, #0x10
	bl sub_020AF7CC
	ldr r0, [sp, #0x18]
	tst r0, #4
	bne _020AFAC4
	ldr r2, [sl, #0x4c]
	ldr r0, [sp, #0x64]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x4c]
	ldr r2, [sl, #0x50]
	ldr r0, [sp, #0x68]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x50]
	ldr r2, [sl, #0x54]
	ldr r0, [sp, #0x6c]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x54]
_020AFAC4:
	ldr r0, [sp, #0x18]
	tst r0, #2
	bne _020AFB4C
	ldr r1, [sl, #0x28]
	ldr r0, [sp, #0x40]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x28]
	ldr r1, [sl, #0x2c]
	ldr r0, [sp, #0x44]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x2c]
	ldr r1, [sl, #0x30]
	ldr r0, [sp, #0x48]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x30]
	ldr r1, [sl, #0x34]
	ldr r0, [sp, #0x4c]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x34]
	ldr r1, [sl, #0x38]
	ldr r0, [sp, #0x50]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x38]
	ldr r1, [sl, #0x3c]
	ldr r0, [sp, #0x54]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x3c]
	b _020AFB64
_020AFB4C:
	ldr r0, [sl, #0x28]
	add r0, r0, r7
	str r0, [sl, #0x28]
	ldr r0, [sl, #0x38]
	add r0, r0, r7
	str r0, [sl, #0x38]
_020AFB64:
	ldr r1, [sl]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	str r0, [sl]
_020AFB74:
	ldr sb, [sb, #0x10]
	add r6, r6, #1
	cmp sb, #0
	bne _020AF990
	add r0, sl, #0x28
	add r1, sl, #0x34
	add r2, sl, #0x40
	bl sub_020BD298
	ldr r0, [sl, #0x28]
	cmp r0, #0
	ldreq r0, [sl, #0x2c]
	cmpeq r0, #0
	ldreq r0, [sl, #0x30]
	cmpeq r0, #0
	bne _020AFBC4
	add r0, sp, #0xc
	add r1, sl, #0x28
	mov r2, #0xc
	bl sub_020C4B68
	b _020AFBD0
_020AFBC4:
	add r0, sl, #0x28
	mov r1, r0
	bl sub_020BD3E4
_020AFBD0:
	ldr r0, [sl, #0x40]
	cmp r0, #0
	ldreq r0, [sl, #0x44]
	cmpeq r0, #0
	ldreq r0, [sl, #0x48]
	cmpeq r0, #0
	bne _020AFC00
	add r0, sp, #0
	add r1, sl, #0x40
	mov r2, #0xc
	bl sub_020C4B68
	b _020AFC0C
_020AFC00:
	add r0, sl, #0x40
	mov r1, r0
	bl sub_020BD3E4
_020AFC0C:
	add r0, sl, #0x40
	add r1, sl, #0x28
	add r2, sl, #0x34
	bl sub_020BD298
	mov r0, #1
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AF83C

	arm_func_start sub_020AFC28
sub_020AFC28: ; 0x020AFC28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0
	mov r6, r1
	mov r5, r2
	str r0, [r7, #0]
	add r4, sp, #0
	mov r8, #1
_020AFC4C:
	ldrb r1, [r6, #0x19]
	cmp r5, r1
	bhs _020AFC9C
	add r1, r6, r5, lsl #1
	ldrh r2, [r1, #0x1a]
	and r1, r2, #0x300
	cmp r1, #0x100
	bne _020AFC9C
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _020AFC9C
	mov r0, r4
	mov r1, r6
	and r2, r2, #0xff
	blx r3
	ldr r2, [r7, #0]
	ldr r1, [sp]
	mov r0, r8
	orr r1, r2, r1
	str r1, [r7, #0]
_020AFC9C:
	ldr r6, [r6, #0x10]
	cmp r6, #0
	bne _020AFC4C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020AFC28

	arm_func_start sub_020AFCB0
sub_020AFCB0: ; 0x020AFCB0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020AFCF4 ; =0x02101064
	mov r4, r0
_020AFCBC:
	ldr r1, [r4, #8]
	mov r0, r4
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldr r1, [r4, #0]
	ldrb r3, [r1]
	and r1, r3, #0x1f
	ldr r2, [r5, r1, lsl #2]
	and r1, r3, #0xe0
	blx r2
	ldr r0, [r4, #8]
	tst r0, #0x20
	beq _020AFCBC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AFCF4: .word 0x02101064
	arm_func_end sub_020AFCB0

	arm_func_start sub_020AFCF8
sub_020AFCF8: ; 0x020AFCF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x188
	bl sub_020C4BB8
	mov r0, #1
	str r0, [r5, #0xc4]
	str r0, [r5, #8]
	ldr r0, [r4, #0x30]
	ldr r2, _020AFE88 ; =0x02100F48
	cmp r0, #0
	ldreq r1, [r4, #4]
	ldreq r0, [r1, #4]
	addeq r0, r1, r0
	str r0, [r5, #0]
	str r4, [r5, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	addne r0, r0, #0x40
	moveq r0, #0
	str r0, [r5, #0xd4]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r1, #8]
	cmpne r0, #0
	addne r0, r1, r0
	moveq r0, #0
	str r0, [r5, #0xd8]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r1, #0xc]
	cmpne r0, #0
	addne r0, r1, r0
	moveq r0, #0
	str r0, [r5, #0xdc]
	ldr r0, [r4, #4]
	ldr r1, _020AFE8C ; =0x02100F3C
	ldrb r3, [r0, #0x15]
	ldr r0, _020AFE90 ; =0x02100F54
	ldr r2, [r2, r3, lsl #2]
	str r2, [r5, #0xe8]
	ldr r2, [r4, #4]
	ldrb r2, [r2, #0x15]
	ldr r1, [r1, r2, lsl #2]
	str r1, [r5, #0xec]
	ldr r1, [r4, #4]
	ldrb r1, [r1, #0x16]
	ldr r0, [r0, r1, lsl #2]
	str r0, [r5, #0xf0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	str r0, [r5, #0xe0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	str r0, [r5, #0xe4]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _020AFE0C
	ldrb r0, [r4, #0x24]
	cmp r0, #0x20
	bhs _020AFE0C
	add r0, r5, r0, lsl #2
	str r1, [r0, #0xc]
	ldrb r0, [r4, #0x24]
	ldrb r1, [r4, #0x25]
	add r0, r5, r0
	strb r1, [r0, #0x8c]
_020AFE0C:
	ldr r0, [r4, #0]
	tst r0, #1
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x80
	strne r0, [r5, #8]
	ldr r0, [r4, #0]
	tst r0, #2
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x100
	strne r0, [r5, #8]
	ldr r0, [r4, #0]
	tst r0, #4
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x200
	strne r0, [r5, #8]
	ldr r0, [r4, #0]
	tst r0, #8
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x400
	strne r0, [r5, #8]
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _020AFE70
	mov r0, r5
	blx r1
_020AFE70:
	mov r0, r5
	bl sub_020AFCB0
	ldr r0, [r4, #0]
	bic r0, r0, #1
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AFE88: .word 0x02100F48
_020AFE8C: .word 0x02100F3C
_020AFE90: .word 0x02100F54
	arm_func_end sub_020AFCF8

	arm_func_start sub_020AFE94
sub_020AFE94: ; 0x020AFE94
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, #1
	mov r4, #0
_020AFEA8:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0
	ble _020AFEEC
_020AFEB8:
	add r2, r1, r5, lsl #1
	ldrh r2, [r2, #0x1a]
	tst r2, #0x100
	beq _020AFEDC
	mov lr, r5, asr #5
	ldr ip, [r0, lr, lsl #2]
	and r2, r5, #0x1f
	orr r2, ip, r3, lsl r2
	str r2, [r0, lr, lsl #2]
_020AFEDC:
	ldrb r2, [r1, #0x19]
	add r5, r5, #1
	cmp r5, r2
	blt _020AFEB8
_020AFEEC:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020AFEA8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020AFE94

	arm_func_start sub_020AFEFC
sub_020AFEFC: ; 0x020AFEFC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x188
	mov r4, r0
	ldr r0, [r4, #0]
	and r0, r0, #0x10
	cmp r0, #0x10
	bne _020AFF90
	add r1, r4, #0x3c
	mov r0, #0
	mov r2, #8
	bl sub_020C4B4C
	add r1, r4, #0x44
	mov r0, #0
	mov r2, #8
	bl sub_020C4B4C
	add r1, r4, #0x4c
	mov r0, #0
	mov r2, #8
	bl sub_020C4B4C
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020AFF5C
	add r0, r4, #0x3c
	bl sub_020AFE94
_020AFF5C:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020AFF70
	add r0, r4, #0x44
	bl sub_020AFE94
_020AFF70:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020AFF84
	add r0, r4, #0x4c
	bl sub_020AFE94
_020AFF84:
	ldr r0, [r4, #0]
	bic r0, r0, #0x10
	str r0, [r4, #0]
_020AFF90:
	ldr r2, _020AFFD4 ; =0x021C5CF0
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _020AFFB0
	mov r1, r4
	bl sub_020AFCF8
	add sp, sp, #0x188
	ldmia sp!, {r4, pc}
_020AFFB0:
	add r0, sp, #0
	mov r1, r4
	str r0, [r2, #0]
	bl sub_020AFCF8
	ldr r0, _020AFFD4 ; =0x021C5CF0
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x188
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AFFD4: .word 0x021C5CF0
	arm_func_end sub_020AFEFC

	arm_func_start sub_020AFFD8
sub_020AFFD8: ; 0x020AFFD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _020AFFF0
	blx r1
_020AFFF0:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020AFFD8

	arm_func_start sub_020B0000
sub_020B0000: ; 0x020B0000
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020B0018
	blx r1
_020B0018:
	ldr r0, [r4, #8]
	orr r0, r0, #0x20
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B0000

	arm_func_start sub_020B0028
sub_020B0028: ; 0x020B0028
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	tst r0, #0x200
	bne _020B0194
	ldr r1, [r6, #0]
	add r0, r6, #0x184
	ldrb r4, [r1, #1]
	strb r4, [r6, #0xac]
	ldr r1, [r6, #8]
	orr r1, r1, #4
	str r1, [r6, #8]
	str r0, [r6, #0xb8]
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	moveq r5, #0
	cmp r5, #1
	bne _020B00A8
	ldr r1, [r6, #8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #8]
	ldr r1, [r6, #0x14]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _020B00AC
_020B00A8:
	mov r0, #0
_020B00AC:
	cmp r0, #0
	bne _020B010C
	ldr ip, [r6, #4]
	ldr r1, [ip, #0x18]
	cmp r1, #0
	beq _020B00F8
	mov r0, r4, lsr #5
	add r0, ip, r0, lsl #2
	ldr r0, [r0, #0x4c]
	and r2, r4, #0x1f
	mov r3, #1
	tst r0, r3, lsl r2
	beq _020B00F8
	ldr r0, [r6, #0xb8]
	ldr r3, [ip, #0x1c]
	mov r2, r4
	blx r3
	cmp r0, #0
	bne _020B010C
_020B00F8:
	ldr r1, [r6, #0]
	ldr r0, [r6, #0xb8]
	ldrb r1, [r1, #2]
	and r1, r1, #1
	str r1, [r0, #0]
_020B010C:
	cmp r5, #2
	bne _020B0148
	ldr r1, [r6, #8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #8]
	ldr r1, [r6, #0x14]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _020B014C
_020B0148:
	mov r0, #0
_020B014C:
	cmp r0, #0
	bne _020B0174
	ldr r0, [r6, #0xb8]
	ldr r0, [r0, #0]
	cmp r0, #0
	ldr r0, [r6, #8]
	orrne r0, r0, #1
	strne r0, [r6, #8]
	biceq r0, r0, #1
	streq r0, [r6, #8]
_020B0174:
	cmp r5, #3
	bne _020B0194
	ldr r1, [r6, #8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #8]
	ldr r1, [r6, #0x14]
	blx r1
_020B0194:
	ldr r0, [r6, #0]
	add r0, r0, #3
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B0028

	arm_func_start sub_020B01A4
sub_020B01A4: ; 0x020B01A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x200
	bne _020B0260
	tst r0, #1
	beq _020B0260
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrneb r5, [r4, #0x8f]
	moveq r5, #0
	cmp r5, #1
	bne _020B020C
	ldr r1, [r4, #8]
	mov r0, r4
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldr r1, [r4, #0x18]
	blx r1
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrneb r5, [r4, #0x8f]
	ldr r0, [r4, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _020B0210
_020B020C:
	mov r0, #0
_020B0210:
	cmp r0, #0
	bne _020B0240
	ldr r0, [r4, #0]
	ldrb r0, [r0, #1]
	str r0, [sp]
	ldr r0, [r4, #8]
	tst r0, #0x100
	bne _020B0240
	add r1, sp, #0
	mov r0, #0x14
	mov r2, #1
	bl sub_020B275C
_020B0240:
	cmp r5, #3
	bne _020B0260
	ldr r1, [r4, #8]
	mov r0, r4
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldr r1, [r4, #0x18]
	blx r1
_020B0260:
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B01A4

	arm_func_start sub_020B0270
sub_020B0270: ; 0x020B0270
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r5, r3
	strb r5, [r7, #0xad]
	ldr r3, [r7, #8]
	add r0, r7, #0xf4
	orr r3, r3, #8
	str r3, [r7, #8]
	str r0, [r7, #0xb0]
	ldr r0, [r7, #0x1c]
	mov r8, r1
	cmp r0, #0
	ldrneb r4, [r7, #0x90]
	mov r6, r2
	moveq r4, #0
	cmp r4, #1
	bne _020B02EC
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x1c]
	blx r1
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	ldrneb r4, [r7, #0x90]
	ldr r0, [r7, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B02F0
_020B02EC:
	mov r0, #0
_020B02F0:
	cmp r0, #0
	bne _020B05D0
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _020B031C
	ldr r1, [r7, #8]
	tst r1, #0x80
	moveq r1, #0x38
	mlaeq r8, r5, r1, r0
	beq _020B05CC
_020B031C:
	cmp r8, #0x20
	cmpne r8, #0x40
	bne _020B0364
	mov r1, r5, lsr #5
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0xbc]
	and r2, r5, #0x1f
	mov r3, #1
	tst r1, r3, lsl r2
	beq _020B0364
	cmp r0, #0
	movne r1, #0x38
	mlane r8, r5, r1, r0
	bne _020B05CC
	ldr r1, _020B06E4 ; =0x021C5CF4
	mov r0, #0x38
	mla r8, r5, r0, r1
	b _020B05CC
_020B0364:
	cmp r0, #0
	beq _020B039C
	add r8, r7, #0xbc
	mov r3, r5, lsr #5
	ldr r2, [r8, r3, lsl #2]
	and r0, r5, #0x1f
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [r8, r3, lsl #2]
	ldr r1, [r7, #4]
	mov r0, #0x38
	ldr r1, [r1, #0x38]
	mla r8, r5, r0, r1
	b _020B03D0
_020B039C:
	cmp r8, #0x40
	addne r8, r7, #0xf4
	bne _020B03D0
	add lr, r7, #0xbc
	mov ip, r5, lsr #5
	ldr r1, _020B06E4 ; =0x021C5CF4
	ldr r8, [lr, ip, lsl #2]
	mov r0, #0x38
	and r2, r5, #0x1f
	mov r3, #1
	orr r2, r8, r3, lsl r2
	mla r8, r5, r0, r1
	str r2, [lr, ip, lsl #2]
_020B03D0:
	mov r0, #0
	str r0, [r8]
	ldr r3, [r7, #0xd8]
	cmp r3, #0
	beq _020B0424
	adds r2, r3, #4
	beq _020B0410
	ldrb r0, [r3, #5]
	cmp r5, r0
	bhs _020B0410
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020B0414
_020B0410:
	mov r1, #0
_020B0414:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r3, r0
	bne _020B0428
_020B0424:
	mov r0, #0
_020B0428:
	ldrh r0, [r0, #0x1e]
	ldr r1, _020B06E8 ; =0x021C5A8C
	tst r0, #0x20
	ldrne r0, [r8]
	orrne r0, r0, #0x20
	strne r0, [r8]
	ldrh r2, [r6, #0x1e]
	ldr r0, _020B06EC ; =0x020F97D4
	ldr ip, [r1, #0x94]
	mov r2, r2, asr #6
	and r2, r2, #7
	ldr lr, [r0, r2, lsl #2]
	ldr r2, [r6, #4]
	mvn r3, lr
	and r3, ip, r3
	and r2, r2, lr
	orr r2, r3, r2
	str r2, [r8, #4]
	ldrh ip, [r6, #0x1e]
	ldr r3, [r1, #0x98]
	ldr r2, [r6, #8]
	mov ip, ip, asr #9
	and ip, ip, #7
	ldr ip, [r0, ip, lsl #2]
	mvn r0, ip
	and r3, r3, r0
	and r0, r2, ip
	orr r0, r3, r0
	str r0, [r8, #8]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r2, [r1, #0x9c]
	mvn r1, r3
	and r1, r2, r1
	and r0, r0, r3
	orr r0, r1, r0
	str r0, [r8, #0xc]
	ldr r0, [r6, #0x14]
	str r0, [r8, #0x10]
	ldrh r0, [r6, #0x1c]
	str r0, [r8, #0x14]
	ldrh r0, [r6, #0x1e]
	tst r0, #1
	beq _020B0564
	tst r0, #2
	ldrne r1, [r8]
	add r0, r6, #0x2c
	orrne r1, r1, #1
	strne r1, [r8]
	bne _020B0504
	ldr r1, [r0, #0]
	str r1, [r8, #0x18]
	ldr r1, [r0, #4]
	add r0, r0, #8
	str r1, [r8, #0x1c]
_020B0504:
	ldrh r1, [r6, #0x1e]
	tst r1, #4
	ldrne r1, [r8]
	orrne r1, r1, #2
	strne r1, [r8]
	bne _020B0530
	ldrsh r1, [r0]
	strh r1, [r8, #0x20]
	ldrsh r1, [r0, #2]
	add r0, r0, #4
	strh r1, [r8, #0x22]
_020B0530:
	ldrh r1, [r6, #0x1e]
	tst r1, #8
	ldrne r0, [r8]
	orrne r0, r0, #4
	strne r0, [r8]
	bne _020B0558
	ldr r1, [r0, #0]
	str r1, [r8, #0x24]
	ldr r0, [r0, #4]
	str r0, [r8, #0x28]
_020B0558:
	ldr r0, [r8]
	orr r0, r0, #8
	str r0, [r8]
_020B0564:
	ldr ip, [r7, #4]
	ldr r1, [ip, #8]
	cmp r1, #0
	beq _020B05A0
	mov r0, r5, lsr #5
	add r0, ip, r0, lsl #2
	ldr r0, [r0, #0x3c]
	and r2, r5, #0x1f
	mov r3, #1
	tst r0, r3, lsl r2
	beq _020B05A0
	ldr r3, [ip, #0xc]
	mov r0, r8
	mov r2, r5
	blx r3
_020B05A0:
	ldr r0, [r8]
	tst r0, #0x18
	beq _020B05CC
	ldrh r0, [r6, #0x20]
	strh r0, [r8, #0x2c]
	ldrh r0, [r6, #0x22]
	strh r0, [r8, #0x2e]
	ldr r0, [r6, #0x24]
	str r0, [r8, #0x30]
	ldr r0, [r6, #0x28]
	str r0, [r8, #0x34]
_020B05CC:
	str r8, [r7, #0xb0]
_020B05D0:
	cmp r4, #2
	bne _020B060C
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x1c]
	blx r1
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	ldrneb r4, [r7, #0x90]
	ldr r0, [r7, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B0610
_020B060C:
	mov r0, #0
_020B0610:
	cmp r0, #0
	bne _020B06B8
	ldr r5, [r7, #0xb0]
	ldr r1, [r5, #0xc]
	tst r1, #0x1f0000
	beq _020B06AC
	ldr r0, [r5, #0]
	tst r0, #0x20
	bicne r0, r1, #0x1f0000
	strne r0, [r5, #0xc]
	ldr r0, [r7, #8]
	bic r0, r0, #2
	str r0, [r7, #8]
	tst r0, #0x100
	bne _020B06B8
	ldr r0, _020B06F0 ; =0x00293130
	ldr r3, _020B06F4 ; =0x00002B2A
	str r0, [sp]
	ldr r2, [r5, #4]
	add r1, sp, #4
	str r2, [sp, #4]
	ldr r6, [r5, #8]
	mov r2, #6
	str r6, [sp, #8]
	ldr r6, [r5, #0xc]
	str r6, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [r5, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [r5, #0x14]
	str r3, [sp, #0x18]
	bl sub_020B275C
	ldr r0, [r5, #0]
	tst r0, #0x18
	beq _020B06B8
	ldr r1, [r7, #0xf0]
	mov r0, r5
	blx r1
	b _020B06B8
_020B06AC:
	ldr r0, [r7, #8]
	orr r0, r0, #2
	str r0, [r7, #8]
_020B06B8:
	cmp r4, #3
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x1c]
	blx r1
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B06E4: .word 0x021C5CF4
_020B06E8: .word 0x021C5A8C
_020B06EC: .word 0x020F97D4
_020B06F0: .word 0x00293130
_020B06F4: .word 0x00002B2A
	arm_func_end sub_020B0270

	arm_func_start sub_020B06F8
sub_020B06F8: ; 0x020B06F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #8]
	tst r2, #0x200
	bne _020B0794
	ldr r0, [r4, #0]
	tst r2, #1
	ldrb r3, [r0, #1]
	bne _020B0730
	tst r2, #8
	beq _020B0730
	ldrb r0, [r4, #0xad]
	cmp r3, r0
	beq _020B0794
_020B0730:
	ldr lr, [r4, #0xd8]
	cmp lr, #0
	beq _020B077C
	adds ip, lr, #4
	beq _020B0768
	ldrb r0, [lr, #5]
	cmp r3, r0
	bhs _020B0768
	ldrh r2, [lr, #0xa]
	ldrh r0, [ip, r2]
	add r2, ip, r2
	add r2, r2, #4
	mla r2, r0, r3, r2
	b _020B076C
_020B0768:
	mov r2, #0
_020B076C:
	cmp r2, #0
	ldrne r0, [r2]
	addne r2, lr, r0
	bne _020B0780
_020B077C:
	mov r2, #0
_020B0780:
	ldrh lr, [r2]
	ldr ip, _020B07A4 ; =0x02100F74
	mov r0, r4
	ldr ip, [ip, lr, lsl #2]
	blx ip
_020B0794:
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B07A4: .word 0x02100F74
	arm_func_end sub_020B06F8

	arm_func_start sub_020B07A8
sub_020B07A8: ; 0x020B07A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r2
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	moveq r6, #0
	cmp r6, #1
	bne _020B0800
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	ldr r0, [r5, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _020B0804
_020B0800:
	mov r0, #0
_020B0804:
	cmp r0, #0
	bne _020B0828
	ldr r0, [r5, #8]
	tst r0, #0x100
	bne _020B0828
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, r4, r0
	bl sub_020B26A8
_020B0828:
	cmp r6, #2
	bne _020B0858
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	moveq r6, #0
_020B0858:
	cmp r6, #3
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	blx r1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B07A8

	arm_func_start sub_020B087C
sub_020B087C: ; 0x020B087C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x200
	bne _020B0908
	tst r0, #1
	beq _020B0908
	tst r0, #2
	bne _020B0908
	ldr r0, [r4, #0]
	ldr ip, [r4, #0xdc]
	ldrb r3, [r0, #1]
	cmp ip, #0
	beq _020B08F0
	beq _020B08DC
	ldrb r0, [ip, #1]
	cmp r3, r0
	bhs _020B08DC
	ldrh r2, [ip, #6]
	ldrh r0, [ip, r2]
	add r2, ip, r2
	add r2, r2, #4
	mla r2, r0, r3, r2
	b _020B08E0
_020B08DC:
	mov r2, #0
_020B08E0:
	cmp r2, #0
	ldrne r0, [r2]
	addne r2, ip, r0
	bne _020B08F4
_020B08F0:
	mov r2, #0
_020B08F4:
	ldrh lr, [r2]
	ldr ip, _020B0918 ; =0x02100F84
	mov r0, r4
	ldr ip, [ip, lr, lsl #2]
	blx ip
_020B0908:
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B0918: .word 0x02100F84
	arm_func_end sub_020B087C
