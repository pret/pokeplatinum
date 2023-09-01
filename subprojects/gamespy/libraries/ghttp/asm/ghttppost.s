	.include "macros/function.inc"
	.include "include/ghttppost.inc"

	

	.text


	arm_func_start ghiIsPostAutoFree
ghiIsPostAutoFree: ; 0x02221900
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end ghiIsPostAutoFree

	arm_func_start ghiFreePost
ghiFreePost: ; 0x02221908
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	bl ArrayFree
	mov r0, r4
	bl DWCi_GsFree
	ldmia sp!, {r4, pc}
	arm_func_end ghiFreePost

	arm_func_start ghiPostGetContentType
ghiPostGetContentType: ; 0x02221924
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x13c]
	cmp r4, #0
	bne _02221948
	ldr r0, _02221968 ; =0x02229494
	ldr r1, _0222196C ; =0x02229444
	ldr r2, _02221970 ; =0x02229374
	ldr r3, _02221974 ; =0x00000192
	bl __msl_assertion_failed
_02221948:
	cmp r4, #0
	ldreq r0, _02221978 ; =0x0222949C
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, _0222197C ; =0x022294A0
	ldreq r0, _02221980 ; =0x022294E4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221968: .word Unk_ov60_02229494
_0222196C: .word Unk_ov60_02229444
_02221970: .word Unk_ov60_02229374
_02221974: .word 0x00000192
_02221978: .word Unk_ov60_0222949C
_0222197C: .word Unk_ov60_022294A0
_02221980: .word Unk_ov60_022294E4
	arm_func_end ghiPostGetContentType

	arm_func_start ghiPostGetNoFilesContentLength
ghiPostGetNoFilesContentLength: ; 0x02221984
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r6, [r0, #0x13c]
	mov sl, #0
	ldr r0, [r6, #0]
	bl ArrayLength
	movs sb, r0
	moveq r0, sl
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #0
	mov r8, sl
	ble _02221A18
	ldr r5, _02221A24 ; =0x02229508
	ldr r4, _02221A28 ; =0x02229444
	ldr fp, _02221A2C ; =0x022293E0
_022219BC:
	ldr r0, [r6, #0]
	mov r1, r8
	bl ArrayNth
	mov r7, r0
	ldr r0, [r7, #0]
	cmp r0, #0
	beq _022219EC
	mov r0, r5
	mov r1, r4
	mov r2, fp
	mov r3, #0x1b0
	bl __msl_assertion_failed
_022219EC:
	ldr r0, [r7, #4]
	bl strlen
	add r8, r8, #1
	ldr r1, [r7, #0xc]
	add r2, sl, r0
	ldr r0, [r7, #0x14]
	add r1, r2, r1
	add r0, r1, r0, lsl #1
	cmp r8, sb
	add sl, r0, #1
	blt _022219BC
_02221A18:
	sub r0, sb, #1
	add r0, sl, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02221A24: .word Unk_ov60_02229508
_02221A28: .word Unk_ov60_02229444
_02221A2C: .word Unk_ov60_022293E0
	arm_func_end ghiPostGetNoFilesContentLength

	arm_func_start ghiPostGetHasFilesContentLength
ghiPostGetHasFilesContentLength: ; 0x02221A30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _02221BB4 ; =0x02229E40
	mov r4, r0
	ldr r0, [r1, #8]
	ldr r7, [r4, #0x13c]
	cmp r0, #0
	mov sl, #0
	bne _02221A78
	ldr r0, _02221BB8 ; =0x02229520
	bl strlen
	ldr r1, _02221BB4 ; =0x02229E40
	add r2, r0, #0x2f
	str r0, [r1, #8]
	str r2, [r1, #4]
	add r2, r0, #0x4c
	str r2, [r1, #0xc]
	add r0, r0, #4
	str r0, [r1, #0]
_02221A78:
	ldr r0, [r7, #0]
	bl ArrayLength
	mov sb, r0
	cmp sb, #0
	mov r8, #0
	ble _02221BA4
	ldr fp, _02221BBC ; =0x02229548
	ldr r5, _02221BB4 ; =0x02229E40
_02221A98:
	ldr r0, [r7, #0]
	mov r1, r8
	bl ArrayNth
	mov r6, r0
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02221AD4
	ldr r1, [r5, #4]
	ldr r0, [r6, #4]
	add sl, sl, r1
	bl strlen
	ldr r1, [r6, #0xc]
	add r0, sl, r0
	add sl, r0, r1
	b _02221B98
_02221AD4:
	cmp r0, #1
	bne _02221B3C
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #4]
	add sl, sl, r1
	bl strlen
	add sl, sl, r0
	ldr r0, [r6, #0xc]
	bl strlen
	add sl, sl, r0
	ldr r0, [r6, #0x10]
	bl strlen
	add sl, sl, r0
	ldr r0, [r4, #0x140]
	mov r1, r8
	bl ArrayNth
	movs r6, r0
	bne _02221B30
	ldr r1, _02221BC0 ; =0x02229444
	ldr r2, _02221BC4 ; =0x02229420
	mov r0, fp
	mov r3, #0x1ec
	bl __msl_assertion_failed
_02221B30:
	ldr r0, [r6, #0xc]
	add sl, sl, r0
	b _02221B98
_02221B3C:
	cmp r0, #2
	bne _02221B7C
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #4]
	add sl, sl, r1
	bl strlen
	add sl, sl, r0
	ldr r0, [r6, #0x10]
	bl strlen
	add sl, sl, r0
	ldr r0, [r6, #0x14]
	bl strlen
	add r1, sl, r0
	ldr r0, [r6, #0xc]
	add sl, r1, r0
	b _02221B98
_02221B7C:
	ldr r0, _02221BC8 ; =0x02229440
	ldr r1, _02221BC0 ; =0x02229444
	ldr r2, _02221BC4 ; =0x02229420
	ldr r3, _02221BCC ; =0x000001F9
	bl __msl_assertion_failed
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02221B98:
	add r8, r8, #1
	cmp r8, sb
	blt _02221A98
_02221BA4:
	ldr r0, _02221BB4 ; =0x02229E40
	ldr r0, [r0, #0]
	add r0, sl, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02221BB4: .word Unk_ov60_02229E40
_02221BB8: .word Unk_ov60_02229520
_02221BBC: .word Unk_ov60_02229548
_02221BC0: .word Unk_ov60_02229444
_02221BC4: .word Unk_ov60_02229420
_02221BC8: .word Unk_ov60_02229440
_02221BCC: .word 0x000001F9
	arm_func_end ghiPostGetHasFilesContentLength

	arm_func_start ghiPostGetContentLength
ghiPostGetContentLength: ; 0x02221BD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x13c]
	cmp r4, #0
	bne _02221BF8
	ldr r0, _02221C24 ; =0x02229494
	ldr r1, _02221C28 ; =0x02229444
	ldr r2, _02221C2C ; =0x0222938C
	mov r3, #0x20c
	bl __msl_assertion_failed
_02221BF8:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	mov r0, r5
	beq _02221C1C
	bl ghiPostGetHasFilesContentLength
	ldmia sp!, {r3, r4, r5, pc}
_02221C1C:
	bl ghiPostGetNoFilesContentLength
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02221C24: .word Unk_ov60_02229494
_02221C28: .word Unk_ov60_02229444
_02221C2C: .word Unk_ov60_0222938C
	arm_func_end ghiPostGetContentLength

	arm_func_start ghiPostStateInit
ghiPostStateInit: ; 0x02221C30
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0]
	mvn r0, #0
	ldr r1, [r1, #0]
	str r0, [r4, #4]
	cmp r1, #0
	beq _02221CCC
	cmp r1, #1
	bne _02221CA8
	ldr r0, [r4, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r2, #2
	bl fseek
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl ftell
	mvn r1, #0
	str r0, [r4, #0xc]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl rewind
	b _02221CCC
_02221CA8:
	cmp r1, #2
	beq _02221CCC
	ldr r0, _02221CD4 ; =0x02229440
	ldr r1, _02221CD8 ; =0x02229444
	ldr r2, _02221CDC ; =0x02229334
	mov r3, #0x244
	bl __msl_assertion_failed
	mov r0, #0
	ldmia sp!, {r4, pc}
_02221CCC:
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221CD4: .word Unk_ov60_02229440
_02221CD8: .word Unk_ov60_02229444
_02221CDC: .word Unk_ov60_02229334
	arm_func_end ghiPostStateInit

	arm_func_start ghiPostStateCleanup
ghiPostStateCleanup: ; 0x02221CE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #1
	bne _02221D1C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02221D10
	bl fclose
_02221D10:
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
_02221D1C:
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	ldr r0, _02221D3C ; =0x02229440
	ldr r1, _02221D40 ; =0x02229444
	ldr r2, _02221D44 ; =0x02229348
	ldr r3, _02221D48 ; =0x00000269
	bl __msl_assertion_failed
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221D3C: .word Unk_ov60_02229440
_02221D40: .word Unk_ov60_02229444
_02221D44: .word Unk_ov60_02229348
_02221D48: .word 0x00000269
	arm_func_end ghiPostStateCleanup

	arm_func_start ghiPostInitState
ghiPostInitState: ; 0x02221D4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0x13c]
	cmp r0, #0
	bne _02221D78
	ldr r0, _02221EC8 ; =0x02229550
	ldr r1, _02221ECC ; =0x02229444
	ldr r2, _02221ED0 ; =0x0222930C
	mov r3, #0x278
	bl __msl_assertion_failed
_02221D78:
	ldr r0, [r4, #0x13c]
	cmp r0, #0
	addeq sp, sp, #0x10
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r0, [r4, #0x144]
	str r0, [r4, #0x148]
	str r0, [r4, #0x14c]
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #4]
	str r0, [r4, #0x150]
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #8]
	str r0, [r4, #0x154]
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #0]
	bl ArrayLength
	mov r8, r0
	mov r1, r8
	mov r0, #0x10
	mov r2, #0
	bl ArrayNew
	cmp r0, #0
	str r0, [r4, #0x140]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r7, #0
	ble _02221E7C
	add r6, sp, #0
	mov r5, r7
_02221DF8:
	ldr r0, [r4, #0x13c]
	mov r1, r7
	ldr r0, [r0, #0]
	bl ArrayNth
	str r5, [r6, #0]
	str r0, [sp]
	mov r0, r6
	str r5, [r6, #4]
	str r5, [r6, #8]
	str r5, [r6, #0xc]
	bl ghiPostStateInit
	cmp r0, #0
	bne _02221E64
	subs r7, r7, #1
	bmi _02221E4C
_02221E34:
	ldr r0, [r4, #0x140]
	mov r1, r7
	bl ArrayNth
	bl ghiPostStateCleanup
	subs r7, r7, #1
	bpl _02221E34
_02221E4C:
	ldr r0, [r4, #0x140]
	bl ArrayFree
	mov r0, #0
	add sp, sp, #0x10
	str r0, [r4, #0x140]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221E64:
	ldr r0, [r4, #0x140]
	mov r1, r6
	bl ArrayAppend
	add r7, r7, #1
	cmp r7, r8
	blt _02221DF8
_02221E7C:
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #0]
	bl ArrayLength
	mov r5, r0
	ldr r0, [r4, #0x140]
	bl ArrayLength
	cmp r5, r0
	beq _02221EB0
	ldr r0, _02221ED4 ; =0x02229564
	ldr r1, _02221ECC ; =0x02229444
	ldr r2, _02221ED0 ; =0x0222930C
	ldr r3, _02221ED8 ; =0x000002B1
	bl __msl_assertion_failed
_02221EB0:
	mov r0, r4
	bl ghiPostGetContentLength
	str r0, [r4, #0x14c]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02221EC8: .word Unk_ov60_02229550
_02221ECC: .word Unk_ov60_02229444
_02221ED0: .word Unk_ov60_0222930C
_02221ED4: .word Unk_ov60_02229564
_02221ED8: .word 0x000002B1
	arm_func_end ghiPostInitState

	arm_func_start ghiPostCleanupState
ghiPostCleanupState: ; 0x02221EDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x140]
	cmp r0, #0
	beq _02221F30
	bl ArrayLength
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _02221F20
_02221F04:
	ldr r0, [r6, #0x140]
	mov r1, r4
	bl ArrayNth
	bl ghiPostStateCleanup
	add r4, r4, #1
	cmp r4, r5
	blt _02221F04
_02221F20:
	ldr r0, [r6, #0x140]
	bl ArrayFree
	mov r0, #0
	str r0, [r6, #0x140]
_02221F30:
	ldr r0, [r6, #0x13c]
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	cmpne r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ghiFreePost
	mov r0, #0
	str r0, [r6, #0x13c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ghiPostCleanupState

	arm_func_start ghiPostStringStateDoPosting
ghiPostStringStateDoPosting: ; 0x02221F54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov sl, r1
	cmp r0, #0
	bge _02221F80
	ldr r0, _0222210C ; =0x022295B8
	ldr r1, _02222110 ; =0x02229444
	ldr r2, _02222114 ; =0x022293A4
	ldr r3, _02222118 ; =0x000002E7
	bl __msl_assertion_failed
_02221F80:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _02221FB4
	ldr r0, _0222211C ; =0x022295C8
	ldr r1, _02222110 ; =0x02229444
	ldr r2, _02222114 ; =0x022293A4
	ldr r3, _02222120 ; =0x000002EE
	bl __msl_assertion_failed
_02221FB4:
	ldr r0, [sl, #0x13c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _022220C0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _022220C0
	ldr r0, _02222124 ; =0x02228C60
	ldr r8, [r1, #8]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r5, sp, #0
	strb r2, [sp]
	strb r1, [sp, #1]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r6, #0
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	ldrsb r7, [r8]
	cmp r7, #0
	beq _022220B8
	ldr r4, _02222128 ; =0x02229604
	ldr fp, _0222212C ; =0x02229450
_02222018:
	mov r0, fp
	mov r1, r7
	bl strchr
	cmp r0, #0
	beq _0222203C
	mov r1, r7
	add r0, sl, #0x50
	bl ghiAppendCharToBuffer
	b _022220A8
_0222203C:
	cmp r7, #0x20
	bne _02222054
	mov r1, #0x2b
	add r0, sl, #0x50
	bl ghiAppendCharToBuffer
	b _022220A8
_02222054:
	mov r0, r7, asr #3
	add r0, r7, r0, lsr #28
	mov sb, r0, asr #4
	cmp sb, #0x10
	blt _0222207C
	ldr r0, _02222130 ; =0x022295F4
	ldr r1, _02222110 ; =0x02229444
	ldr r2, _02222114 ; =0x022293A4
	ldr r3, _02222134 ; =0x0000030D
	bl __msl_assertion_failed
_0222207C:
	ldrsb r2, [r4, sb]
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #28
	add r0, r1, r0, ror #28
	strb r2, [sp, #1]
	ldrsb r2, [r4, r0]
	mov r1, r5
	add r0, sl, #0x50
	strb r2, [sp, #2]
	mov r2, #3
	bl ghiAppendDataToBuffer
_022220A8:
	add r6, r6, #1
	ldrsb r7, [r8, r6]
	cmp r7, #0
	bne _02222018
_022220B8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022220C0:
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #8]
	sub r5, r2, r0
	mov r0, sl
	mov r2, r5
	bl ghiDoSend
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #4]
	cmp r0, r5
	add r0, r1, r0
	str r0, [r4, #4]
	moveq r0, #1
	movne r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222210C: .word Unk_ov60_022295B8
_02222110: .word Unk_ov60_02229444
_02222114: .word Unk_ov60_022293A4
_02222118: .word 0x000002E7
_0222211C: .word Unk_ov60_022295C8
_02222120: .word 0x000002EE
_02222124: .word Unk_ov60_02228C60
_02222128: .word Unk_ov60_02229604
_0222212C: .word Unk_ov60_02229450
_02222130: .word Unk_ov60_022295F4
_02222134: .word 0x0000030D
	arm_func_end ghiPostStringStateDoPosting

	arm_func_start ghiPostFileDiskStateDoPosting
ghiPostFileDiskStateDoPosting: ; 0x02222138
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1000
	mov r8, r0
	ldr r0, [r8, #4]
	mov r7, r1
	cmp r0, #0
	bge _02222168
	ldr r0, _02222278 ; =0x022295B8
	ldr r1, _0222227C ; =0x02229444
	ldr r2, _02222280 ; =0x022293C0
	ldr r3, _02222284 ; =0x00000336
	bl __msl_assertion_failed
_02222168:
	ldr r1, [r8, #4]
	ldr r0, [r8, #0xc]
	cmp r1, r0
	blt _0222218C
	ldr r0, _02222288 ; =0x02229618
	ldr r1, _0222227C ; =0x02229444
	ldr r2, _02222280 ; =0x022293C0
	ldr r3, _0222228C ; =0x00000337
	bl __msl_assertion_failed
_0222218C:
	ldr r0, [r8, #8]
	bl ftell
	ldr r1, [r8, #4]
	cmp r1, r0
	beq _022221B4
	ldr r0, _02222290 ; =0x02229640
	ldr r1, _0222227C ; =0x02229444
	ldr r2, _02222280 ; =0x022293C0
	mov r3, #0x338
	bl __msl_assertion_failed
_022221B4:
	add r6, sp, #0
	mov r5, #1
	mov r4, #0x1000
_022221C0:
	ldr r3, [r8, #8]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl fread
	mov r2, r0
	cmp r2, #0
	bgt _022221FC
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #0xe
	str r0, [r7, #0x38]
	add sp, sp, #0x1000
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022221FC:
	ldr r0, [r8, #4]
	add r1, r0, r2
	str r1, [r8, #4]
	ldr r0, [r8, #0xc]
	cmp r1, r0
	ble _02222230
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #0xe
	str r0, [r7, #0x38]
	add sp, sp, #0x1000
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02222230:
	mov r0, r7
	mov r1, r6
	bl ghiTrySendThenBuffer
	cmp r0, #0
	addeq sp, sp, #0x1000
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r8, #4]
	ldr r1, [r8, #0xc]
	cmp r2, r1
	addeq sp, sp, #0x1000
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #1
	beq _022221C0
	mov r0, #2
	add sp, sp, #0x1000
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02222278: .word Unk_ov60_022295B8
_0222227C: .word Unk_ov60_02229444
_02222280: .word Unk_ov60_022293C0
_02222284: .word 0x00000336
_02222288: .word Unk_ov60_02229618
_0222228C: .word 0x00000337
_02222290: .word Unk_ov60_02229640
	arm_func_end ghiPostFileDiskStateDoPosting

	arm_func_start ghiPostFileMemoryStateDoPosting
ghiPostFileMemoryStateDoPosting: ; 0x02222294
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	cmp r0, #0
	bge _022222C0
	ldr r0, _0222235C ; =0x022295B8
	ldr r1, _02222360 ; =0x02229444
	ldr r2, _02222364 ; =0x02229400
	ldr r3, _02222368 ; =0x0000036E
	bl __msl_assertion_failed
_022222C0:
	ldr r0, [r6, #0]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	cmp r0, r1
	blt _022222F4
	ldr r0, _0222236C ; =0x02229678
	ldr r1, _02222360 ; =0x02229444
	ldr r2, _02222364 ; =0x02229400
	ldr r3, _02222370 ; =0x00000375
	bl __msl_assertion_failed
_022222F4:
	mov r4, #0x8000
	mvn r7, #0
_022222FC:
	ldmia r6, {r1, r3}
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	sub r2, r0, r3
	cmp r2, #0x8000
	movge r2, r4
	mov r0, r5
	add r1, r1, r3
	bl ghiDoSend
	cmp r0, r7
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #4]
	add r2, r1, r0
	str r2, [r6, #4]
	ldr r1, [r6, #0]
	ldr r1, [r1, #0xc]
	cmp r1, r2
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0
	bne _022222FC
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222235C: .word Unk_ov60_022295B8
_02222360: .word Unk_ov60_02229444
_02222364: .word Unk_ov60_02229400
_02222368: .word 0x0000036E
_0222236C: .word Unk_ov60_02229678
_02222370: .word 0x00000375
	arm_func_end ghiPostFileMemoryStateDoPosting

	arm_func_start ghiPostStateDoPosting
ghiPostStateDoPosting: ; 0x02222374
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	sub sp, sp, #0x800
	mov r6, r0
	ldr r0, [r6, #4]
	mvn r3, #0
	mov r5, r1
	mov r4, r2
	cmp r0, r3
	bne _022224CC
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [r5, #0x13c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02222404
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022223D8
	ldr r0, _02222548 ; =0x022296A8
	ldr r1, _0222254C ; =0x02229444
	ldr r2, _02222550 ; =0x0222935C
	rsb r3, r3, #0x3a8
	bl __msl_assertion_failed
_022223D8:
	ldr r1, [r6, #0]
	cmp r4, #0
	add r0, sp, #8
	ldr r2, [r1, #4]
	beq _022223F8
	ldr r1, _02222554 ; =0x022296C8
	bl sprintf
	b _0222248C
_022223F8:
	ldr r1, _02222558 ; =0x022296CC
	bl sprintf
	b _0222248C
_02222404:
	ldr r3, [r6, #0]
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _02222434
	cmp r4, #0
	ldrne r2, _0222255C ; =0x022296D4
	ldr r3, [r3, #4]
	ldreq r2, _02222560 ; =0x022296FC
	ldr r1, _02222564 ; =0x02229728
	add r0, sp, #8
	bl sprintf
	b _0222248C
_02222434:
	sub r0, r1, #1
	cmp r0, #1
	bhi _02222478
	cmp r1, #1
	ldreq r0, [r3, #0xc]
	ldreq r1, [r3, #0x10]
	ldrne r0, [r3, #0x10]
	ldrne r1, [r3, #0x14]
	cmp r4, #0
	stmia sp, {r0, r1}
	ldrne r2, _0222255C ; =0x022296D4
	ldr r3, [r3, #4]
	ldreq r2, _02222560 ; =0x022296FC
	ldr r1, _02222568 ; =0x02229758
	add r0, sp, #8
	bl sprintf
	b _0222248C
_02222478:
	ldr r0, _0222256C ; =0x02229440
	ldr r1, _0222254C ; =0x02229444
	ldr r2, _02222550 ; =0x0222935C
	mov r3, #0x3dc
	bl __msl_assertion_failed
_0222248C:
	add r0, sp, #8
	bl strlen
	mov r2, r0
	add r1, sp, #8
	mov r0, r5
	bl ghiTrySendThenBuffer
	cmp r0, #0
	addeq sp, sp, #8
	addeq sp, sp, #0x800
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, #2
	addeq sp, sp, #8
	addeq sp, sp, #0x800
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
_022224CC:
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022224F4
	mov r0, r6
	mov r1, r5
	bl ghiPostStringStateDoPosting
	add sp, sp, #8
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, pc}
_022224F4:
	cmp r0, #1
	bne _02222514
	mov r0, r6
	mov r1, r5
	bl ghiPostFileDiskStateDoPosting
	add sp, sp, #8
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, pc}
_02222514:
	cmp r0, #2
	beq _02222530
	ldr r0, _02222570 ; =0x022297AC
	ldr r1, _0222254C ; =0x02229444
	ldr r2, _02222550 ; =0x0222935C
	ldr r3, _02222574 ; =0x000003F5
	bl __msl_assertion_failed
_02222530:
	mov r0, r6
	mov r1, r5
	bl ghiPostFileMemoryStateDoPosting
	add sp, sp, #8
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02222548: .word Unk_ov60_022296A8
_0222254C: .word Unk_ov60_02229444
_02222550: .word Unk_ov60_0222935C
_02222554: .word Unk_ov60_022296C8
_02222558: .word Unk_ov60_022296CC
_0222255C: .word Unk_ov60_022296D4
_02222560: .word Unk_ov60_022296FC
_02222564: .word Unk_ov60_02229728
_02222568: .word Unk_ov60_02229758
_0222256C: .word Unk_ov60_02229440
_02222570: .word Unk_ov60_022297AC
_02222574: .word 0x000003F5
	arm_func_end ghiPostStateDoPosting

	arm_func_start ghiPostDoPosting
ghiPostDoPosting: ; 0x02222578
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	bne _02222598
	ldr r0, _022227AC ; =0x022297D0
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227B8 ; =0x00000404
	bl __msl_assertion_failed
_02222598:
	ldr r0, [sl, #0x13c]
	cmp r0, #0
	bne _022225B8
	ldr r0, _022227BC ; =0x02229550
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227C0 ; =0x00000405
	bl __msl_assertion_failed
_022225B8:
	ldr r0, [sl, #0x140]
	cmp r0, #0
	bne _022225D8
	ldr r0, _022227C4 ; =0x022297DC
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227C8 ; =0x00000406
	bl __msl_assertion_failed
_022225D8:
	ldr r0, [sl, #0x13c]
	ldr r0, [r0, #0]
	bl ArrayLength
	mov r4, r0
	ldr r0, [sl, #0x140]
	bl ArrayLength
	cmp r4, r0
	beq _0222260C
	ldr r0, _022227CC ; =0x02229564
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227D0 ; =0x00000407
	bl __msl_assertion_failed
_0222260C:
	ldr r0, [sl, #0x144]
	cmp r0, #0
	bge _0222262C
	ldr r0, _022227D4 ; =0x022297FC
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227D8 ; =0x00000408
	bl __msl_assertion_failed
_0222262C:
	ldr r0, [sl, #0x140]
	bl ArrayLength
	ldr r1, [sl, #0x144]
	cmp r1, r0
	ble _02222654
	ldr r0, _022227DC ; =0x02229820
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227E0 ; =0x00000409
	bl __msl_assertion_failed
_02222654:
	ldr r0, [sl, #0x140]
	bl ArrayLength
	ldr r1, [sl, #0x5c]
	mov sb, r0
	cmp r1, #0
	beq _022226AC
	mov r0, sl
	bl ghiSendBufferedData
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0x60]
	ldr r0, [sl, #0x5c]
	cmp r1, r0
	movlt r0, #2
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sl, #0x50
	bl ghiResetBuffer
	ldr r0, [sl, #0x144]
	cmp r0, sb
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022226AC:
	ldr r1, [sl, #0x144]
	cmp r1, sb
	bge _02222764
	ldr r7, _022227E4 ; =0x02229870
	ldr r6, _022227B0 ; =0x02229444
	ldr r5, _022227B4 ; =0x02229320
	ldr r4, _022227E8 ; =0x0000042F
	mov fp, #1
_022226CC:
	ldr r0, [sl, #0x140]
	bl ArrayNth
	movs r8, r0
	bne _022226F0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl __msl_assertion_failed
_022226F0:
	ldr r0, [sl, #0x144]
	mov r1, sl
	cmp r0, #0
	moveq r2, fp
	movne r2, #0
	mov r0, r8
	bl ghiPostStateDoPosting
	cmp r0, #0
	bne _02222744
	ldr r0, [sl, #0xfc]
	cmp r0, #0
	ldrne r0, [sl, #0x38]
	cmpne r0, #0
	bne _0222273C
	ldr r0, _022227EC ; =0x0222987C
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227F0 ; =0x0000043B
	bl __msl_assertion_failed
_0222273C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222744:
	cmp r0, #2
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x144]
	add r1, r0, #1
	str r1, [sl, #0x144]
	cmp r1, sb
	blt _022226CC
_02222764:
	ldr r0, [sl, #0x13c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02222798
	ldr r0, _022227F4 ; =0x022298A8
	bl strlen
	mov r2, r0
	ldr r1, _022227F4 ; =0x022298A8
	mov r0, sl
	bl ghiTrySendThenBuffer
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222798:
	ldr r0, [sl, #0x5c]
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022227AC: .word Unk_ov60_022297D0
_022227B0: .word Unk_ov60_02229444
_022227B4: .word Unk_ov60_02229320
_022227B8: .word 0x00000404
_022227BC: .word Unk_ov60_02229550
_022227C0: .word 0x00000405
_022227C4: .word Unk_ov60_022297DC
_022227C8: .word 0x00000406
_022227CC: .word Unk_ov60_02229564
_022227D0: .word 0x00000407
_022227D4: .word Unk_ov60_022297FC
_022227D8: .word 0x00000408
_022227DC: .word Unk_ov60_02229820
_022227E0: .word 0x00000409
_022227E4: .word Unk_ov60_02229870
_022227E8: .word 0x0000042F
_022227EC: .word Unk_ov60_0222987C
_022227F0: .word 0x0000043B
_022227F4: .word Unk_ov60_022298A8
	arm_func_end ghiPostDoPosting

	.rodata


	.global Unk_ov60_02228C60
Unk_ov60_02228C60: ; 0x02228C60
	.asciz "%00"



	.data


	.global Unk_ov60_0222930C
Unk_ov60_0222930C: ; 0x0222930C
	.incbin "incbin/overlay60_data.bin", 0x4CC, 0x4E0 - 0x4CC

	.global Unk_ov60_02229320
Unk_ov60_02229320: ; 0x02229320
	.incbin "incbin/overlay60_data.bin", 0x4E0, 0x4F4 - 0x4E0

	.global Unk_ov60_02229334
Unk_ov60_02229334: ; 0x02229334
	.incbin "incbin/overlay60_data.bin", 0x4F4, 0x508 - 0x4F4

	.global Unk_ov60_02229348
Unk_ov60_02229348: ; 0x02229348
	.incbin "incbin/overlay60_data.bin", 0x508, 0x51C - 0x508

	.global Unk_ov60_0222935C
Unk_ov60_0222935C: ; 0x0222935C
	.incbin "incbin/overlay60_data.bin", 0x51C, 0x534 - 0x51C

	.global Unk_ov60_02229374
Unk_ov60_02229374: ; 0x02229374
	.incbin "incbin/overlay60_data.bin", 0x534, 0x54C - 0x534

	.global Unk_ov60_0222938C
Unk_ov60_0222938C: ; 0x0222938C
	.incbin "incbin/overlay60_data.bin", 0x54C, 0x564 - 0x54C

	.global Unk_ov60_022293A4
Unk_ov60_022293A4: ; 0x022293A4
	.incbin "incbin/overlay60_data.bin", 0x564, 0x580 - 0x564

	.global Unk_ov60_022293C0
Unk_ov60_022293C0: ; 0x022293C0
	.incbin "incbin/overlay60_data.bin", 0x580, 0x5A0 - 0x580

	.global Unk_ov60_022293E0
Unk_ov60_022293E0: ; 0x022293E0
	.incbin "incbin/overlay60_data.bin", 0x5A0, 0x5C0 - 0x5A0

	.global Unk_ov60_02229400
Unk_ov60_02229400: ; 0x02229400
	.incbin "incbin/overlay60_data.bin", 0x5C0, 0x5E0 - 0x5C0

	.global Unk_ov60_02229420
Unk_ov60_02229420: ; 0x02229420
	.incbin "incbin/overlay60_data.bin", 0x5E0, 0x600 - 0x5E0

	.global Unk_ov60_02229440
Unk_ov60_02229440: ; 0x02229440
	.incbin "incbin/overlay60_data.bin", 0x600, 0x604 - 0x600

	.global Unk_ov60_02229444
Unk_ov60_02229444: ; 0x02229444
	.incbin "incbin/overlay60_data.bin", 0x604, 0x610 - 0x604

	.global Unk_ov60_02229450
Unk_ov60_02229450: ; 0x02229450
	.incbin "incbin/overlay60_data.bin", 0x610, 0x654 - 0x610

	.global Unk_ov60_02229494
Unk_ov60_02229494: ; 0x02229494
	.incbin "incbin/overlay60_data.bin", 0x654, 0x65C - 0x654

	.global Unk_ov60_0222949C
Unk_ov60_0222949C: ; 0x0222949C
	.incbin "incbin/overlay60_data.bin", 0x65C, 0x660 - 0x65C

	.global Unk_ov60_022294A0
Unk_ov60_022294A0: ; 0x022294A0
	.incbin "incbin/overlay60_data.bin", 0x660, 0x6A4 - 0x660

	.global Unk_ov60_022294E4
Unk_ov60_022294E4: ; 0x022294E4
	.incbin "incbin/overlay60_data.bin", 0x6A4, 0x6C8 - 0x6A4

	.global Unk_ov60_02229508
Unk_ov60_02229508: ; 0x02229508
	.incbin "incbin/overlay60_data.bin", 0x6C8, 0x6E0 - 0x6C8

	.global Unk_ov60_02229520
Unk_ov60_02229520: ; 0x02229520
	.incbin "incbin/overlay60_data.bin", 0x6E0, 0x708 - 0x6E0

	.global Unk_ov60_02229548
Unk_ov60_02229548: ; 0x02229548
	.incbin "incbin/overlay60_data.bin", 0x708, 0x710 - 0x708

	.global Unk_ov60_02229550
Unk_ov60_02229550: ; 0x02229550
	.incbin "incbin/overlay60_data.bin", 0x710, 0x724 - 0x710

	.global Unk_ov60_02229564
Unk_ov60_02229564: ; 0x02229564
	.incbin "incbin/overlay60_data.bin", 0x724, 0x778 - 0x724

	.global Unk_ov60_022295B8
Unk_ov60_022295B8: ; 0x022295B8
	.incbin "incbin/overlay60_data.bin", 0x778, 0x788 - 0x778

	.global Unk_ov60_022295C8
Unk_ov60_022295C8: ; 0x022295C8
	.incbin "incbin/overlay60_data.bin", 0x788, 0x7B4 - 0x788

	.global Unk_ov60_022295F4
Unk_ov60_022295F4: ; 0x022295F4
	.incbin "incbin/overlay60_data.bin", 0x7B4, 0x7C4 - 0x7B4

	.global Unk_ov60_02229604
Unk_ov60_02229604: ; 0x02229604
	.incbin "incbin/overlay60_data.bin", 0x7C4, 0x7D8 - 0x7C4

	.global Unk_ov60_02229618
Unk_ov60_02229618: ; 0x02229618
	.incbin "incbin/overlay60_data.bin", 0x7D8, 0x800 - 0x7D8

	.global Unk_ov60_02229640
Unk_ov60_02229640: ; 0x02229640
	.incbin "incbin/overlay60_data.bin", 0x800, 0x838 - 0x800

	.global Unk_ov60_02229678
Unk_ov60_02229678: ; 0x02229678
	.incbin "incbin/overlay60_data.bin", 0x838, 0x868 - 0x838

	.global Unk_ov60_022296A8
Unk_ov60_022296A8: ; 0x022296A8
	.incbin "incbin/overlay60_data.bin", 0x868, 0x888 - 0x868

	.global Unk_ov60_022296C8
Unk_ov60_022296C8: ; 0x022296C8
	.incbin "incbin/overlay60_data.bin", 0x888, 0x88C - 0x888

	.global Unk_ov60_022296CC
Unk_ov60_022296CC: ; 0x022296CC
	.incbin "incbin/overlay60_data.bin", 0x88C, 0x894 - 0x88C

	.global Unk_ov60_022296D4
Unk_ov60_022296D4: ; 0x022296D4
	.incbin "incbin/overlay60_data.bin", 0x894, 0x8BC - 0x894

	.global Unk_ov60_022296FC
Unk_ov60_022296FC: ; 0x022296FC
	.incbin "incbin/overlay60_data.bin", 0x8BC, 0x8E8 - 0x8BC

	.global Unk_ov60_02229728
Unk_ov60_02229728: ; 0x02229728
	.incbin "incbin/overlay60_data.bin", 0x8E8, 0x918 - 0x8E8

	.global Unk_ov60_02229758
Unk_ov60_02229758: ; 0x02229758
	.incbin "incbin/overlay60_data.bin", 0x918, 0x96C - 0x918

	.global Unk_ov60_022297AC
Unk_ov60_022297AC: ; 0x022297AC
	.incbin "incbin/overlay60_data.bin", 0x96C, 0x990 - 0x96C

	.global Unk_ov60_022297D0
Unk_ov60_022297D0: ; 0x022297D0
	.incbin "incbin/overlay60_data.bin", 0x990, 0x99C - 0x990

	.global Unk_ov60_022297DC
Unk_ov60_022297DC: ; 0x022297DC
	.incbin "incbin/overlay60_data.bin", 0x99C, 0x9BC - 0x99C

	.global Unk_ov60_022297FC
Unk_ov60_022297FC: ; 0x022297FC
	.incbin "incbin/overlay60_data.bin", 0x9BC, 0x9E0 - 0x9BC

	.global Unk_ov60_02229820
Unk_ov60_02229820: ; 0x02229820
	.incbin "incbin/overlay60_data.bin", 0x9E0, 0xA30 - 0x9E0

	.global Unk_ov60_02229870
Unk_ov60_02229870: ; 0x02229870
	.incbin "incbin/overlay60_data.bin", 0xA30, 0xA3C - 0xA30

	.global Unk_ov60_0222987C
Unk_ov60_0222987C: ; 0x0222987C
	.incbin "incbin/overlay60_data.bin", 0xA3C, 0xA68 - 0xA3C

	.global Unk_ov60_022298A8
Unk_ov60_022298A8: ; 0x022298A8
	.incbin "incbin/overlay60_data.bin", 0xA68, 0x2C



	.bss


	.global Unk_ov60_02229E40
Unk_ov60_02229E40: ; 0x02229E40
	.space 0x4

	.global Unk_ov60_02229E44
Unk_ov60_02229E44: ; 0x02229E44
	.space 0x4

	.global Unk_ov60_02229E48
Unk_ov60_02229E48: ; 0x02229E48
	.space 0x4

	.global Unk_ov60_02229E4C
Unk_ov60_02229E4C: ; 0x02229E4C
	.space 0x4

