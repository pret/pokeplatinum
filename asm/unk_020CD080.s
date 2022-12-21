	.include "macros/function.inc"
	.include "include/unk_020CD080.inc"

	

	.text


	arm_func_start sub_020CD080
sub_020CD080: ; 0x020CD080
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CD108 ; =0x021CEE20
	mov r1, #0x200
	ldr r3, [r4, #0x1c]
	rsb r1, r1, #0
	ldr r2, [r0, #8]
	and r3, r3, r1
	cmp r3, r2
	bne _020CD0F4
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	sub r3, r2, r3
	rsb r5, r3, #0x200
	cmp r5, r1
	movhi r5, r1
	add r0, r0, #0x20
	ldr r1, [r4, #0x20]
	mov r2, r5
	add r0, r0, r3
	bl sub_020C4DB0
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	add r2, r2, r5
	add r1, r1, r5
	sub r0, r0, r5
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
_020CD0F4:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CD108: .word 0x021CEE20
	arm_func_end sub_020CD080

	arm_func_start sub_020CD10C
sub_020CD10C: ; 0x020CD10C
	ldr r3, _020CD164 ; =0x040001A4
_020CD110:
	ldr r2, [r3, #0]
	tst r2, #-0x80000000
	bne _020CD110
	ldr r3, _020CD168 ; =0x040001A1
	mov r2, #0xc0
	strb r2, [r3]
	mov r2, r0, lsr #0x18
	strb r2, [r3, #7]
	mov r2, r0, lsr #0x10
	strb r2, [r3, #8]
	mov r2, r0, lsr #8
	strb r2, [r3, #9]
	strb r0, [r3, #0xa]
	mov r0, r1, lsr #0x18
	strb r0, [r3, #0xb]
	mov r0, r1, lsr #0x10
	strb r0, [r3, #0xc]
	mov r0, r1, lsr #8
	strb r0, [r3, #0xd]
	strb r1, [r3, #0xe]
	bx lr
	; .align 2, 0
_020CD164: .word 0x040001A4
_020CD168: .word 0x040001A1
	arm_func_end sub_020CD10C

	arm_func_start sub_020CD16C
sub_020CD16C: ; 0x020CD16C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CD1B0 ; =0x021CEE20
	ldr r1, _020CD1B4 ; =0x04100010
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x20]
	mov r3, #0x200
	ldr r5, _020CD1B8 ; =0x021CF460
	bl sub_020C5048
	ldr r1, [r4, #0x1c]
	mov r0, r1, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r1, lsl #0x18
	bl sub_020CD10C
	ldr r1, [r5, #4]
	ldr r0, _020CD1BC ; =0x040001A4
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CD1B0: .word 0x021CEE20
_020CD1B4: .word 0x04100010
_020CD1B8: .word 0x021CF460
_020CD1BC: .word 0x040001A4
	arm_func_end sub_020CD16C

	arm_func_start sub_020CD1C0
sub_020CD1C0: ; 0x020CD1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020CD28C ; =0x021CEE20
	ldr r0, [r0, #0x28]
	bl sub_020C45F4
	ldr r3, _020CD28C ; =0x021CEE20
	ldr r0, [r3, #0x24]
	ldr r2, [r3, #0x1c]
	ldr r1, [r3, #0x20]
	subs r0, r0, #0x200
	str r0, [r3, #0x24]
	movne r0, #1
	add r2, r2, #0x200
	add r1, r1, #0x200
	moveq r0, #0
	str r2, [r3, #0x1c]
	str r1, [r3, #0x20]
	cmp r0, #0
	bne _020CD284
	mov r0, #0x80000
	bl sub_020C164C
	mov r0, #0x80000
	bl sub_020C167C
	ldr r4, _020CD28C ; =0x021CEE20
	bl sub_020CD50C
	bl sub_020CDA68
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r5, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl sub_020C3D98
	ldr r1, [r4, #0x114]
	mov r7, r0
	bic r0, r1, #0x4c
	str r0, [r4, #0x114]
	add r0, r4, #0x10c
	bl sub_020C2268
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD268
	add r0, r4, #0x44
	bl sub_020C22D0
_020CD268:
	mov r0, r7
	bl sub_020C3DAC
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CD284:
	bl sub_020CD16C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD28C: .word 0x021CEE20
	arm_func_end sub_020CD1C0

	arm_func_start sub_020CD290
sub_020CD290: ; 0x020CD290
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _020CD408 ; =0x021CEE20
	mov r6, #0
	ldr sb, [r4, #0x20]
	mov fp, r0
	mov r7, r6
	mov r8, r6
	mov r1, r6
	ands sl, sb, #0x1f
	ldr r5, [r4, #0x24]
	bne _020CD2C8
	ldr r0, [r4, #0x28]
	cmp r0, #3
	movls r1, #1
_020CD2C8:
	cmp r1, #0
	beq _020CD31C
	bl sub_020C3508
	ldr r1, _020CD40C ; =0x01FF8000
	add r3, sb, r5
	cmp r3, r1
	mov r1, #1
	mov r2, #0
	bls _020CD2F4
	cmp sb, #0x2000000
	movlo r2, r1
_020CD2F4:
	cmp r2, #0
	bne _020CD314
	cmp r0, r3
	bhs _020CD310
	add r0, r0, #0x4000
	cmp r0, sb
	bhi _020CD314
_020CD310:
	mov r1, #0
_020CD314:
	cmp r1, #0
	moveq r8, #1
_020CD31C:
	cmp r8, #0
	beq _020CD338
	ldr r1, [r4, #0x1c]
	ldr r0, _020CD410 ; =0x000001FF
	orr r1, r1, r5
	tst r1, r0
	moveq r7, #1
_020CD338:
	ldr r0, _020CD414 ; =0x02101480
	cmp r7, #0
	ldr r0, [r0, #0]
	cmpne r5, #0
	ldr r0, [r0, #0x60]
	movne r6, #1
	bic r0, r0, #0x7000000
	orr r0, r0, #0xa1000000
	cmp r6, #0
	str r0, [fp, #4]
	beq _020CD400
	bl sub_020C3D98
	ldr r1, [r4, #0x118]
	mov r7, r0
	cmp r5, r1
	bhs _020CD388
	mov r0, sb
	mov r1, r5
	bl sub_020C2C90
	b _020CD38C
_020CD388:
	bl sub_020C2C84
_020CD38C:
	ldr r0, [r4, #0x11c]
	cmp r5, r0
	bhs _020CD3D4
	cmp sl, #0
	beq _020CD3C0
	sub sb, sb, sl
	mov r0, sb
	mov r1, #0x20
	bl sub_020C2C38
	add r0, sb, r5
	mov r1, #0x20
	bl sub_020C2C38
	add r5, r5, #0x20
_020CD3C0:
	mov r0, sb
	mov r1, r5
	bl sub_020C2C1C
	bl sub_020C2C78
	b _020CD3D8
_020CD3D4:
	bl sub_020C2BE8
_020CD3D8:
	ldr r1, _020CD418 ; =sub_020CD1C0
	mov r0, #0x80000
	bl sub_020C144C
	mov r0, #0x80000
	bl sub_020C167C
	mov r0, #0x80000
	bl sub_020C161C
	mov r0, r7
	bl sub_020C3DAC
	bl sub_020CD16C
_020CD400:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CD408: .word 0x021CEE20
_020CD40C: .word 0x01FF8000
_020CD410: .word 0x000001FF
_020CD414: .word 0x02101480
_020CD418: .word sub_020CD1C0
	arm_func_end sub_020CD290

	arm_func_start sub_020CD41C
sub_020CD41C: ; 0x020CD41C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020CD500 ; =0x021CEE20
	mov r6, r0
_020CD428:
	mov r0, #0x200
	ldr r1, [r4, #0x1c]
	rsb r0, r0, #0
	and r2, r1, r0
	cmp r2, r1
	bne _020CD458
	ldr r5, [r4, #0x20]
	tst r5, #3
	bne _020CD458
	ldr r0, [r4, #0x24]
	cmp r0, #0x200
	bhs _020CD460
_020CD458:
	str r2, [r6, #8]
	add r5, r6, #0x20
_020CD460:
	mov r0, r2, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r2, lsl #0x18
	bl sub_020CD10C
	mov ip, #0
	ldr r0, [r6, #4]
	ldr r2, _020CD504 ; =0x040001A4
	mov lr, ip
	str r0, [r2, #0]
	ldr r1, _020CD508 ; =0x04100010
_020CD488:
	ldr r3, [r2, #0]
	tst r3, #0x800000
	beq _020CD4A8
	ldr r0, [r1, #0]
	cmp lr, #0x200
	strlo r0, [r5, ip, lsl #2]
	addlo lr, lr, #4
	addlo ip, ip, #1
_020CD4A8:
	tst r3, #-0x80000000
	bne _020CD488
	ldr r0, [r4, #0x20]
	cmp r5, r0
	bne _020CD4EC
	ldr r0, _020CD500 ; =0x021CEE20
	ldr r1, [r0, #0x1c]
	add r1, r1, #0x200
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0x20]
	add r1, r1, #0x200
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	subs r1, r1, #0x200
	str r1, [r0, #0x24]
	ldmeqia sp!, {r4, r5, r6, pc}
	b _020CD428
_020CD4EC:
	mov r0, r6
	bl sub_020CD080
	cmp r0, #0
	bne _020CD428
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CD500: .word 0x021CEE20
_020CD504: .word 0x040001A4
_020CD508: .word 0x04100010
	arm_func_end sub_020CD41C

	arm_func_start sub_020CD50C
sub_020CD50C: ; 0x020CD50C
	stmfd sp!, {r3, lr}
	mov r0, #-0x48000000
	mov r1, #0
	bl sub_020CD10C
	ldr r1, _020CD55C ; =0x02101480
	mov r0, #0x2000
	ldr r1, [r1, #0]
	rsb r0, r0, #0
	ldr r2, [r1, #0x60]
	ldr r1, _020CD560 ; =0x040001A4
	bic r2, r2, #0x7000000
	orr r2, r2, #0xa7000000
	and r0, r2, r0
	str r0, [r1, #0]
_020CD544:
	ldr r0, [r1, #0]
	tst r0, #0x800000
	beq _020CD544
	ldr r0, _020CD564 ; =0x04100010
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD55C: .word 0x02101480
_020CD560: .word 0x040001A4
_020CD564: .word 0x04100010
	arm_func_end sub_020CD50C

	arm_func_start sub_020CD568
sub_020CD568: ; 0x020CD568
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020CD5F8 ; =0x021CF460
	mov r0, r4
	bl sub_020CD080
	cmp r0, #0
	beq _020CD58C
	ldr r1, [r4, #0]
	mov r0, r4
	blx r1
_020CD58C:
	ldr r4, _020CD5FC ; =0x021CEE20
	bl sub_020CD50C
	bl sub_020CDA68
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r5, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl sub_020C3D98
	ldr r1, [r4, #0x114]
	mov r7, r0
	bic r0, r1, #0x4c
	str r0, [r4, #0x114]
	add r0, r4, #0x10c
	bl sub_020C2268
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD5DC
	add r0, r4, #0x44
	bl sub_020C22D0
_020CD5DC:
	mov r0, r7
	bl sub_020C3DAC
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD5F8: .word 0x021CF460
_020CD5FC: .word 0x021CEE20
	arm_func_end sub_020CD568

	arm_func_start sub_020CD600
sub_020CD600: ; 0x020CD600
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	ldr r4, _020CD6E4 ; =0x021CF460
	ldr r5, _020CD6E8 ; =0x021CEE20
	bl sub_020CC7B0
	bl sub_020C3D98
	mov r6, r0
	b _020CD634
_020CD62C:
	add r0, r5, #0x10c
	bl sub_020C2218
_020CD634:
	ldr r0, [r5, #0x114]
	tst r0, #4
	bne _020CD62C
	ldr r0, [r5, #0x114]
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r3, r0, #4
	mov r0, r6
	str r3, [r5, #0x114]
	str r2, [r5, #0x38]
	str r1, [r5, #0x3c]
	bl sub_020C3DAC
	ldr r0, _020CD6EC ; =0x021CF440
	str sl, [r5, #0x28]
	ldr r0, [r0, #0]
	str r8, [r5, #0x20]
	add r0, sb, r0
	str r0, [r5, #0x1c]
	str r7, [r5, #0x24]
	cmp sl, #3
	bhi _020CD690
	mov r0, sl
	bl sub_020C45F4
_020CD690:
	mov r0, r4
	bl sub_020CD290
	cmp r0, #0
	beq _020CD6B4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl sub_020CD75C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CD6B4:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020CD6CC
	ldr r0, _020CD6F0 ; =sub_020CD568
	bl sub_020CC544
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CD6CC:
	ldr r1, _020CD6F4 ; =0x021CCC80
	mov r0, r5
	ldr r1, [r1, #4]
	str r1, [r5, #0x104]
	bl sub_020CD568
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020CD6E4: .word 0x021CF460
_020CD6E8: .word 0x021CEE20
_020CD6EC: .word 0x021CF440
_020CD6F0: .word sub_020CD568
_020CD6F4: .word 0x021CCC80
	arm_func_end sub_020CD600

	arm_func_start sub_020CD6F8
sub_020CD6F8: ; 0x020CD6F8
	stmfd sp!, {r3, lr}
	ldr ip, _020CD754 ; =0x021CEE20
	ldr r0, [ip, #0x114]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #0
	ldr r0, _020CD758 ; =0x021CF440
	sub r1, r2, #1
	mov r3, #1
	str r3, [ip, #0x114]
	str r2, [ip, #0x24]
	str r2, [ip, #0x20]
	str r2, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r2, [ip, #0x38]
	str r2, [ip, #0x3c]
	str r2, [r0, #0]
	bl sub_020CC690
	bl sub_020CD768
	ldr r1, _020CD758 ; =0x021CF440
	str r0, [r1, #0x20]
	bl sub_020CD94C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD754: .word 0x021CEE20
_020CD758: .word 0x021CF440
	arm_func_end sub_020CD6F8

	arm_func_start sub_020CD75C
sub_020CD75C: ; 0x020CD75C
	ldr ip, _020CD764 ; =sub_020CC7D8
	bx ip
	; .align 2, 0
_020CD764: .word sub_020CC7D8
	arm_func_end sub_020CD75C

	arm_func_start sub_020CD768
sub_020CD768: ; 0x020CD768
	ldr r0, _020CD770 ; =sub_020CD41C
	bx lr
	; .align 2, 0
_020CD770: .word sub_020CD41C
	arm_func_end sub_020CD768

	.data


	.global Unk_02101480
Unk_02101480: ; 0x02101480
	.incbin "incbin/arm9_data.bin", 0x27A0, 0x4



	.bss


	.global Unk_021CF440
Unk_021CF440: ; 0x021CF440
	.space 0x20

	.global Unk_021CF460
Unk_021CF460: ; 0x021CF460
	.space 0x220

