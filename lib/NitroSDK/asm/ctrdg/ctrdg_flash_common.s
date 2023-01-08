	.include "macros/function.inc"
	.include "include/ctrdg_flash_common.inc"

	.extern Unk_021D03AC

	.text


	arm_func_start CTRDGi_SetFlashBankMx
CTRDGi_SetFlashBankMx: ; 0x020D14B4
	ldr r3, _020D14E0 ; =0x0A005555
	mov r2, #0xaa
	ldr r1, _020D14E4 ; =0x0A002AAA
	strb r2, [r3]
	mov r2, #0x55
	strb r2, [r1]
	mov r1, #0xb0
	strb r1, [r3]
	mov r1, #0xa000000
	strb r0, [r1]
	bx lr
	; .align 2, 0
_020D14E0: .word 0x0A005555
_020D14E4: .word 0x0A002AAA
	arm_func_end CTRDGi_SetFlashBankMx

	arm_func_start CTRDGi_ReadFlashID
CTRDGi_ReadFlashID: ; 0x020D14E8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020D15E0 ; =0x04000208
	mov r0, #0
	ldrh r2, [r5]
	ldr r1, _020D15E4 ; =0x021D03AC
	ldr r4, _020D15E8 ; =0x0A005555
	strh r0, [r5]
	str r2, [r1, #0x1c]
	mov r3, #0xaa
	ldr r2, _020D15EC ; =0x0A002AAA
	strb r3, [r4]
	mov r3, #0x55
	strb r3, [r2]
	mov r2, #0x90
	strb r2, [r4]
	ldrh r2, [r5]
	ldr r1, [r1, #0x1c]
	strh r1, [r5]
	bl StartFlashTimer
	ldr r4, _020D15E4 ; =0x021D03AC
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020D1554
_020D1544:
	bl CheckFlashTimer
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020D1544
_020D1554:
	ldr r0, _020D15F0 ; =0x0A000001
	bl CTRDGi_ReadSrFunc
	mov r4, r0, lsl #0x18
	mov r0, #0xa000000
	bl CTRDGi_ReadSrFunc
	ldr ip, _020D15E0 ; =0x04000208
	orr r4, r0, r4, lsr #16
	ldrh r2, [ip]
	mov r0, #0
	ldr r1, _020D15E4 ; =0x021D03AC
	strh r0, [ip]
	ldr r5, _020D15E8 ; =0x0A005555
	str r2, [r1, #0x1c]
	mov r3, #0xaa
	ldr r2, _020D15EC ; =0x0A002AAA
	strb r3, [r5]
	mov r3, #0x55
	strb r3, [r2]
	mov r2, #0xf0
	strb r2, [r5]
	strb r2, [r5]
	ldrh r2, [ip]
	ldr r1, [r1, #0x1c]
	strh r1, [ip]
	bl StartFlashTimer
	ldr r5, _020D15E4 ; =0x021D03AC
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020D15D8
_020D15C8:
	bl CheckFlashTimer
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020D15C8
_020D15D8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D15E0: .word 0x04000208
_020D15E4: .word Unk_021D03AC
_020D15E8: .word 0x0A005555
_020D15EC: .word 0x0A002AAA
_020D15F0: .word 0x0A000001
	arm_func_end CTRDGi_ReadFlashID

	arm_func_start StartFlashTimer
StartFlashTimer: ; 0x020D15F4
	stmfd sp!, {r3, lr}
	ldr r1, _020D1634 ; =0x02101488
	ldr r2, _020D1638 ; =0x021D03AC
	mov r3, #0
	ldr r1, [r1, #4]
	strh r3, [r2, #2]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	mov r0, r3
	str r1, [r2, #0x20]
	str r0, [r2, #0x24]
	bl OS_GetTick
	ldr r2, _020D1638 ; =0x021D03AC
	str r0, [r2, #0x28]
	str r1, [r2, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1634: .word Unk_02101488
_020D1638: .word Unk_021D03AC
	arm_func_end StartFlashTimer

	arm_func_start CheckFlashTimer
CheckFlashTimer: ; 0x020D163C
	stmfd sp!, {r3, lr}
	bl OS_GetTick
	ldr r3, _020D1690 ; =0x021D03AC
	ldr r2, _020D1694 ; =0x000082EA
	ldr ip, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	subs ip, r0, ip
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	orr r1, r1, ip, lsr #26
	mov r0, ip, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _020D1690 ; =0x021D03AC
	ldr r3, [r2, #0x24]
	ldr ip, [r2, #0x20]
	cmp r3, r1
	cmpeq ip, r0
	movls r0, #1
	strlsh r0, [r2, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1690: .word Unk_021D03AC
_020D1694: .word 0x000082EA
	arm_func_end CheckFlashTimer

	arm_func_start CTRDGi_ReadSrFunc
CTRDGi_ReadSrFunc: ; 0x020D1698
	ldrb r0, [r0]
	bx lr
	arm_func_end CTRDGi_ReadSrFunc

	arm_func_start CTRDGi_PollingSR512kCOMMON
CTRDGi_PollingSR512kCOMMON: ; 0x020D16A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	bl StartFlashTimer
	ldr r5, _020D1724 ; =0x021D03AC
_020D16BC:
	mov r0, r8
	bl CTRDGi_ReadSrFunc
	cmp r0, r7
	beq _020D1710
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020D16BC
	mov r0, r8
	bl CTRDGi_ReadSrFunc
	cmp r7, r0
	beq _020D1710
	ldr r0, _020D1728 ; =0x02101488
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0xc2
	ldreq r0, _020D172C ; =0x0A005555
	moveq r1, #0xf0
	streqb r1, [r0]
	orr r0, r4, #0xc000
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
_020D1710:
	bl CTRDG_IsExisting
	cmp r0, #0
	moveq r6, #0x1000
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D1724: .word Unk_021D03AC
_020D1728: .word Unk_02101488
_020D172C: .word 0x0A005555
	arm_func_end CTRDGi_PollingSR512kCOMMON

	arm_func_start CTRDGi_PollingSR1MCOMMON
CTRDGi_PollingSR1MCOMMON: ; 0x020D1730
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
	bl StartFlashTimer
	ldr r4, _020D17DC ; =0x021D03AC
_020D174C:
	bl CheckFlashTimer
	mov r0, r7
	bl CTRDGi_ReadSrFunc
	cmp r0, r6
	beq _020D17C8
	tst r0, #0x20
	beq _020D1794
	mov r0, r7
	bl CTRDGi_ReadSrFunc
	cmp r6, r0
	beq _020D17C8
	orr r0, r8, #0xa000
	mov r0, r0, lsl #0x10
	ldr r1, _020D17E0 ; =0x0A005555
	mov r2, #0xf0
	strb r2, [r1]
	mov r5, r0, lsr #0x10
	b _020D17C8
_020D1794:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020D174C
	mov r0, r7
	bl CTRDGi_ReadSrFunc
	cmp r6, r0
	beq _020D17C8
	orr r0, r8, #0xc000
	mov r0, r0, lsl #0x10
	ldr r1, _020D17E0 ; =0x0A005555
	mov r2, #0xf0
	strb r2, [r1]
	mov r5, r0, lsr #0x10
_020D17C8:
	bl CTRDG_IsExisting
	cmp r0, #0
	moveq r5, #0x1000
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D17DC: .word Unk_021D03AC
_020D17E0: .word 0x0A005555
	arm_func_end CTRDGi_PollingSR1MCOMMON

	arm_func_start CTRDGi_ReadAgbFlashCore
CTRDGi_ReadAgbFlashCore: ; 0x020D17E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D18CC ; =0x021D03AC
	ldr r1, [r5, #0]
	ldrh r0, [r0]
	str r1, [r4, #0]
	ldrh r5, [sp, #0x20]
	ldr r6, [sp, #0x14]
	ldr r7, [sp, #0x1c]
	ldr r8, [sp, #0x18]
	bl OS_LockCartridge
	ldr r3, _020D18D0 ; =0x04000204
	ldr r0, _020D18D4 ; =0x02101488
	ldrh r2, [r3]
	ldrh r1, [r3]
	and r4, r2, #3
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r3]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0x20000
	bne _020D1868
	mov r0, r5, lsl #0xc
	mov r0, r0, lsr #0x10
	bl CTRDGi_SetFlashBankMx
	and r5, r5, #0xf
_020D1868:
	ldr r0, _020D18D4 ; =0x02101488
	cmp r8, #0
	ldr r0, [r0, #0]
	sub r8, r8, #1
	ldrh r0, [r0, #8]
	mov r0, r5, lsl r0
	add r0, r0, #0xa000000
	add r1, r6, r0
	beq _020D18A0
_020D188C:
	ldrb r0, [r1], #1
	cmp r8, #0
	sub r8, r8, #1
	strb r0, [r7], #1
	bne _020D188C
_020D18A0:
	ldr r2, _020D18D0 ; =0x04000204
	ldr r0, _020D18CC ; =0x021D03AC
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r2]
	ldrh r0, [r0]
	bl OS_UnlockCartridge
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D18CC: .word Unk_021D03AC
_020D18D0: .word 0x04000204
_020D18D4: .word Unk_02101488
	arm_func_end CTRDGi_ReadAgbFlashCore

	arm_func_start CTRDGi_VerifyFlashSectorCore
CTRDGi_VerifyFlashSectorCore: ; 0x020D18D8
	cmp r2, #0
	sub r2, r2, #1
	beq _020D1904
_020D18E4:
	ldrb ip, [r1], #1
	ldrb r3, [r0], #1
	cmp ip, r3
	subne r0, r1, #1
	bxne lr
	cmp r2, #0
	sub r2, r2, #1
	bne _020D18E4
_020D1904:
	mov r0, #0
	bx lr
	arm_func_end CTRDGi_VerifyFlashSectorCore

	arm_func_start CTRDGi_VerifyAgbFlashCore
CTRDGi_VerifyAgbFlashCore: ; 0x020D190C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, _020D19DC ; =0x021D03AC
	ldr r1, [r5, #0]
	ldrh r0, [r0]
	str r1, [r4, #0]
	ldrh r5, [sp, #0x20]
	ldr r6, [sp, #0xc]
	ldr r7, [sp, #0x18]
	bl OS_LockCartridge
	ldr r3, _020D19E0 ; =0x04000204
	ldr r0, _020D19E4 ; =0x02101488
	ldrh r2, [r3]
	ldrh r1, [r3]
	and r4, r2, #3
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r3]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0x20000
	bne _020D198C
	mov r0, r5, lsl #0xc
	mov r0, r0, lsr #0x10
	bl CTRDGi_SetFlashBankMx
	and r5, r5, #0xf
_020D198C:
	ldr r1, _020D19E4 ; =0x02101488
	mov r0, r6
	ldr r1, [r1, #0]
	mov r2, r7
	ldrh r1, [r1, #8]
	mov r1, r5, lsl r1
	add r1, r1, #0xa000000
	bl CTRDGi_VerifyFlashSectorCore
	ldr r3, _020D19E0 ; =0x04000204
	ldr r1, _020D19DC ; =0x021D03AC
	ldrh r2, [r3]
	mov r5, r0
	bic r0, r2, #3
	orr r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r1]
	bl OS_UnlockCartridge
	mov r0, r5
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020D19DC: .word Unk_021D03AC
_020D19E0: .word 0x04000204
_020D19E4: .word Unk_02101488
	arm_func_end CTRDGi_VerifyAgbFlashCore

	arm_func_start CTRDGi_WriteAndVerifyAgbFlashSectorCore
CTRDGi_WriteAndVerifyAgbFlashSectorCore: ; 0x020D19E8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldmia r4!, {r0, r1, r2, r3}
	add ip, sp, #0
	stmia ip!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [ip]
	ldrh r5, [sp, #0x20]
	ldr r6, [sp, #0xc]
	ldr r7, [sp, #0x18]
_020D1A20:
	mov r0, r5
	mov r1, r6
	bl CTRDG_WriteAgbFlashSector
	cmp r0, #0
	bne _020D1A50
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl CTRDG_VerifyAgbFlash
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_020D1A50:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #3
	blo _020D1A20
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end CTRDGi_WriteAndVerifyAgbFlashSectorCore

	arm_func_start CTRDG_ReadAgbFlash
CTRDG_ReadAgbFlash: ; 0x020D1A6C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x18]
	bl CTRDGi_ReadAgbFlashCore
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end CTRDG_ReadAgbFlash

	arm_func_start CTRDG_WriteAgbFlashSector
CTRDG_WriteAgbFlashSector: ; 0x020D1A94
	stmfd sp!, {r3, lr}
	ldr r2, _020D1AA8 ; =0x021D03AC
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1AA8: .word Unk_021D03AC
	arm_func_end CTRDG_WriteAgbFlashSector

	arm_func_start CTRDG_VerifyAgbFlash
CTRDG_VerifyAgbFlash: ; 0x020D1AAC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x18]
	bl CTRDGi_VerifyAgbFlashCore
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end CTRDG_VerifyAgbFlash

	arm_func_start CTRDG_WriteAndVerifyAgbFlashAsync
CTRDG_WriteAndVerifyAgbFlashAsync: ; 0x020D1AD0
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	str r2, [sp, #0x18]
	ldr r1, _020D1AFC ; =CTRDGi_WriteAndVerifyAgbFlashSectorCore
	add r0, sp, #0
	mov r2, r3
	bl CTRDGi_SetTask
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D1AFC: .word CTRDGi_WriteAndVerifyAgbFlashSectorCore
	arm_func_end CTRDG_WriteAndVerifyAgbFlashAsync

	.data


	.global Unk_02101488
Unk_02101488: ; 0x02101488
	.incbin "incbin/arm9_data.bin", 0x27A8, 0x27AC - 0x27A8

	.global Unk_0210148C
Unk_0210148C: ; 0x0210148C
	.incbin "incbin/arm9_data.bin", 0x27AC, 0x4



	.bss


	.global Unk_021D03A8
Unk_021D03A8: ; 0x021D03A8
	.space 0x4

	.global Unk_021D03AC
Unk_021D03AC: ; 0x021D03AC
	.space 0x2

	.global Unk_021D03AE
Unk_021D03AE: ; 0x021D03AE
	.space 0x2

	.global Unk_021D03B0
Unk_021D03B0: ; 0x021D03B0
	.space 0x4

	.global Unk_021D03B4
Unk_021D03B4: ; 0x021D03B4
	.space 0x4

	.global Unk_021D03B8
Unk_021D03B8: ; 0x021D03B8
	.space 0x4

	.global Unk_021D03BC
Unk_021D03BC: ; 0x021D03BC
	.space 0x4

	.global Unk_021D03C0
Unk_021D03C0: ; 0x021D03C0
	.space 0x4

	.global Unk_021D03C4
Unk_021D03C4: ; 0x021D03C4
	.space 0x4

	.global Unk_021D03C8
Unk_021D03C8: ; 0x021D03C8
	.space 0x4

	.global Unk_021D03CC
Unk_021D03CC: ; 0x021D03CC
	.space 0x8

	.global Unk_021D03D4
Unk_021D03D4: ; 0x021D03D4
	.space 0x8

	.global Unk_021D03DC
Unk_021D03DC: ; 0x021D03DC
	.space 0x4

