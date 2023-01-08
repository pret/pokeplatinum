	.include "macros/function.inc"
	.include "include/g2d_oamsoftwarespritedraw.inc"

	.extern Unk_021C5A6C
	.extern Unk_020F9658
	.extern Unk_020F9670

	.text


	arm_func_start CalcSpriteParams_
CalcSpriteParams_: ; 0x020AB470
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
_020AB6B4: .word Unk_020F9670
_020AB6B8: .word Unk_020F9658
_020AB6BC: .word 0x040004A8
_020AB6C0: .word Unk_020F96A4
_020AB6C4: .word Unk_020F96C4
_020AB6C8: .word Unk_020F96F4
_020AB6CC: .word Unk_021C5A6C
_020AB6D0: .word Unk_020F969C
_020AB6D4: .word 0x040004AC
	arm_func_end CalcSpriteParams_

	arm_func_start NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
NNSi_G2dSetOamSoftEmuAutoZOffsetFlag: ; 0x020AB6D8
	ldr r1, _020AB6E4 ; =0x021C5A6C
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
_020AB6E4: .word Unk_021C5A6C
	arm_func_end NNSi_G2dSetOamSoftEmuAutoZOffsetFlag

	arm_func_start NNSi_G2dResetOamSoftEmuAutoZOffset
NNSi_G2dResetOamSoftEmuAutoZOffset: ; 0x020AB6E8
	ldr r0, _020AB6F8 ; =0x021C5A6C
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020AB6F8: .word Unk_021C5A6C
	arm_func_end NNSi_G2dResetOamSoftEmuAutoZOffset

	arm_func_start NNSi_G2dSetOamSoftEmuAutoZOffsetStep
NNSi_G2dSetOamSoftEmuAutoZOffsetStep: ; 0x020AB6FC
	ldr r1, _020AB708 ; =0x02100EC4
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020AB708: .word Unk_02100EC4
	arm_func_end NNSi_G2dSetOamSoftEmuAutoZOffsetStep

	arm_func_start NNSi_G2dGetOamSoftEmuAutoZOffsetStep
NNSi_G2dGetOamSoftEmuAutoZOffsetStep: ; 0x020AB70C
	ldr r0, _020AB718 ; =0x02100EC4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020AB718: .word Unk_02100EC4
	arm_func_end NNSi_G2dGetOamSoftEmuAutoZOffsetStep

	arm_func_start NNS_G2dDrawOneOam3DDirectWithPosFast
NNS_G2dDrawOneOam3DDirectWithPosFast: ; 0x020AB71C
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
	bl CalcSpriteParams_
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
_020AB954: .word Unk_020F9670
_020AB958: .word Unk_021C5A6C
_020AB95C: .word Unk_020F9658
_020AB960: .word 0x04000470
_020AB964: .word 0x0400046C
_020AB968: .word Unk_02100EC4
	arm_func_end NNS_G2dDrawOneOam3DDirectWithPosFast

	.rodata


	.global Unk_020F9694
Unk_020F9694: ; 0x020F9694
	.incbin "incbin/arm9_rodata.bin", 0x14A54, 0x14A58 - 0x14A54

	.global Unk_020F9698
Unk_020F9698: ; 0x020F9698
	.incbin "incbin/arm9_rodata.bin", 0x14A58, 0x14A5C - 0x14A58

	.global Unk_020F969C
Unk_020F969C: ; 0x020F969C
	.incbin "incbin/arm9_rodata.bin", 0x14A5C, 0x14A64 - 0x14A5C

	.global Unk_020F96A4
Unk_020F96A4: ; 0x020F96A4
	.incbin "incbin/arm9_rodata.bin", 0x14A64, 0x14A84 - 0x14A64

	.global Unk_020F96C4
Unk_020F96C4: ; 0x020F96C4
	.incbin "incbin/arm9_rodata.bin", 0x14A84, 0x14AB4 - 0x14A84

	.global Unk_020F96F4
Unk_020F96F4: ; 0x020F96F4
	.incbin "incbin/arm9_rodata.bin", 0x14AB4, 0x30



	.data


	.global Unk_02100EC4
Unk_02100EC4: ; 0x02100EC4
	.incbin "incbin/arm9_data.bin", 0x21E4, 0x4



	.bss


	.global Unk_021C5A6C
Unk_021C5A6C: ; 0x021C5A6C
	.space 0x4

	.global Unk_021C5A70
Unk_021C5A70: ; 0x021C5A70
	.space 0x4

	.global Unk_021C5A74
Unk_021C5A74: ; 0x021C5A74
	.space 0x4

	.global Unk_021C5A78
Unk_021C5A78: ; 0x021C5A78
	.space 0x10

