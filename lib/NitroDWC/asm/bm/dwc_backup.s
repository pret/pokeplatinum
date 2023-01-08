	.include "macros/function.inc"
	.include "include/dwc_backup.inc"

	.extern Unk_021C3A48
	.extern Unk_021C3A54
	.extern Unk_021C3A80
	

	.text


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
_020A2838: .word Unk_021C3A48
	arm_func_end sub_020A2810

	arm_func_start sub_020A283C
sub_020A283C: ; 0x020A283C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020A28FC ; =0x021C3A54
	mov r1, r4
	mov r2, #6
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A28FC: .word Unk_021C3A54
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
	bl MATHi_CRC16InitTableRev
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
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A2970:
	mov r0, r6
	mov r2, fp
	add r1, sl, #0xf0
	bl MI_CpuCopy8
	mov r1, sl
	mov r2, #0xfe
	add r0, sl, #0x200
	bl MATH_CalcCRC16
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
_020A29E4: .word Unk_021C3A48
_020A29E8: .word 0x0000A001
_020A29EC: .word Unk_021C3A54
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
_020A2A30: .word Unk_021C3A48
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
_020A2A5C: .word Unk_021C3A48
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
_020A2AE4: .word Unk_021C3A48
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
	bl MATH_CalcCRC16
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
_020A2B78: .word Unk_021C3A48
	arm_func_end sub_020A2AE8

	arm_func_start sub_020A2B7C
sub_020A2B7C: ; 0x020A2B7C
	ldr ip, _020A2B8C ; =MI_CpuCopy8
	ldr r1, _020A2B90 ; =0x021C3A54
	mov r2, #0xe
	bx ip
	; .align 2, 0
_020A2B8C: .word MI_CpuCopy8
_020A2B90: .word Unk_021C3A54
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
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r4
	mov r2, #4
	bl MI_CpuCopy8
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
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #4]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #8]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0xc]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0x10]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2EA4:
	ldr r1, [sp, #0x14]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2EC4:
	ldr r1, [sp, #0x18]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	ldr r1, [sp, #0x1c]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	ldr r1, [sp, #0x20]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2F50
	ldr r1, [sp, #0x24]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
_020A2F50:
	bl OS_GetTick
	str r0, [sp, #0x34]
	mov fp, r1
	b _020A2DBC
_020A2F60:
	ldr r1, [sp, #0x28]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0x2c]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _020A2DBC
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2FB8:
	ldr r1, _020A3138 ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _020A2DBC
_020A2FDC:
	ldr r1, _020A3138 ; =0x03002100
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
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
	bl DC_InvalidateRange
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
	bl OS_GetTick
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
	bl _ull_div
	mov r2, r6
	cmp r1, r2
	cmpeq r0, r8
	bls _020A30FC
_020A30F4:
	mov r7, #6
	b _020A2DBC
_020A30FC:
	mov r0, #0x4000
	bl SVC_WaitByLoop
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
_020A312C: .word Unk_021C3A80
_020A3130: .word 0x01020000
_020A3134: .word 0x02002200
_020A3138: .word 0x03002100
_020A313C: .word Unk_021C3A48
_020A3140: .word 0x000082EA
	arm_func_end sub_020A2CD8

	arm_func_start sub_020A3144
sub_020A3144: ; 0x020A3144
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DC_InvalidateRange
	mov r8, #4
	mov r7, #1
_020A3164:
	mov r0, r8
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020A3164
	ldr r1, _020A31D0 ; =sub_020A3308
	mov r0, #4
	bl PXI_SetFifoRecvCallback
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
	bl SVC_WaitByLoop
	b _020A3194
_020A31BC:
	mov r0, r4
	mov r1, r5
	bl DC_InvalidateRange
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
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020A31EC
	ldr r1, _020A324C ; =sub_020A3308
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r0, r6
	mov r1, r7
	bl DC_StoreRange
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
	bl SVC_WaitByLoop
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
	bl memcmp
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
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020A32A8
	ldr r1, _020A3304 ; =sub_020A3308
	mov r0, #4
	bl PXI_SetFifoRecvCallback
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
	bl SVC_WaitByLoop
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
_020A3334: .word Unk_021C3A48
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
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
	ldr r0, _020A33EC ; =0x021C3A54
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A33EC: .word Unk_021C3A54
_020A33F0: .word 0x021C3A5A
_020A33F4: .word 0x021C3A60
	arm_func_end sub_020A3338

	arm_func_start sub_020A33F8
sub_020A33F8: ; 0x020A33F8
	ldr r0, _020A3400 ; =0x021C3A54
	bx lr
	; .align 2, 0
_020A3400: .word Unk_021C3A54
	arm_func_end sub_020A33F8

	.rodata


	.global Unk_020F9534
Unk_020F9534: ; 0x020F9534
	.incbin "incbin/arm9_rodata.bin", 0x148F4, 0x4



	.bss


	.global Unk_021C3A48
Unk_021C3A48: ; 0x021C3A48
	.space 0x4

	.global Unk_021C3A4C
Unk_021C3A4C: ; 0x021C3A4C
	.space 0x4

	.global Unk_021C3A50
Unk_021C3A50: ; 0x021C3A50
	.space 0x4

	.global Unk_021C3A54
Unk_021C3A54: ; 0x021C3A54
	.space 0x2C

	.global Unk_021C3A80
Unk_021C3A80: ; 0x021C3A80
	.space 0x20

