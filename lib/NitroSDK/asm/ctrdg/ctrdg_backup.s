	.include "macros/function.inc"
	.include "include/ctrdg_backup.inc"

	.extern Unk_021D03AC
	.extern Unk_021D03B0
	.extern Unk_021D03B4
	.extern Unk_021D03B8
	.extern Unk_021D03BC
	.extern Unk_021D03C0
	.extern Unk_021D03C4
	.extern Unk_021D03DC
	.extern Unk_021D03E0
	.extern Unk_020FE664
	.extern Unk_020FE564
	.extern Unk_020FE728
	.extern Unk_020FE628
	.extern Unk_020FE6A8
	.extern Unk_020FE5E4
	.extern Unk_020FE6E4
	.extern Unk_02101488
	.extern Unk_0210148C

	.text


	arm_func_start CTRDG_IdentifyAgbBackup
CTRDG_IdentifyAgbBackup: ; 0x020D130C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	cmp r7, #1
	mov r0, #1
	bhi _020D145C
	bl OS_GetLockID
	ldr r1, _020D1478 ; =0x021D03AC
	strh r0, [r1]
	ldrh r0, [r1]
	bl OS_LockCartridge
	ldr r4, _020D147C ; =0x04000204
	ldr r1, _020D1480 ; =0x020FE53C
	ldrh r3, [r4]
	ldrh r2, [r4]
	ldr r0, _020D1484 ; =0x0210148C
	and r6, r3, #3
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r4]
	str r1, [r0, #0]
	bl CTRDGi_ReadFlashID
	ldr r2, _020D147C ; =0x04000204
	mov r4, r0
	ldrh r1, [r2]
	cmp r7, #0
	ldreq r5, _020D1488 ; =0x020FE54C
	bic r1, r1, #3
	orr r1, r1, r6
	cmp r7, #1
	ldr r0, _020D1478 ; =0x021D03AC
	strh r1, [r2]
	ldrh r0, [r0]
	ldreq r5, _020D148C ; =0x020FE540
	bl OS_UnlockCartridge
	ldr r3, [r5, #0]
	mov r0, #1
	ldrh r1, [r3, #0x38]
	cmp r1, #0
	beq _020D13CC
	and r2, r4, #0xff
_020D13AC:
	ldrh r1, [r3, #0x38]
	cmp r2, r1
	moveq r0, #0
	beq _020D13CC
	ldr r3, [r5, #4]!
	ldrh r1, [r3, #0x38]
	cmp r1, #0
	bne _020D13AC
_020D13CC:
	ldr r2, [r3, #0]
	ldr r1, _020D1490 ; =0x021D03B0
	ldr r3, _020D1494 ; =0x021D03C4
	str r2, [r1, #0]
	ldr r1, [r5, #0]
	ldr r2, _020D1498 ; =0x021D03BC
	ldr r4, [r1, #4]
	ldr r1, _020D149C ; =0x021D03B4
	str r4, [r3, #0]
	ldr r3, [r5, #0]
	ldr r6, _020D14A0 ; =0x021D03B8
	ldr r3, [r3, #8]
	ldr r4, _020D14A4 ; =0x021D03C0
	str r3, [r2, #0]
	ldr r2, [r5, #0]
	ldr r3, _020D14A8 ; =0x021D03DC
	ldr r7, [r2, #0xc]
	ldr r2, _020D1484 ; =0x0210148C
	str r7, [r1, #0]
	ldr r7, [r5, #0]
	ldr r1, _020D14AC ; =0x02101488
	ldr r7, [r7, #0x10]
	str r7, [r6, #0]
	ldr r6, [r5, #0]
	ldr r6, [r6, #0x14]
	str r6, [r4, #0]
	ldr r4, [r5, #0]
	ldr r4, [r4, #0x18]
	str r4, [r3, #0]
	ldr r3, [r5, #0]
	ldr r3, [r3, #0x1c]
	str r3, [r2, #0]
	ldr r2, [r5, #0]
	add r2, r2, #0x20
	str r2, [r1, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020D145C:
	cmp r7, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_GetLockID
	ldr r1, _020D14B0 ; =0x021D03E0
	strh r0, [r1]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1478: .word Unk_021D03AC
_020D147C: .word 0x04000204
_020D1480: .word 0x020FE53C
_020D1484: .word Unk_0210148C
_020D1488: .word Unk_020FE54C
_020D148C: .word Unk_020FE540
_020D1490: .word Unk_021D03B0
_020D1494: .word Unk_021D03C4
_020D1498: .word Unk_021D03BC
_020D149C: .word Unk_021D03B4
_020D14A0: .word Unk_021D03B8
_020D14A4: .word Unk_021D03C0
_020D14A8: .word Unk_021D03DC
_020D14AC: .word Unk_02101488
_020D14B0: .word Unk_021D03E0
	arm_func_end CTRDG_IdentifyAgbBackup

	.rodata


	.global Unk_020FE53C
Unk_020FE53C: ; 0x020FE53C
	.incbin "incbin/arm9_rodata.bin", 0x198FC, 0x19900 - 0x198FC

	.global Unk_020FE540
Unk_020FE540: ; 0x020FE540
	.word Unk_020FE6A8
	.word Unk_020FE5E4
	.word Unk_020FE6E4

	.global Unk_020FE54C
Unk_020FE54C: ; 0x020FE54C
	.word Unk_020FE664
	.word Unk_020FE564
	.word Unk_020FE728
	.word Unk_020FE628

