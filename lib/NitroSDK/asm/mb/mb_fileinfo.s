	.include "macros/function.inc"
	.include "include/mb_fileinfo.inc"

	.extern Unk_ov18_02250D2C

	.text


	arm_func_start ov18_02220C28
ov18_02220C28: ; 0x02220C28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r4, #0
	movs r7, r0
	mov r5, r4
	beq _02220C74
	ldr ip, [r7, #0x2c]
	ldr r3, [r7, #0x24]
	add r1, sp, #0
	mov r2, #0x60
	sub r6, ip, r3
	bl FS_ReadFile
	cmp r0, #0x60
	mov r0, r7
	mov r1, r6
	mov r2, #0
	addhs r4, sp, #0
	bl FS_SeekFile
	b _02220C78
_02220C74:
	ldr r4, _02220CA4 ; =0x027FFE00
_02220C78:
	cmp r4, #0
	beq _02220C98
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	add r1, r1, #0x268
	add r5, r1, r0
	cmp r5, #0x10000
	movlo r5, #0x10000
_02220C98:
	mov r0, r5
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220CA4: .word 0x027FFE00
	arm_func_end ov18_02220C28

	arm_func_start ov18_02220CA8
ov18_02220CA8: ; 0x02220CA8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	str r2, [sp, #4]
	cmp r2, #0x164
	mov r2, #0
	mov sl, r0
	mov sb, r1
	str r2, [sp, #0x10]
	blo _02221100
	ldr r4, [sp, #4]
	mov r5, sb
	str r2, [sp, #0xc]
	mov r6, r2
	mov fp, r2
	cmp sl, #0
	add r5, r5, #0x160
	sub r4, r4, #0x160
	beq _02220D20
	ldr r7, [sl, #0x2c]
	ldr r3, [sl, #0x24]
	mov r2, #0x160
	sub r3, r7, r3
	str r3, [sp, #8]
	bl FS_ReadFile
	cmp r0, #0x160
	ldr r7, [sb, #0x80]
	movlt r4, fp
	cmp r7, #0
	moveq r7, #0x1000000
	b _02220D9C
_02220D20:
	ldr r0, _0222110C ; =0x027FFE00
	mov r1, #1
	ldr r7, [r0, #0x80]
	add r0, sp, #0x24
	cmp r7, #0
	moveq r7, #0x1000000
	str r1, [sp, #0xc]
	bl FS_InitFile
	ldr r0, _02221110 ; =0x02249768
	mov r1, #3
	bl FS_FindArchive
	mov r1, r0
	mvn r0, #0
	str r0, [sp]
	add r0, sp, #0x24
	mov r2, #0
	add r3, r7, #0x88
	bl FS_OpenFileDirect
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x48]
	ldr r0, _0222110C ; =0x027FFE00
	sub r1, r2, r1
	str r1, [sp, #8]
	mov r1, sb
	mov r2, #0x160
	add sl, sp, #0x24
	bl MI_CpuCopy8
	ldr r0, [sb, #0x60]
	orr r0, r0, #0x6000
	orr r0, r0, #0x400000
	str r0, [sb, #0x60]
_02220D9C:
	cmp r4, #0x88
	movlo r4, #0
	blo _02220DD4
	ldr r1, [sp, #8]
	mov r0, sl
	add r1, r1, r7
	mov r2, #0
	bl FS_SeekFile
	mov r0, sl
	mov r1, r5
	mov r2, #0x88
	bl FS_ReadFile
	add r5, r5, #0x88
	sub r4, r4, #0x88
_02220DD4:
	cmp r4, #0x70
	blo _02220E4C
	mov r0, r5
	mov r6, r5
	bl ov18_02223F10
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, #0
	mov r2, #0x160
	mov r3, sb
	add r5, r5, #0x70
	sub r4, r4, #0x70
	bl ov18_02223F24
	ldr r8, [sl, #8]
	mov r7, #0
	b _02220E1C
_02220E18:
	add r7, r7, #1
_02220E1C:
	cmp r7, #3
	bge _02220E30
	ldrsb r0, [r8, r7]
	cmp r0, #0
	bne _02220E18
_02220E30:
	mov r0, r8
	mov r2, r7
	add r1, r6, #0x10
	bl MI_CpuCopy8
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	b _02220E50
_02220E4C:
	mov r4, #0
_02220E50:
	cmp r4, #0x10
	movlo r4, #0
	blo _02220EA0
	mov r0, #0
	str r0, [r5, #0]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x20]
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r5, #4]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x30]
	add r0, r0, r1
	add r0, r2, r0
	mov fp, r5
	str r0, [r5, #8]
	add r5, r5, #0x10
	sub r4, r4, #0x10
_02220EA0:
	ldr r1, [sb, #0x2c]
	ldr r0, [sb, #0x3c]
	add r0, r1, r0
	cmp r4, r0
	blo _02220F48
	ldr r7, [sl, #0x24]
	ldr r1, [fp, #4]
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FS_SeekFile
	ldr r2, [sb, #0x2c]
	mov r0, sl
	mov r1, r5
	bl FS_ReadFile
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #4]
	ldr r2, [sb, #0x2c]
	mov r0, r6
	mov r3, r5
	bl ov18_02223F24
	ldr r1, [fp, #8]
	ldr r4, [sb, #0x2c]
	mov r0, sl
	mov r2, #0
	sub r1, r1, r7
	bl FS_SeekFile
	ldr r2, [sb, #0x3c]
	mov r0, sl
	add r1, r5, r4
	bl FS_ReadFile
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #8]
	ldr r2, [sb, #0x3c]
	add r3, r5, r4
	mov r0, r6
	bl ov18_02223F24
	mov r0, #1
	str r0, [sp, #0x10]
	b _0222101C
_02220F48:
	cmp r4, #0xcc00
	blo _0222101C
	ldr r7, [sl, #0x24]
	ldr r4, [fp, #4]
	mov r0, sl
	sub r1, r4, r7
	mov r2, #0
	bl FS_SeekFile
	mov r0, sl
	mov r1, r5
	mov r2, #0x4400
	bl FS_ReadFile
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0x4400
	mov r3, r5
	bl ov18_02223F24
	add r1, r4, #0x4400
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FS_SeekFile
	mov r0, sl
	add r1, r5, #0x4400
	mov r2, #0x4400
	bl FS_ReadFile
	mov r0, #2
	str r0, [sp]
	mov r0, r6
	add r1, r4, #0x4400
	mov r2, #0x4400
	add r3, r5, #0x4400
	bl ov18_02223F24
	add r1, r4, #0x8800
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FS_SeekFile
	mov r0, sl
	add r1, r5, #0x8800
	mov r2, #0x4400
	bl FS_ReadFile
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0x8800
	add r3, r5, #0x8800
	mov r0, r6
	mov r2, #0x4400
	bl ov18_02223F24
	mov r0, #1
	str r0, [sp, #0x10]
_0222101C:
	ldr r1, [sp, #8]
	mov r0, sl
	mov r2, #0
	bl FS_SeekFile
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022210E8
	add r0, sp, #0x24
	bl FS_CloseFile
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022210E8
	ldr r1, [sb, #0x20]
	ldr r0, _02221114 ; =0x02249764
	str r1, [sp, #0x14]
	ldr r2, [sb, #0x28]
	ldr r1, [sb, #0x20]
	ldr r4, [r0, #0]
	sub r0, r2, r1
	str r0, [sp, #0x18]
	ldr r2, [r6, #0x48]
	ldr r1, [sb, #0x20]
	add r0, sp, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #4]
	mov r2, #0x8000
	str r1, [sp, #0x20]
	mov r1, #0x4000
	mov r3, #1
	bl ov18_02221120
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022210D0
	add r7, sp, #0x14
	mov r5, #0
_022210AC:
	ldmia r4, {r1, r2}
	mov r0, r7
	mov r3, r5
	add r2, r1, r2
	bl ov18_02221120
	add r4, r4, #8
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022210AC
_022210D0:
	ldr r1, [sb, #0x28]
	ldr r2, _02221118 ; =0x02000AAC
	ldr r3, [r6, #0x48]
	ldr r0, _0222111C ; =0xE12FFF1E
	sub r1, r2, r1
	str r0, [r3, r1]
_022210E8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02221100
	ldr r1, [sp, #4]
	mov r0, sb
	bl DC_FlushRange
_02221100:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222110C: .word 0x027FFE00
_02221110: .word Unk_ov18_02249768
_02221114: .word Unk_ov18_02249764
_02221118: .word 0x02000AAC
_0222111C: .word 0xE12FFF1E
	arm_func_end ov18_02220CA8

	arm_func_start ov18_02221120
ov18_02221120: ; 0x02221120
	stmfd sp!, {r3, lr}
	mov lr, r1
	ldr ip, [r0]
	ldr r1, [r0, #0xc]
	cmp lr, #0x4000
	movlo lr, #0x4000
	cmp r2, #0x8000
	movhi r2, #0x8000
	cmp lr, ip
	add r1, ip, r1
	movlo lr, ip
	cmp r2, r1
	movhi r2, r1
	cmp lr, r2
	ldmhsia sp!, {r3, pc}
	cmp r3, #0
	beq _0222117C
	ldr r0, [r0, #8]
	sub r2, r2, lr
	add r0, r0, lr
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r3, pc}
_0222117C:
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r3, lr
	add r1, r1, lr
	sub r2, r2, lr
	bl MI_CpuCopy8
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02221120

	arm_func_start ov18_02221198
ov18_02221198: ; 0x02221198
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0xff
	bl OS_DisableInterrupts
	mov r5, r0
	bl ov18_02223EB8
	cmp r0, #0
	bne _022211CC
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022211CC:
	ldr r0, _0222141C ; =0x02250D2C
	ldr r0, [r0, #0]
	add r1, r0, #0x1000
	ldrb r1, [r1, #0x524]
	add r1, r1, #1
	cmp r1, #0x10
	ble _022211F8
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022211F8:
	ldr r1, _02221420 ; =0x000005D4
	mov r6, #0
_02221200:
	mla r2, r6, r1, r0
	add r2, r2, #0x1000
	ldr r3, [r2, #0xd40]
	cmp r3, r8
	bne _02221224
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02221224:
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	moveq r4, r6
	beq _02221244
	add r2, r6, #1
	and r6, r2, #0xff
	cmp r6, #0x10
	blo _02221200
_02221244:
	cmp r6, #0x10
	bne _0222125C
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0222125C:
	ldr r1, _02221420 ; =0x000005D4
	ldr r2, _0222141C ; =0x02250D2C
	mul r6, r4, r1
	add r0, r0, r6
	add r0, r0, #0x1000
	str r8, [r0, #0xd40]
	ldr r0, [r2, #0]
	mov r1, r7
	add r0, r0, #0x388
	add r0, r0, #0x1400
	add sb, r0, r6
	mov r0, sb
	bl ov18_02221428
	add r0, r8, #0x1c
	add r1, sb, #0xc4
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, _0222141C ; =0x02250D2C
	mov r1, sb
	ldr r0, [r0, #0]
	add r0, r0, #0x12c
	add r0, r0, #0x1c00
	add r0, r0, r6
	bl ov18_02221614
	cmp r0, #0
	bne _022212D4
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022212D4:
	ldr r0, _0222141C ; =0x02250D2C
	mov r1, r8
	ldr r2, [r0, #0]
	add r0, r2, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	add r2, r2, #0x1300
	bl ov18_02221990
	ldr r1, _0222141C ; =0x02250D2C
	ldr r0, [r1, #0]
	add r0, r0, r6
	add r0, r0, #0x1000
	strb r4, [r0, #0xd21]
	ldr r0, [r1, #0]
	add r0, r0, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	bl ov18_02221BB8
	ldr r2, _0222141C ; =0x02250D2C
	ldr r3, _02221424 ; =0x0224B264
	ldr r1, [r2, #0]
	ldrb r0, [r3]
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r0, [r1, #0xd1f]
	ldr r1, [r2, #0]
	mov r4, #1
	add r1, r1, r6
	add r1, r1, #0x1d00
	strh r4, [r1, #0x4e]
	ldr r1, [r2, #0]
	add r8, r7, #0x1e8
	add r1, r1, r6
	add r1, r1, #0x1000
	str r7, [r1, #0xd44]
	ldr r1, [r2, #0]
	add r4, r7, #0x258
	add r1, r1, r6
	add r1, r1, #0x1000
	str r8, [r1, #0xd54]
	ldr r1, [r2, #0]
	add r7, r0, #1
	add r0, r1, r6
	add r0, r0, #0x1000
	str r4, [r0, #0xd58]
	ldr r0, [r2, #0]
	strb r7, [r3]
	add r0, r0, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0xd54]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _022213E0
	bl ov18_022241BC
	cmp r0, #0
	bne _022213E0
	ldr r0, _0222141C ; =0x02250D2C
	ldr r0, [r0, #0]
	add r0, r0, #0xce0
	add r0, r0, #0x7000
	bl ov18_022241D8
	ldr r0, _0222141C ; =0x02250D2C
	mov r1, #0x800
	ldr r0, [r0, #0]
	add r0, r0, #0x4e0
	add r0, r0, #0x7000
	bl ov18_0222413C
_022213E0:
	ldr r2, _0222141C ; =0x02250D2C
	mov r3, #1
	ldr r1, [r2, #0]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r3, [r1, #0xd52]
	ldr r1, [r2, #0]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x524]
	add r2, r2, #1
	strb r2, [r1, #0x524]
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0222141C: .word Unk_ov18_02250D2C
_02221420: .word 0x000005D4
_02221424: .word Unk_ov18_0224B264
	arm_func_end ov18_02221198

	arm_func_start ov18_02221428
ov18_02221428: ; 0x02221428
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, #0x22c0000
	mov r4, r1
	mov r5, r0
	str r2, [sp]
	ldr r0, [r4, #0x24]
	ldr r7, _02221498 ; =0x02246434
	str r0, [r5, #0]
	ldr r0, [r4, #0x34]
	add r8, r5, #0xc
	str r0, [r5, #4]
	mov sb, #0
	add r6, sp, #0
_0222145C:
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl ov18_0222149C
	add sb, sb, #1
	cmp sb, #3
	add r8, r8, #0x10
	add r7, r7, #4
	blt _0222145C
	add r0, r4, #0x160
	add r1, r5, #0x3c
	mov r2, #0x88
	bl MI_CpuCopy8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02221498: .word Unk_ov18_02246434
	arm_func_end ov18_02221428

	arm_func_start ov18_0222149C
ov18_0222149C: ; 0x0222149C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r1, #0]
	mov r7, r0
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	beq _022214CC
	cmp r1, #1
	beq _02221518
	cmp r1, #2
	beq _022215E8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022214CC:
	ldr r0, [r7, #0x28]
	cmp r0, #0x2000000
	blo _02221510
	cmp r0, #0x22c0000
	bhs _02221510
	ldr r1, [r7, #0x2c]
	add r0, r0, r1
	cmp r0, #0x22c0000
	bhi _02221510
	str r1, [r6, #8]
	ldr r0, [r7, #0x28]
	str r0, [r6, #4]
	str r0, [r6, #0]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221510:
	bl OS_Terminate
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221518:
	ldr ip, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	mov r2, #0
	mov r4, r2
	cmp ip, #0x2000000
	add r3, ip, r1
	blo _02221564
	ldr r0, _02221608 ; =0x023FE800
	cmp ip, r0
	bhs _02221564
	cmp r3, #0x2300000
	bls _02221590
	cmp r3, r0
	bhs _0222155C
	cmp r1, #0x40000
	movls r4, #1
	bls _02221590
_0222155C:
	mov r2, #1
	b _02221590
_02221564:
	ldr r1, _0222160C ; =0x037F8000
	cmp ip, r1
	blo _0222158C
	add r0, r1, #0x17000
	cmp ip, r0
	bhs _0222158C
	cmp r3, r0
	movls r4, #1
	movhi r2, #1
	b _02221590
_0222158C:
	mov r2, #1
_02221590:
	cmp r2, #1
	bne _0222159C
	bl OS_Terminate
_0222159C:
	ldr r0, [r7, #0x3c]
	cmp r4, #0
	str r0, [r6, #8]
	ldr r0, [r7, #0x38]
	str r0, [r6, #4]
	ldreq r0, [r6, #4]
	streq r0, [r6]
	beq _022215D4
	ldr r0, [r5, #0]
	str r0, [r6, #0]
	ldr r1, [r5, #0]
	ldr r0, [r6, #8]
	add r0, r1, r0
	str r0, [r5, #0]
_022215D4:
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022215E8:
	ldr r0, _02221610 ; =0x027FFE00
	mov r1, #0x160
	stmib r6, {r0, r1}
	str r0, [r6, #0]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221608: .word 0x023FE800
_0222160C: .word 0x037F8000
_02221610: .word 0x027FFE00
	arm_func_end ov18_0222149C

	arm_func_start ov18_02221614
ov18_02221614: ; 0x02221614
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	add r6, sl, #0xc
	cmp r1, #0
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r2, r0
_02221630:
	str r0, [sl, r2, lsl #2]
	add r3, r1, r2, lsl #4
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	and r2, r2, #0xff
	cmp r2, #3
	add r0, r0, r3
	blo _02221630
	mov sb, #0
	ldr r4, _022216DC ; =0x02250D2C
	strh sb, [r6]
	add r5, r1, #0xc
_02221660:
	ldr r0, [r4, #0]
	add r7, r5, sb, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0x318]
	ldr r8, [r7, #8]
	add r0, r8, r1
	sub r0, r0, #1
	bl _u32_div_f
	mov r1, sb, lsl #1
	ldrh r3, [r6, r1]
	mov r2, r0, lsl #0x10
	ldr r1, [r7, #4]
	add r2, r3, r2, lsr #16
	mov r3, r2, lsl #0x10
	mov r0, sb
	mov r2, r8
	mov r7, r3, lsr #0x10
	bl ov18_02221840
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp sb, #2
	addlo r0, r6, sb, lsl #1
	strloh r7, [r0, #2]
	add r0, sb, #1
	and sb, r0, #0xff
	strhsh r7, [sl, #0x12]
	cmp sb, #3
	blo _02221660
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_022216DC: .word Unk_ov18_02250D2C
	arm_func_end ov18_02221614

	arm_func_start ov18_022216E0
ov18_022216E0: ; 0x022216E0
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #0x12]
	cmp r2, r4
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	mov ip, #2
_022216F8:
	add r4, r1, ip, lsl #1
	ldrh r4, [r4, #0xc]
	cmp r2, r4
	bhs _02221718
	sub r4, ip, #1
	mov ip, r4, lsl #0x18
	movs ip, ip, asr #0x18
	bpl _022216F8
_02221718:
	cmp ip, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r4, _02221790 ; =0x02250D2C
	add r5, r1, ip, lsl #1
	ldr lr, [r4]
	ldrh r5, [r5, #0xc]
	add lr, lr, #0x1000
	ldr lr, [lr, #0x318]
	sub r5, r2, r5
	mul r2, r5, lr
	add r3, r3, #0xc
	add r5, r3, ip, lsl #4
	ldr r3, [r5, #8]
	sub lr, r3, r2
	str lr, [r0, #4]
	ldr r3, [r4, #0]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x318]
	cmp lr, r3
	strhi r3, [r0, #4]
	ldr r1, [r1, ip, lsl #2]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r5, #0]
	add r1, r2, r1
	str r1, [r0, #0]
	strb ip, [r0, #0xc]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02221790: .word Unk_ov18_02250D2C
	arm_func_end ov18_022216E0

	arm_func_start ov18_02221794
ov18_02221794: ; 0x02221794
	ldr r3, _02221838 ; =0x02246434
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq _022217D8
	cmp r0, #1
	beq _022217F4
	cmp r0, #2
	bne _02221828
	ldr r0, _0222183C ; =0x027FFE00
	cmp r1, r0
	blo _02221830
	add r1, r1, r2
	add r0, r0, #0x160
	cmp r1, r0
	bhi _02221830
	mov r0, #1
	bx lr
_022217D8:
	cmp r1, #0x2000000
	blo _02221830
	add r0, r1, r2
	cmp r0, #0x22c0000
	bhi _02221830
	mov r0, #1
	bx lr
_022217F4:
	cmp r1, #0x22c0000
	blo _0222180C
	add r0, r1, r2
	cmp r0, #0x2300000
	movls r0, #1
	bxls lr
_0222180C:
	cmp r1, #0x2000000
	blo _02221830
	add r0, r1, r2
	cmp r0, #0x2300000
	bhi _02221830
	mov r0, #1
	bx lr
_02221828:
	mov r0, #0
	bx lr
_02221830:
	mov r0, #0
	bx lr
	; .align 2, 0
_02221838: .word Unk_ov18_02246434
_0222183C: .word 0x027FFE00
	arm_func_end ov18_02221794

	arm_func_start ov18_02221840
ov18_02221840: ; 0x02221840
	stmfd sp!, {r3, lr}
	ldr r3, _02221900 ; =0x02246434
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	beq _02221864
	cmp r3, #1
	beq _0222186C
	cmp r3, #2
	bne _022218F0
_02221864:
	bl ov18_02221794
	ldmia sp!, {r3, pc}
_0222186C:
	cmp r1, #0x2000000
	blo _022218C4
	ldr r0, _02221904 ; =0x023FE800
	cmp r1, r0
	bhs _022218C4
	cmp r1, #0x2300000
	add r1, r1, r2
	bhs _02221898
	cmp r1, #0x2300000
	movhi r0, #0
	ldmhiia sp!, {r3, pc}
_02221898:
	cmp r1, #0x2300000
	movls r0, #1
	ldmlsia sp!, {r3, pc}
	ldr r0, _02221904 ; =0x023FE800
	cmp r1, r0
	bhs _022218BC
	cmp r2, #0x40000
	movls r0, #1
	ldmlsia sp!, {r3, pc}
_022218BC:
	mov r0, #0
	ldmia sp!, {r3, pc}
_022218C4:
	ldr r3, _02221908 ; =0x037F8000
	cmp r1, r3
	blo _022218F8
	add r0, r3, #0x17000
	cmp r1, r0
	bhs _022218F8
	add r1, r1, r2
	cmp r1, r0
	movls r0, #1
	movhi r0, #0
	ldmia sp!, {r3, pc}
_022218F0:
	mov r0, #0
	ldmia sp!, {r3, pc}
_022218F8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02221900: .word Unk_ov18_02246434
_02221904: .word 0x023FE800
_02221908: .word 0x037F8000
	arm_func_end ov18_02221840

	.rodata


	.global Unk_ov18_02246434
Unk_ov18_02246434: ; 0x02246434
	.incbin "incbin/overlay18_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov18_02246440
Unk_ov18_02246440: ; 0x02246440
	.incbin "incbin/overlay18_rodata.bin", 0xC, 0x18



	.data


	.global Unk_ov18_02249764
Unk_ov18_02249764: ; 0x02249764
	.incbin "incbin/overlay18_data.bin", 0x4, 0x8 - 0x4

	.global Unk_ov18_02249768
Unk_ov18_02249768: ; 0x02249768
	.incbin "incbin/overlay18_data.bin", 0x8, 0x4



	.bss


	.global Unk_ov18_0224B264
Unk_ov18_0224B264: ; 0x0224B264
	.space 0x1C

