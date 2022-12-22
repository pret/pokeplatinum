	.include "macros/function.inc"
	.include "include/unk_0209C400.inc"

	

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
	bl GX_BeginLoadTexPltt
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
	bl GX_LoadTexPltt
_0209C890:
	str r6, [r8, #8]
	ldrh r0, [sl, #0x32]
	add sb, sb, #1
	add r5, r5, #0x14
	cmp sb, r0
	blt _0209C83C
_0209C8A8:
	bl GX_EndLoadTexPltt
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
	bl GX_BeginLoadTex
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
	bl GX_LoadTex
	str r5, [r8, #4]
_0209C960:
	ldrh r0, [sl, #0x32]
	add sb, sb, #1
	add r6, r6, #0x14
	cmp sb, r0
	blt _0209C8F4
_0209C974:
	bl GX_EndLoadTex
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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
	bl MI_CpuFill8
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