	.include "macros/function.inc"
	.include "include/mb_gameinfo.inc"

	

	.text


	arm_func_start ov18_02221990
ov18_02221990: ; 0x02221990
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r1, r6
	mov r0, #0
	mov r2, #0x4c0
	bl MIi_CpuClear16
	mov r0, #0
	strb r0, [r6, #0x4b2]
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r2, #1
	bl ov18_02221A80
	cmp r0, #0
	moveq r7, #1
	ldr r0, [r5, #0x10]
	mov r1, r6
	mov r2, #0
	movne r7, #0
	bl ov18_02221A80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	orrs r0, r7, r0
	beq _02221A10
	mov r3, #1
	mov r1, r6
	mov r0, #0
	mov r2, #0x220
	strb r3, [r6, #0x4b2]
	bl MIi_CpuClearFast
_02221A10:
	ldr r0, [r5, #0x14]
	cmp r4, #0
	str r0, [r6, #0x4b8]
	beq _02221A30
	mov r0, r4
	add r1, r6, #0x220
	mov r2, #0x16
	bl MIi_CpuCopy16
_02221A30:
	ldrb r0, [r5, #0x18]
	strb r0, [r6, #0x236]
	ldr r0, [r5, #4]
	bl ov18_02221B90
	mov r2, r0, lsl #0x11
	ldr r0, [r5, #4]
	add r1, r6, #0x238
	mov r2, r2, lsr #0x10
	bl MIi_CpuCopy16
	ldr r0, [r5, #8]
	add r1, r6, #0x298
	mov r2, #0xc0
	bl MIi_CpuCopy16
	mov r1, #1
	strb r1, [r6, #0x358]
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	add r0, r6, #0x400
	strh r1, [r0, #0xb0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02221990

	arm_func_start ov18_02221A80
ov18_02221A80: ; 0x02221A80
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	cmp r2, #0
	movne r4, #0x200
	moveq r4, #0x20
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	addne r5, r5, #0x20
	cmp r6, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	bl FS_InitFile
	add r0, sp, #0
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	cmp r4, r0
	add r0, sp, #0
	beq _02221B00
	bl FS_CloseFile
	add sp, sp, #0x48
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02221B00:
	mov r1, r5
	mov r2, r4
	bl FS_ReadFile
	add r0, sp, #0
	bl FS_CloseFile
	mov r0, #1
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_02221A80

	arm_func_start ov18_02221B20
ov18_02221B20: ; 0x02221B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r2
	add r4, r6, #0x5e
	mov r0, r1
	add r1, r4, #0x300
	ldr r2, _02221B8C ; =0x0000014A
	mov r4, r3
	mov r7, #1
	bl MIi_CpuCopy16
	mov r2, #0
	mov r1, #2
_02221B50:
	tst r5, r1, lsl r2
	addne r0, r7, #1
	add r2, r2, #1
	andne r7, r0, #0xff
	cmp r2, #0xf
	blt _02221B50
	strb r7, [r6, #0x358]
	orr r1, r5, #1
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	strh r4, [r0, #0x5c]
	ldrb r0, [r6, #0x4b4]
	add r0, r0, #1
	strb r0, [r6, #0x4b4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221B8C: .word 0x0000014A
	arm_func_end ov18_02221B20

	arm_func_start ov18_02221B90
ov18_02221B90: ; 0x02221B90
	ldrh r1, [r0], #2
	mov r2, #0
	cmp r1, #0
	beq _02221BB0
_02221BA0:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _02221BA0
_02221BB0:
	mov r0, r2
	bx lr
	arm_func_end ov18_02221B90

	arm_func_start ov18_02221BB8
ov18_02221BB8: ; 0x02221BB8
	ldr r1, _02221BF8 ; =0x0224B280
	ldr r2, [r1, #0x18]
	cmp r2, #0
	streq r0, [r1, #0x18]
	beq _02221BEC
	ldr r1, [r2, #0x4bc]
	cmp r1, #0
	beq _02221BE8
_02221BD8:
	mov r2, r1
	ldr r1, [r1, #0x4bc]
	cmp r1, #0
	bne _02221BD8
_02221BE8:
	str r0, [r2, #0x4bc]
_02221BEC:
	mov r1, #0
	str r1, [r0, #0x4bc]
	bx lr
	; .align 2, 0
_02221BF8: .word Unk_ov18_0224B280
	arm_func_end ov18_02221BB8

	arm_func_start ov18_02221BFC
ov18_02221BFC: ; 0x02221BFC
	ldr r0, _02221C20 ; =0x0224B280
	mov r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	mov r1, #1
	strb r1, [r0, #0x24]
	ldr ip, _02221C24 ; =ov18_02221C28
	str r2, [r0, #0x14]
	bx ip
	; .align 2, 0
_02221C20: .word Unk_ov18_0224B280
_02221C24: .word ov18_02221C28
	arm_func_end ov18_02221BFC

	arm_func_start ov18_02221C28
ov18_02221C28: ; 0x02221C28
	ldr r0, _02221C48 ; =0x0224B280
	mov r1, #0
	strb r1, [r0, #0x25]
	strb r1, [r0, #0x26]
	strb r1, [r0, #0x27]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	bx lr
	; .align 2, 0
_02221C48: .word Unk_ov18_0224B280
	arm_func_end ov18_02221C28

	arm_func_start ov18_02221C4C
ov18_02221C4C: ; 0x02221C4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02221CD4 ; =0x0224B280
	mov r7, r0
	mov r6, r1
	mov r5, r2
_02221C60:
	ldrb r0, [r4, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02221C60
_02221C70: ; jump table
	b _02221C8C ; case 0
	b _02221C8C ; case 1
	b _02221C9C ; case 2
	b _02221CA4 ; case 3
	b _02221CB8 ; case 4
	b _02221CC0 ; case 5
	b _02221C60 ; case 6
_02221C8C:
	bl ov18_02221CD8
	cmp r0, #0
	bne _02221C60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221C9C:
	bl ov18_02221D78
	b _02221C60
_02221CA4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02221DCC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221CB8:
	bl ov18_02221F30
	b _02221C60
_02221CC0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02221F60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221CD4: .word Unk_ov18_0224B280
	arm_func_end ov18_02221C4C

	arm_func_start ov18_02221CD8
ov18_02221CD8: ; 0x02221CD8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _02221D70 ; =0x0224B280
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _02221D28
	bl ov18_02223E30
	mov r4, r0
	bl ov18_02223E44
	str r0, [sp]
	mov ip, #8
	ldr r1, _02221D74 ; =0x0224B2C0
	mov r3, r4
	mov r0, #0
	mov r2, #0x70
	str ip, [sp, #4]
	bl WM_SetGameInfo
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_02221D28:
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldrne r1, [r0, #0x4bc]
	cmpne r1, #0
	ldreq r0, _02221D70 ; =0x0224B280
	ldreq r1, [r0, #0x18]
	ldr r0, _02221D70 ; =0x0224B280
	str r1, [r0, #0x1c]
	bl ov18_02221C28
	ldr r1, _02221D70 ; =0x0224B280
	mov r2, #2
	ldr r3, [r1, #0x1c]
	mov r0, #1
	ldrb r3, [r3, #0x4b4]
	strb r3, [r1, #0x26]
	strb r2, [r1, #0x24]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221D70: .word Unk_ov18_0224B280
_02221D74: .word Unk_ov18_0224B2C0
	arm_func_end ov18_02221CD8

	arm_func_start ov18_02221D78
ov18_02221D78: ; 0x02221D78
	ldr r0, _02221DC8 ; =0x0224B280
	ldrb r1, [r0, #0x24]
	cmp r1, #2
	bxne lr
	ldr r2, [r0, #0x1c]
	ldrb r1, [r2, #0x4b2]
	cmp r1, #0
	bne _02221DA8
	mov r1, #9
	strb r1, [r0, #0x28]
	str r2, [r0, #0x20]
	b _02221DB8
_02221DA8:
	mov r1, #4
	strb r1, [r0, #0x28]
	add r1, r2, #0x220
	str r1, [r0, #0x20]
_02221DB8:
	ldr r0, _02221DC8 ; =0x0224B280
	mov r1, #3
	strb r1, [r0, #0x24]
	bx lr
	; .align 2, 0
_02221DC8: .word Unk_ov18_0224B280
	arm_func_end ov18_02221D78

	arm_func_start ov18_02221DCC
ov18_02221DCC: ; 0x02221DCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _02221F20 ; =0x0224B280
	mov r6, r0
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #0x20]
	add ip, r4, #0x358
	add r7, r0, #0x62
	cmp r7, ip
	movls r0, #0x62
	mov r5, r1
	mov r4, r2
	strlsb r0, [r3, #0x4c]
	bls _02221E24
	sub r7, ip, r0
	and r1, r7, #0xff
	ldr r0, _02221F24 ; =0x0224B2CE
	rsb r2, r1, #0x62
	add r1, r0, r1
	mov r0, #0
	strb r7, [r3, #0x4c]
	bl MIi_CpuClear16
_02221E24:
	ldr r0, _02221F20 ; =0x0224B280
	ldr r1, _02221F24 ; =0x0224B2CE
	ldrb r2, [r0, #0x4c]
	ldr r0, [r0, #0x20]
	bl MIi_CpuCopy16
	ldr r2, _02221F20 ; =0x0224B280
	ldr r0, _02221F28 ; =0x0224B2C8
	ldrb r7, [r2, #0x27]
	mov r3, #0
	mov r1, #0x68
	strb r7, [r2, #0x4a]
	ldrb r7, [r2, #0x28]
	strb r7, [r2, #0x4b]
	ldr r7, [r2, #0x1c]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b2]
	bic lr, lr, #3
	and ip, ip, #3
	orr ip, lr, ip
	strb ip, [r2, #0x44]
	ldrb ip, [r7, #0x4b3]
	strb ip, [r2, #0x45]
	ldrb ip, [r2, #0x26]
	strb ip, [r2, #0x46]
	ldr ip, [r7, #0x4b8]
	str ip, [r2, #0x40]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b5]
	bic lr, lr, #0xfc
	mov ip, ip, lsl #0x1a
	orr ip, lr, ip, lsr #24
	strb ip, [r2, #0x44]
	ldrb lr, [r2, #0x29]
	add ip, lr, #1
	strb ip, [r2, #0x29]
	strb lr, [r2, #0x47]
	strh r3, [r2, #0x48]
	bl ov18_02221944
	ldr r1, _02221F20 ; =0x0224B280
	strh r0, [r1, #0x48]
	ldrb r0, [r1, #0x27]
	add r2, r0, #1
	strb r2, [r1, #0x27]
	ldrb r0, [r1, #0x28]
	and r2, r2, #0xff
	cmp r2, r0
	movhs r0, #4
	strhsb r0, [r1, #0x24]
	bhs _02221EF4
	ldr r0, [r1, #0x20]
	add r0, r0, #0x62
	str r0, [r1, #0x20]
_02221EF4:
	orr r0, r4, #3
	ldr r1, _02221F2C ; =0x0224B2C0
	mov r3, r6
	str r5, [sp]
	and r4, r0, #0xff
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl WM_SetGameInfo
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221F20: .word Unk_ov18_0224B280
_02221F24: .word 0x0224B2CE
_02221F28: .word 0x0224B2C8
_02221F2C: .word Unk_ov18_0224B2C0
	arm_func_end ov18_02221DCC

	arm_func_start ov18_02221F30
ov18_02221F30: ; 0x02221F30
	ldr r1, _02221F5C ; =0x0224B280
	mov r3, #1
	ldr r0, [r1, #0x1c]
	mov r2, #5
	add r0, r0, #0x400
	strh r3, [r0, #0xb0]
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0, #0x4b4]
	strb r0, [r1, #0x26]
	strb r2, [r1, #0x24]
	bx lr
	; .align 2, 0
_02221F5C: .word Unk_ov18_0224B280
	arm_func_end ov18_02221F30

	arm_func_start ov18_02221F60
ov18_02221F60: ; 0x02221F60
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r3, _022221B8 ; =0x0224B280
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	ldrb r3, [r3, #0x26]
	ldrb r0, [r0, #0x4b4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r3, r0
	beq _02221F90
	bl ov18_02221F30
_02221F90:
	ldr r2, _022221B8 ; =0x0224B280
	ldrb r0, [r2, #0x44]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r2, #0x44]
	ldr r0, [r2, #0x1c]
	ldrb r3, [r0, #0x4b3]
	add r1, r0, #0x300
	strb r3, [r2, #0x45]
	ldrb r3, [r2, #0x26]
	strb r3, [r2, #0x46]
	ldr r3, [r0, #0x4b8]
	str r3, [r2, #0x40]
	ldrb r4, [r2, #0x44]
	ldrb r3, [r0, #0x4b5]
	bic r4, r4, #0xfc
	mov r3, r3, lsl #0x1a
	orr r3, r4, r3, lsr #24
	strb r3, [r2, #0x44]
	ldrb r4, [r2, #0x29]
	add r3, r4, #1
	strb r3, [r2, #0x29]
	strb r4, [r2, #0x47]
	ldrb r3, [r0, #0x358]
	strb r3, [r2, #0x4a]
	ldrh r3, [r1, #0x5a]
	strh r3, [r2, #0x4c]
	ldrh r1, [r1, #0x5c]
	strh r1, [r2, #0x4e]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	bne _02222024
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _02222024
	ldr r0, [r0, #0x4b8]
	blx r1
_02222024:
	ldr r0, _022221B8 ; =0x0224B280
	mov sb, #0
	ldr r1, _022221BC ; =0x0224B328
	ldr r2, [r0, #0x1c]
	b _02222048
_02222038:
	add r0, r2, sb
	ldrb r0, [r0, #0x4a8]
	strb r0, [r1, sb]
	add sb, sb, #1
_02222048:
	cmp sb, #8
	blt _02222038
	ldr r1, _022221C0 ; =0x0224B2D0
	mov r0, #0
	mov r2, #0x58
	bl MIi_CpuClear16
	ldr r5, _022221B8 ; =0x0224B280
	mov sl, #0
	ldr r1, [r5, #0x1c]
	mov r6, #2
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r2, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	mov sb, sl
	ldr r7, _022221C0 ; =0x0224B2D0
	eor r0, r2, r0
	mov r4, r0, lsl #0x10
	mov r8, r6
	mov fp, #0x16
	b _022220EC
_0222209C:
	mov r0, r8, lsl sb
	tst r0, r4, lsr #16
	beq _022220E8
	ldr r0, [r5, #0x1c]
	mla r1, sl, fp, r7
	add r0, r0, #0x5e
	add r2, r0, #0x300
	mov r0, #0x16
	mla r0, sb, r0, r2
	mov r2, #0x16
	bl MIi_CpuCopy16
	ldr r0, [r5, #0x1c]
	add sl, sl, #1
	add r0, r0, #0x400
	ldrh r1, [r0, #0xb0]
	cmp sl, #4
	orr r1, r1, r6, lsl sb
	strh r1, [r0, #0xb0]
	beq _022220F4
_022220E8:
	add sb, sb, #1
_022220EC:
	cmp sb, #0xf
	blt _0222209C
_022220F4:
	cmp sl, #4
	bhs _02222114
	mov r0, #0x16
	mul r1, sl, r0
	ldr r2, _022221C0 ; =0x0224B2D0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf0
	strb r0, [r2, r1]
_02222114:
	ldr r2, _022221B8 ; =0x0224B280
	mov r3, #0
	ldr r0, _022221C4 ; =0x0224B2C8
	mov r1, #0x68
	strh r3, [r2, #0x48]
	bl ov18_02221944
	ldr r2, _022221B8 ; =0x0224B280
	strh r0, [r2, #0x48]
	ldr r1, [r2, #0x1c]
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r3, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	ldr r1, _022221C8 ; =0x0224B2C0
	cmp r3, r0
	moveq r0, #1
	streqb r0, [r2, #0x24]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	orr r2, r0, #3
	ldr r0, [sp, #0xc]
	and r4, r2, #0xff
	str r0, [sp]
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl WM_SetGameInfo
	ldr r0, _022221B8 ; =0x0224B280
	ldr r1, [r0, #0x10]
	cmp r1, #1
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x4b8]
	blx r1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022221B8: .word Unk_ov18_0224B280
_022221BC: .word 0x0224B328
_022221C0: .word 0x0224B2D0
_022221C4: .word 0x0224B2C8
_022221C8: .word Unk_ov18_0224B2C0
	arm_func_end ov18_02221F60

	.bss


	.global Unk_ov18_0224B280
Unk_ov18_0224B280: ; 0x0224B280
	.space 0x4

	.global Unk_ov18_0224B284
Unk_ov18_0224B284: ; 0x0224B284
	.space 0x4

	.global Unk_ov18_0224B288
Unk_ov18_0224B288: ; 0x0224B288
	.space 0x4

	.global Unk_ov18_0224B28C
Unk_ov18_0224B28C: ; 0x0224B28C
	.space 0x4

	.global Unk_ov18_0224B290
Unk_ov18_0224B290: ; 0x0224B290
	.space 0x4

	.global Unk_ov18_0224B294
Unk_ov18_0224B294: ; 0x0224B294
	.space 0x4

	.global Unk_ov18_0224B298
Unk_ov18_0224B298: ; 0x0224B298
	.space 0x28

	.global Unk_ov18_0224B2C0
Unk_ov18_0224B2C0: ; 0x0224B2C0
	.space 0x80

	.global Unk_ov18_0224B340
Unk_ov18_0224B340: ; 0x0224B340
	.space 0xC0

	.global Unk_ov18_0224B400
Unk_ov18_0224B400: ; 0x0224B400
	.space 0x5920

