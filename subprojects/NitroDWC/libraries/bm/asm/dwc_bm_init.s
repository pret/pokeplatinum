	.include "macros/function.inc"
	.include "include/dwc_bm_init.inc"

	.extern Unk_020F9534

	.text


	arm_func_start DWC_BM_Init
DWC_BM_Init: ; 0x020A3404
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r1, #0
	mov r2, #0x700
	bl MI_CpuFill8
	mov r0, r8
	bl sub_020A29F0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020A36F8 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _020A36FC ; =0x0000A001
	add r0, r8, #0x500
	bl MATHi_CRC16InitTableRev
	mov r0, r8
	bl sub_020A2A34
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020A36F8 ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
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
	bl MATH_CalcCRC16
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
	bl MATH_CalcCRC16
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
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
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
	bl MIi_CpuClear16
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
	arm_func_end DWC_BM_Init

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
	bl memcmp
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
	bl memcmp
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
_020A3808: .word Unk_020F9534
	arm_func_end sub_020A370C

	arm_func_start sub_020A380C
sub_020A380C: ; 0x020A380C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r1, r7
	mov r0, #0
	mov r2, #0x400
	bl MIi_CpuClear16
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
	bl MI_CpuCopy8
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
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A388C